import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../data/app_catalog.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/guided_onboarding_navigation.dart';
import '../onboarding/mobile_guided_bottom_sheet.dart';
import '../onboarding/onboarding_debug_log.dart';
import '../widgets/guided_overlay.dart';
import 'scenario_choice_screen.dart';

const double kMinGapAboveSheet = 24.0;
const double _kBottomSlack = 8.0;
const double _kTopSlack = 8.0;
const double _kTopSlackStep15 = 0.0; // Step 15: align closely to top safe area

class ScenarioCompleteScreen extends StatefulWidget {
  final int trackIndex;
  final int lessonIndex;
  final int scenarioIndex;

  const ScenarioCompleteScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
    required this.scenarioIndex,
  });

  @override
  State<ScenarioCompleteScreen> createState() => _ScenarioCompleteScreenState();
}

class _ScenarioCompleteScreenState extends State<ScenarioCompleteScreen> {
  final GlobalKey _takeawayKey = GlobalKey();
  final GlobalKey _takeawayAnchorKey = GlobalKey();
  final GlobalKey _takeawayHeaderKey = GlobalKey();
  final GlobalKey _completionHeaderKey = GlobalKey();
  final GlobalKey _backToTracksKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  bool _didAutoScrollForStep15 = false;
  bool _didFixOverlapForStep15 = false;
  int? _lastLoggedStep;
  int? _lastStepEntryTick;

