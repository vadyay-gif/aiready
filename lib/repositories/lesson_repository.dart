import '../models/lesson.dart';
import 'package:flutter/foundation.dart';

class LessonRepository {
  static final LessonRepository _instance = LessonRepository._internal();
  factory LessonRepository() => _instance;

  late final Map<String, List<Lesson>> _lessonsByTrack;

  LessonRepository._internal() {
    _lessonsByTrack = {
      't1': lessonsByTrack['t1'] ?? [],
      't2': lessonsByTrack['t2'] ?? [],
      't3': lessonsByTrack['t3'] ?? [],
      't4': lessonsByTrack['t4'] ?? [],
      't5': lessonsByTrack['t5'] ?? [],
      't6': lessonsByTrack['t6'] ?? [],
      't7': lessonsByTrack['t7'] ?? [],
      't8': lessonsByTrack['t8'] ?? [],
      't9': lessonsByTrack['t9'] ?? [],
    };
  }

  /// Get a lesson by its ID
  Lesson? byId(String id) {
    for (final trackLessons in _lessonsByTrack.values) {
      for (final lesson in trackLessons) {
        if (lesson.id == id) {
          return lesson;
        }
      }
    }

    // Debug logging for missing lessons
    final availableIds = _lessonsByTrack.values
        .expand((lessons) => lessons)
        .map((lesson) => lesson.id)
        .toList();
    debugPrint(
        'DEBUG: Lesson with id "$id" not found. Available IDs: $availableIds');
    return null;
  }

  /// Get all lessons
  List<Lesson> all() {
    return _lessonsByTrack.values.expand((lessons) => lessons).toList();
  }

  /// Get lessons for a specific track
  List<Lesson> byTrack(String trackId) {
    return _lessonsByTrack[trackId] ?? [];
  }

  /// Get all track IDs
  List<String> get trackIds => _lessonsByTrack.keys.toList();

  /// Ensure all lessons have content (dev legacy). Placeholders disabled.
  void ensureAllLessonsHaveContent() {
    if (kDebugMode) {
      debugPrint(
          'DEBUG: Placeholder injection disabled; expecting authored content only.');
    }

    for (final trackId in _lessonsByTrack.keys) {
      final lessons = _lessonsByTrack[trackId]!;
      for (int i = 0; i < lessons.length; i++) {
        final lesson = lessons[i];

        if (lesson.content.isEmpty) {
          debugPrint(
              'WARNING: Lesson ${lesson.id} in track $trackId has empty content. Skipping placeholder injection.');
          continue;
        }
      }
    }

    if (kDebugMode) {
      debugPrint('DEBUG: Placeholder injection completed (no changes).');
    }
  }

  /// Validate all lessons have required content
  void validateLessons() {
    if (kDebugMode) {
      debugPrint('DEBUG: Validating lessons...');
    }
    int issues = 0;

    for (final trackId in _lessonsByTrack.keys) {
      final lessons = _lessonsByTrack[trackId]!;
      for (int i = 0; i < lessons.length; i++) {
        final lesson = lessons[i];

        if (lesson.id.isEmpty) {
          if (kDebugMode) {
            debugPrint('ERROR: Empty ID in track $trackId, lesson ${i + 1}');
          }
          issues++;
        }

        if (lesson.title.isEmpty) {
          if (kDebugMode) {
            debugPrint(
                'ERROR: Empty title for lesson ${lesson.id} in track $trackId');
          }
          issues++;
        }

        if (lesson.content.isEmpty) {
          if (kDebugMode) {
            debugPrint(
                'ERROR: Empty content for lesson ${lesson.id} in track $trackId');
          }
          issues++;
        }
      }
    }

    if (kDebugMode) {
      if (issues == 0) {
        debugPrint('DEBUG: All lessons validated successfully');
      } else {
        debugPrint('DEBUG: Found $issues validation issues');
      }
    }
  }
}
