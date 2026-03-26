import 'package:flutter/material.dart';
import '../data/app_catalog.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import 'scenario_screen.dart';

/// Post–Check My Answer for Track 1 structured lessons (lessons 1–2), scenarios 1–2:
/// result card + unlock + primary/secondary CTAs.
class Track1Lesson1CombinedChallengeResultScreen extends StatelessWidget {
  final int trackIndex;
  /// Track 1 lesson index (0 = first lesson, 1 = second).
  final int lessonIndex;
  final int scenarioIndex;
  final bool isCorrect;
  final int correctCount;
  final int requiredSelectionCount;
  final String feedbackMessage;
  final String assembledPromptText;
  final String? coachingNote;

  const Track1Lesson1CombinedChallengeResultScreen({
    super.key,
    this.trackIndex = 0,
    this.lessonIndex = 0,
    required this.scenarioIndex,
    required this.isCorrect,
    required this.correctCount,
    required this.requiredSelectionCount,
    required this.feedbackMessage,
    required this.assembledPromptText,
    this.coachingNote,
  });

  static const String _assembledLabel = 'Your strong C.O.R.E. prompt:';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scenarioDef =
        kTracks[trackIndex].lessons[lessonIndex].scenarios[scenarioIndex];
    final bottomInset = MediaQuery.paddingOf(context).bottom;

    final unlockTitle = scenarioIndex == 0
        ? 'Scenario 2 is now unlocked'
        : 'Scenario 3 is now unlocked';
    final unlockBody = scenarioIndex == 0
        ? 'You’ve completed the first scenario and unlocked the next level of difficulty.'
        : 'You’re ready for the final scenario in this lesson.';

    return Scaffold(
      appBar: AppBar(title: Text(scenarioDef.title)),
      body: ListView(
        padding: EdgeInsets.fromLTRB(16, 20, 16, 32 + bottomInset),
        children: [
          Container(
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
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  feedbackMessage,
                  style: theme.textTheme.bodyMedium?.copyWith(height: 1.45),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFBFCFF),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.primary.withValues(alpha: 0.24)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.03),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Expert Prompt',
                  style: context.sectionHeaderStyle,
                ),
                const SizedBox(height: 8),
                Text(
                  _assembledLabel,
                  style: context.sectionHeaderStyle.copyWith(fontSize: 16),
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
                    assembledPromptText,
                    style: theme.textTheme.bodyLarge?.copyWith(height: 1.45),
                  ),
                ),
                if (coachingNote != null && coachingNote!.trim().isNotEmpty) ...[
                  const SizedBox(height: 14),
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
                      coachingNote!,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        height: 1.45,
                        color: AppColors.text,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            unlockTitle,
            style: context.sectionHeaderStyle,
          ),
          const SizedBox(height: 8),
          Text(
            unlockBody,
            style: theme.textTheme.bodyLarge?.copyWith(height: 1.35),
          ),
          if (scenarioIndex == 1) ...[
            const SizedBox(height: 8),
            Text(
              'Keep going — this is where the lesson gets more rewarding.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.35,
              ),
            ),
          ],
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => ScenarioScreen(
                          trackIndex: trackIndex,
                          lessonIndex: lessonIndex,
                          scenarioIndex: scenarioIndex + 1,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    scenarioIndex == 0
                        ? 'Go to Scenario 2'
                        : 'Go to Scenario 3',
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text('Back to Tracks'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
