import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/scenario.dart';
import '../models/lesson.dart';
import '../models/track.dart';
import '../data/app_catalog.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/guided_onboarding_navigation.dart';
import '../onboarding/mobile_guided_bottom_sheet.dart';
import '../onboarding/onboarding_debug_log.dart';
import '../widgets/guided_overlay.dart';
import 'task_screen.dart';

class ScenarioScreen extends StatefulWidget {
  final int trackIndex;
  final int lessonIndex;
  final int scenarioIndex;
  final Scenario? scenario; // Keep for backward compatibility
  final Lesson? lesson; // Keep for backward compatibility
  final Track? track; // Keep for backward compatibility

  const ScenarioScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
    required this.scenarioIndex,
    this.scenario,
    this.lesson,
    this.track,
  });

  @override
  State<ScenarioScreen> createState() => _ScenarioScreenState();
}

class _ScenarioScreenState extends State<ScenarioScreen> {
  late String currentOutput;
  int? selectedRefinementIndex;
  int _selectedVariantIndex = -1;
  final GlobalKey _situationKey = GlobalKey();
  final GlobalKey _promptKey = GlobalKey();
  final GlobalKey _responseKey = GlobalKey();
  final GlobalKey _variantsKey = GlobalKey();
  final GlobalKey _proTipKey = GlobalKey();
  final GlobalKey _taskButtonKey = GlobalKey();
  final GlobalKey _variantsAnchorKey = GlobalKey();
  final GlobalKey _proTipAnchorKey = GlobalKey();
  final GlobalKey _instructionBubbleKey = GlobalKey(debugLabel: 'instructionBubble');
  final ScrollController _scrollController = ScrollController();
  int? _lastAutoScrolledSectionIndex;
  int? _lastStepEntryTick;

  /// Alignment for getOffsetToReveal; used only for steps 8–11.
  static double _alignmentForStepNumber(int stepNumber) {
    switch (stepNumber) {
      case 8:
        return 0.06;
      case 9:
      case 10:
      case 11:
        return 0.01; // Target topSafeY since bottom is safe by padding
      case 15:
        return 0.05;
      default:
        return 0.10;
    }
  }

  double? _computeRevealOffsetForKey(GlobalKey key,
      {double alignment = 0.10}) {
    final ctx = key.currentContext;
    if (ctx == null) return null;
    final renderObject = ctx.findRenderObject();
    if (renderObject == null) return null;
    final viewport = RenderAbstractViewport.of(renderObject);
    if (viewport == null) return null; // ignore: unnecessary_null_comparison
    if (!_scrollController.hasClients) return null;
    final reveal = viewport.getOffsetToReveal(renderObject, alignment);
    final position = _scrollController.position;
    final target = reveal.offset.clamp(
      position.minScrollExtent,
      position.maxScrollExtent,
    );
    return target;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _selectedVariantIndex = -1;
    // Get data from the new catalog
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];

