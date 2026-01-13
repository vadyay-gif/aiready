import 'package:flutter/material.dart';
import '../data/app_catalog.dart';
import '../widgets/app_block.dart';
import 'home_screen.dart';
import 'scenario_choice_screen.dart';

class LessonCompleteScreen extends StatelessWidget {
  final int trackIndex;
  final int lessonIndex;
  const LessonCompleteScreen(
      {super.key, required this.trackIndex, required this.lessonIndex});

  @override
  Widget build(BuildContext context) {
    final lesson = kTracks[trackIndex].lessons[lessonIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Lesson Complete')),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
          child: Column(
            children: [
              const SizedBox(height: 12),
              const Icon(Icons.check_circle,
                  size: 96, color: Color(0xFF2ECC71)),
              const SizedBox(height: 16),
              Text('Great job!',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: 8),
              Text(
                "You've completed a scenario in ${lesson.title}",
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              AppBlock(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          // Back to tracks (home)
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const HomeScreen()),
                            (route) => false,
                          );
                        },
                        child: const Text('Back to Tracks'),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Another scenario → open the picker again
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ScenarioChoiceScreen(
                                  trackIndex: trackIndex,
                                  lessonIndex: lessonIndex),
                            ),
                          );
                        },
                        child: const Text('Another Scenario'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
