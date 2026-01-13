import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/track.dart';
import '../services/progress_service.dart';
import '../widgets/lesson_bar.dart';
import '../data/app_catalog.dart';
import 'scenario_choice_screen.dart';

class TrackScreen extends StatelessWidget {
  final int trackIndex;
  final Track? track; // Keep for backward compatibility

  const TrackScreen({super.key, required this.trackIndex, this.track});

  @override
  Widget build(BuildContext context) {
    // Use the new unified catalog
    final trackDef = kTracks[trackIndex];
    final lessons = trackDef.lessons;
    final progressService = ProgressService();
    final media = MediaQuery.of(context)
        .copyWith(textScaler: const TextScaler.linear(1.0));

    return MediaQuery(
      data: media,
      child: Scaffold(
        appBar: AppBar(
          title: Text(trackDef.title),
        ),
        body: _buildHorizontalBarLayout(context, lessons, progressService),
      ),
    );
  }

  Widget _buildHorizontalBarLayout(
      BuildContext context, List lessons, ProgressService progressService) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 900),
        child: SafeArea(
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: lessons.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('No lessons available'),
                        SizedBox(height: 16),
                        BackButton(),
                      ],
                    ),
                  )
                : ListView.separated(
                    itemCount: lessons.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, i) {
                      final lesson = lessons[i];

                      return FutureBuilder<bool>(
                        future: progressService
                            .isLessonComplete('t${trackIndex + 1}_l${i + 1}'),
                        builder: (context, snapshot) {
                          final isCompleted = snapshot.data ?? false;
                          final progress = isCompleted ? 1.0 : null;

                          return LessonBar(
                            title: lesson.title,
                            subtitle: null, // subtitles are hidden in LessonBar
                            progress: progress,
                            icon: _getTrackIcon('t${trackIndex + 1}'),
                            onTap: () => _openLessonDetail(context, i),
                          );
                        },
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }

  IconData _getTrackIcon(String trackId) {
    switch (trackId) {
      case 't1': // Everyday Communication
        return Icons.menu_book_outlined;
      case 't2': // Reports & Summaries
        return Icons.description_outlined;
      case 't3': // Presentations
        return Icons.slideshow_outlined;
      case 't4': // Research & Brainstorming
        return Icons.lightbulb_outlined;
      case 't5': // Personal Productivity
        return Icons.schedule_outlined;
      case 't6': // Meetings & Notes with AI
        return Icons.event_note_outlined;
      case 't7': // Research & Analysis with AI
        return Icons.travel_explore_outlined;
      case 't8': // Marketing & Social with AI
        return Icons.campaign_outlined;
      case 't9': // Spreadsheets & Data with AI
        return Icons.table_chart_outlined;
      default: // Fallback for other tracks
        return Icons.menu_book_outlined;
    }
  }

  void _openLessonDetail(BuildContext context, int lessonIndex) {
    // Navigate directly to scenario choice screen
    if (kDebugMode) {
      debugPrint('Nav: Track -> ScenarioChoice | ${kTracks[trackIndex].title} / ${kTracks[trackIndex].lessons[lessonIndex].title}');
    }
    Navigator.push(
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
