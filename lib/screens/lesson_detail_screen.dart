import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/lesson.dart';
import '../models/track.dart';
import '../models/scenario.dart';
import '../repositories/lesson_repository.dart';
import '../theme/app_colors.dart';

import '../data/scenarios_registry.dart' show allScenariosByLesson;
import 'scenario_page_screen.dart';
import 'lesson_flow/lesson_complete_screen.dart';

class LessonDetailScreen extends StatelessWidget {
  final String lessonId;
  final Track track;

  const LessonDetailScreen({
    super.key,
    required this.lessonId,
    required this.track,
  });

  @override
  Widget build(BuildContext context) {
    final lessonRepository = LessonRepository();
    final lesson = lessonRepository.byId(lessonId);
    final media = MediaQuery.of(context)
        .copyWith(textScaler: const TextScaler.linear(1.0));

    if (lesson == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('${track.emoji} Lesson Not Found'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 64,
                  color: AppColors.subtext,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Lesson Not Found',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'The lesson with ID "$lessonId" could not be found.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: AppColors.subtext),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Go Back'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return MediaQuery(
      data: media,
      child: Scaffold(
        appBar: AppBar(
          title: Text('${track.emoji} ${lesson.title}'),
        ),
        body: SafeArea(
          bottom: true,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Lesson title
                Text(
                  lesson.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                const SizedBox(height: 8),

                // Lesson subtitle
                Text(
                  lesson.subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: AppColors.subtext),
                ),

                const SizedBox(height: 24),

                // Lesson content
                if (lesson.content.isEmpty)
                  _buildEmptyContentMessage(context)
                else
                  _buildContentSection(context, lesson.content),

                const SizedBox(height: 32),

                // Practice scenarios section
                _buildScenariosSection(context, lesson),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyContentMessage(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          const Icon(
            Icons.article_outlined,
            size: 48,
            color: AppColors.subtext,
          ),
          const SizedBox(height: 16),
          Text(
            'This lesson has no content yet.',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'We\'re working on creating great content for this lesson. Check back soon!',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildContentSection(BuildContext context, String content) {
    // Simple markdown-like rendering
    final lines = content.split('\n');
    final widgets = <Widget>[];

    for (final line in lines) {
      if (line.trim().isEmpty) {
        widgets.add(const SizedBox(height: 8));
        continue;
      }

      if (line.startsWith('# ')) {
        // Main heading - skip since we already show the title
        continue;
      } else if (line.startsWith('## ')) {
        // Sub heading
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 12),
            child: Text(
              line.substring(3),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        );
      } else if (line.startsWith('- ')) {
        // Bullet point
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('• ', style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Text(
                    line.substring(2),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        // Regular paragraph
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              line,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        );
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }

  Widget _buildScenariosSection(BuildContext context, Lesson lesson) {
    // Import scenarios data for track 1 (for now)
    try {
      // This is a simplified approach - in a real app you'd have scenarios for all tracks
      if (kDebugMode) {
        debugPrint(
            'DEBUG: Building scenarios section for lesson ${lesson.id} in track ${track.id}');
      }

      if (track.id == 't1') {
        final scenarios = allScenariosByLesson[lesson.id] ?? [];

        if (scenarios.isNotEmpty) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Practice Scenarios',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: scenarios.length,
                  itemBuilder: (context, index) {
                    final scenario = scenarios[index];
                    return Container(
                      width: 280,
                      margin: const EdgeInsets.only(right: 16),
                      child: Card(
                        child: InkWell(
                          onTap: () {
                            openScenario(context, scenario);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Scenario ${index + 1}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  scenario.situation,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Spacer(),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Start Practice',
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.primary,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('DEBUG: Error loading scenarios for lesson ${lesson.id}: $e');
      }
    }

    // Fallback when no scenarios available
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Practice Scenarios',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Scenarios for this lesson will be available soon.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  // Scenario selection handler
  void openScenario(BuildContext context, Scenario s) {
    final lessonRepository = LessonRepository();
    final lesson = lessonRepository.byId(lessonId);

    if (lesson == null) return;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ScenarioPage(
            lessonTitle: lesson.title,
            scenario: s,
            lesson: lesson,
            track: track,
            onBack: () => Navigator.pop(context),
            onComplete: () {
              // mark progress, then navigate to your existing "Lesson Complete" screen
              // e.g., progressService.markScenarioComplete(lessonId, s.id);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => LessonCompleteScreen(
                    track: track,
                    lesson: lesson,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