    currentOutput = scenarioDef.output;
  }

  @override
  void didUpdateWidget(covariant ScenarioScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.trackIndex != widget.trackIndex ||
        oldWidget.lessonIndex != widget.lessonIndex ||
        oldWidget.scenarioIndex != widget.scenarioIndex) {
      _selectedVariantIndex = -1; // new scenario => back to base response
    }
  }

  List<ResponseVariant> _effectiveVariants(ScenarioDef s) {
    // Authored-only variants; no auto-fallbacks
    return (s.variants ?? const <ResponseVariant>[]);
  }

  String _effectiveOutput(ScenarioDef s) {
    final base = s.output.trim();
    return base;
  }

  // Removed auto-generated fallback variants: authored only

  String _displayResponse(ScenarioDef s) {
    final variants = _effectiveVariants(s);
    final hasChoice =
        _selectedVariantIndex >= 0 && _selectedVariantIndex < variants.length;
    if (hasChoice) return variants[_selectedVariantIndex].response;
    return s.output.trim();
  }

  Widget _buildVariantChips(ScenarioDef s) {
    final variants = _effectiveVariants(s);
    if (variants.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: List<Widget>.generate(variants.length, (i) {
        final v = variants[i];
        final selected = _selectedVariantIndex == i;
        return ChoiceChip(
          label: Text(v.label),
          selected: selected,
          onSelected: (_) {
            setState(() {
              _selectedVariantIndex = selected ? -1 : i;
            });
            if (kDebugMode) {
              debugPrint(
                  'Refinement -> variant $_selectedVariantIndex for ${s.title}');
            }
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get data from the new catalog
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    final variants = _effectiveVariants(scenarioDef);
    final hasVariants = variants.isNotEmpty;
    final hasTask = scenarioDef.task != null;
    final output = _effectiveOutput(scenarioDef);
    final bottomInset = MediaQuery.of(context).padding.bottom;

    final bool isGuidedScenario = GuidedOnboardingController.isActive &&
        GuidedOnboardingController.currentStep ==
            GuidedOnboardingStep.scenarioOverview;

    // Debug print for scenario source
    if (kDebugMode) {
      debugPrint(
          'Scenario page -> ${scenarioDef.title} (task hidden, takeaway hidden)');
    }

    assert(() {
      void devGuard(bool cond, String name) {
        if (!cond) {
          throw FlutterError(
              'Missing authored $name for scenario: ${scenarioDef.title}');
        }
      }

      devGuard(scenarioDef.situation.trim().isNotEmpty, 'situation');
      devGuard(scenarioDef.prompt.trim().isNotEmpty, 'prompt');
      devGuard(output.trim().isNotEmpty, 'output');
      devGuard(scenarioDef.takeaway.trim().isNotEmpty, 'takeaway');
      devGuard(variants.isNotEmpty, 'variants');
      return true;
    }());

    return Scaffold(
      appBar: AppBar(title: Text(scenarioDef.title)),
      body: Stack(
        children: [
          SafeArea(
            top: true,
            bottom: false,
            child: ValueListenableBuilder<int>(
              valueListenable: GuidedOnboardingController.scenarioSectionNotifier,
              builder: (context, sectionIndex, _) {
                final int stepNum = 7 + sectionIndex.clamp(0, 4);
                final bool isSteps9To11 = stepNum >= 9 && stepNum <= 11 &&
                    GuidedOnboardingController.isActive &&
                    GuidedOnboardingController.currentStep ==
                        GuidedOnboardingStep.scenarioOverview;
                return ValueListenableBuilder<double>(
                  valueListenable: MobileGuidedBottomSheet.measuredHeight,
                  builder: (context, measuredHeight, _) {
                    final double bubblePadding = isSteps9To11 && measuredHeight > 0.0
                        ? measuredHeight
                        : 0.0;
                    return ListView(
                      controller: _scrollController,
                      padding: EdgeInsets.fromLTRB(
                        16,
                        16,
                        16,
                        24 + bottomInset + bubblePadding,
                      ),
                      children: [
                // 1. Situation
                _SectionCard(
                  key: _situationKey,
                  title: 'Situation',
                  child: Text(
                    scenarioDef.situation,
                    style: const TextStyle(fontSize: 16, height: 1.4),
                  ),
                ),
                const SizedBox(height: 16),

                // 2. What to Ask AI (Prompt)
                _SectionCard(
                  key: _promptKey,
                  title: 'What to Ask AI',
                  child: SelectableText(
                    scenarioDef.prompt,
                    style: const TextStyle(fontSize: 16, height: 1.4),
                  ),
                ),
                const SizedBox(height: 16),

                // 3. AI's Response
                _SectionCard(
                  key: _responseKey,
                  title: "AI's Response",
                  child: Text(
                    _displayResponse(scenarioDef),
                    style: const TextStyle(fontSize: 16, height: 1.4),
                  ),
                ),
                const SizedBox(height: 16),

                // 4. Adjust the Result
                if (hasVariants) ...[
                  const SizedBox(height: 1),
                  KeyedSubtree(
                    key: _variantsAnchorKey,
                    child: _SectionCard(
                      key: _variantsKey,
                      title: "Adjust the Result",
                      child: _buildVariantChips(scenarioDef),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // 5. Pro Tip
                if ((scenarioDef.proTip ?? "").trim().isNotEmpty) ...[
                  const SizedBox(height: 1),
                  KeyedSubtree(
                    key: _proTipAnchorKey,
                    child: _SectionCard(
                      key: _proTipKey,
                      title: "Pro Tip",
                      child: Text((scenarioDef.proTip ?? "").trim()),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // Task and Takeaway moved off the Scenario screen by design.
                      ],
                    );
                  },
                );
              },
            ),
          ),
          // Guided overlay for Scenario Overview (steps 7–11), using controller + section index.
          ValueListenableBuilder<GuidedOnboardingStep>(
            valueListenable: GuidedOnboardingController.stepNotifier,
            builder: (context, currentStepEnum, _) {
              final int? liveStepNumber =
                  GuidedOnboardingController.getCurrentStepNumber();
              final bool liveGuided = GuidedOnboardingController.isActive &&
                  GuidedOnboardingController.currentStep ==
                      GuidedOnboardingStep.scenarioOverview;

              if (!liveGuided || liveStepNumber == null) {
                return const SizedBox.shrink();
              }

              // Step-entry invariance: listen to stepEntryTick and reset guards on re-entry
              return ValueListenableBuilder<int>(
                valueListenable: GuidedOnboardingController.stepEntryTick,
                builder: (context, tick, _) {
                  // Detect step entry for Steps 9-11 (scenarioOverview)
                  if (liveStepNumber >= 9 &&
                      liveStepNumber <= 11 &&
                      tick != _lastStepEntryTick) {
                    _lastStepEntryTick = tick;
                    // Reset guard to allow auto-scroll to re-run
                    _lastAutoScrolledSectionIndex = null;
                    
                    // Baseline jump: ensure identical scroll baseline before auto-scroll
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (!mounted) return;
                      if (_scrollController.hasClients) {
                        _scrollController.jumpTo(0.0);
                      }
                    });
                    
                    if (kDebugMode) {
                      debugPrint(
                        '[STEP_ENTRY] screen=ScenarioScreen step=$liveStepNumber '
                        'tick=$tick -> resetGuards + schedulePositioning',
                      );
                    }
                  }
                  return ValueListenableBuilder<int>(
                    valueListenable:
                        GuidedOnboardingController.scenarioSectionNotifier,
                    builder: (context, sectionIndex, __) {
                  // Map scenarioOverview sub-steps (7–11) to content sections via scenarioSectionIndex (0–4).
                  GlobalKey? highlightKey;
                  String bubbleText =
                      "This scenario shows a real work problem,\n"
                      "an example prompt, and how AI responds.";

                  final bool hasProTip =
                      (scenarioDef.proTip ?? "").trim().isNotEmpty;

                  switch (sectionIndex) {
                    case 0:
                      highlightKey = _situationKey;
                      break;
                    case 1:
                      highlightKey = _promptKey;
                      break;
                    case 2:
                      highlightKey = _responseKey;
                      break;
                    case 3:
                      // Step 10: Adjust the Result (or fall back to Response if no variants)
                      highlightKey =
                          hasVariants ? _variantsAnchorKey : _responseKey;
                      if (kDebugMode) {
                        debugPrint(
                          '[SCENARIO_OVERLAY] sectionIndex=3 (Step 10) '
                          'hasVariants=$hasVariants hasProTip=$hasProTip '
                          'highlightKey=${hasVariants ? 'variantsAnchor' : 'response'}',
                        );
                      }
                      break;
                    case 4:
                      // Step 11: Pro Tip (or fall back to Try the Task area if no Pro Tip)
                      highlightKey =
                          hasProTip ? _proTipAnchorKey : _taskButtonKey;
                      bubbleText =
                          "When you're ready, tap Try the Task to practice this scenario step-by-step.";
                      if (kDebugMode) {
                        debugPrint(
                          '[SCENARIO_OVERLAY] sectionIndex=4 (Step 11) '
                          'hasVariants=$hasVariants hasProTip=$hasProTip '
                          'highlightKey=${hasProTip ? 'proTipAnchor' : 'taskButton'}',
                        );
                    }

                    // Extra diagnostics for Steps 10 & 11 only.
                    if (kDebugMode && (sectionIndex == 3 || sectionIndex == 4)) {
                      final ctx = highlightKey.currentContext;
                      debugPrint(
                        '[SCENARIO_OVERLAY] diag sectionIndex=$sectionIndex '
                        'hasVariants=$hasVariants hasProTip=$hasProTip '
                        'highlightKeyCtxIsNull=${ctx == null}',
                      );
                    }
                      break;
                    default:
                      highlightKey = _situationKey;
                      break;
                  }

                  final bool isLastSection = sectionIndex >= 4;
                  final int stepNumberForOverlay = 7 + sectionIndex.clamp(0, 4);

                  // Ensure overlay is always built for Steps 8-11 (sectionIndex 1-4).
                  // Overlay must be mounted even if highlightKey is not yet laid out.
                  if (kDebugMode && sectionIndex >= 1 && sectionIndex <= 4) {
                    debugPrint(
                      '[SCENARIO_OVERLAY] buildOverlay sectionIndex=$sectionIndex '
                      'stepNumber=$stepNumberForOverlay highlightKey=$highlightKey '
                      'returning=GuidedOverlay',
                    );
                  }

                  // Scroll assist: ensure highlighted section is in view when sectionIndex changes (steps 8–11).
                  if (GuidedOnboardingController.isActive &&
                      GuidedOnboardingController.currentStep ==
                          GuidedOnboardingStep.scenarioOverview &&
                      sectionIndex != _lastAutoScrolledSectionIndex) {
                    _lastAutoScrolledSectionIndex = sectionIndex;
                    final int capturedIdx = sectionIndex;
                    // ignore: unnecessary_nullable_for_final_variable_declarations - null check used for control flow
                    final GlobalKey? capturedKeyOrNull = highlightKey;
                    if (capturedKeyOrNull == null) {
                      // Skip scroll assist when no highlight key
                    } else {
                    final GlobalKey capturedKey = capturedKeyOrNull;
                    final int stepNum = 7 + capturedIdx.clamp(0, 4);
                    final double align =
                        _alignmentForStepNumber(stepNum);
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      void tryRun(int frameAttempt) {
                        if (!mounted) return;
                        final state = OnboardingDebugLog.overlayState;
                        final stableRect = state?.stableRect;
                        final stableFrames = state?.stableFrames ?? 0;
                        final required = state?.requiredFrames ?? 2;
                        final framesSinceFirstCandidate =
                            state?.framesSinceFirstCandidate ?? 0;
                        final pendingFrames = state?.pendingMeasureFrames ?? 0;
                        final resetCount = state?.resetCount ?? 0;

                        // Gate requires: stableRect != null, stableFrames >= required,
                        // and framesSinceFirstCandidate >= 2 (ensures new measurement cycle)
                        // Step 11 fallback: allow gate to pass if stableRect is stable enough
                        // after at least 2 retry attempts (for cross-screen re-entry)
                        final bool stableEnough = stableRect != null && stableFrames >= required;
                        final bool strictGatePassed = stableEnough && framesSinceFirstCandidate >= 2;
                        
                        // Step 11-specific fallback: allow if stable enough after 2+ attempts
                        final bool step11Fallback = (stepNum == 11) &&
                            stableEnough &&
                            frameAttempt >= 2 &&
                            framesSinceFirstCandidate < 2;
                        
                        final gatePassed = strictGatePassed || step11Fallback;

                        if (!gatePassed && frameAttempt < 10) {
                          if (kDebugMode) {
                            debugPrint(
                              '[SCENARIO_OVERLAY] gate retry step=$stepNum '
                              'attempt=$frameAttempt stableRect=$stableRect '
                              'stableFrames=$stableFrames required=$required '
                              'framesSinceFirstCandidate=$framesSinceFirstCandidate '
                              'pendingFrames=$pendingFrames resetCount=$resetCount',
                            );
                          }
                          WidgetsBinding.instance.addPostFrameCallback(
                            (_) => tryRun(frameAttempt + 1),
                          );
                          return;
                        }
                        if (gatePassed && kDebugMode) {
                          if (step11Fallback) {
                            debugPrint(
                              '[SCENARIO_OVERLAY] step=11 gate fallback used: '
                              'framesSinceFirstCandidate=$framesSinceFirstCandidate '
                              'but stableRect stableFrames ok; attempt=$frameAttempt',
                            );
                          } else {
                            debugPrint(
                              '[SCENARIO_OVERLAY] gate passed step=$stepNum '
                              'stableRect=$stableRect stableFrames=$stableFrames '
                              'framesSinceFirstCandidate=$framesSinceFirstCandidate',
                            );
                          }
                        }
                        Future<void>(() async {
                          if (!mounted) {
                            return;
                          }
                          if (GuidedOnboardingController.scenarioSectionIndex !=
                              capturedIdx) {
                            return;
                          }
                          if (!mounted) return;
                          final ctx = capturedKey.currentContext;
                          if (ctx == null) return;
                          if (!mounted) return;

                          // Unified deterministic scroll-to-safe-rect for Steps 8-11.
                          final localCtx = capturedKey.currentContext;
                          if (localCtx == null) return;
                          if (!mounted) return;
                          if (capturedIdx >= 1 &&
                              capturedIdx <= 4 &&
                              _scrollController.hasClients) {
                            if (!context.mounted) return;
                            final media = MediaQuery.of(localCtx);
                            final screenH = media.size.height;
                            final double rawSheetH =
                                MobileGuidedBottomSheet.measuredHeight.value;
                            final double estimatedSheetH =
                                MobileGuidedBottomSheet.getEstimatedHeight(localCtx);
                            final double effectiveSheetH =
                                rawSheetH > 0.0 ? rawSheetH : estimatedSheetH;
                            final double sheetTopY = screenH - effectiveSheetH;
                            const double gapRequired = 24.0;
                            const double bottomSlack = 8.0;
                            // For steps 9-11, use minimal topSlack to align closely to top safe area
                            final double topSlack = (stepNum >= 9 && stepNum <= 11) ? 0.0 : 8.0;
                            final double topSafeY =
                                media.padding.top + kToolbarHeight + 12.0;
                            final double desiredTop = topSafeY + topSlack;

                            // For steps 9-11, check if padding is active (double-compensation prevention)
                            final bool paddingActive = (stepNum >= 9 && stepNum <= 11) &&
                                MobileGuidedBottomSheet.measuredHeight.value > 0.0;
                            
                            // For steps 10-11, account for instruction bubble top edge (only if padding NOT active)
                            double bubbleTopY = double.infinity;
                            bool usingBubbleTopY = false;
                            if ((stepNum == 10 || stepNum == 11) && !paddingActive) {
                              if (!context.mounted) return;
                              final bubbleCtx = _instructionBubbleKey.currentContext;
                              if (bubbleCtx != null) {
                                final bubbleBox =
                                    bubbleCtx.findRenderObject() as RenderBox?;
                                if (bubbleBox != null && bubbleBox.hasSize) {
                                  final bubbleTopLeft =
                                      bubbleBox.localToGlobal(Offset.zero);
                                  bubbleTopY = bubbleTopLeft.dy;
                                  usingBubbleTopY = true;
                                }
                              }
                            }
                            
                            // If padding is active for steps 9-11, use sheetTopY directly (no bubbleTopY)
                            final double effectiveBottomY = paddingActive
                                ? sheetTopY
                                : ((stepNum == 10 || stepNum == 11)
                                    ? math.min(sheetTopY, bubbleTopY)
                                    : sheetTopY);
                            final double desiredBottom =
                                effectiveBottomY - gapRequired - bottomSlack;
                            
                            if (kDebugMode && (stepNum == 10 || stepNum == 11)) {
                              debugPrint(
                                '[SCENARIO_OVERLAY] step=$stepNum '
                                'paddingActive=$paddingActive measuredHeight=${MobileGuidedBottomSheet.measuredHeight.value} '
                                'usingBubbleTopY=$usingBubbleTopY desiredBottom=$desiredBottom',
                              );
                            }

                            // PHASE 0: Capture offset0
                            final posBefore = _scrollController.position;
                            final double offset0 = posBefore.pixels;

                            // PHASE 1: REVEAL using getOffsetToReveal
                            final baseTarget =
                                _computeRevealOffsetForKey(capturedKey, alignment: align);
                            if (baseTarget == null) {
                              if (kDebugMode) {
                                debugPrint(
                                  '[SCENARIO_OVERLAY] step=$stepNum '
                                  'revealOffset null; aborting auto-scroll.',
                                );
                              }
                              return;
                            }

                            // Read stableRect from overlayState immediately before reveal (source of truth)
                            final currentState = OnboardingDebugLog.overlayState;
                            final stableRect = currentState?.stableRect;
                            if (stableRect == null) {
                              if (kDebugMode) {
                                debugPrint(
                                  '[SCENARIO_OVERLAY] step=$stepNum '
                                  'beforeScroll stableRect=null; aborting.',
                                );
                              }
                              return;
                            }

                            if (kDebugMode) {
                              if (stepNum == 10 || stepNum == 11) {
                                debugPrint(
                                  '[SCENARIO_OVERLAY] step=$stepNum beforeScroll '
                                  'offset0=$offset0 stableRect=$stableRect '
                                  'bubbleTopY=$bubbleTopY sheetTopY=$sheetTopY '
                                  'effectiveBottomY=$effectiveBottomY desiredTop=$desiredTop '
                                  'desiredBottom=$desiredBottom',
                                );
                              } else {
                                debugPrint(
                                  '[SCENARIO_OVERLAY] step=$stepNum beforeScroll '
                                  'offset0=$offset0 stableRect=$stableRect '
                                  'sheetTopY=$sheetTopY desiredTop=$desiredTop '
                                  'desiredBottom=$desiredBottom',
                                );
                              }
                            }

                            await _scrollController.animateTo(
                              baseTarget.clamp(
                                posBefore.minScrollExtent,
                                posBefore.maxScrollExtent,
                              ),
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeOut,
                            );
                            await WidgetsBinding.instance.endOfFrame;
                            if (!mounted) return;

                            // PHASE 1 RECT SNAPSHOT: Use overlay stableRect as source
                            final double offset1 = _scrollController.position.pixels;
                            final double delta1 = offset1 - offset0;
                            final Rect rectAfterReveal =
                                stableRect.translate(0, -delta1);

                            // Evaluate safe ONLY after reveal
                            final bool safeTop =
                                rectAfterReveal.top >= desiredTop;
                            final bool safeBottom =
                                rectAfterReveal.bottom <= desiredBottom;
                            final bool safe = safeTop && safeBottom;

                            if (kDebugMode) {
                              if (stepNum >= 9 && stepNum <= 11) {
                                debugPrint(
                                  '[SCENARIO_OVERLAY] step=$stepNum afterReveal '
                                  'offset1=$offset1 rectAfterReveal=$rectAfterReveal '
                                  'topSlackUsed=$topSlack desiredTop=$desiredTop '
                                  'rectAfterReveal.top=${rectAfterReveal.top} '
                                  'safeTop=$safeTop safeBottom=$safeBottom safe=$safe',
                                );
                              } else {
                                debugPrint(
                                  '[SCENARIO_OVERLAY] step=$stepNum afterReveal '
                                  'offset1=$offset1 rectAfterReveal=$rectAfterReveal '
                                  'safeTop=$safeTop safeBottom=$safeBottom safe=$safe',
                                );
                              }
                            }

                            if (safe) {
                              return;
                            }

                            // PHASE 2: STRICT BAND CORRECTION (TOP + BOTTOM)
                            double correctionDelta = 0.0;
                            if (rectAfterReveal.bottom > desiredBottom) {
                              // Scroll down
                              correctionDelta =
                                  rectAfterReveal.bottom - desiredBottom;
                            } else if (rectAfterReveal.top < desiredTop) {
                              // Scroll up (negative)
                              correctionDelta = rectAfterReveal.top - desiredTop;
                            }

                            if (correctionDelta.abs() > 1.0) {
                              final double correctedTarget =
                                  (offset1 + correctionDelta).clamp(
                                posBefore.minScrollExtent,
                                posBefore.maxScrollExtent,
                              );

                              if (kDebugMode) {
                                debugPrint(
                                  '[SCENARIO_OVERLAY] step=$stepNum correctionDelta=$correctionDelta '
                                  'correctedTarget=$correctedTarget',
                                );
                              }

                              await _scrollController.animateTo(
                                correctedTarget,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeOut,
                              );
                              await WidgetsBinding.instance.endOfFrame;

                              // Snapshot offset2 after correction
                              final double offset2 =
                                  _scrollController.position.pixels;
                              final double delta2 = offset2 - offset1;
                              final Rect rectAfterCorrection =
                                  rectAfterReveal.translate(0, -delta2);

                              final bool safeAfterCorrection =
                                  rectAfterCorrection.top >= desiredTop &&
                                  rectAfterCorrection.bottom <= desiredBottom;

                              if (kDebugMode) {
                                debugPrint(
                                  '[SCENARIO_OVERLAY] step=$stepNum afterCorrection '
                                  'offset2=$offset2 rectAfterCorrection=$rectAfterCorrection '
                                  'safe=$safeAfterCorrection',
                                );
                              }
                            }
                          }
                        });
                      }
                      tryRun(0);
                    });
                  }
                  }

                  return GuidedOverlay(
                    text: bubbleText,
                    highlightedKey: highlightKey,
                    scrollController: _scrollController,
                    currentStep: stepNumberForOverlay,
                    bottomSheetKey: _instructionBubbleKey,
                    onPreviousStep: null,
                    onSkip: () => handleGuidedSkip(context),
                    showContinueButton: !isLastSection,
                    continueButtonText: 'Next',
                    onContinue: isLastSection
                        ? null
                        : () async {
                            if (kDebugMode) {
                              debugPrint(
                                '[SCENARIO_OVERLAY] Next tapped: step=$stepNumberForOverlay '
                                    'sectionIndex=$sectionIndex',
                              );
                            }
                            await GuidedOnboardingController.goNext();
                          },
                  );
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: ValueListenableBuilder<int>(
            valueListenable: GuidedOnboardingController.scenarioSectionNotifier,
            builder: (context, sectionIndex, _) {
              final bool disableTryTask =
                  isGuidedScenario && sectionIndex < 4; // Steps 7–10

              return SizedBox(
                width: double.infinity,
                child: Opacity(
                  opacity: disableTryTask ? 0.45 : 1.0,
                  child: ElevatedButton(
                    key: isGuidedScenario ? _taskButtonKey : null,
                    onPressed: (!hasTask || disableTryTask)
                        ? null
                        : () async {
                            if (GuidedOnboardingController.isActive &&
                                GuidedOnboardingController.currentStep ==
                                    GuidedOnboardingStep.scenarioOverview) {
                              // Only advance out of scenarioOverview when on the last section (step 11).
                              if (GuidedOnboardingController
                                      .scenarioSectionIndex ==
                                  4) {
                                await GuidedOnboardingController
                                    .advanceFromProTipToTask();
                              }
                            }
                            _navigateToTask();
                          },
                    child: Text(
                      hasTask ? 'Try the Task' : 'Task is being prepared',
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _navigateToTask() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => TaskScreen(
          trackIndex: widget.trackIndex,
          lessonIndex: widget.lessonIndex,
          scenarioIndex: widget.scenarioIndex,
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final Widget child;

  const _SectionCard({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
          )
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}