  /// Alignment for getOffsetToReveal; used only for step 15.
  static double _alignmentForStepNumber(int stepNumber) {
    switch (stepNumber) {
      case 8:
      case 9:
        return 0.06;
      case 10:
      case 11:
        return 0.04;
      case 15:
        return 0.01; // Target topSafeY since bottom is safe by padding
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
    if (viewport == null) return null;
    final reveal = viewport.getOffsetToReveal(renderObject, alignment);
    if (!_scrollController.hasClients) return null;
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
  Widget build(BuildContext context) {
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    final bottomInset = MediaQuery.of(context).padding.bottom;

    // Debug print for scenario complete
    if (kDebugMode) {
      debugPrint(
          'Scenario complete -> takeaway shown: ${scenarioDef.takeaway.isNotEmpty}');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenario Complete'),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          SafeArea(
            top: true,
            bottom: false,
            child: ValueListenableBuilder<GuidedOnboardingStep>(
              valueListenable: GuidedOnboardingController.stepNotifier,
              builder: (context, currentStepEnum, _) {
                final int? liveStepNumber =
                    GuidedOnboardingController.getCurrentStepNumber();
                final bool isStep15 = GuidedOnboardingController.isActive &&
                    widget.trackIndex == 0 &&
                    widget.lessonIndex == 0 &&
                    widget.scenarioIndex == 0 &&
                    liveStepNumber == 15;
                return ValueListenableBuilder<double>(
                  valueListenable: MobileGuidedBottomSheet.measuredHeight,
                  builder: (context, measuredHeight, _) {
                    // Step 15: Use effective height for reliable padding
                    final double rawH = measuredHeight;
                    final double estH = MobileGuidedBottomSheet.getEstimatedHeight(context);
                    final double effectiveH = rawH > 0.0 ? rawH : estH;
                    final double bubblePadding = isStep15 && effectiveH > 0.0
                        ? effectiveH
                        : 0.0;
                    return SingleChildScrollView(
                      controller: _scrollController,
                      padding: EdgeInsets.fromLTRB(
                        16,
                        16,
                        16,
                        24 + bottomInset + bubblePadding,
                      ),
                      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Completion header (green check icon) — stable target for Step 15 cutout
                  Container(
                    key: _completionHeaderKey,
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Headline
                  Text(
                    'Great job!',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),

                  // Body
                  Text(
                    'You\'ve completed scenario ${scenarioDef.title}',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),

                  // Key Takeaway
                  Container(
                    key: _takeawayAnchorKey,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 1),
                        Text(
                          key: _takeawayHeaderKey,
                          'Key Takeaway',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          scenarioDef.takeaway,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.4,
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          // Step 15 overlay (notifier-driven rebuild)
          ValueListenableBuilder<GuidedOnboardingStep>(
            valueListenable: GuidedOnboardingController.stepNotifier,
            builder: (context, currentStepEnum, _) {
              final int? liveStepNumber =
                  GuidedOnboardingController.getCurrentStepNumber();
              final bool liveGuided = GuidedOnboardingController.isActive &&
                  widget.trackIndex == 0 &&
                  widget.lessonIndex == 0 &&
                  widget.scenarioIndex == 0;

              // Detect step change to reset guards when re-entering Step 15 via Previous Step
              final int? previousStep = _lastLoggedStep;
              if (liveStepNumber == 15 && previousStep != 15 && _didAutoScrollForStep15) {
                _didAutoScrollForStep15 = false;
                _didFixOverlapForStep15 = false;
                if (kDebugMode) {
                  debugPrint(
                    '[SCENARIO_COMPLETE] entering step=15 via prev -> reset + scrollToStart',
                  );
                }
              }
              
              if (!liveGuided || liveStepNumber != 15) {
                if (_didAutoScrollForStep15 || _didFixOverlapForStep15) {
                  // Reset flags immediately to prevent repeated scheduling
                  _didAutoScrollForStep15 = false;
                  _didFixOverlapForStep15 = false;
                  // No setState needed - flags are only used for one-time behavior
                }
                return const SizedBox.shrink();
              }

              // Step-entry invariance: listen to stepEntryTick and reset guards on re-entry
              return ValueListenableBuilder<int>(
                valueListenable: GuidedOnboardingController.stepEntryTick,
                builder: (context, tick, _) {
                  // Detect step entry for Step 15
                  if (liveStepNumber == 15 && tick != _lastStepEntryTick) {
                    _lastStepEntryTick = tick;
                    // Reset guards to allow auto-scroll to re-run
                    _didAutoScrollForStep15 = false;
                    _didFixOverlapForStep15 = false;
                    
                    // Baseline jump: ensure identical scroll baseline before auto-scroll
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (!mounted) return;
                      if (_scrollController.hasClients) {
                        _scrollController.jumpTo(0.0);
                      }
                    });
                    
                    if (kDebugMode) {
                      debugPrint(
                        '[STEP_ENTRY] screen=ScenarioCompleteScreen step=15 '
                        'tick=$tick -> resetGuards + schedulePositioning',
                      );
                    }
                  }
                  
                  // Step 15: Compute effective height for padding check
                  final double rawH = MobileGuidedBottomSheet.measuredHeight.value;
                  final double estH = MobileGuidedBottomSheet.getEstimatedHeight(context);
                  final double effectiveH = rawH > 0.0 ? rawH : estH;
                  final bool paddingActive = effectiveH > 0.0;

                  // Only log on step transitions to prevent spam
                  if (liveStepNumber != _lastLoggedStep) {
                    OnboardingDebugLog.log(
                      'scenario_complete',
                      'render overlay for step=$liveStepNumber enum=$currentStepEnum',
                    );
                    _lastLoggedStep = liveStepNumber;
                  }

                  OnboardingDebugLog.log(
                    'scenario_complete',
                    'step15 highlight=keyTakeaway (key=_takeawayAnchorKey)',
                  );

                  if (kDebugMode) {
                    debugPrint(
                      '[SCENARIO_COMPLETE] step=15 effectiveH=$effectiveH '
                      'rawH=$rawH estH=$estH paddingActive=$paddingActive',
                    );
                  }

                  // Step 15: Auto-scroll AFTER padding is applied (Consistency Mode)
                  if (!_didAutoScrollForStep15 && paddingActive) {
                    _didAutoScrollForStep15 = true;
                    if (kDebugMode) {
                      debugPrint('[SCENARIO_COMPLETE] step=15 autoScroll scheduled');
                    }
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      void tryRun(int frameAttempt) {
                        if (!mounted) return;
                        final overlayState = OnboardingDebugLog.overlayState;
                        final rect = overlayState?.stableRect;
                        final stableFrames = overlayState?.stableFrames ?? 0;
                        final required = overlayState?.requiredFrames ?? 2;
                        final framesSinceFirstCandidate = overlayState?.framesSinceFirstCandidate ?? 0;
                        
                        // Gate: require stableRect AND stableFrames >= required AND framesSinceFirstCandidate >= 2
                        if (rect == null || stableFrames < required || framesSinceFirstCandidate < 2) {
                          if (frameAttempt < 6) {
                            OnboardingDebugLog.log(
                              'scenario_complete',
                              'step15 gate retry attempt=$frameAttempt '
                              'stableRect=$rect stableFrames=$stableFrames required=$required '
                              'framesSinceFirstCandidate=$framesSinceFirstCandidate',
                            );
                            WidgetsBinding.instance.addPostFrameCallback(
                              (_) => tryRun(frameAttempt + 1),
                            );
                            return;
                          }
                        }
                        
                        if (rect != null && stableFrames >= required && framesSinceFirstCandidate >= 2) {
                          OnboardingDebugLog.log(
                            'scenario_complete',
                            'step15 gate passed stableRect=$rect stableFrames=$stableFrames '
                            'framesSinceFirstCandidate=$framesSinceFirstCandidate',
                          );
                        }
                        
                        Future<void>(() async {
                          if (!mounted) return;
                          if (!_scrollController.hasClients) {
                            OnboardingDebugLog.log(
                              'scenario_complete',
                              'step15 scrollController has no clients',
                            );
                            return;
                          }

                          // Step 15: Compute rectNow from actual key
                          final ctx = _takeawayAnchorKey.currentContext;
                          if (ctx == null) {
                            OnboardingDebugLog.log(
                              'scenario_complete',
                              'step15 ctx is null',
                            );
                            return;
                          }
                          
                          final box = ctx.findRenderObject() as RenderBox?;
                          if (box == null || !box.hasSize) {
                            OnboardingDebugLog.log(
                              'scenario_complete',
                              'step15 box is null or has no size',
                            );
                            return;
                          }
                          
                          final topLeft = box.localToGlobal(Offset.zero);
                          final rectNow = Rect.fromLTWH(
                            topLeft.dx,
                            topLeft.dy,
                            box.size.width,
                            box.size.height,
                          );
                          
                          // Compute desiredTop
                          final media = MediaQuery.of(ctx);
                          final topSafeY = media.padding.top + kToolbarHeight + 12.0;
                          final desiredTop = topSafeY; // topSlack for step15 is 0
                          
                          // Compute scroll delta and target
                          final position = _scrollController.position;
                          final offset0 = position.pixels;
                          final delta = rectNow.top - desiredTop; // if rectNow is below desiredTop, delta > 0 => scroll DOWN => content moves UP
                          final target = (offset0 + delta).clamp(
                            position.minScrollExtent,
                            position.maxScrollExtent,
                          );
                          
                          if (kDebugMode) {
                            debugPrint(
                              '[SCENARIO_COMPLETE] step=15 rectNow=$rectNow '
                              'desiredTop=$desiredTop delta=$delta offset0=$offset0 '
                              'target=$target maxExtent=${position.maxScrollExtent}',
                            );
                          }
                          
                          // Scroll if delta is significant
                          if (delta.abs() > 1.0 && (target - offset0).abs() > 1.0) {
                            await _scrollController.animateTo(
                              target,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeOut,
                            );
                            await WidgetsBinding.instance.endOfFrame;
                            
                            final offset1 = _scrollController.position.pixels;
                            if (kDebugMode) {
                              debugPrint(
                                '[SCENARIO_COMPLETE] step=15 scrolled offset1=$offset1',
                              );
                            }
                            
                            if (mounted) {
                              setState(() => _didFixOverlapForStep15 = true);
                            }
                          } else {
                            if (kDebugMode) {
                              debugPrint(
                                '[SCENARIO_COMPLETE] step=15 no scroll needed '
                                'delta.abs()=${delta.abs()} targetDelta.abs()=${(target - offset0).abs()}',
                              );
                            }
                            if (mounted) {
                              setState(() => _didFixOverlapForStep15 = true);
                            }
                          }
                        });
                      }
                      tryRun(0);
                    });
                  }

                  return GuidedOverlay(
                    text:
                        "Each scenario ends with one key idea.\nThis is what you should remember.",
                    highlightedKey: _takeawayAnchorKey,
                    scrollController: _scrollController,
                    currentStep: liveStepNumber,
                    onPreviousStep: null,
                    onSkip: () => handleGuidedSkip(context),
                    // Step 15: user proceeds via Back to Tracks button
                    showContinueButton: false,
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
        child: ValueListenableBuilder<GuidedOnboardingStep>(
          valueListenable: GuidedOnboardingController.stepNotifier,
          builder: (context, _, __) {
            final step = GuidedOnboardingController.getCurrentStepNumber();
            final disableAnother = GuidedOnboardingController.isActive && step == 15;
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Back to Tracks (outlined)
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      key: _backToTracksKey,
                      onPressed: () => _navigateToTracks(context),
                      child: const Text('Back to Tracks'),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Another Scenario (filled) — disabled during Step 15
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: disableAnother ? null : () => _navigateToAnotherScenario(context),
                      child: const Text('Another Scenario'),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _navigateToTracks(BuildContext context) {
    // Progress guided onboarding if Step 15 is active
    final isGuided = GuidedOnboardingController.isActive &&
        widget.trackIndex == 0 &&
        widget.lessonIndex == 0 &&
        widget.scenarioIndex == 0;
    if (isGuided &&
        GuidedOnboardingController.currentStep ==
            GuidedOnboardingStep.resultsTakeaway) {
      final before = GuidedOnboardingController.getCurrentStepNumber();
      OnboardingDebugLog.log(
        'scenario_complete',
        'Step15 BackToTracks pressed -> goNext() (stepNumber=$before)',
      );
      GuidedOnboardingController.goNext();
    }
    // Navigate back to home screen (track list)
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  void _navigateToAnotherScenario(BuildContext context) {
    // Navigate to lesson screen to choose another scenario
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ScenarioChoiceScreen(
          trackIndex: widget.trackIndex,
          lessonIndex: widget.lessonIndex,
        ),
      ),
    );
  }
}
