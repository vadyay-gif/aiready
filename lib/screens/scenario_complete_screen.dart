import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/app_catalog.dart';
import 'scenario_choice_screen.dart';

class ScenarioCompleteScreen extends StatelessWidget {
  final int trackIndex;
  final int lessonIndex;
  final int scenarioIndex;

  const ScenarioCompleteScreen({
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

    // Debug print for scenario complete
    if (kDebugMode) {
      debugPrint(
          'Scenario complete -> takeaway shown: ${scenarioDef.takeaway.isNotEmpty}');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenario Complete'),
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
              // Green check icon
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(height: 24),

              // Headline
              Text(
                'Great job!',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),

              // Body
              Text(
                'You\'ve completed scenario ${scenarioDef.title}',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              // Key Takeaway
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Key Takeaway',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      scenarioDef.takeaway,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.4,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
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
              // Back to Tracks (outlined)
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => _navigateToTracks(context),
                  child: const Text('Back to Tracks'),
                ),
              ),
              const SizedBox(height: 12),
              // Another Scenario (filled)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _navigateToAnotherScenario(context),
                  child: const Text('Another Scenario'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToTracks(BuildContext context) {
    // Navigate back to home screen (track list)
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  void _navigateToAnotherScenario(BuildContext context) {
    // Navigate to lesson screen to choose another scenario
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
