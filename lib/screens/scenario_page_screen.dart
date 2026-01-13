import 'package:flutter/material.dart';
import '../models/scenario.dart';
import '../models/lesson.dart';
import '../models/track.dart';

class ScenarioPage extends StatefulWidget {
  final String lessonTitle; // e.g., "The 5-Minute Email Superpower"
  final Scenario scenario; // data
  final Lesson lesson; // lesson data
  final Track track; // track data
  final VoidCallback onBack;
  final VoidCallback onComplete; // navigate to "Lesson Complete"

  const ScenarioPage({
    super.key,
    required this.lessonTitle,
    required this.scenario,
    required this.lesson,
    required this.track,
    required this.onBack,
    required this.onComplete,
  });

  @override
  State<ScenarioPage> createState() => _ScenarioPageState();
}

class _ScenarioPageState extends State<ScenarioPage> {
  int? selectedRefinementIndex;

  String get _displayedOutput {
    if (selectedRefinementIndex == null) return widget.scenario.baseOutput;
    return widget.scenario.refinements[selectedRefinementIndex!].output;
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.scenario;
    final bottomInset = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lessonTitle),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back), onPressed: widget.onBack),
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: ListView(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 24 + bottomInset),
          children: [
            // Situation
            _Card(title: 'Situation', child: Text(s.situation)),
            const SizedBox(height: 12),

            // Prompt
            _Card(title: 'Prompt', child: SelectableText(s.prompt)),
            const SizedBox(height: 12),

            // Output
            _Card(title: 'Output', child: SelectableText(_displayedOutput)),
            const SizedBox(height: 12),

            // Refinements as buttons
            _Card(
              title: 'Refinements',
              child: Wrap(
                children: List.generate(s.refinements.length, (i) {
                  final selected = selectedRefinementIndex == i;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 8),
                    child: ChoiceChip(
                      label: Text(s.refinements[i].label),
                      selected: selected,
                      onSelected: (selected) => setState(() {
                        selectedRefinementIndex = selected ? null : i;
                      }),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 12),

            // Key Takeaway
            _Card(title: 'Key Takeaway', child: Text(s.takeaway)),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: widget.onBack,
                  child: const Text('Back'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.onComplete,
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String title;
  final Widget child;
  const _Card({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8)
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        child,
      ]),
    );
  }
}
