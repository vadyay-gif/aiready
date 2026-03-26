import 'package:flutter/material.dart';
import '../../models/track.dart';
import '../../models/lesson.dart';
import '../../models/scenario.dart';
import '../../data/scenarios_registry.dart';
import '../../data/app_catalog.dart';
import '../scenario_screen.dart';

class ScenarioChoiceScreen extends StatelessWidget {
  final Track track;
  final Lesson lesson;

  const ScenarioChoiceScreen({
    super.key,
    required this.track,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    // Get scenarios for this lesson from the centralized registry
    final scenarios = allScenariosByLesson[lesson.id] ?? [];
    final bottomInset = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a Scenario'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the track screen (not the intro screen)
            Navigator.popUntil(
              context,
              (route) => route.isFirst,
            );
          },
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 24 + bottomInset),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select a scenario to practice:',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: scenarios.isEmpty
                    ? const Center(
                        child: Text(
                          'No scenarios available for this lesson yet.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    : ListView.separated(
                        itemCount: scenarios.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 12),
                        itemBuilder: (context, index) {
                          final scenario = scenarios[index];
                          return _ScenarioCard(
                            scenario: scenario,
                            onTap: () {
                              // Find the track and lesson indices for the new ScenarioScreen
                              final trackIndex = _findTrackIndex(track.id);
                              final lessonIndex =
                                  _findLessonIndex(trackIndex, lesson.id);
                              final scenarioIndex = _findScenarioIndex(
                                  trackIndex, lessonIndex, scenario.id);

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ScenarioScreen(
                                    trackIndex: trackIndex,
                                    lessonIndex: lessonIndex,
                                    scenarioIndex: scenarioIndex,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int _findTrackIndex(String trackId) {
    for (int i = 0; i < kTracks.length; i++) {
      if (getTrackId(i) == trackId) {
        return i;
      }
    }
    return 0; // fallback
  }

  int _findLessonIndex(int trackIndex, String lessonId) {
    for (int i = 0; i < kTracks[trackIndex].lessons.length; i++) {
      if (getLessonId(trackIndex, i) == lessonId) {
        return i;
      }
    }
    return 0; // fallback
  }

  int _findScenarioIndex(int trackIndex, int lessonIndex, String scenarioId) {
    final scenarios =
        getScenariosForLesson(getLessonId(trackIndex, lessonIndex));
    for (int i = 0; i < scenarios.length; i++) {
      if (scenarios[i].id == scenarioId) {
        return i;
      }
    }
    return 0; // fallback
  }
}

class _ScenarioCard extends StatelessWidget {
  final Scenario scenario;
  final VoidCallback onTap;

  const _ScenarioCard({
    required this.scenario,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 84,
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Icon(Icons.assignment_outlined),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      scenario.id
                          .split('_')
                          .last
                          .toUpperCase(), // Use scenario ID as title
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      scenario.situation
                          .split('.')
                          .first, // First sentence of situation
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withValues(alpha: 0.7),
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
