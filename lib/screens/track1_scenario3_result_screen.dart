import 'package:flutter/material.dart';
import '../data/app_catalog.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import 'track1_lesson1_complete_screen.dart';

/// Track 1 structured lessons: after Scenario 3 challenge check — result card only, single Done → lesson complete.
class Track1Scenario3ResultScreen extends StatelessWidget {
  final int trackIndex;
  final int lessonIndex;
  final bool isCorrect;
  final int correctCount;
  final int requiredSelectionCount;
  final String feedbackMessage;
  final String assembledPromptText;
  final String? coachingNote;

  const Track1Scenario3ResultScreen({
    super.key,
    this.trackIndex = 0,
    required this.lessonIndex,
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
        kTracks[trackIndex].lessons[lessonIndex].scenarios[2];
    final bottomInset = MediaQuery.paddingOf(context).bottom;

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
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => Track1LessonCompleteScreen(
                      lessonIndex: lessonIndex,
                      trackIndex: trackIndex,
                    ),
                  ),
                );
              },
              child: const Text('Done'),
            ),
          ),
        ),
      ),
    );
  }
}
