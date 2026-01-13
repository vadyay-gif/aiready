import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:ai_ready/data/app_catalog.dart';

void main() {
  test('Export all scenario texts to export/scenarios.json', () async {
    final Map<String, dynamic> export = {
      'tracks': <dynamic>[],
    };

    for (int t = 0; t < kTracks.length; t++) {
      final track = kTracks[t];
      final trackOut = <String, dynamic>{
        'index': t + 1,
        'id': 't${t + 1}',
        'title': track.title,
        'lessons': <dynamic>[],
      };

      for (int l = 0; l < track.lessons.length; l++) {
        final lesson = track.lessons[l];
        final lessonId = getLessonId(t, l);
        final lessonOut = <String, dynamic>{
          'index': l + 1,
          'id': lessonId,
          'title': lesson.title,
          if (lesson.subtitle != null) 'subtitle': lesson.subtitle,
          if (lesson.objectives != null) 'objectives': lesson.objectives,
          'scenarios': <dynamic>[],
        };

        for (int s = 0; s < lesson.scenarios.length; s++) {
          final scen = lesson.scenarios[s];
          final scenarioId = getScenarioId(t, l, s);
          lessonOut['scenarios'].add(<String, dynamic>{
            'index': s + 1,
            'id': scenarioId,
            'title': scen.title,
            'situation': scen.situation,
            'prompt': scen.prompt,
            'output': scen.output,
            'refinements': scen.refinements,
            'takeaway': scen.takeaway,
            if (scen.proTip != null) 'proTip': scen.proTip,
            if (scen.task != null)
              'task': <String, dynamic>{
                'goal': scen.task!.goal,
                'coachingNote': scen.task!.coachingNote,
                'assembledPromptExample': scen.task!.assembledPromptExample,
                'pieces': scen.task!.pieces
                    .map((p) => {
                          'text': p.text,
                          'isCorrect': p.isCorrect,
                        })
                    .toList(),
              },
            if (scen.variants != null)
              'variants': scen.variants!
                  .map((v) => {
                        'label': v.label,
                        'response': v.response,
                      })
                  .toList(),
          });
        }

        trackOut['lessons'].add(lessonOut);
      }

      export['tracks'].add(trackOut);
    }

    final outDir = Directory('export');
    if (!await outDir.exists()) {
      await outDir.create(recursive: true);
    }

    final outFile = File('export/scenarios.json');
    await outFile.writeAsString(const JsonEncoder.withIndent('  ').convert(export));

    // Basic assertion to ensure file is written and non-empty
    expect(await outFile.exists(), isTrue);
    expect(await outFile.length(), greaterThan(10));
  });
}

