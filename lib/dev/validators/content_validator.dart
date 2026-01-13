import 'package:flutter/foundation.dart';
import '../../data/app_catalog.dart';

List<TrackDef> validateCatalog(List<TrackDef> tracks) {
  final List<TrackDef> validTracks = [];
  final List<String> warnings = [];

  // Expected lessons per authored scope
  const int expectedLessons = 5;
  const int expectedScenarios = 3;

  for (int t = 0; t < tracks.length; t++) {
    final track = tracks[t];
    bool trackValid = true;

    // Only enforce strictness for Tracks 3–9 (index 2..8)
    if (t >= 2 && t <= 8) {
      if (track.lessons.length != expectedLessons) {
        if (kDebugMode) {
          debugPrint(
              'WARN Content: track="${track.title}" expected $expectedLessons lessons, found ${track.lessons.length} — skipping.');
        }
        trackValid = false;
      } else {
        // Check lessons and scenarios
        for (int l = 0; l < track.lessons.length; l++) {
          final lesson = track.lessons[l];
          if (lesson.scenarios.length != expectedScenarios) {
            if (kDebugMode) {
              debugPrint(
                  'WARN Content: lesson="${lesson.title}" in track="${track.title}" expected $expectedScenarios scenarios, found ${lesson.scenarios.length} — skipping track.');
            }
            trackValid = false;
            break;
          }

          for (int s = 0; s < lesson.scenarios.length; s++) {
            final scenario = lesson.scenarios[s];

            String ctx() =>
                "track='${track.title}' lesson='${lesson.title}' scenario='${scenario.title}'";

            // Check for unescaped dollar signs in content strings
            void checkUnescapedDollars(String content, String fieldName) {
              if (RegExp(r'[^\\]\$').hasMatch(content)) {
                if (kDebugMode) {
                  debugPrint(r'WARN Content: Unescaped $ found; use \$ in text.');
                }
              }
            }

            // Check required authored fields
            if (scenario.situation.trim().isEmpty) {
              warnings.add('[MISSING situation] ${ctx()}');
            } else {
              checkUnescapedDollars(scenario.situation, 'situation');
            }
            if (scenario.prompt.trim().isEmpty) {
              warnings.add('[MISSING prompt] ${ctx()}');
            } else {
              checkUnescapedDollars(scenario.prompt, 'prompt');
            }
            if (scenario.output.trim().isEmpty) {
              if (kDebugMode) {
                debugPrint(
                    'WARN Content: scenario="${scenario.title}" in lesson="${lesson.title}" has empty output — skipping track.');
              }
              trackValid = false;
              break;
            } else {
              checkUnescapedDollars(scenario.output, 'output');
            }
            if (scenario.takeaway.trim().isEmpty) {
              warnings.add('[MISSING takeaway] ${ctx()}');
            } else {
              checkUnescapedDollars(scenario.takeaway, 'takeaway');
            }

            // Optional, but expected per goal: proTip and task
            if ((scenario.proTip ?? '').trim().isEmpty) {
              warnings.add('[MISSING proTip] ${ctx()}');
            } else {
              checkUnescapedDollars(scenario.proTip!, 'proTip');
            }
            if (scenario.task == null) {
              warnings.add('[MISSING task] ${ctx()}');
            }

            // Variants must exist and be valid
            final variants = scenario.variants ?? const <ResponseVariant>[];
            if (variants.isEmpty) {
              if (kDebugMode) {
                debugPrint(
                    'WARN Content: scenario="${scenario.title}" in lesson="${lesson.title}" has no variants — skipping track.');
              }
              trackValid = false;
              break;
            }
            for (final v in variants) {
              if (v.label.trim().isEmpty || v.response.trim().isEmpty) {
                warnings.add(
                    '[INVALID variant] ${ctx()} label/response must be non-empty');
              } else {
                checkUnescapedDollars(v.label, 'variant.label');
                checkUnescapedDollars(v.response, 'variant.response');
              }
            }
          }
          if (!trackValid) break;
        }
      }
    }

    if (trackValid) {
      validTracks.add(track);
    }
  }

  // Emit warnings
  if (kDebugMode) {
    for (final w in warnings) {
      debugPrint(w);
    }

    debugPrint(
        '✅ Content validation: ${validTracks.length}/${tracks.length} tracks valid');
  }
  return validTracks;
}
