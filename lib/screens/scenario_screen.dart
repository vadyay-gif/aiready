import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/scenario.dart';
import '../models/lesson.dart';
import '../models/track.dart';
import '../data/app_catalog.dart';
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

    return Scaffold(
      appBar: AppBar(title: Text(scenarioDef.title)),
      body: SafeArea(
        top: true,
        bottom: false,
        child: ListView(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 24 + bottomInset),
          children: [
            // 1. Situation
            _SectionCard(
              title: 'Situation',
              child: Text(
                scenarioDef.situation,
                style: const TextStyle(fontSize: 16, height: 1.4),
              ),
            ),
            const SizedBox(height: 16),

            // 2. What to Ask AI (Prompt)
            _SectionCard(
              title: 'What to Ask AI',
              child: SelectableText(
                scenarioDef.prompt,
                style: const TextStyle(fontSize: 16, height: 1.4),
              ),
            ),
            const SizedBox(height: 16),

            // 3. AI's Response
            _SectionCard(
              title: "AI's Response",
              child: Text(
                _displayResponse(scenarioDef),
                style: const TextStyle(fontSize: 16, height: 1.4),
              ),
            ),
            const SizedBox(height: 16),

            // 4. Adjust the Result
            if (hasVariants) ...[
              _SectionCard(
                title: "Adjust the Result",
                child: _buildVariantChips(scenarioDef),
              ),
              const SizedBox(height: 16),
            ],

            // 5. Pro Tip
            if ((scenarioDef.proTip ?? "").trim().isNotEmpty) ...[
              _SectionCard(
                title: "Pro Tip",
                child: Text((scenarioDef.proTip ?? "").trim()),
              ),
              const SizedBox(height: 16),
            ],

            // Task and Takeaway moved off the Scenario screen by design.
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: hasTask ? () => _navigateToTask() : null,
              child: Text(hasTask ? 'Try the Task' : 'Task is being prepared'),
            ),
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
