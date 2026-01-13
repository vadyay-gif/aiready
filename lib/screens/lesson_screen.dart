import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/lesson.dart';
import '../models/track.dart';
import 'scenario_choice_screen.dart';

class LessonScreen extends StatefulWidget {
  final int trackIndex;
  final int lessonIndex;
  final bool startWithFirstScenario;
  final Track? track; // Keep for backward compatibility
  final Lesson? lesson; // Keep for backward compatibility

  const LessonScreen({
    super.key,
    required this.trackIndex,
    required this.lessonIndex,
    this.startWithFirstScenario = false,
    this.track,
    this.lesson,
  });

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  void initState() {
    super.initState();

    // Redirect to ScenarioChoiceScreen for any remaining deep links
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (kDebugMode) {
        debugPrint('Redirected obsolete Lesson screen to ScenarioChoice');
      }
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => ScenarioChoiceScreen(
            trackIndex: widget.trackIndex,
            lessonIndex: widget.lessonIndex,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Render nothing because we immediately redirect
    return const SizedBox.shrink();
  }
}