import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/progress_store.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import 'scenario_choice_screen.dart';
import 'track_screen.dart';

/// Shown after Track 1 structured lessons (1–5), Scenario 3 result → Done.
class Track1LessonCompleteScreen extends StatelessWidget {
  /// Track index for the structured lesson flow (0 = Track 1, 1 = Track 2, 2 = Track 3).
  final int trackIndex;
  /// Track 1 lesson index: 0–4 (lessons 1–5).
  final int lessonIndex;

  const Track1LessonCompleteScreen({
    super.key,
    this.trackIndex = 0,
    this.lessonIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    final store = context.watch<ProgressStore>();
    final totalScore = trackIndex == 0
        ? store.track1LessonTotalChallengeScore(lessonIndex)
        : trackIndex == 1
            ? store.track2LessonTotalChallengeScore(lessonIndex)
            : trackIndex == 2
                ? store.track3LessonTotalChallengeScore(lessonIndex)
                : trackIndex == 3
                    ? store.track4LessonTotalChallengeScore(lessonIndex)
                    : trackIndex == 4
                        ? store.track5LessonTotalChallengeScore(lessonIndex)
                        : trackIndex == 5
                            ? store.track6LessonTotalChallengeScore(lessonIndex)
                            : trackIndex == 6
                                ? store.track7LessonTotalChallengeScore(lessonIndex)
                                : trackIndex == 7
                                    ? store.track8LessonTotalChallengeScore(
                                        lessonIndex,
                                      )
                                    : store.track9LessonTotalChallengeScore(
                                        lessonIndex,
                                      );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson Complete'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 16, 20, 24 + bottomInset),
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 18),
            decoration: BoxDecoration(
              color: AppColors.successLight,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.success),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.check_circle, color: AppColors.success),
                    const SizedBox(width: 8),
                    Text(
                      'Lesson Complete',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.success,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  '$totalScore/15',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'You completed all 3 scenarios.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 6),
                Text(
                  'You just built a prompt you can reuse in real life.',
                  style: theme.textTheme.bodyLarge?.copyWith(height: 1.35),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "You've completed this lesson using the C.O.R.E. system",
            style: context.sectionHeaderStyle.copyWith(height: 1.35),
          ),
          const SizedBox(height: 20),
          Text(
            'Learning',
            style: context.sectionHeaderStyle.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: const Column(
              children: [
                _Bullet('apply context'),
                _Bullet('define objective'),
                _Bullet('structure requirements'),
                _Bullet('control output'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _InsightBlock(
            title: 'Insight',
            body:
                'Most people use AI with vague prompts.\n'
                'You now control the result.',
            theme: theme,
          ),
          const SizedBox(height: 24),
          Text(
            'Next step',
            style: context.sectionHeaderStyle.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: Text(
              'Apply this to more complex tasks.',
              style: theme.textTheme.bodyLarge?.copyWith(height: 1.35),
            ),
          ),
          const SizedBox(height: 28),
          Text(
            'This is just the foundation',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              height: 1.4,
            ),
          ),
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
                    if (lessonIndex < 4) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (_) => ScenarioChoiceScreen(
                            trackIndex: trackIndex,
                            lessonIndex: lessonIndex + 1,
                          ),
                        ),
                      );
                    } else {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              TrackScreen(trackIndex: trackIndex),
                        ),
                        (route) => route.isFirst,
                      );
                    }
                  },
                  child: const Text('Continue to next lesson'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text('See All Tracks'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Bullet extends StatelessWidget {
  final String text;

  const _Bullet(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• '),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.35),
            ),
          ),
        ],
      ),
    );
  }
}

class _InsightBlock extends StatelessWidget {
  final String title;
  final String body;
  final ThemeData theme;

  const _InsightBlock({
    required this.title,
    required this.body,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.insightLight,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.insight.withValues(alpha: 0.28)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.sectionHeaderStyle,
          ),
          const SizedBox(height: 10),
          Text(
            body,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: AppColors.text,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }
}
