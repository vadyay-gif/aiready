import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/scenario.dart';
import '../models/lesson.dart';
import '../models/track.dart';
import '../data/app_catalog.dart';
import '../services/guided_onboarding.dart';
import '../widgets/guided_overlay.dart';
import 'task_screen.dart';

class ScenarioScreen extends StatefulWidget {
  final int trackIndex;
  final int lessonIndex;
  final int scenarioIndex;
  final Scenario? scenario; // Keep for backward compatibility
  final Lesson? lesson; // Keep for backward compatibility
  final Track? track; // Keep for backward compatibility

  const ScenarioScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
    required this.scenarioIndex,
    this.scenario,
    this.lesson,
    this.track,
  });

  @override
  State<ScenarioScreen> createState() => _ScenarioScreenState();
}

class _ScenarioScreenState extends State<ScenarioScreen> {
  late String currentOutput;
  int? selectedRefinementIndex;
  int _selectedVariantIndex = -1;
  final GlobalKey _taskButtonKey = GlobalKey();
  final GlobalKey _situationKey = GlobalKey();
  final GlobalKey _promptKey = GlobalKey();
  final GlobalKey _responseKey = GlobalKey();
  final GlobalKey _variantsKey = GlobalKey();
  final GlobalKey _proTipKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  int _currentSectionIndex = 0; // 0 = situation, 1 = prompt, 2 = response, 3 = variants, 4 = pro tip

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // Get section information for guided walkthrough
  List<_SectionInfo> _getSections(ScenarioDef scenarioDef) {
    final sections = <_SectionInfo>[];
    
    sections.add(_SectionInfo(
      key: _situationKey,
      title: 'Situation',
      explanation: 'This describes the real work situation you\'re facing.',
    ));
    
    sections.add(_SectionInfo(
      key: _promptKey,
      title: 'Suggested Prompt',
      explanation: 'This is an example of how to ask AI for help with this situation.',
    ));
    
    sections.add(_SectionInfo(
      key: _responseKey,
      title: "AI's Response",
      explanation: 'This shows how AI responds to the prompt.',
    ));
    
    if ((scenarioDef.variants?.isNotEmpty ?? false)) {
      sections.add(_SectionInfo(
        key: _variantsKey,
        title: 'Adjust the Result',
        explanation: 'You can refine AI\'s response to better match what you need.',
      ));
    }
    
    if ((scenarioDef.proTip ?? "").trim().isNotEmpty) {
      sections.add(_SectionInfo(
        key: _proTipKey,
        title: 'Pro Tip',
        explanation: 'This tip helps you use AI more effectively.',
      ));
    }
    
    return sections;
  }
  
  void _nextSection() {
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    final sections = _getSections(scenarioDef);
    
    if (_currentSectionIndex < sections.length - 1) {
      setState(() {
        _currentSectionIndex++;
      });
    } else {
      // All sections viewed, progress to task
      GuidedOnboarding.goTo(GuidedOnboardingStep.taskIntro);
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedVariantIndex = -1;
    // Get data from the new catalog
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];

    currentOutput = scenarioDef.output;
  }

