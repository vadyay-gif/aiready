import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import '../data/app_catalog.dart';
import '../services/progress_store.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/guided_onboarding_navigation.dart';
import '../widgets/guided_overlay.dart';
import '../onboarding/mobile_guided_bottom_sheet.dart';
import '../onboarding/onboarding_debug_log.dart';
import 'scenario_complete_screen.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import 'scenario_incomplete_screen.dart';
import 'track1_lesson1_combined_challenge_result_screen.dart';
import 'track1_lesson1_complete_screen.dart';
import 'track1_scenario3_result_screen.dart';

class TaskScreen extends StatefulWidget {
  final int trackIndex;
  final int lessonIndex;
  final int scenarioIndex;

  const TaskScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
    required this.scenarioIndex,
  });

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  static const double kBottomActionBarHeightEstimate = 96;

  /// Premium C.O.R.E. flow extension: Tracks 1–7 structured lessons (indices 0–6).
  /// Used for matching Track 1 flow + UX (sequential unlock + Challenge labeling + result routing).
  bool get _isTrack1To5StructuredLesson =>
      widget.trackIndex <= 8 && widget.lessonIndex <= 4;

  /// After-challenge primary CTA on the task screen (guided T1 L1 scenario 1 only — inline feedback).
  String get _postFeedbackPrimaryCtaLabel {
    if (_isTrack1To5StructuredLesson) {
      if (widget.scenarioIndex == 0) return 'Go to Scenario 2';
      if (widget.scenarioIndex == 1) return 'Go to Scenario 3';
    }
    return 'Done';
  }

  /// Combined result+unlock (scenarios 1–2). Guided T1 L1 scenario 1 keeps inline flow for onboarding.
  bool get _useT1StructuredCombinedPostCheck =>
      _isTrack1To5StructuredLesson &&
      widget.scenarioIndex <= 1 &&
      !(GuidedOnboardingController.isActive &&
          widget.trackIndex == 0 &&
          widget.lessonIndex == 0 &&
          widget.scenarioIndex == 0);

  /// Scenario 3: full-page result with Done → lesson complete (no inline feedback).
  bool get _useT1StructuredScenario3PostCheck =>
      _isTrack1To5StructuredLesson && widget.scenarioIndex == 2;

  Future<void> _persistTrack1StructuredChallengeScore(
    ProgressStore store,
    int pointsOutOfFive,
  ) async {
    await store.setTrack1LessonChallengeScore(
      widget.lessonIndex,
      widget.scenarioIndex,
      pointsOutOfFive,
    );
  }

  Future<void> _persistStructuredChallengeScore(
    ProgressStore store,
    int pointsOutOfFive,
  ) async {
    if (widget.trackIndex == 0) {
      await _persistTrack1StructuredChallengeScore(store, pointsOutOfFive);
    } else if (widget.trackIndex == 1) {
      await store.setTrack2LessonChallengeScore(
        widget.lessonIndex,
        widget.scenarioIndex,
        pointsOutOfFive,
      );
    } else if (widget.trackIndex == 2) {
      await store.setTrack3LessonChallengeScore(
        widget.lessonIndex,
        widget.scenarioIndex,
        pointsOutOfFive,
      );
    } else if (widget.trackIndex == 3) {
      await store.setTrack4LessonChallengeScore(
        widget.lessonIndex,
        widget.scenarioIndex,
        pointsOutOfFive,
      );
    } else if (widget.trackIndex == 4) {
      await store.setTrack5LessonChallengeScore(
        widget.lessonIndex,
        widget.scenarioIndex,
        pointsOutOfFive,
      );
    } else if (widget.trackIndex == 5) {
      await store.setTrack6LessonChallengeScore(
        widget.lessonIndex,
        widget.scenarioIndex,
        pointsOutOfFive,
      );
    } else if (widget.trackIndex == 6) {
      await store.setTrack7LessonChallengeScore(
        widget.lessonIndex,
        widget.scenarioIndex,
        pointsOutOfFive,
      );
    } else if (widget.trackIndex == 7) {
      await store.setTrack8LessonChallengeScore(
        widget.lessonIndex,
        widget.scenarioIndex,
        pointsOutOfFive,
      );
    } else if (widget.trackIndex == 8) {
      await store.setTrack9LessonChallengeScore(
        widget.lessonIndex,
        widget.scenarioIndex,
        pointsOutOfFive,
      );
    }
  }

  final Set<int> selectedPieces = <int>{};
  bool showFeedback = false;
  bool isCorrect = false;
  String feedbackMessage = '';
  int correctCount = 0;
  final GlobalKey _taskGoalKey = GlobalKey();
  final GlobalKey _resultsSectionKey = GlobalKey(debugLabel: 'results_section');
  final GlobalKey _doneButtonKey = GlobalKey();
  final GlobalKey _promptPiecesKey = GlobalKey();
  final GlobalKey _checkAnswerKey = GlobalKey();
  final GlobalKey _answersAreaKey = GlobalKey(debugLabel: 'answers_area');
  final Map<int, GlobalKey> _answerKeys = {};
  final ScrollController _scrollController = ScrollController();
  int? _lastStepNumber;
  bool _didAutoScrollForStep14 = false;
  bool _didAutoScrollForStep13 = false;
  int? _lastStepEntryTick;
  int? _lastLoggedHighlightTickStep14;
  late final List<PromptPiece> _promptPieces;
  double _bottomActionBarHeight = 96.0; // Default to estimate, will be measured
  bool _isCheckingAnswer = false;
  bool _didAutoScrollThisAttempt = false;

  @override
  void initState() {
    super.initState();
    // Initialize keys for all answer options; generate prompt pieces once and reuse
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    _promptPieces = _generatePromptPieces(scenarioDef);
    for (int i = 0; i < _promptPieces.length; i++) {
      _answerKeys[i] = GlobalKey();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<GuidedOnboardingStep>(
      valueListenable: GuidedOnboardingController.stepNotifier,
      builder: (context, currentStepEnum, _) {
        final trackDef = kTracks[widget.trackIndex];
        final lessonDef = trackDef.lessons[widget.lessonIndex];
        final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
        final bottomInset = MediaQuery.of(context).padding.bottom;

        // Use _promptPieces (generated once in initState) for stable indices
        final requiredSelectionCount =
            _promptPieces.where((piece) => piece.isCorrect).length;
        final selectedCount = selectedPieces.length;
        // Use new controller as source of truth
        final isGuided = GuidedOnboardingController.isActive &&
            widget.trackIndex == 0 &&
            widget.lessonIndex == 0 &&
            widget.scenarioIndex == 0;
        final stepNumber =
            GuidedOnboardingController.getCurrentStepNumber() ?? 0;

        final String challengeHeaderTitle =
            _isTrack1To5StructuredLesson ? 'Challenge' : 'Task Goal';
        final String piecesInstruction = _isTrack1To5StructuredLesson
            ? 'Which elements make this a strong C.O.R.E. prompt? Pick exactly $requiredSelectionCount:'
            : 'Select the prompt elements (choose exactly $requiredSelectionCount):';
        final String assembledPromptLabel = _isTrack1To5StructuredLesson
            ? 'Your strong C.O.R.E. prompt:'
            : 'Your assembled prompt:';
        final String tryPracticeCta =
            _isTrack1To5StructuredLesson ? 'Try the Challenge' : 'Try the Task';
        final String practiceUnavailableCta = _isTrack1To5StructuredLesson
            ? 'Challenge is being prepared'
            : 'Task is being prepared';
        final String defaultGoalFallback = _isTrack1To5StructuredLesson
            ? 'Apply C.O.R.E.: select the elements that make this prompt clear, controlled, and ready to use for this scenario.'
            : 'Select the correct prompt elements to create an effective AI prompt for this scenario.';

        // Track step number changes for debugging
        if (stepNumber != _lastStepNumber) {
          _lastStepNumber = stepNumber;
        }

        // Derive step identity ONLY from controller step number
        final isTaskIntro = isGuided && stepNumber == 12;
        final isTaskGuidance = isGuided && stepNumber == 13;

        return Scaffold(
          appBar: AppBar(title: Text(scenarioDef.title)),
          body: Stack(
            children: [
              SafeArea(
                top: true,
                bottom: false,
                child: ValueListenableBuilder<double>(
                  valueListenable: MobileGuidedBottomSheet.measuredHeight,
                  builder: (context, measuredHeight, _) {
                    final bool isStep13 = isGuided && stepNumber == 13;
                    final double bubblePadding = isStep13 && measuredHeight > 0.0
                        ? measuredHeight
                        : 0.0;
                    return ListView(
                      controller: _scrollController,
                      padding: EdgeInsets.fromLTRB(
                        16,
                        16,
                        16,
                        // Reserve space for guided bottom sheet + action bar during guided steps.
                        // Step 13: use measuredHeight when available (Consistency Mode).
                        // When showFeedback, add extra so results section is not hidden under Done button.
                        (isGuided &&
                                (stepNumber == 12 ||
                                    stepNumber == 13 ||
                                    stepNumber == 14)
                            ? (isStep13 && bubblePadding > 0.0
                                ? (bubblePadding + 16 + kBottomActionBarHeightEstimate)
                                : (MobileGuidedBottomSheet.getEstimatedHeight(context) +
                                    16 +
                                    kBottomActionBarHeightEstimate))
                            : (max(24.0, _bottomActionBarHeight + 16) + bottomInset)) +
                            (showFeedback ? 24.0 : 0),
                      ),
                      children: [
                    // Task / Challenge intro
                    Container(
                      key: _taskGoalKey,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            challengeHeaderTitle,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            scenarioDef.task?.goal ?? defaultGoalFallback,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Prompt Pieces (header + answers; _answersAreaKey covers both for Step 13 cutout)
                    Container(
                      key: _promptPiecesKey,
                      child: Column(
                        key: _answersAreaKey,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header: instruction + Selected X/5
                          Text(
                            piecesInstruction,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            _isTrack1To5StructuredLesson
                                ? 'Selected elements: $selectedCount/$requiredSelectionCount'
                                : 'Selected: $selectedCount/$requiredSelectionCount',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: selectedCount == requiredSelectionCount
                                      ? AppColors.success
                                      : Theme.of(context).colorScheme.onSurfaceVariant,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: 12),

                          // Answers list (no key; _answersAreaKey on parent Column)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _promptPieces.asMap().entries.map((entry) {
                              final index = entry.key;
                              final piece = entry.value;
                              final isSelected = selectedPieces.contains(index);
                              final isCorrect = piece.isCorrect;
                              final showArrow = isTaskGuidance && isCorrect;

                              return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Stack(
                                children: [
                                  Material(
                                    color: isSelected
                                        ? AppColors.primaryTint
                                        : AppColors.surface,
                                    borderRadius: BorderRadius.circular(12),
                                    elevation: 0,
                                    child: InkWell(
                                      key: _answerKeys[index],
                                      borderRadius: BorderRadius.circular(12),
                                      onTap: () {
                                        setState(() {
                                          if (isSelected) {
                                            selectedPieces.remove(index);
                                          } else {
                                            selectedPieces.add(index);
                                          }
                                          // Reset auto-scroll flag when selections change
                                          _didAutoScrollThisAttempt = false;
                                        });
                                        
                                        // When 5 selections are made, overlay will switch to highlight Check My Answer
                                        // (handled in Step 13 overlay logic below)
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: isSelected
                                                ? AppColors.primary
                                                : AppColors.border,
                                            width: isSelected ? 2 : 1.2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              isSelected
                                                  ? Icons.check_circle
                                                  : Icons.radio_button_unchecked,
                                              color: isSelected
                                                  ? AppColors.primary
                                                  : Theme.of(context).colorScheme.onSurfaceVariant,
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Text(
                                                piece.text,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: isSelected
                                                      ? AppColors.primaryPressed
                                                      : Theme.of(context).colorScheme.onSurface,
                                                  fontWeight: isSelected
                                                      ? FontWeight.w500
                                                      : FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                            if (showArrow) ...[
                                              const SizedBox(width: 8),
                                              const Icon(
                                                Icons.arrow_back,
                                                color: AppColors.success,
                                                size: 24,
                                              ),
                                            ],
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),

                    if (showFeedback) ...[
                      const SizedBox(height: 24),
                      Container(
                        key: _resultsSectionKey,
                        decoration: BoxDecoration(
                          color: isCorrect
                              ? AppColors.successLight
                              : AppColors.errorLight,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isCorrect ? AppColors.success : AppColors.error,
                            width: 1,
                          ),
                        ),
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  isCorrect ? Icons.check_circle : Icons.error,
                                  color: isCorrect ? AppColors.success : AppColors.error,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  isCorrect ? 'Correct!' : 'Not quite right',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: isCorrect ? AppColors.success : AppColors.error,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Score: $correctCount/$requiredSelectionCount',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              feedbackMessage,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(height: 1.45),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 14),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFBFCFF),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: AppColors.primary.withValues(alpha: 0.24),
                          ),
                        ),
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expert Prompt',
                              style: context.sectionHeaderStyle,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              assembledPromptLabel,
                              style: context.sectionHeaderStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: AppColors.surface,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: AppColors.border,
                                ),
                              ),
                              child: Text(
                                scenarioDef.task?.resultPolishedPrompt ??
                                    scenarioDef.task?.assembledPromptExample ??
                                    _getAssembledPrompt(_promptPieces),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(height: 1.45),
                              ),
                            ),
                            const SizedBox(height: 14),
                            if (scenarioDef.task?.coachingNote != null)
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: AppColors.insightLight,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.insight.withValues(alpha: 0.22),
                                  ),
                                ),
                                child: Text(
                                  scenarioDef.task!.coachingNote,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        height: 1.45,
                                        color: AppColors.text,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                      ],
                    );
                  },
                ),
              ),
          // Guided overlays for task steps 12-14 (notifier-driven rebuild)
          ValueListenableBuilder<GuidedOnboardingStep>(
            valueListenable: GuidedOnboardingController.stepNotifier,
            builder: (context, currentStepEnum, _) {
              final int? liveStepNumber =
                  GuidedOnboardingController.getCurrentStepNumber();
              final bool liveGuided = GuidedOnboardingController.isActive &&
                  widget.trackIndex == 0 &&
                  widget.lessonIndex == 0 &&
                  widget.scenarioIndex == 0;

              final bool liveTaskIntro = liveGuided && liveStepNumber == 12;
              final bool liveTaskGuidance = liveGuided && liveStepNumber == 13;
              final bool liveTaskFeedback = liveGuided && liveStepNumber == 14;

              if (!liveGuided || liveStepNumber == null) {
                return const SizedBox.shrink();
              }

              // Step-entry invariance: listen to stepEntryTick and reset guards on re-entry
              return ValueListenableBuilder<int>(
                valueListenable: GuidedOnboardingController.stepEntryTick,
                builder: (context, tick, _) {
                  // Detect step entry for Steps 13-14
                  if (liveStepNumber >= 13 &&
                      liveStepNumber <= 14 &&
                      tick != _lastStepEntryTick) {
                    _lastStepEntryTick = tick;
                    // Reset guards to allow auto-scroll to re-run
                    if (liveStepNumber == 13) {
                      _didAutoScrollForStep13 = false;
                    }
                    if (liveStepNumber == 14) {
                      _didAutoScrollForStep14 = false;
                    }
                    
                    // Baseline jump: ensure identical scroll baseline before auto-scroll
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (!mounted) return;
                      if (_scrollController.hasClients) {
                        _scrollController.jumpTo(0.0);
                      }
                    });
                    
                    if (kDebugMode) {
                      debugPrint(
                        '[STEP_ENTRY] screen=TaskScreen step=$liveStepNumber '
                        'tick=$tick -> resetGuards + schedulePositioning',
                      );
                    }
                  }
                  
                  // Reset Step 13/14 scroll guards when step changes (including Previous Step)
                  // This ensures Previous Step returns to the exact start of the step
                  final int? previousStep = _lastStepNumber;
                  if (liveStepNumber != previousStep) {
                    // Step changed - reset guards for steps we're entering (unconditionally)
                    if (liveStepNumber == 13) {
                      if (_didAutoScrollForStep13) {
                        _didAutoScrollForStep13 = false;
                      }
                      if (kDebugMode && previousStep != null) {
                        debugPrint(
                          '[TASK_OVERLAY] entering step=13 via prev -> reset guards + scrollToStart',
                        );
                      }
                      // Schedule auto-scroll for Step 13 next frame (will run if guard is false)
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (!mounted || _didAutoScrollForStep13) return;
                        final ctx = _answersAreaKey.currentContext;
                        if (ctx != null && _scrollController.hasClients) {
                          const alignment = 0.01;

                          final renderObject = ctx.findRenderObject();
                          if (renderObject != null) {
                            final viewport = RenderAbstractViewport.of(renderObject);
                            if (viewport == null) return; // ignore: unnecessary_null_comparison
                            final reveal = viewport.getOffsetToReveal(renderObject, alignment);
                            final position = _scrollController.position;
                            final target = reveal.offset.clamp(
                              position.minScrollExtent,
                              position.maxScrollExtent,
                            );
                            _scrollController.animateTo(
                              target,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeOut,
                            );
                            if (mounted) setState(() => _didAutoScrollForStep13 = true);
                          }
                        }
                      });
                    }
                    if (liveStepNumber == 14) {
                      if (_didAutoScrollForStep14) {
                        _didAutoScrollForStep14 = false;
                      }
                      if (kDebugMode && previousStep != null) {
                        debugPrint(
                          '[TASK_OVERLAY] entering step=14 via prev -> reset guards + scrollToStart',
                        );
                      }
                      // Schedule auto-scroll for Step 14 next frame (will run if guard is false)
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (!mounted || _didAutoScrollForStep14) return;
                        final ctx = _resultsSectionKey.currentContext;
                        if (ctx != null) {
                          final scrollable = Scrollable.maybeOf(ctx);
                          if (scrollable != null) {
                            Scrollable.ensureVisible(
                              ctx,
                              alignment: 0.1,
                              duration: const Duration(milliseconds: 250),
                            );
                            if (mounted) setState(() => _didAutoScrollForStep14 = true);
                          }
                        }
                      });
                    }
                  }
                  
                  // Also reset guards when not on those steps (cleanup)
                  if (liveStepNumber != 13 && _didAutoScrollForStep13) {
                    _didAutoScrollForStep13 = false;
                  }
                  if (liveStepNumber != 14 && _didAutoScrollForStep14) {
                    _didAutoScrollForStep14 = false;
                  }
                  // Reset Step 14 highlight log when leaving Step 14
                  if (liveStepNumber != 14) {
                    _lastLoggedHighlightTickStep14 = null;
                  }

                  // Only log on step transitions to prevent spam
                  if (liveStepNumber != _lastStepNumber) {
                    OnboardingDebugLog.log(
                      'task_screen',
                      'render overlay for step=$liveStepNumber enum=$currentStepEnum',
                    );
                    _lastStepNumber = liveStepNumber;
                  }

                  // Step 12: Challenge intro - show 12/17, HAS Next button (guided = T1 L1 S1)
                  if (liveTaskIntro) {
                    return GuidedOverlay(
                  text: _isTrack1To5StructuredLesson
                      ? "Now it's your turn.\nYou'll see several options.\nFirst, review the challenge."
                      : "Now it's your turn.\nYou'll see several options.\nFirst, review the task goal.",
                  highlightedKey: _taskGoalKey,
                  scrollController: _scrollController,
                  currentStep: liveStepNumber,
                  onPreviousStep: null,
                  onSkip: () => handleGuidedSkip(context),
                  showContinueButton: true,
                  continueButtonText: 'Next',
                  onContinue: () async {
                    final before =
                        GuidedOnboardingController.getCurrentStepNumber();
                    final beforeEnum = GuidedOnboardingController.currentStep;
                    OnboardingDebugLog.log(
                      'task_screen',
                      'Step12 onContinue tapped: before=$before enum=$beforeEnum',
                    );
                    // Advance controller to step 13 (taskGuidance)
                    await GuidedOnboardingController.goNext();
                    final after =
                        GuidedOnboardingController.getCurrentStepNumber();
                    final afterEnum = GuidedOnboardingController.currentStep;
                    OnboardingDebugLog.log(
                      'task_screen',
                      'Step12 onContinue after goNext: now=$after enum=$afterEnum',
                    );
                    if (after == before) {
                      OnboardingDebugLog.log(
                        'task_screen_error',
                        'Step12 Next no-op: before=$before after=$after enum=$afterEnum',
                      );
                    }
                  },
                    );
                  }
                  // Step 13: Selection phase - tap-required, no Next button, shows 13/17
                  // Cutout for header+answers until 5 selected; then NO overlay (no barrier) so user taps Check My Answer freely
                  else if (liveTaskGuidance && !showFeedback) {
                const requiredSelections = 5;
                final selectedTotalCount = selectedPieces.length;
                final selectedCorrectCount = selectedPieces.where((i) => 
                    i < _promptPieces.length && _promptPieces[i].isCorrect).length;
                
                final bool thresholdReached = selectedTotalCount >= requiredSelections;
                
                // Before 5: highlight answers area. At 5: no overlay (highlightedKey=null => barrier OFF, bottom sheet only)
                final GlobalKey? highlightKey = thresholdReached ? null : _answersAreaKey;
                
                if (thresholdReached) {
                  OnboardingDebugLog.log(
                    'task_screen',
                    'step13 overlayMode=none thresholdReached=true (selected=5)',
                  );
                } else {
                  OnboardingDebugLog.log(
                    'task_screen',
                    'step13 overlayMode=answersArea (selected=$selectedTotalCount)',
                  );
                }
                
                // Bubble text unchanged (3 states, simple)
                String bubbleText;
                if (!thresholdReached) {
                  bubbleText = _isTrack1To5StructuredLesson
                      ? "Choose exactly $requiredSelections C.O.R.E. elements. Tap the answers marked with green arrows."
                      : "Choose exactly $requiredSelections building blocks. Tap the answers marked with green arrows.";
                } else if (selectedCorrectCount == requiredSelections) {
                  bubbleText = "Perfect — now tap Check My Answer to continue.";
                } else {
                  bubbleText = "Now tap Check My Answer to see what to improve.";
                }
                
                // Step 13: Auto-scroll to align answers area top to topSafeY (Consistency Mode)
                if (highlightKey != null && !_didAutoScrollForStep13) {
                  _didAutoScrollForStep13 = true;
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (!mounted) return;
                    final ctx = highlightKey.currentContext;
                    if (ctx != null && _scrollController.hasClients) {
                      final media = MediaQuery.of(ctx);
                      final topSafeY = media.padding.top + kToolbarHeight + 12.0;
                      const topSlackUsed = 0.0; // Step 13: align closely to top safe area
                      final paddingActive = MobileGuidedBottomSheet.measuredHeight.value > 0.0;
                      final measuredHeight = MobileGuidedBottomSheet.measuredHeight.value;
                      const alignment = 0.01; // Target topSafeY
                      
                      if (kDebugMode) {
                        debugPrint(
                          '[TASK_OVERLAY] step=13 paddingActive=$paddingActive '
                          'measuredHeight=$measuredHeight alignment=$alignment '
                          'topSlackUsed=$topSlackUsed',
                        );
                      }
                      
                      final renderObject = ctx.findRenderObject();
                      if (renderObject != null) {
                        final viewport = RenderAbstractViewport.of(renderObject);
                        if (viewport == null) return; // ignore: unnecessary_null_comparison
                        final reveal = viewport.getOffsetToReveal(renderObject, alignment);
                        final position = _scrollController.position;
                          final target = reveal.offset.clamp(
                            position.minScrollExtent,
                            position.maxScrollExtent,
                          );
                          _scrollController.animateTo(
                            target,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeOut,
                          ).then((_) {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              if (!mounted || !_scrollController.hasClients) return;
                              final box = renderObject as RenderBox?;
                              if (box != null && box.hasSize) {
                                final topLeft = box.localToGlobal(Offset.zero);
                                final rectAfterReveal = Rect.fromLTWH(
                                  topLeft.dx,
                                  topLeft.dy,
                                  box.size.width,
                                  box.size.height,
                                );
                                final screenH = media.size.height;
                                final rawSheetH = MobileGuidedBottomSheet.measuredHeight.value;
                                final estimatedSheetH = MobileGuidedBottomSheet.getEstimatedHeight(ctx);
                                final effectiveSheetH = rawSheetH > 0.0 ? rawSheetH : estimatedSheetH;
                                final sheetTopY = screenH - effectiveSheetH;
                                final desiredTop = topSafeY + topSlackUsed;
                                final desiredBottom = paddingActive
                                    ? (sheetTopY - 24.0 - 8.0)
                                    : (sheetTopY - 24.0 - 8.0);
                                
                                if (kDebugMode) {
                                  debugPrint(
                                    '[TASK_OVERLAY] step=13 afterReveal '
                                    'rectAfterReveal=$rectAfterReveal '
                                    'desiredTop=$desiredTop desiredBottom=$desiredBottom',
                                  );
                                }
                              }
                            });
                          });
                      }
                    }
                  });
                }
                
                return GuidedOverlay(
                  text: bubbleText,
                  highlightedKey: highlightKey,
                  scrollController: _scrollController,
                  currentStep: liveStepNumber,
                  onPreviousStep: null,
                  onSkip: () => handleGuidedSkip(context),
                  // Step 13 is tap-required: no Next button
                  showContinueButton: false,
                    );
                  }
                  // Step 14: Feedback phase - cutout over full results section; user taps Done to advance
                  else if (liveTaskFeedback) {
                // Log only once per step-entry tick to prevent spam
                if (_lastLoggedHighlightTickStep14 != tick) {
                  _lastLoggedHighlightTickStep14 = tick;
                  OnboardingDebugLog.log(
                    'task_screen',
                    'step14 highlight=resultsSection',
                  );
                }

                // Auto-scroll to results section (once per Step 14 entry), alignment 0.1 so bubble doesn’t cover it
                if (!_didAutoScrollForStep14) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (!mounted) return;
                    final ctx = _resultsSectionKey.currentContext;
                    final contextNull = ctx == null;
                    final scrollable = ctx != null ? Scrollable.maybeOf(ctx) : null;
                    final didScroll = scrollable != null;
                    OnboardingDebugLog.log(
                      'task_screen',
                      'step14 autoScroll invoked contextNull=$contextNull didScroll=$didScroll alignment=0.1',
                    );
                    if (ctx != null && scrollable != null) {
                      Scrollable.ensureVisible(
                        ctx,
                        alignment: 0.1,
                        duration: const Duration(milliseconds: 250),
                      );
                      if (mounted) setState(() => _didAutoScrollForStep14 = true);
                    }
                  });
                }

                return GuidedOverlay(
                  text: _isTrack1To5StructuredLesson
                      ? (widget.scenarioIndex == 0
                          ? 'Review your challenge score and feedback, then tap Go to Scenario 2 to continue.'
                          : widget.scenarioIndex == 1
                              ? 'Review your challenge score and feedback, then tap Go to Scenario 3 to continue.'
                              : 'Review your challenge score and feedback, then tap Done to continue.')
                      : "Review your score and feedback, then tap Done to continue.",
                  highlightedKey: _resultsSectionKey,
                  scrollController: _scrollController,
                  currentStep: liveStepNumber,
                  onPreviousStep: null,
                  onSkip: () => handleGuidedSkip(context),
                  // Step 14: user proceeds via Done button
                  showContinueButton: false,
                    );
                  }

                  return const SizedBox.shrink();
                },
              );
            },
          ),
          // Bottom buttons - always visible
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              bottom: true,
              child: _MeasureSize(
                onChange: (size) {
                  if (mounted && size.height > 0) {
                    setState(() {
                      _bottomActionBarHeight = size.height;
                    });
                  }
                },
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (scenarioDef.task == null) ...[
                        Text(
                          practiceUnavailableCta,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface
                                    .withValues(alpha: 0.6),
                              ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: null,
                            child: Text(tryPracticeCta),
                          ),
                        ),
                      ] else if (!showFeedback) ...[
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: (isGuided &&
                                        (stepNumber == 12 ||
                                            stepNumber == 13 ||
                                            stepNumber == 14))
                                    ? null
                                    : () => _skipTask(),
                                child: const Text('Skip'),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: ElevatedButton(
                                key: _checkAnswerKey,
                                onPressed: (isTaskIntro ||
                                        selectedPieces.length !=
                                            requiredSelectionCount ||
                                        _isCheckingAnswer)
                                    ? null
                                    : _checkAnswer,
                                child: const Text('Check My Answer'),
                              ),
                            ),
                          ],
                        ),
                      ] else ...[
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            key: _doneButtonKey,
                            onPressed: () => _completeTask(),
                            child: Text(_postFeedbackPrimaryCtaLabel),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Dim the bottom buttons area during task intro (must be after buttons to cover them)
          // NOTE: Removed overlay for non-guided flow - it was blocking content outside onboarding
        ],
      ),
    );
      },
    );
  }

  void _checkAnswer() async {
    // Prevent multiple simultaneous checks
    if (_isCheckingAnswer) return;
    
    setState(() {
      _isCheckingAnswer = true;
      _didAutoScrollThisAttempt = false; // Reset for this new attempt
    });
    
    var didOpenT1StructuredCombined = false;
    var didOpenT1StructuredScenario3Result = false;
    var combinedIsCorrect = false;
    var combinedCorrectCount = 0;
    var combinedPiecesLen = 0;
    var combinedFeedback = '';
    try {
      final trackDef = kTracks[widget.trackIndex];
      final lessonDef = trackDef.lessons[widget.lessonIndex];
      final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];

      // Validation logic - user must select exactly the authored correct pieces
      // Uses _promptPieces (generated once in initState) for stable indices
      final correctPieces = <int>{};
      for (int i = 0; i < _promptPieces.length; i++) {
        if (_promptPieces[i].isCorrect) {
          correctPieces.add(i);
        }
      }
      final correctSelected = selectedPieces.intersection(correctPieces);
      final isCorrectAnswer = selectedPieces.length == correctPieces.length &&
          correctSelected.length == correctPieces.length;
      final correctCountVal = correctSelected.length;
      final correctPiecesLen = correctPieces.length;
      final baseFeedback =
          'You got $correctCountVal/$correctPiecesLen correct.';
      final bool isStructuredLesson =
          widget.trackIndex <= 8 && widget.lessonIndex <= 4;
      final feedbackMsg = isCorrectAnswer
          ? (isStructuredLesson
              ? '$baseFeedback ${scenarioDef.task?.feedbackWhenCorrect ?? 'Great job! You selected the right elements.'}'
              : '$baseFeedback Great job! You selected the right prompt elements.')
          : '$baseFeedback ${scenarioDef.task?.coachingNote ?? (isStructuredLesson ? 'Try again. Consider which elements make this the strongest C.O.R.E. prompt.' : 'Try again. Consider which pieces would make the most effective prompt.')}';

      if (_useT1StructuredCombinedPostCheck) {
        didOpenT1StructuredCombined = true;
        combinedIsCorrect = isCorrectAnswer;
        combinedCorrectCount = correctCountVal;
        combinedPiecesLen = correctPiecesLen;
        combinedFeedback = feedbackMsg;
      } else if (_useT1StructuredScenario3PostCheck) {
        didOpenT1StructuredScenario3Result = true;
        combinedIsCorrect = isCorrectAnswer;
        combinedCorrectCount = correctCountVal;
        combinedPiecesLen = correctPiecesLen;
        combinedFeedback = feedbackMsg;
      } else {
        // Global scoring fix (Tracks 1–5):
        // record score on Check My Answer and overwrite any prior attempt.
        if (isStructuredLesson) {
          final denom = correctPiecesLen > 0 ? correctPiecesLen : 1;
          final pts = ((correctCountVal * 5) / denom).round().clamp(0, 5);
          final store = context.read<ProgressStore>();
          await _persistStructuredChallengeScore(store, pts);
        }

        setState(() {
          showFeedback = true;
          isCorrect = isCorrectAnswer;
          correctCount = correctCountVal;
          feedbackMessage = feedbackMsg;
        });

        // Scroll to results section when feedback appears (only when NOT in onboarding)
        // Use post-frame callback to ensure results are rendered, and only once per attempt
        final isGuidedForScroll = GuidedOnboardingController.isActive &&
            widget.trackIndex == 0 &&
            widget.lessonIndex == 0 &&
            widget.scenarioIndex == 0;
        if (!isGuidedForScroll && !_didAutoScrollThisAttempt) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted || _didAutoScrollThisAttempt) return;
            final ctx = _resultsSectionKey.currentContext;
            if (ctx != null) {
              final scrollable = Scrollable.maybeOf(ctx);
              if (scrollable != null) {
                Scrollable.ensureVisible(
                  ctx,
                  alignment: 0.1,
                  duration: const Duration(milliseconds: 300),
                );
                if (mounted) {
                  setState(() {
                    _didAutoScrollThisAttempt = true;
                  });
                }
              }
            }
          });
        }
      }
    } finally {
      // Always reset checking flag after processing completes
      if (mounted) {
        setState(() {
          _isCheckingAnswer = false;
        });
      }
    }

    if (didOpenT1StructuredCombined) {
      if (!mounted) return;
      final store = context.read<ProgressStore>();
      final trackDef = kTracks[widget.trackIndex];
      final denom = combinedPiecesLen > 0 ? combinedPiecesLen : 1;
      final pts =
          ((combinedCorrectCount * 5) / denom).round().clamp(0, 5);
      await _persistStructuredChallengeScore(store, pts);
      await store.setScenarioCompleted(
        trackDef.title,
        widget.lessonIndex,
        widget.scenarioIndex,
      );
      if (!mounted) return;
      final scenarioDef = kTracks[widget.trackIndex]
          .lessons[widget.lessonIndex]
          .scenarios[widget.scenarioIndex];
      final assembledText = scenarioDef.task?.resultPolishedPrompt ??
          scenarioDef.task?.assembledPromptExample ??
          _getAssembledPrompt(_promptPieces);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (_) => Track1Lesson1CombinedChallengeResultScreen(
            trackIndex: widget.trackIndex,
            lessonIndex: widget.lessonIndex,
            scenarioIndex: widget.scenarioIndex,
            isCorrect: combinedIsCorrect,
            correctCount: combinedCorrectCount,
            requiredSelectionCount: combinedPiecesLen,
            feedbackMessage: combinedFeedback,
            assembledPromptText: assembledText,
            coachingNote: scenarioDef.task?.coachingNote,
          ),
        ),
      );
      return;
    }

    if (didOpenT1StructuredScenario3Result) {
      if (!mounted) return;
      final store = context.read<ProgressStore>();
      final trackDef = kTracks[widget.trackIndex];
      final denom = combinedPiecesLen > 0 ? combinedPiecesLen : 1;
      final pts =
          ((combinedCorrectCount * 5) / denom).round().clamp(0, 5);
      await _persistStructuredChallengeScore(store, pts);
      await store.setScenarioCompleted(
        trackDef.title,
        widget.lessonIndex,
        widget.scenarioIndex,
      );
      if (!mounted) return;
      final scenarioDef = kTracks[widget.trackIndex]
          .lessons[widget.lessonIndex]
          .scenarios[widget.scenarioIndex];
      final assembledText = scenarioDef.task?.resultPolishedPrompt ??
          scenarioDef.task?.assembledPromptExample ??
          _getAssembledPrompt(_promptPieces);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (_) => Track1Scenario3ResultScreen(
            trackIndex: widget.trackIndex,
            lessonIndex: widget.lessonIndex,
            isCorrect: combinedIsCorrect,
            correctCount: combinedCorrectCount,
            requiredSelectionCount: combinedPiecesLen,
            feedbackMessage: combinedFeedback,
            assembledPromptText: assembledText,
            coachingNote: scenarioDef.task?.coachingNote,
          ),
        ),
      );
      return;
    }

    // Advance controller to taskFeedback (step 14) when feedback appears
    final isGuided = GuidedOnboardingController.isActive &&
        widget.trackIndex == 0 &&
        widget.lessonIndex == 0 &&
        widget.scenarioIndex == 0;
    if (isGuided && GuidedOnboardingController.currentStep == GuidedOnboardingStep.taskGuidance) {
      final before = GuidedOnboardingController.getCurrentStepNumber();
      final beforeEnum = GuidedOnboardingController.currentStep;
      OnboardingDebugLog.log(
        'task_screen',
        'Step13 CheckMyAnswer pressed (stepNumber=$before enum=$beforeEnum)',
      );
      await GuidedOnboardingController.goNext();
      OnboardingDebugLog.log(
        'task_screen',
        'Step13 advancing -> goNext()',
      );
      final after = GuidedOnboardingController.getCurrentStepNumber();
      if (kDebugMode) {
        debugPrint('[TASK_ONBOARDING] Check Answer -> feedback shown, controllerStep=$after');
      }
    } else if (isGuided && GuidedOnboardingController.currentStep == GuidedOnboardingStep.taskFeedback) {
      // Step 14: Check My Answer button pressed (should advance to Step 15)
      final before = GuidedOnboardingController.getCurrentStepNumber();
      OnboardingDebugLog.log(
        'task_screen',
        'step14 CheckMyAnswer pressed -> goNext (stepNumber=$before)',
      );
      await GuidedOnboardingController.goNext();
    }
  }

  void _skipTask() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ScenarioIncompleteScreen(
          trackIndex: widget.trackIndex,
          lessonIndex: widget.lessonIndex,
          scenarioIndex: widget.scenarioIndex,
        ),
      ),
    );
  }

  Future<void> _completeTask() async {
    final trackDef = kTracks[widget.trackIndex];
    final store = context.read<ProgressStore>();

    if (_isTrack1To5StructuredLesson && widget.scenarioIndex <= 2) {
      final correctPiecesCount =
          _promptPieces.where((p) => p.isCorrect).length;
      final pts = correctPiecesCount > 0
          ? ((correctCount * 5) / correctPiecesCount).round().clamp(0, 5)
          : 0;
      await _persistStructuredChallengeScore(store, pts);
    }

    // Mark scenario as completed in progress store
    await store.setScenarioCompleted(
          trackDef.title,
          widget.lessonIndex,
          widget.scenarioIndex,
        );

    if (!mounted) return;

    // Advance onboarding if Step 14 is active
    final isGuided = GuidedOnboardingController.isActive &&
        widget.trackIndex == 0 &&
        widget.lessonIndex == 0 &&
        widget.scenarioIndex == 0;
    if (isGuided && GuidedOnboardingController.currentStep == GuidedOnboardingStep.taskFeedback) {
      final before = GuidedOnboardingController.getCurrentStepNumber();
      OnboardingDebugLog.log(
        'task_screen',
        'Step14 Done pressed -> goNext() (stepNumber=$before)',
      );
      GuidedOnboardingController.goNext();
    }

    final isStructuredScenario3 =
        widget.trackIndex <= 8 &&
            widget.lessonIndex <= 4 &&
            widget.scenarioIndex == 2;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => isStructuredScenario3
            ? Track1LessonCompleteScreen(
                lessonIndex: widget.lessonIndex,
                trackIndex: widget.trackIndex,
              )
            : ScenarioCompleteScreen(
                trackIndex: widget.trackIndex,
                lessonIndex: widget.lessonIndex,
                scenarioIndex: widget.scenarioIndex,
              ),
      ),
    );
  }

  String _getAssembledPrompt(List<PromptPiece> pieces) {
    final selectedPiecesList = selectedPieces.toList()..sort();
    return selectedPiecesList.map((index) => pieces[index].text).join(' ');
  }

  List<PromptPiece> _generatePromptPieces(ScenarioDef scenarioDef) {
    List<PromptPiece> list;
    if (scenarioDef.task != null) {
      final authored = scenarioDef.task!;
      list = authored.pieces
          .map((p) => PromptPiece(text: p.text, isCorrect: p.isCorrect))
          .toList();
    } else {
      // Fallback: generate pieces from prompt text
      final basePrompt = scenarioDef.prompt;
      final words = basePrompt.split(' ');
      final generated = <PromptPiece>[];
      for (int i = 0; i < words.length; i += 4) {
        final endIndex = (i + 4).clamp(0, words.length);
        final piece = words.sublist(i, endIndex).join(' ');
        if (piece.isNotEmpty) {
          generated.add(PromptPiece(text: piece, isCorrect: i % 2 == 0));
        }
      }
      list = generated;
    }

    // Onboarding (Track 1, Lesson 1, Scenario 1): do NOT shuffle
    if (widget.trackIndex == 0 &&
        widget.lessonIndex == 0 &&
        widget.scenarioIndex == 0) {
      if (kDebugMode) {
        debugPrint(
            '[scenario_data] shufflePieces track=0 lesson=0 scenario=0 applied=false');
      }
      return list;
    }

    // Deterministic shuffle by scenario identity (stable per scenario)
    final seed =
        '${widget.trackIndex}-${widget.lessonIndex}-${widget.scenarioIndex}-${scenarioDef.title}'
            .hashCode;
    final rng = Random(seed);
    final shuffled = [...list]..shuffle(rng);
    if (kDebugMode) {
      debugPrint(
          '[scenario_data] shufflePieces track=${widget.trackIndex} lesson=${widget.lessonIndex} scenario=${widget.scenarioIndex} seed=$seed applied=true');
    }
    return shuffled;
  }
}

class PromptPiece {
  final String text;
  final bool isCorrect;

  PromptPiece({required this.text, required this.isCorrect});
}

/// Widget that measures its child's size and reports it via callback
class _MeasureSize extends StatefulWidget {
  final Widget child;
  final ValueChanged<Size> onChange;

  const _MeasureSize({
    required this.child,
    required this.onChange,
  });

  @override
  State<_MeasureSize> createState() => _MeasureSizeState();
}

class _MeasureSizeState extends State<_MeasureSize> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_measure);
  }

  void _measure(_) {
    if (!mounted) return;
    final context = this.context;
    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      widget.onChange(renderBox.size);
    }
  }

  @override
  void didUpdateWidget(_MeasureSize oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback(_measure);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
