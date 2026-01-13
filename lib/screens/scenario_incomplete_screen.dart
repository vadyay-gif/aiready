import 'package:flutter/material.dart';
import '../data/app_catalog.dart';
import 'task_screen.dart';
import 'scenario_choice_screen.dart';
import 'scenario_screen.dart';
import 'track_screen.dart';

class ScenarioIncompleteScreen extends StatelessWidget {
  final int trackIndex;
  final int lessonIndex;
  final int scenarioIndex;

  const ScenarioIncompleteScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
    required this.scenarioIndex,
  });

  @override
  Widget build(BuildContext context) {
    final trackDef = kTracks[trackIndex];
    final lessonDef = trackDef.lessons[lessonIndex];
    final scenarioDef = lessonDef.scenarios[scenarioIndex];
    final bottomInset = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenario Incomplete'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 24 + bottomInset),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Warning icon
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.orange.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
                child: const Icon(
                  Icons.warning,
                  color: Colors.orange,
                  size: 40,
                ),
              ),
              const SizedBox(height: 24),

              // Headline
              Text(
                'Not finished yet',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),

              // Body
              Text(
                'You skipped the task in ${scenarioDef.title}',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Complete Task (filled)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _navigateToTask(context),
                  child: const Text('Complete Task'),
                ),
              ),
              const SizedBox(height: 12),
              // Next Scenario (outlined)
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => _navigateToNextScenario(context),
                  child: const Text('Next Scenario'),
                ),
              ),
              const SizedBox(height: 12),
              // Choose Lesson (outlined)
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => _navigateToLesson(context),
                  child: const Text('Choose Lesson'),
                ),
              ),
              const SizedBox(height: 12),
              // Choose Track (outlined)
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => _navigateToTrack(context),
                  child: const Text('Choose Track'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToTask(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => TaskScreen(
          trackIndex: trackIndex,
          lessonIndex: lessonIndex,
          scenarioIndex: scenarioIndex,
        ),
      ),
    );
  }

  void _navigateToNextScenario(BuildContext context) {
    final trackDef = kTracks[trackIndex];
    final lessonDef = trackDef.lessons[lessonIndex];

    // Navigate to next scenario if available, otherwise to lesson screen
    if (scenarioIndex + 1 < lessonDef.scenarios.length) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ScenarioScreen(
            trackIndex: trackIndex,
            lessonIndex: lessonIndex,
            scenarioIndex: scenarioIndex + 1,
          ),
        ),
      );
    } else {
      // No more scenarios, go to lesson screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ScenarioChoiceScreen(
            trackIndex: trackIndex,
            lessonIndex: lessonIndex,
          ),
        ),
      );
    }
  }

  void _navigateToLesson(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => TrackScreen(trackIndex: trackIndex),
      ),
    );
  }

  void _navigateToTrack(BuildContext context) {
    // Navigate back to home screen (track list)
    Navigator.popUntil(context, (route) => route.isFirst);
  }
}