  @override
  void didUpdateWidget(covariant ScenarioScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.trackIndex != widget.trackIndex ||
        oldWidget.lessonIndex != widget.lessonIndex ||
        oldWidget.scenarioIndex != widget.scenarioIndex) {
      _selectedVariantIndex = -1; // new scenario => back to base response
    }
  }

  List<ResponseVariant> _effectiveVariants(ScenarioDef s) {
    // Authored-only variants; no auto-fallbacks
    return (s.variants ?? const <ResponseVariant>[]);
  }

  String _effectiveOutput(ScenarioDef s) {
    final base = s.output.trim();
    return base;
  }

  // Removed auto-generated fallback variants: authored only

  String _displayResponse(ScenarioDef s) {
    final variants = _effectiveVariants(s);
    final hasChoice =
        _selectedVariantIndex >= 0 && _selectedVariantIndex < variants.length;
    if (hasChoice) return variants[_selectedVariantIndex].response;
    return s.output.trim();
  }

  Widget _buildVariantChips(ScenarioDef s) {
    final variants = _effectiveVariants(s);
    if (variants.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: List<Widget>.generate(variants.length, (i) {
        final v = variants[i];
        final selected = _selectedVariantIndex == i;
        return ChoiceChip(
          label: Text(v.label),
          selected: selected,
          onSelected: (_) {
            setState(() {
              _selectedVariantIndex = selected ? -1 : i;
            });
            if (kDebugMode) {
              debugPrint(
                  'Refinement -> variant $_selectedVariantIndex for ${s.title}');
            }
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get data from the new catalog
    final trackDef = kTracks[widget.trackIndex];
    final lessonDef = trackDef.lessons[widget.lessonIndex];
    final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
    final variants = _effectiveVariants(scenarioDef);
    final hasVariants = variants.isNotEmpty;
    final hasTask = scenarioDef.task != null;
    final output = _effectiveOutput(scenarioDef);
    final bottomInset = MediaQuery.of(context).padding.bottom;

    // Debug print for scenario source
    if (kDebugMode) {
      debugPrint(
          'Scenario page -> ${scenarioDef.title} (task hidden, takeaway hidden)');
    }

    assert(() {
      void devGuard(bool cond, String name) {
        if (!cond) {
          throw FlutterError(
              'Missing authored $name for scenario: ${scenarioDef.title}');
        }
      }

      devGuard(scenarioDef.situation.trim().isNotEmpty, 'situation');
      devGuard(scenarioDef.prompt.trim().isNotEmpty, 'prompt');
      devGuard(output.trim().isNotEmpty, 'output');
      devGuard(scenarioDef.takeaway.trim().isNotEmpty, 'takeaway');
      devGuard(variants.isNotEmpty, 'variants');
      return true;
    }());

    final isGuided = GuidedOnboarding.isActive &&
        GuidedOnboarding.step == GuidedOnboardingStep.scenarioOverview &&
        widget.trackIndex == 0 &&
        widget.lessonIndex == 0 &&
        widget.scenarioIndex == 0; // Only for Track 1, Lesson 1, Scenario 1

    return Scaffold(
      appBar: AppBar(title: Text(scenarioDef.title)),
      body: Stack(
        children: [
          SafeArea(
            top: true,
            bottom: false,
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.fromLTRB(16, 16, 16, 24 + bottomInset),
          children: [
            // 1. Situation
            SizedBox(
              key: isGuided ? _situationKey : null,
              child: _SectionCard(
                title: 'Situation',
                child: Text(
                  scenarioDef.situation,
                  style: const TextStyle(fontSize: 16, height: 1.4),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 2. Suggested Prompt
            SizedBox(
              key: isGuided ? _promptKey : null,
              child: _SectionCard(
                title: 'Suggested Prompt',
                child: SelectableText(
                  scenarioDef.prompt,
                  style: const TextStyle(fontSize: 16, height: 1.4),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 3. AI's Response
            SizedBox(
              key: isGuided ? _responseKey : null,
              child: _SectionCard(
                title: "AI's Response",
                child: Text(
                  _displayResponse(scenarioDef),
                  style: const TextStyle(fontSize: 16, height: 1.4),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 4. Adjust the Result
            if (hasVariants) ...[
              SizedBox(
                key: isGuided ? _variantsKey : null,
                child: _SectionCard(
                  title: "Adjust the Result",
                  child: _buildVariantChips(scenarioDef),
                ),
              ),
              const SizedBox(height: 16),
            ],

            // 5. Pro Tip
            if ((scenarioDef.proTip ?? "").trim().isNotEmpty) ...[
              SizedBox(
                key: isGuided ? _proTipKey : null,
                child: _SectionCard(
                  title: "Pro Tip",
                  child: Text((scenarioDef.proTip ?? "").trim()),
                ),
              ),
              const SizedBox(height: 16),
            ],

            // Task and Takeaway moved off the Scenario screen by design.
          ],
            ),
          ),
          if (isGuided) ...[
            Builder(
              builder: (context) {
                final trackDef = kTracks[widget.trackIndex];
                final lessonDef = trackDef.lessons[widget.lessonIndex];
                final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
                final sections = _getSections(scenarioDef);
                
                if (_currentSectionIndex >= sections.length) {
                  // All sections viewed, no overlay needed
                  return const SizedBox.shrink();
                }
                
                final currentSection = sections[_currentSectionIndex];
                final isLastSection = _currentSectionIndex == sections.length - 1;
                return GuidedOverlay(
                  text: currentSection.explanation,
                  highlightedKey: currentSection.key,
                  secondHighlightedKey: isLastSection ? _taskButtonKey : null, // Also highlight button on last section
                  scrollController: _scrollController,
                  showContinueButton: !isLastSection, // No Continue button on last section
                  continueButtonText: 'Next',
                  onContinue: _nextSection,
                );
              },
            ),
          ],
        ],
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: Builder(
            builder: (context) {
              final trackDef = kTracks[widget.trackIndex];
              final lessonDef = trackDef.lessons[widget.lessonIndex];
              final scenarioDef = lessonDef.scenarios[widget.scenarioIndex];
              final sections = _getSections(scenarioDef);
              // Button is visible when not guided, all sections viewed, or viewing the last section
              final allSectionsViewed = !isGuided || 
                  _currentSectionIndex >= sections.length ||
                  (isGuided && _currentSectionIndex == sections.length - 1);
              
              return SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  key: (isGuided && allSectionsViewed) ? _taskButtonKey : null,
                  onPressed: hasTask && allSectionsViewed
                      ? () {
                          if (isGuided) {
                            GuidedOnboarding.goTo(GuidedOnboardingStep.taskIntro);
                          }
                          _navigateToTask();
                        }
                      : null,
                  child: Text(hasTask ? 'Try the Task' : 'Task is being prepared'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _navigateToTask() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => TaskScreen(
          trackIndex: widget.trackIndex,
          lessonIndex: widget.lessonIndex,
          scenarioIndex: widget.scenarioIndex,
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final Widget child;

  const _SectionCard({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
          )
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

class _SectionInfo {
  const _SectionInfo({
    required this.key,
    required this.title,
    required this.explanation,
  });

  final GlobalKey key;
  final String title;
  final String explanation;
}
