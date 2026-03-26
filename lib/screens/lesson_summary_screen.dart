import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/app_catalog.dart';
import '../widgets/app_block.dart';
import '../widgets/section_title.dart';
import '../services/progress_store.dart';
import 'lesson_screen.dart'; // this is the Scenario Picker screen

class LessonSummaryScreen extends StatelessWidget {
  final int trackIndex;
  final int lessonIndex;

  const LessonSummaryScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
  });

  @override
  Widget build(BuildContext context) {
    final lesson = kTracks[trackIndex].lessons[lessonIndex];

    // Cap extreme OS text scaling only on this page to avoid overflows
    final media = MediaQuery.of(context)
        .copyWith(textScaler: const TextScaler.linear(1.0));

    final store = context.watch<ProgressStore>();
    final trackTitle = kTracks[trackIndex].title;
    final scen1Done = store.isScenarioCompleted(trackTitle, lessonIndex, 0);

    return MediaQuery(
      data: media,
      child: Scaffold(
        appBar: AppBar(
          title:
              Text(lesson.title, maxLines: 1, overflow: TextOverflow.ellipsis),
        ),
        body: SafeArea(
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: ListView(
              children: [
                Text(lesson.title,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 8),
                Text(
                    'Write clear emails fast', // <-- optional subtitle text; keep/edit per lesson
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: const Color(0x99000000))),
                const SizedBox(height: 20),
                const SectionTitle("What you'll learn:"),
                const AppBlock(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• Structure emails for clarity'),
                      SizedBox(height: 6),
                      Text('• Adapt tone for different audiences'),
                      SizedBox(height: 6),
                      Text('• Use AI to draft and refine content'),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                AppBlock(
                  child: Text(
                    'Complete the scenarios below to master this lesson.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 20),
                if (!scen1Done) ...[
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Start with Scenario 1 directly
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => LessonScreen(
                                    // Scenario Picker screen; we pass a flag to auto-open 1st
                                    trackIndex: trackIndex,
                                    lessonIndex: lessonIndex,
                                    startWithFirstScenario: true,
                                  ),
                                ));
                          },
                          child: const Text('Start Scenario 1'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LessonScreen(
                            trackIndex: trackIndex,
                            lessonIndex: lessonIndex,
                          ),
                        ));
                  },
                  child: const Text('Choose a Scenario'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
