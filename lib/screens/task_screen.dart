import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import '../data/app_catalog.dart';
import '../services/progress_store.dart';
import '../services/guided_onboarding.dart' as OldService;
import '../onboarding/guided_onboarding_controller.dart';
import '../widgets/guided_overlay.dart';
import '../onboarding/mobile_guided_bottom_sheet.dart';
import 'scenario_complete_screen.dart';
import 'scenario_incomplete_screen.dart';

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
  final Set<int> selectedPieces = <int>{};
  bool showFeedback = false;
  bool isCorrect = false;
  String feedbackMessage = '';
  int correctCount = 0;
  final GlobalKey _taskGoalKey = GlobalKey();
  final GlobalKey _feedbackKey = GlobalKey();
  final GlobalKey _doneButtonKey = GlobalKey();
  final GlobalKey _promptPiecesKey = GlobalKey();
  final GlobalKey _checkAnswerKey = GlobalKey();
  final Map<int, GlobalKey> _answerKeys = {};
  final ScrollController _scrollController = ScrollController();
  int _taskPhase = 0; // 0 = goal intro, 1 = select prompt pieces
  int? _lastStepNumber;
  bool _phaseResetScheduled = false;

  @override
  void initState() {
    super.initState();
    // Initialize keys for all answer options
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    final promptPieces = _generatePromptPieces(scenarioDef);
    for (int i = 0; i < promptPieces.length; i++) {
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
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    final bottomInset = MediaQuery.of(context).padding.bottom;

    // Generate prompt pieces for the task (use authored TaskDef if present)
    final promptPieces = _generatePromptPieces(scenarioDef);
    final requiredSelectionCount =
        promptPieces.where((piece) => piece.isCorrect).length;
    final selectedCount = selectedPieces.length;
    // Use new controller as source of truth
    final isGuided = GuidedOnboardingController.isActive &&
        widget.trackIndex == 0 &&
        widget.lessonIndex == 0 &&
        widget.scenarioIndex == 0;
    final stepNumber = GuidedOnboardingController.getCurrentStepNumber();

    // Reset phase deterministically when entering step 12 from any other step.
    // Use a post-frame callback and a guard to avoid mutating state directly in build.
    if (isGuided &&
        stepNumber == 12 &&
        _lastStepNumber != 12 &&
        !_phaseResetScheduled) {
      _phaseResetScheduled = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        setState(() {
          _taskPhase = 0;
        });
        _phaseResetScheduled = false;
      });
      _lastStepNumber = 12;
    } else if (stepNumber != _lastStepNumber) {
      _lastStepNumber = stepNumber;
    }

    final isTaskIntro = isGuided && stepNumber == 12;
    final isTaskGuidance = isGuided && stepNumber == 13;

    return Scaffold(
      appBar: AppBar(title: Text(scenarioDef.title)),
      body: Stack(
        children: [
          SafeArea(
            top: true,
            bottom: false,
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.fromLTRB(
                16,
                16,
                16,
                // Reserve space for guided bottom sheet + action bar during guided steps
                isGuided && (stepNumber == 12 || stepNumber == 13)
                    ? MobileGuidedBottomSheet.getEstimatedHeight(context) +
                        16 +
                        kBottomActionBarHeightEstimate
                    : (24 + bottomInset),
              ),
              children: [
                // Task Goal
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
                    'Task Goal',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    scenarioDef.task?.goal ??
                        'Select the correct prompt pieces to create an effective AI prompt for this scenario.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.4,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Prompt Pieces
            Container(
              key: _promptPiecesKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select the prompt pieces (choose exactly $requiredSelectionCount):',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Selected: $selectedCount/$requiredSelectionCount',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: selectedCount == requiredSelectionCount
                              ? Theme.of(context).colorScheme.secondary
                              : Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withValues(alpha: 0.6),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(height: 12),

                  ...promptPieces.asMap().entries.map((entry) {
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
                          ? Theme.of(context)
                              .colorScheme
                              .primary
                              .withValues(alpha: 0.1)
                          : Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      elevation: isSelected ? 2 : 1,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedPieces.remove(index);
                            } else {
                              selectedPieces.add(index);
                            }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                isSelected
                                    ? Icons.check_circle
                                    : Icons.radio_button_unchecked,
                                color: isSelected
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.6),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  piece.text,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: isSelected
                                        ? Theme.of(context).colorScheme.primary
                                        : Theme.of(context).colorScheme.onSurface,
                                    fontWeight: isSelected
                                        ? FontWeight.w500
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                              if (showArrow) ...[
                                const SizedBox(width: 8),
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.green,
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
                ],
              ),
            ),

            if (showFeedback) ...[
              const SizedBox(height: 24),
              Container(
                key: (isGuided && isTaskGuidance)
                    ? _feedbackKey
                    : null,
                decoration: BoxDecoration(
                  color: isCorrect
                      ? Colors.green.withValues(alpha: 0.1)
                      : Colors.red.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isCorrect ? Colors.green : Colors.red,
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          isCorrect ? Icons.check_circle : Icons.error,
                          color: isCorrect ? Colors.green : Colors.red,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          isCorrect ? 'Correct!' : 'Not quite right',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: isCorrect ? Colors.green : Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Score: $correctCount/$requiredSelectionCount',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      feedbackMessage,
                      style: const TextStyle(fontSize: 16, height: 1.4),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Your assembled prompt:',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Theme.of(context)
                              .colorScheme
                              .outline
                              .withValues(alpha: 0.3),
                        ),
                      ),
                      child: Text(
                        scenarioDef.task?.assembledPromptExample ??
                            _getAssembledPrompt(promptPieces),
                        style: const TextStyle(fontSize: 14, height: 1.4),
                      ),
                    ),
                    const SizedBox(height: 12),
                    if (scenarioDef.task?.coachingNote != null)
                      Text(
                        scenarioDef.task!.coachingNote,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                  ],
                ),
              ),
            ],
          ],
        ),
          ),
          if (isTaskIntro)
            GuidedOverlay(
              text: _taskPhase == 0
                  ? "Now it's your turn.\nYou'll see several options.\nFirst, review the task goal."
                  : "Next, select the correct prompt pieces\nand then tap \"Check My Answer\".",
              highlightedKey:
                  _taskPhase == 0 ? _taskGoalKey : _promptPiecesKey,
              secondHighlightedKey:
                  _taskPhase == 1 ? _checkAnswerKey : null,
              scrollController: _scrollController,
              currentStep: stepNumber,
              onPreviousStep: () async {
                await GuidedOnboardingController.goBack();
              },
              onSkip: () async {
                await GuidedOnboardingController.skip();
                if (context.mounted) {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                }
              },
              showContinueButton: true,
              continueButtonText: 'Next',
              onContinue: () async {
                if (_taskPhase == 0) {
                  setState(() {
                    _taskPhase = 1;
                  });
                  if (kDebugMode) {
                    debugPrint(
                        '[TASK_ONBOARDING] phase=0(goal) -> phase=1(selectPieces)');
                  }
                } else {
                  // Advance to step 13 (taskGuidance)
                  await GuidedOnboardingController.next();
                  if (kDebugMode) {
                    final after =
                        GuidedOnboardingController.getCurrentStepNumber();
                    debugPrint(
                        '[TASK_ONBOARDING] phase=1(selectPieces) -> advanceToStep=$after');
                  }
                }
              },
            )
          else if (isTaskGuidance)
            // Step 13: Feedback overlay with Next button
            GuidedOverlay(
              text:
                  "Here's your score and feedback.\nReview the results, then tap Next to continue.",
              highlightedKey: _feedbackKey,
              scrollController: _scrollController,
              currentStep: stepNumber,
              onPreviousStep: () async {
                await GuidedOnboardingController.goBack();
              },
              onSkip: () async {
                await GuidedOnboardingController.skip();
                if (context.mounted) {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                }
              },
              showContinueButton: true,
              continueButtonText: 'Next',
              onContinue: () async {
                // Advance to step 14 (resultsTakeaway) BEFORE navigation
                await GuidedOnboardingController.next();
                await Future.microtask(() {});
                _navigateToResults();
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
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (scenarioDef.task == null) ...[
                        Text(
                          'Task is being prepared',
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
                        const SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: null,
                            child: Text('Try the Task'),
                          ),
                        ),
                      ] else if (!showFeedback) ...[
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: (isGuided && stepNumber == 12)
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
                                            requiredSelectionCount)
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
                            key: (isGuided && isTaskGuidance && showFeedback)
                                ? _doneButtonKey
                                : null,
                            onPressed: () => _completeTask(),
                            child: const Text('Done'),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          // Dim the bottom buttons area during task intro (must be after buttons to cover them)
          // Overlay for feedback display during non-guided flow only
          if (!isGuided &&
              showFeedback &&
              widget.trackIndex == 0 &&
              widget.lessonIndex == 0 &&
              widget.scenarioIndex == 0)
            GuidedOverlay(
              text:
                  "Here's your score and feedback.\nReview the results, then tap Done to continue.",
              highlightedKey: _feedbackKey,
              secondHighlightedKey: _doneButtonKey,
              scrollController: _scrollController,
              showContinueButton: false, // No continue button, user taps Done
            ),
        ],
      ),
    );
  }

  void _checkAnswer() {
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    final promptPieces = _generatePromptPieces(scenarioDef);

    // Validation logic - user must select exactly the authored correct pieces
    final correctPieces = <int>{};
    for (int i = 0; i < promptPieces.length; i++) {
      if (promptPieces[i].isCorrect) {
        correctPieces.add(i);
      }
    }
    final correctSelected = selectedPieces.intersection(correctPieces);
    final isCorrectAnswer = selectedPieces.length == correctPieces.length &&
        correctSelected.length == correctPieces.length;

    setState(() {
      showFeedback = true;
      isCorrect = isCorrectAnswer;
      correctCount = correctSelected.length;
      final baseFeedback =
          'You got $correctCount/${correctPieces.length} correct.';
      feedbackMessage = isCorrectAnswer
          ? '$baseFeedback Great job! You selected the right prompt pieces.'
          : '$baseFeedback ${scenarioDef.task?.coachingNote ?? 'Try again. Consider which pieces would make the most effective prompt.'}';
    });
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

  void _navigateToResults() {
    // Mark scenario as completed in progress store
    final trackDef = kTracks[widget.trackIndex];
    context.read<ProgressStore>().setScenarioCompleted(
          trackDef.title,
          widget.lessonIndex,
          widget.scenarioIndex,
        );

    // Progress guided onboarding if active (already advanced in onContinue above)
    // This method is called after step 13 -> 14 advancement

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ScenarioCompleteScreen(
          trackIndex: widget.trackIndex,
          lessonIndex: widget.lessonIndex,
          scenarioIndex: widget.scenarioIndex,
        ),
      ),
    );
  }

  void _completeTask() {
    // Mark scenario as completed in progress store
    final trackDef = kTracks[widget.trackIndex];
    context.read<ProgressStore>().setScenarioCompleted(
          trackDef.title,
          widget.lessonIndex,
          widget.scenarioIndex,
        );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ScenarioCompleteScreen(
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
    if (scenarioDef.task != null) {
      final authored = scenarioDef.task!;
      final mapped = authored.pieces
          .map((p) => PromptPiece(text: p.text, isCorrect: p.isCorrect))
          .toList();
      return mapped;
    }

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
    return generated;
  }
}

class PromptPiece {
  final String text;
  final bool isCorrect;

  PromptPiece({required this.text, required this.isCorrect});
}
