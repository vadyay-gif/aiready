import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/track.dart';
import '../services/progress_service.dart';
import '../services/guided_onboarding.dart';
import '../widgets/lesson_bar.dart';
import '../widgets/guided_overlay.dart';
import '../data/app_catalog.dart';
import 'scenario_choice_screen.dart';

class TrackScreen extends StatefulWidget {
  final int trackIndex;
  final Track? track; // Keep for backward compatibility

  const TrackScreen({super.key, required this.trackIndex, this.track});

  @override
  State<TrackScreen> createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  final GlobalKey _lesson1Key = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use the new unified catalog
    final trackDef = kTracks[widget.trackIndex];
    final lessons = trackDef.lessons;
    final progressService = ProgressService();
    final media = MediaQuery.of(context)
        .copyWith(textScaler: const TextScaler.linear(1.0));
    final isGuided = GuidedOnboarding.isActive &&
        GuidedOnboarding.step == GuidedOnboardingStep.lessonSelection &&
        widget.trackIndex == 0; // Only for Track 1

    return MediaQuery(
      data: media,
      child: Scaffold(
        appBar: AppBar(
          title: Text(trackDef.title),
        ),
        body: Stack(
          children: [
            _buildHorizontalBarLayout(context, lessons, progressService),
            if (isGuided)
              GuidedOverlay(
                text: "Lessons focus on one specific skill.\nChoose the first lesson.",
                highlightedKey: _lesson1Key,
                scrollController: _scrollController,
              ),
          ],
        ),
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
                    controller: _scrollController,
                    itemCount: lessons.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, i) {
                      final lesson = lessons[i];
                      final isGuided = GuidedOnboarding.isActive &&
                          GuidedOnboarding.step ==
                              GuidedOnboardingStep.lessonSelection &&
                          widget.trackIndex == 0;
                      final isGuidedTarget = isGuided && i == 0;
                      final allowTap = !isGuided || isGuidedTarget;

                      return FutureBuilder<bool>(
                        future: progressService
                            .isLessonComplete('t${widget.trackIndex + 1}_l${i + 1}'),
                        builder: (context, snapshot) {
                          final isCompleted = snapshot.data ?? false;
                          final progress = isCompleted ? 1.0 : null;

                          // Wrap with key if this is the target to ensure proper positioning
                          if (isGuidedTarget) {
                            return SizedBox(
                              key: _lesson1Key,
                              child: LessonBar(
                                title: lesson.title,
                                subtitle: null, // subtitles are hidden in LessonBar
                                progress: progress,
                                icon: _getTrackIcon('t${widget.trackIndex + 1}'),
                                onTap: () {
                                  if (!allowTap) return;
                                  if (isGuided && i == 0) {
                                    GuidedOnboarding.goTo(
                                        GuidedOnboardingStep.scenarioSelection);
                                  }
                                  _openLessonDetail(context, i);
                                },
                              ),
                            );
                          }
                          return LessonBar(
                            title: lesson.title,
                            subtitle: null, // subtitles are hidden in LessonBar
                            progress: progress,
                            icon: _getTrackIcon('t${widget.trackIndex + 1}'),
                            onTap: () {
                              if (!allowTap) return;
                              if (isGuided && i == 0) {
                                GuidedOnboarding.goTo(
                                    GuidedOnboardingStep.scenarioSelection);
                              }
                              _openLessonDetail(context, i);
                            },
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
      debugPrint('Nav: Track -> ScenarioChoice | ${kTracks[widget.trackIndex].title} / ${kTracks[widget.trackIndex].lessons[lessonIndex].title}');
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ScenarioChoiceScreen(
          trackIndex: widget.trackIndex,
          lessonIndex: lessonIndex,
        ),
      ),
    );
  }
}
