import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/app_catalog.dart';
import '../services/guided_onboarding.dart';
import '../widgets/scenario_option_tile.dart';
import '../widgets/guided_overlay.dart';
import 'scenario_screen.dart';

class ScenarioChoiceScreen extends StatefulWidget {
  final int trackIndex;
  final int lessonIndex;

  const ScenarioChoiceScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
  });

  @override
  State<ScenarioChoiceScreen> createState() => _ScenarioChoiceScreenState();
}

class _ScenarioChoiceScreenState extends State<ScenarioChoiceScreen> {
  final GlobalKey _scenario1Key = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarios = lessonDef.scenarios;
    final bottomInset = MediaQuery.of(context).padding.bottom;
    final isGuided = GuidedOnboarding.isActive &&
        GuidedOnboarding.step == GuidedOnboardingStep.scenarioSelection &&
        widget.trackIndex == 0 &&
        widget.lessonIndex == 0; // Only for Track 1, Lesson 1

    if (kDebugMode) {
      debugPrint('Nav: Track -> ScenarioChoice | ${trackDef.title} / ${lessonDef.title}');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a Scenario'),
      ),
      body: Stack(
        children: [
          SafeArea(
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
                            controller: _scrollController,
                            itemCount: scenarios.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 12),
                            itemBuilder: (context, index) {
                              final scenario = scenarios[index];
                              final isGuidedTarget = isGuided && index == 0;
                              final allowTap = !isGuided || isGuidedTarget;

                              final scenarioTile = ScenarioOptionTile(
                                title: scenario.title,
                                subtitle: scenario.situation.split('.').first,
                                icon: Icons.assignment_outlined,
                                onTap: () {
                                  if (!allowTap) return;
                                  if (isGuided && index == 0) {
                                    GuidedOnboarding.goTo(
                                        GuidedOnboardingStep.scenarioOverview);
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => ScenarioScreen(
                                        trackIndex: widget.trackIndex,
                                        lessonIndex: widget.lessonIndex,
                                        scenarioIndex: index,
                                      ),
                                    ),
                                  );
                                },
                              );

                              // Wrap with key if this is the target to ensure proper positioning
                              if (isGuidedTarget) {
                                return SizedBox(
                                  key: _scenario1Key,
                                  child: scenarioTile,
                                );
                              }
                              return scenarioTile;
                            },
                          ),
                  ),
                ],
              ),
            ),
          ),
          if (isGuided)
            GuidedOverlay(
              text:
                  "Scenarios are real work situations\nwhere AI can help.",
              highlightedKey: _scenario1Key,
              scrollController: _scrollController,
            ),
        ],
      ),
    );
  }
}

