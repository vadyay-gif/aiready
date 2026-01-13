import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/app_catalog.dart';
import '../widgets/scenario_option_tile.dart';
import 'scenario_screen.dart';

class ScenarioChoiceScreen extends StatelessWidget {
  final int trackIndex;
  final int lessonIndex;

  const ScenarioChoiceScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
  });

  @override
  Widget build(BuildContext context) {
    final trackDef = kTracks[trackIndex];
    final lessonDef = trackDef.lessons[lessonIndex];
    final scenarios = lessonDef.scenarios;
    final bottomInset = MediaQuery.of(context).padding.bottom;

    if (kDebugMode) {
      debugPrint('Nav: Track -> ScenarioChoice | ${trackDef.title} / ${lessonDef.title}');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a Scenario'),
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
                          return ScenarioOptionTile(
                            title: scenario.title,
                            subtitle: scenario.situation.split('.').first,
                            icon: Icons.assignment_outlined,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ScenarioScreen(
                                    trackIndex: trackIndex,
                                    lessonIndex: lessonIndex,
                                    scenarioIndex: index,
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
}

