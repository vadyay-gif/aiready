import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/app_catalog.dart';
import '../services/guided_onboarding.dart';
import '../widgets/guided_overlay.dart';
import 'scenario_choice_screen.dart';

class ScenarioCompleteScreen extends StatefulWidget {
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
  State<ScenarioCompleteScreen> createState() => _ScenarioCompleteScreenState();
}

class _ScenarioCompleteScreenState extends State<ScenarioCompleteScreen> {
  final GlobalKey _takeawayKey = GlobalKey();
  final GlobalKey _backToTracksKey = GlobalKey();
  final GlobalKey _anotherScenarioKey = GlobalKey();
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
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    final bottomInset = MediaQuery.of(context).padding.bottom;
    final isGuided = GuidedOnboarding.isActive &&
        GuidedOnboarding.step == GuidedOnboardingStep.resultsTakeaway &&
        widget.trackIndex == 0 &&
        widget.lessonIndex == 0 &&
        widget.scenarioIndex == 0;

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
      body: Stack(
        children: [
          SafeArea(
            top: true,
            bottom: false,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  controller: _scrollController,
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 24 + bottomInset),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight - 32, // Account for padding
                    ),
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
                    key: isGuided ? _takeawayKey : null,
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
                );
              },
            ),
          ),
          if (isGuided)
            GuidedOverlay(
              text:
                  "Each scenario ends with one key idea.\nThis is what you should remember.",
              highlightedKey: _takeawayKey,
              scrollController: _scrollController,
            ),
          // Bottom buttons - positioned in Stack so overlay can cover them
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              bottom: true,
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Back to Tracks (outlined)
                    SizedBox(
                      key: isGuided ? _backToTracksKey : null,
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () => _navigateToTracks(context),
                        child: const Text('Back to Tracks'),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Another Scenario (filled) - covered by overlay during guided onboarding
                    SizedBox(
                      key: isGuided ? _anotherScenarioKey : null,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: isGuided
                            ? null
                            : () => _navigateToAnotherScenario(context),
                        child: const Text('Another Scenario'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Dim the "Another Scenario" button during guided onboarding
          if (isGuided)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SafeArea(
                top: false,
                bottom: true,
                child: IgnorePointer(
                  ignoring: false,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 52), // Height of "Back to Tracks" button + spacing
                        Container(
                          width: double.infinity,
                          height: 48, // Height of "Another Scenario" button
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.45),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _navigateToTracks(BuildContext context) {
    // Progress guided onboarding if active
    final isGuided = GuidedOnboarding.isActive &&
        GuidedOnboarding.step == GuidedOnboardingStep.resultsTakeaway &&
        widget.trackIndex == 0 &&
        widget.lessonIndex == 0 &&
        widget.scenarioIndex == 0;
    if (isGuided) {
      GuidedOnboarding.goTo(GuidedOnboardingStep.infoSettings);
    }
    // Navigate back to home screen (track list)
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  void _navigateToAnotherScenario(BuildContext context) {
    // Navigate to lesson screen to choose another scenario
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ScenarioChoiceScreen(
          trackIndex: widget.trackIndex,
          lessonIndex: widget.lessonIndex,
        ),
      ),
    );
  }
}
