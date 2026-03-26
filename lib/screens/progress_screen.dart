import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/app_catalog.dart';
import '../services/progress_store.dart';
import '../theme/app_colors.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  int _lessonPoints(ProgressStore store, int trackIndex, int lessonIndex) {
    switch (trackIndex) {
      case 0:
        return store.track1LessonTotalChallengeScore(lessonIndex);
      case 1:
        return store.track2LessonTotalChallengeScore(lessonIndex);
      case 2:
        return store.track3LessonTotalChallengeScore(lessonIndex);
      case 3:
        return store.track4LessonTotalChallengeScore(lessonIndex);
      case 4:
        return store.track5LessonTotalChallengeScore(lessonIndex);
      case 5:
        return store.track6LessonTotalChallengeScore(lessonIndex);
      case 6:
        return store.track7LessonTotalChallengeScore(lessonIndex);
      case 7:
        return store.track8LessonTotalChallengeScore(lessonIndex);
      case 8:
        return store.track9LessonTotalChallengeScore(lessonIndex);
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress'),
      ),
      body: Consumer<ProgressStore>(
        builder: (context, store, _) {
          final completion = store.overallCompletion().clamp(0.0, 1.0);
          final percent = (completion * 100).round();
          final completedScenarios = store.completedScenarioCount();
          const totalScenarios = ProgressStore.kOverallScenarioTarget;

          var pointsEarned = 0;
          var completedLessons = 0;
          var completedTracks = 0;

          for (int trackIndex = 0; trackIndex < 9; trackIndex++) {
            var lessonsDoneInTrack = 0;
            final trackTitle = kTracks[trackIndex].title;
            for (int lessonIndex = 0; lessonIndex < 5; lessonIndex++) {
              pointsEarned += _lessonPoints(store, trackIndex, lessonIndex);
              final lessonDone = store.isScenarioCompleted(
                    trackTitle,
                    lessonIndex,
                    0,
                  ) &&
                  store.isScenarioCompleted(
                    trackTitle,
                    lessonIndex,
                    1,
                  ) &&
                  store.isScenarioCompleted(
                    trackTitle,
                    lessonIndex,
                    2,
                  );
              if (lessonDone) {
                completedLessons += 1;
                lessonsDoneInTrack += 1;
              }
            }
            if (lessonsDoneInTrack == 5) {
              completedTracks += 1;
            }
          }

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Progress',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(height: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(999),
                        child: LinearProgressIndicator(
                          value: completion,
                          minHeight: 12,
                          backgroundColor: AppColors.divider,
                          color: AppColors.success,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$completedScenarios / $totalScenarios scenarios completed ($percent%)',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      _MetricRow(
                        label: 'Points earned',
                        value: '$pointsEarned / 675',
                      ),
                      const SizedBox(height: 8),
                      _MetricRow(
                        label: 'Lessons complete',
                        value: '$completedLessons / 45',
                      ),
                      const SizedBox(height: 8),
                      _MetricRow(
                        label: 'Tracks complete',
                        value: '$completedTracks / 9',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _MetricRow extends StatelessWidget {
  final String label;
  final String value;

  const _MetricRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Text(
          value,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
