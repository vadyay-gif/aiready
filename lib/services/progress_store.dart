import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProgressStore extends ChangeNotifier {
  static const int kOverallScenarioTarget = 135;
  static final ProgressStore _i = ProgressStore._();
  ProgressStore._();
  factory ProgressStore() => _i;

  final Map<String, int> _doneByTrack = {};
  final Map<String, int> _totalByTrack = {};
  bool _loaded = false;

  // Scenario completion flags
  final Set<String> _doneScenarios = {};

  /// Track 1 Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t1l1ChallengeScoreByScenario = {};

  /// Track 1 Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t1l2ChallengeScoreByScenario = {};

  /// Track 1 Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t1l3ChallengeScoreByScenario = {};
  final Map<int, int> _t1l4ChallengeScoreByScenario = {};
  final Map<int, int> _t1l5ChallengeScoreByScenario = {};

  /// Track 2 Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t2l1ChallengeScoreByScenario = {};
  /// Track 2 Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t2l2ChallengeScoreByScenario = {};
  /// Track 2 Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t2l3ChallengeScoreByScenario = {};
  final Map<int, int> _t2l4ChallengeScoreByScenario = {};
  final Map<int, int> _t2l5ChallengeScoreByScenario = {};

  /// Track 3 Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t3l1ChallengeScoreByScenario = {};
  /// Track 3 Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t3l2ChallengeScoreByScenario = {};
  /// Track 3 Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t3l3ChallengeScoreByScenario = {};
  final Map<int, int> _t3l4ChallengeScoreByScenario = {};
  final Map<int, int> _t3l5ChallengeScoreByScenario = {};

  /// Track 4 Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t4l1ChallengeScoreByScenario = {};
  /// Track 4 Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t4l2ChallengeScoreByScenario = {};
  /// Track 4 Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t4l3ChallengeScoreByScenario = {};
  final Map<int, int> _t4l4ChallengeScoreByScenario = {};
  final Map<int, int> _t4l5ChallengeScoreByScenario = {};

  /// Track 5 (Decision Structuring) Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t5l1ChallengeScoreByScenario = {};
  /// Track 5 (Decision Structuring) Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t5l2ChallengeScoreByScenario = {};
  /// Track 5 (Decision Structuring) Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t5l3ChallengeScoreByScenario = {};
  final Map<int, int> _t5l4ChallengeScoreByScenario = {};
  final Map<int, int> _t5l5ChallengeScoreByScenario = {};

  /// Track 6 Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t6l1ChallengeScoreByScenario = {};
  /// Track 6 Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t6l2ChallengeScoreByScenario = {};
  /// Track 6 Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t6l3ChallengeScoreByScenario = {};
  final Map<int, int> _t6l4ChallengeScoreByScenario = {};
  final Map<int, int> _t6l5ChallengeScoreByScenario = {};

  /// Track 7 Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t7l1ChallengeScoreByScenario = {};
  /// Track 7 Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t7l2ChallengeScoreByScenario = {};
  /// Track 7 Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t7l3ChallengeScoreByScenario = {};
  final Map<int, int> _t7l4ChallengeScoreByScenario = {};
  final Map<int, int> _t7l5ChallengeScoreByScenario = {};

  /// Track 8 Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t8l1ChallengeScoreByScenario = {};
  /// Track 8 Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t8l2ChallengeScoreByScenario = {};
  /// Track 8 Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t8l3ChallengeScoreByScenario = {};
  final Map<int, int> _t8l4ChallengeScoreByScenario = {};
  final Map<int, int> _t8l5ChallengeScoreByScenario = {};

  /// Track 9 Lesson 1 (index 0): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t9l1ChallengeScoreByScenario = {};
  /// Track 9 Lesson 2 (index 1): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t9l2ChallengeScoreByScenario = {};
  /// Track 9 Lesson 3–5 (indices 2–4): challenge score 0–5 per scenario 0–2.
  final Map<int, int> _t9l3ChallengeScoreByScenario = {};
  final Map<int, int> _t9l4ChallengeScoreByScenario = {};
  final Map<int, int> _t9l5ChallengeScoreByScenario = {};

  Future<void> ensureLoaded() async {
    if (_loaded) return;
    final prefs = await SharedPreferences.getInstance();

    // Load per-track done counts
    final keys = prefs.getKeys().where((k) => k.startsWith('track_done_'));
    for (final k in keys) {
      final title = k.replaceFirst('track_done_', '');
      _doneByTrack[title] = prefs.getInt(k) ?? 0;
    }

    // Load per-scenario flags
    final scenKeys = prefs.getKeys().where((k) => k.startsWith('scen_done_'));
    for (final k in scenKeys) {
      final encoded = k.replaceFirst('scen_done_', '');
      _doneScenarios.add(encoded);
    }

    for (var i = 0; i < 3; i++) {
      final v = prefs.getInt('t1_l1_challenge_score_$i');
      if (v != null) {
        _t1l1ChallengeScoreByScenario[i] = v.clamp(0, 5);
      }
      final w = prefs.getInt('t1_l2_challenge_score_$i');
      if (w != null) {
        _t1l2ChallengeScoreByScenario[i] = w.clamp(0, 5);
      }
      final a = prefs.getInt('t1_l3_challenge_score_$i');
      if (a != null) {
        _t1l3ChallengeScoreByScenario[i] = a.clamp(0, 5);
      }
      final b = prefs.getInt('t1_l4_challenge_score_$i');
      if (b != null) {
        _t1l4ChallengeScoreByScenario[i] = b.clamp(0, 5);
      }
      final c = prefs.getInt('t1_l5_challenge_score_$i');
      if (c != null) {
        _t1l5ChallengeScoreByScenario[i] = c.clamp(0, 5);
      }

      final t2v = prefs.getInt('t2_l1_challenge_score_$i');
      if (t2v != null) {
        _t2l1ChallengeScoreByScenario[i] = t2v.clamp(0, 5);
      }
      final t2w = prefs.getInt('t2_l2_challenge_score_$i');
      if (t2w != null) {
        _t2l2ChallengeScoreByScenario[i] = t2w.clamp(0, 5);
      }
      final t2a = prefs.getInt('t2_l3_challenge_score_$i');
      if (t2a != null) {
        _t2l3ChallengeScoreByScenario[i] = t2a.clamp(0, 5);
      }
      final t2b = prefs.getInt('t2_l4_challenge_score_$i');
      if (t2b != null) {
        _t2l4ChallengeScoreByScenario[i] = t2b.clamp(0, 5);
      }
      final t2c = prefs.getInt('t2_l5_challenge_score_$i');
      if (t2c != null) {
        _t2l5ChallengeScoreByScenario[i] = t2c.clamp(0, 5);
      }

      final t3v = prefs.getInt('t3_l1_challenge_score_$i');
      if (t3v != null) {
        _t3l1ChallengeScoreByScenario[i] = t3v.clamp(0, 5);
      }
      final t3w = prefs.getInt('t3_l2_challenge_score_$i');
      if (t3w != null) {
        _t3l2ChallengeScoreByScenario[i] = t3w.clamp(0, 5);
      }
      final t3a = prefs.getInt('t3_l3_challenge_score_$i');
      if (t3a != null) {
        _t3l3ChallengeScoreByScenario[i] = t3a.clamp(0, 5);
      }
      final t3b = prefs.getInt('t3_l4_challenge_score_$i');
      if (t3b != null) {
        _t3l4ChallengeScoreByScenario[i] = t3b.clamp(0, 5);
      }
      final t3c = prefs.getInt('t3_l5_challenge_score_$i');
      if (t3c != null) {
        _t3l5ChallengeScoreByScenario[i] = t3c.clamp(0, 5);
      }

      final t4v = prefs.getInt('t4_l1_challenge_score_$i');
      if (t4v != null) {
        _t4l1ChallengeScoreByScenario[i] = t4v.clamp(0, 5);
      }
      final t4w = prefs.getInt('t4_l2_challenge_score_$i');
      if (t4w != null) {
        _t4l2ChallengeScoreByScenario[i] = t4w.clamp(0, 5);
      }
      final t4a = prefs.getInt('t4_l3_challenge_score_$i');
      if (t4a != null) {
        _t4l3ChallengeScoreByScenario[i] = t4a.clamp(0, 5);
      }
      final t4b = prefs.getInt('t4_l4_challenge_score_$i');
      if (t4b != null) {
        _t4l4ChallengeScoreByScenario[i] = t4b.clamp(0, 5);
      }
      final t4c = prefs.getInt('t4_l5_challenge_score_$i');
      if (t4c != null) {
        _t4l5ChallengeScoreByScenario[i] = t4c.clamp(0, 5);
      }

      final t5v = prefs.getInt('t5_l1_challenge_score_$i');
      if (t5v != null) {
        _t5l1ChallengeScoreByScenario[i] = t5v.clamp(0, 5);
      }
      final t5w = prefs.getInt('t5_l2_challenge_score_$i');
      if (t5w != null) {
        _t5l2ChallengeScoreByScenario[i] = t5w.clamp(0, 5);
      }
      final t5a = prefs.getInt('t5_l3_challenge_score_$i');
      if (t5a != null) {
        _t5l3ChallengeScoreByScenario[i] = t5a.clamp(0, 5);
      }
      final t5b = prefs.getInt('t5_l4_challenge_score_$i');
      if (t5b != null) {
        _t5l4ChallengeScoreByScenario[i] = t5b.clamp(0, 5);
      }
      final t5c = prefs.getInt('t5_l5_challenge_score_$i');
      if (t5c != null) {
        _t5l5ChallengeScoreByScenario[i] = t5c.clamp(0, 5);
      }

      final t6v = prefs.getInt('t6_l1_challenge_score_$i');
      if (t6v != null) {
        _t6l1ChallengeScoreByScenario[i] = t6v.clamp(0, 5);
      }
      final t6w = prefs.getInt('t6_l2_challenge_score_$i');
      if (t6w != null) {
        _t6l2ChallengeScoreByScenario[i] = t6w.clamp(0, 5);
      }
      final t6a = prefs.getInt('t6_l3_challenge_score_$i');
      if (t6a != null) {
        _t6l3ChallengeScoreByScenario[i] = t6a.clamp(0, 5);
      }
      final t6b = prefs.getInt('t6_l4_challenge_score_$i');
      if (t6b != null) {
        _t6l4ChallengeScoreByScenario[i] = t6b.clamp(0, 5);
      }
      final t6c = prefs.getInt('t6_l5_challenge_score_$i');
      if (t6c != null) {
        _t6l5ChallengeScoreByScenario[i] = t6c.clamp(0, 5);
      }

      final t7v = prefs.getInt('t7_l1_challenge_score_$i');
      if (t7v != null) {
        _t7l1ChallengeScoreByScenario[i] = t7v.clamp(0, 5);
      }
      final t7w = prefs.getInt('t7_l2_challenge_score_$i');
      if (t7w != null) {
        _t7l2ChallengeScoreByScenario[i] = t7w.clamp(0, 5);
      }
      final t7a = prefs.getInt('t7_l3_challenge_score_$i');
      if (t7a != null) {
        _t7l3ChallengeScoreByScenario[i] = t7a.clamp(0, 5);
      }
      final t7b = prefs.getInt('t7_l4_challenge_score_$i');
      if (t7b != null) {
        _t7l4ChallengeScoreByScenario[i] = t7b.clamp(0, 5);
      }
      final t7c = prefs.getInt('t7_l5_challenge_score_$i');
      if (t7c != null) {
        _t7l5ChallengeScoreByScenario[i] = t7c.clamp(0, 5);
      }

      final t8v = prefs.getInt('t8_l1_challenge_score_$i');
      if (t8v != null) {
        _t8l1ChallengeScoreByScenario[i] = t8v.clamp(0, 5);
      }
      final t8w = prefs.getInt('t8_l2_challenge_score_$i');
      if (t8w != null) {
        _t8l2ChallengeScoreByScenario[i] = t8w.clamp(0, 5);
      }
      final t8a = prefs.getInt('t8_l3_challenge_score_$i');
      if (t8a != null) {
        _t8l3ChallengeScoreByScenario[i] = t8a.clamp(0, 5);
      }
      final t8b = prefs.getInt('t8_l4_challenge_score_$i');
      if (t8b != null) {
        _t8l4ChallengeScoreByScenario[i] = t8b.clamp(0, 5);
      }
      final t8c = prefs.getInt('t8_l5_challenge_score_$i');
      if (t8c != null) {
        _t8l5ChallengeScoreByScenario[i] = t8c.clamp(0, 5);
      }

      final t9v = prefs.getInt('t9_l1_challenge_score_$i');
      if (t9v != null) {
        _t9l1ChallengeScoreByScenario[i] = t9v.clamp(0, 5);
      }
      final t9w = prefs.getInt('t9_l2_challenge_score_$i');
      if (t9w != null) {
        _t9l2ChallengeScoreByScenario[i] = t9w.clamp(0, 5);
      }
      final t9a = prefs.getInt('t9_l3_challenge_score_$i');
      if (t9a != null) {
        _t9l3ChallengeScoreByScenario[i] = t9a.clamp(0, 5);
      }
      final t9b = prefs.getInt('t9_l4_challenge_score_$i');
      if (t9b != null) {
        _t9l4ChallengeScoreByScenario[i] = t9b.clamp(0, 5);
      }
      final t9c = prefs.getInt('t9_l5_challenge_score_$i');
      if (t9c != null) {
        _t9l5ChallengeScoreByScenario[i] = t9c.clamp(0, 5);
      }
    }

    _loaded = true;
    notifyListeners();
  }

  void setTotal(String trackTitle, int total) {
    if (total <= 0) return;
    _totalByTrack[trackTitle] = total;
    notifyListeners();
  }

  int getDone(String trackTitle) => _doneByTrack[trackTitle] ?? 0;
  int getTotal(String trackTitle) =>
      _totalByTrack[trackTitle] ?? 15; // default 15 scenarios
  double getProgress(String trackTitle) {
    final t = getTotal(trackTitle);
    if (t == 0) return 0;
    final d = getDone(trackTitle).clamp(0, t);
    return d / t;
  }

  Future<void> markScenarioComplete(String trackTitle, {int delta = 1}) async {
    await ensureLoaded();
    final t = getTotal(trackTitle);
    final newVal = (getDone(trackTitle) + delta).clamp(0, t);
    _doneByTrack[trackTitle] = newVal;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('track_done_$trackTitle', newVal);
    notifyListeners();
  }

  String _scKey(String trackTitle, int lessonIndex, int scenarioIndex) =>
      '$trackTitle|$lessonIndex|$scenarioIndex';

  Future<void> setScenarioCompleted(
      String trackTitle, int lessonIndex, int scenarioIndex) async {
    await ensureLoaded();
    final key = _scKey(trackTitle, lessonIndex, scenarioIndex);
    if (_doneScenarios.contains(key)) return;
    _doneScenarios.add(key);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('scen_done_$key', true);
    notifyListeners();
  }

  bool isScenarioCompleted(
      String trackTitle, int lessonIndex, int scenarioIndex) {
    final key = _scKey(trackTitle, lessonIndex, scenarioIndex);
    return _doneScenarios.contains(key);
  }

  /// Persists challenge score for Track 1 Lesson 1 scenario [0–2]; [pointsOutOfFive] clamped to 0–5.
  Future<void> setTrack1Lesson1ChallengeScore(
      int scenarioIndex, int pointsOutOfFive) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    _t1l1ChallengeScoreByScenario[scenarioIndex] = p;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('t1_l1_challenge_score_$scenarioIndex', p);
    notifyListeners();
  }

  int track1Lesson1ChallengeScore(int scenarioIndex) =>
      _t1l1ChallengeScoreByScenario[scenarioIndex] ?? 0;

  /// Sum of stored scores for scenarios 0–2 (max 15).
  int track1Lesson1TotalChallengeScore() {
    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += track1Lesson1ChallengeScore(i);
    }
    return sum;
  }

  /// Track 1, lesson index 1 — second lesson ("Rewrite for Clarity").
  Future<void> setTrack1Lesson2ChallengeScore(
      int scenarioIndex, int pointsOutOfFive) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    _t1l2ChallengeScoreByScenario[scenarioIndex] = p;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('t1_l2_challenge_score_$scenarioIndex', p);
    notifyListeners();
  }

  int track1Lesson2ChallengeScore(int scenarioIndex) =>
      _t1l2ChallengeScoreByScenario[scenarioIndex] ?? 0;

  int track1Lesson2TotalChallengeScore() {
    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += track1Lesson2ChallengeScore(i);
    }
    return sum;
  }

  Future<void> setTrack1Lesson3ChallengeScore(
      int scenarioIndex, int pointsOutOfFive) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    _t1l3ChallengeScoreByScenario[scenarioIndex] = p;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('t1_l3_challenge_score_$scenarioIndex', p);
    notifyListeners();
  }

  int track1Lesson3ChallengeScore(int scenarioIndex) =>
      _t1l3ChallengeScoreByScenario[scenarioIndex] ?? 0;

  int track1Lesson3TotalChallengeScore() {
    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += track1Lesson3ChallengeScore(i);
    }
    return sum;
  }

  Future<void> setTrack1Lesson4ChallengeScore(
      int scenarioIndex, int pointsOutOfFive) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    _t1l4ChallengeScoreByScenario[scenarioIndex] = p;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('t1_l4_challenge_score_$scenarioIndex', p);
    notifyListeners();
  }

  int track1Lesson4ChallengeScore(int scenarioIndex) =>
      _t1l4ChallengeScoreByScenario[scenarioIndex] ?? 0;

  int track1Lesson4TotalChallengeScore() {
    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += track1Lesson4ChallengeScore(i);
    }
    return sum;
  }

  Future<void> setTrack1Lesson5ChallengeScore(
      int scenarioIndex, int pointsOutOfFive) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    _t1l5ChallengeScoreByScenario[scenarioIndex] = p;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('t1_l5_challenge_score_$scenarioIndex', p);
    notifyListeners();
  }

  int track1Lesson5ChallengeScore(int scenarioIndex) =>
      _t1l5ChallengeScoreByScenario[scenarioIndex] ?? 0;

  int track1Lesson5TotalChallengeScore() {
    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += track1Lesson5ChallengeScore(i);
    }
    return sum;
  }

  /// Track 1 lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack1LessonChallengeScore(
      int lessonIndex, int scenarioIndex, int pointsOutOfFive) async {
    switch (lessonIndex) {
      case 0:
        await setTrack1Lesson1ChallengeScore(scenarioIndex, pointsOutOfFive);
        break;
      case 1:
        await setTrack1Lesson2ChallengeScore(scenarioIndex, pointsOutOfFive);
        break;
      case 2:
        await setTrack1Lesson3ChallengeScore(scenarioIndex, pointsOutOfFive);
        break;
      case 3:
        await setTrack1Lesson4ChallengeScore(scenarioIndex, pointsOutOfFive);
        break;
      case 4:
        await setTrack1Lesson5ChallengeScore(scenarioIndex, pointsOutOfFive);
        break;
      default:
        break;
    }
  }

  int track1LessonTotalChallengeScore(int lessonIndex) {
    switch (lessonIndex) {
      case 0:
        return track1Lesson1TotalChallengeScore();
      case 1:
        return track1Lesson2TotalChallengeScore();
      case 2:
        return track1Lesson3TotalChallengeScore();
      case 3:
        return track1Lesson4TotalChallengeScore();
      case 4:
        return track1Lesson5TotalChallengeScore();
      default:
        return 0;
    }
  }

  /// Track 2 lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack2LessonChallengeScore(
    int lessonIndex,
    int scenarioIndex,
    int pointsOutOfFive,
  ) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    final prefs = await SharedPreferences.getInstance();

    switch (lessonIndex) {
      case 0:
        _t2l1ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t2_l1_challenge_score_$scenarioIndex', p);
        break;
      case 1:
        _t2l2ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t2_l2_challenge_score_$scenarioIndex', p);
        break;
      case 2:
        _t2l3ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t2_l3_challenge_score_$scenarioIndex', p);
        break;
      case 3:
        _t2l4ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t2_l4_challenge_score_$scenarioIndex', p);
        break;
      case 4:
        _t2l5ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t2_l5_challenge_score_$scenarioIndex', p);
        break;
      default:
        break;
    }

    notifyListeners();
  }

  int track2LessonTotalChallengeScore(int lessonIndex) {
    Map<int, int> mapForLesson;
    switch (lessonIndex) {
      case 0:
        mapForLesson = _t2l1ChallengeScoreByScenario;
        break;
      case 1:
        mapForLesson = _t2l2ChallengeScoreByScenario;
        break;
      case 2:
        mapForLesson = _t2l3ChallengeScoreByScenario;
        break;
      case 3:
        mapForLesson = _t2l4ChallengeScoreByScenario;
        break;
      case 4:
        mapForLesson = _t2l5ChallengeScoreByScenario;
        break;
      default:
        return 0;
    }

    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += mapForLesson[i] ?? 0;
    }
    return sum;
  }

  /// Track 3 lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack3LessonChallengeScore(
    int lessonIndex,
    int scenarioIndex,
    int pointsOutOfFive,
  ) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    final prefs = await SharedPreferences.getInstance();

    switch (lessonIndex) {
      case 0:
        _t3l1ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t3_l1_challenge_score_$scenarioIndex', p);
        break;
      case 1:
        _t3l2ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t3_l2_challenge_score_$scenarioIndex', p);
        break;
      case 2:
        _t3l3ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t3_l3_challenge_score_$scenarioIndex', p);
        break;
      case 3:
        _t3l4ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t3_l4_challenge_score_$scenarioIndex', p);
        break;
      case 4:
        _t3l5ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t3_l5_challenge_score_$scenarioIndex', p);
        break;
      default:
        break;
    }

    notifyListeners();
  }

  int track3LessonTotalChallengeScore(int lessonIndex) {
    Map<int, int> mapForLesson;
    switch (lessonIndex) {
      case 0:
        mapForLesson = _t3l1ChallengeScoreByScenario;
        break;
      case 1:
        mapForLesson = _t3l2ChallengeScoreByScenario;
        break;
      case 2:
        mapForLesson = _t3l3ChallengeScoreByScenario;
        break;
      case 3:
        mapForLesson = _t3l4ChallengeScoreByScenario;
        break;
      case 4:
        mapForLesson = _t3l5ChallengeScoreByScenario;
        break;
      default:
        return 0;
    }

    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += mapForLesson[i] ?? 0;
    }
    return sum;
  }

  /// Track 4 lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack4LessonChallengeScore(
    int lessonIndex,
    int scenarioIndex,
    int pointsOutOfFive,
  ) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    final prefs = await SharedPreferences.getInstance();

    switch (lessonIndex) {
      case 0:
        _t4l1ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t4_l1_challenge_score_$scenarioIndex', p);
        break;
      case 1:
        _t4l2ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t4_l2_challenge_score_$scenarioIndex', p);
        break;
      case 2:
        _t4l3ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t4_l3_challenge_score_$scenarioIndex', p);
        break;
      case 3:
        _t4l4ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t4_l4_challenge_score_$scenarioIndex', p);
        break;
      case 4:
        _t4l5ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t4_l5_challenge_score_$scenarioIndex', p);
        break;
      default:
        break;
    }

    notifyListeners();
  }

  int track4LessonTotalChallengeScore(int lessonIndex) {
    Map<int, int> mapForLesson;
    switch (lessonIndex) {
      case 0:
        mapForLesson = _t4l1ChallengeScoreByScenario;
        break;
      case 1:
        mapForLesson = _t4l2ChallengeScoreByScenario;
        break;
      case 2:
        mapForLesson = _t4l3ChallengeScoreByScenario;
        break;
      case 3:
        mapForLesson = _t4l4ChallengeScoreByScenario;
        break;
      case 4:
        mapForLesson = _t4l5ChallengeScoreByScenario;
        break;
      default:
        return 0;
    }

    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += mapForLesson[i] ?? 0;
    }
    return sum;
  }

  /// Track 5 (Decision Structuring) lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack5LessonChallengeScore(
    int lessonIndex,
    int scenarioIndex,
    int pointsOutOfFive,
  ) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    final prefs = await SharedPreferences.getInstance();

    switch (lessonIndex) {
      case 0:
        _t5l1ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t5_l1_challenge_score_$scenarioIndex', p);
        break;
      case 1:
        _t5l2ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t5_l2_challenge_score_$scenarioIndex', p);
        break;
      case 2:
        _t5l3ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t5_l3_challenge_score_$scenarioIndex', p);
        break;
      case 3:
        _t5l4ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t5_l4_challenge_score_$scenarioIndex', p);
        break;
      case 4:
        _t5l5ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t5_l5_challenge_score_$scenarioIndex', p);
        break;
      default:
        break;
    }

    notifyListeners();
  }

  int track5LessonTotalChallengeScore(int lessonIndex) {
    Map<int, int> mapForLesson;
    switch (lessonIndex) {
      case 0:
        mapForLesson = _t5l1ChallengeScoreByScenario;
        break;
      case 1:
        mapForLesson = _t5l2ChallengeScoreByScenario;
        break;
      case 2:
        mapForLesson = _t5l3ChallengeScoreByScenario;
        break;
      case 3:
        mapForLesson = _t5l4ChallengeScoreByScenario;
        break;
      case 4:
        mapForLesson = _t5l5ChallengeScoreByScenario;
        break;
      default:
        return 0;
    }

    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += mapForLesson[i] ?? 0;
    }
    return sum;
  }

  /// Track 6 lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack6LessonChallengeScore(
    int lessonIndex,
    int scenarioIndex,
    int pointsOutOfFive,
  ) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    final prefs = await SharedPreferences.getInstance();

    switch (lessonIndex) {
      case 0:
        _t6l1ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t6_l1_challenge_score_$scenarioIndex', p);
        break;
      case 1:
        _t6l2ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t6_l2_challenge_score_$scenarioIndex', p);
        break;
      case 2:
        _t6l3ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t6_l3_challenge_score_$scenarioIndex', p);
        break;
      case 3:
        _t6l4ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t6_l4_challenge_score_$scenarioIndex', p);
        break;
      case 4:
        _t6l5ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t6_l5_challenge_score_$scenarioIndex', p);
        break;
      default:
        break;
    }

    notifyListeners();
  }

  int track6LessonTotalChallengeScore(int lessonIndex) {
    Map<int, int> mapForLesson;
    switch (lessonIndex) {
      case 0:
        mapForLesson = _t6l1ChallengeScoreByScenario;
        break;
      case 1:
        mapForLesson = _t6l2ChallengeScoreByScenario;
        break;
      case 2:
        mapForLesson = _t6l3ChallengeScoreByScenario;
        break;
      case 3:
        mapForLesson = _t6l4ChallengeScoreByScenario;
        break;
      case 4:
        mapForLesson = _t6l5ChallengeScoreByScenario;
        break;
      default:
        return 0;
    }

    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += mapForLesson[i] ?? 0;
    }
    return sum;
  }

  /// Track 7 lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack7LessonChallengeScore(
    int lessonIndex,
    int scenarioIndex,
    int pointsOutOfFive,
  ) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    final prefs = await SharedPreferences.getInstance();

    switch (lessonIndex) {
      case 0:
        _t7l1ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t7_l1_challenge_score_$scenarioIndex', p);
        break;
      case 1:
        _t7l2ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t7_l2_challenge_score_$scenarioIndex', p);
        break;
      case 2:
        _t7l3ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t7_l3_challenge_score_$scenarioIndex', p);
        break;
      case 3:
        _t7l4ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t7_l4_challenge_score_$scenarioIndex', p);
        break;
      case 4:
        _t7l5ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t7_l5_challenge_score_$scenarioIndex', p);
        break;
      default:
        break;
    }

    notifyListeners();
  }

  int track7LessonTotalChallengeScore(int lessonIndex) {
    Map<int, int> mapForLesson;
    switch (lessonIndex) {
      case 0:
        mapForLesson = _t7l1ChallengeScoreByScenario;
        break;
      case 1:
        mapForLesson = _t7l2ChallengeScoreByScenario;
        break;
      case 2:
        mapForLesson = _t7l3ChallengeScoreByScenario;
        break;
      case 3:
        mapForLesson = _t7l4ChallengeScoreByScenario;
        break;
      case 4:
        mapForLesson = _t7l5ChallengeScoreByScenario;
        break;
      default:
        return 0;
    }

    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += mapForLesson[i] ?? 0;
    }
    return sum;
  }

  /// Track 8 lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack8LessonChallengeScore(
    int lessonIndex,
    int scenarioIndex,
    int pointsOutOfFive,
  ) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    final prefs = await SharedPreferences.getInstance();

    switch (lessonIndex) {
      case 0:
        _t8l1ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t8_l1_challenge_score_$scenarioIndex', p);
        break;
      case 1:
        _t8l2ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t8_l2_challenge_score_$scenarioIndex', p);
        break;
      case 2:
        _t8l3ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t8_l3_challenge_score_$scenarioIndex', p);
        break;
      case 3:
        _t8l4ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t8_l4_challenge_score_$scenarioIndex', p);
        break;
      case 4:
        _t8l5ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t8_l5_challenge_score_$scenarioIndex', p);
        break;
      default:
        break;
    }

    notifyListeners();
  }

  int track8LessonTotalChallengeScore(int lessonIndex) {
    Map<int, int> mapForLesson;
    switch (lessonIndex) {
      case 0:
        mapForLesson = _t8l1ChallengeScoreByScenario;
        break;
      case 1:
        mapForLesson = _t8l2ChallengeScoreByScenario;
        break;
      case 2:
        mapForLesson = _t8l3ChallengeScoreByScenario;
        break;
      case 3:
        mapForLesson = _t8l4ChallengeScoreByScenario;
        break;
      case 4:
        mapForLesson = _t8l5ChallengeScoreByScenario;
        break;
      default:
        return 0;
    }

    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += mapForLesson[i] ?? 0;
    }
    return sum;
  }

  /// Track 9 lesson indices 0–4 (lessons 1–5).
  Future<void> setTrack9LessonChallengeScore(
    int lessonIndex,
    int scenarioIndex,
    int pointsOutOfFive,
  ) async {
    if (scenarioIndex < 0 || scenarioIndex > 2) return;
    await ensureLoaded();
    final p = pointsOutOfFive.clamp(0, 5);
    final prefs = await SharedPreferences.getInstance();

    switch (lessonIndex) {
      case 0:
        _t9l1ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t9_l1_challenge_score_$scenarioIndex', p);
        break;
      case 1:
        _t9l2ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t9_l2_challenge_score_$scenarioIndex', p);
        break;
      case 2:
        _t9l3ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t9_l3_challenge_score_$scenarioIndex', p);
        break;
      case 3:
        _t9l4ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t9_l4_challenge_score_$scenarioIndex', p);
        break;
      case 4:
        _t9l5ChallengeScoreByScenario[scenarioIndex] = p;
        await prefs.setInt('t9_l5_challenge_score_$scenarioIndex', p);
        break;
      default:
        break;
    }

    notifyListeners();
  }

  int track9LessonTotalChallengeScore(int lessonIndex) {
    Map<int, int> mapForLesson;
    switch (lessonIndex) {
      case 0:
        mapForLesson = _t9l1ChallengeScoreByScenario;
        break;
      case 1:
        mapForLesson = _t9l2ChallengeScoreByScenario;
        break;
      case 2:
        mapForLesson = _t9l3ChallengeScoreByScenario;
        break;
      case 3:
        mapForLesson = _t9l4ChallengeScoreByScenario;
        break;
      case 4:
        mapForLesson = _t9l5ChallengeScoreByScenario;
        break;
      default:
        return 0;
    }

    var sum = 0;
    for (var i = 0; i < 3; i++) {
      sum += mapForLesson[i] ?? 0;
    }
    return sum;
  }

  double overallCompletion() {
    final completed = _doneScenarios.length.clamp(0, kOverallScenarioTarget);
    return completed / kOverallScenarioTarget;
  }

  int completedScenarioCount() => _doneScenarios.length;

  Future<void> clear() async {
    _doneByTrack.clear();
    _doneScenarios.clear();
    _t1l1ChallengeScoreByScenario.clear();
    _t1l2ChallengeScoreByScenario.clear();
    _t1l3ChallengeScoreByScenario.clear();
    _t1l4ChallengeScoreByScenario.clear();
    _t1l5ChallengeScoreByScenario.clear();

    _t2l1ChallengeScoreByScenario.clear();
    _t2l2ChallengeScoreByScenario.clear();
    _t2l3ChallengeScoreByScenario.clear();
    _t2l4ChallengeScoreByScenario.clear();
    _t2l5ChallengeScoreByScenario.clear();

    _t3l1ChallengeScoreByScenario.clear();
    _t3l2ChallengeScoreByScenario.clear();
    _t3l3ChallengeScoreByScenario.clear();
    _t3l4ChallengeScoreByScenario.clear();
    _t3l5ChallengeScoreByScenario.clear();

    _t4l1ChallengeScoreByScenario.clear();
    _t4l2ChallengeScoreByScenario.clear();
    _t4l3ChallengeScoreByScenario.clear();
    _t4l4ChallengeScoreByScenario.clear();
    _t4l5ChallengeScoreByScenario.clear();

    _t5l1ChallengeScoreByScenario.clear();
    _t5l2ChallengeScoreByScenario.clear();
    _t5l3ChallengeScoreByScenario.clear();
    _t5l4ChallengeScoreByScenario.clear();
    _t5l5ChallengeScoreByScenario.clear();

    _t6l1ChallengeScoreByScenario.clear();
    _t6l2ChallengeScoreByScenario.clear();
    _t6l3ChallengeScoreByScenario.clear();
    _t6l4ChallengeScoreByScenario.clear();
    _t6l5ChallengeScoreByScenario.clear();

    _t7l1ChallengeScoreByScenario.clear();
    _t7l2ChallengeScoreByScenario.clear();
    _t7l3ChallengeScoreByScenario.clear();
    _t7l4ChallengeScoreByScenario.clear();
    _t7l5ChallengeScoreByScenario.clear();

    _t8l1ChallengeScoreByScenario.clear();
    _t8l2ChallengeScoreByScenario.clear();
    _t8l3ChallengeScoreByScenario.clear();
    _t8l4ChallengeScoreByScenario.clear();
    _t8l5ChallengeScoreByScenario.clear();

    _t9l1ChallengeScoreByScenario.clear();
    _t9l2ChallengeScoreByScenario.clear();
    _t9l3ChallengeScoreByScenario.clear();
    _t9l4ChallengeScoreByScenario.clear();
    _t9l5ChallengeScoreByScenario.clear();

    final prefs = await SharedPreferences.getInstance();
    
    // Clear all track progress
    final keys = prefs.getKeys().where((k) => k.startsWith('track_done_'));
    for (final k in keys) {
      await prefs.remove(k);
    }
    
    // Clear all scenario flags
    final scenKeys = prefs.getKeys().where((k) => k.startsWith('scen_done_'));
    for (final k in scenKeys) {
      await prefs.remove(k);
    }

    for (var i = 0; i < 3; i++) {
      await prefs.remove('t1_l1_challenge_score_$i');
      await prefs.remove('t1_l2_challenge_score_$i');
      await prefs.remove('t1_l3_challenge_score_$i');
      await prefs.remove('t1_l4_challenge_score_$i');
      await prefs.remove('t1_l5_challenge_score_$i');
      await prefs.remove('t2_l1_challenge_score_$i');
      await prefs.remove('t2_l2_challenge_score_$i');
      await prefs.remove('t2_l3_challenge_score_$i');
      await prefs.remove('t2_l4_challenge_score_$i');
      await prefs.remove('t2_l5_challenge_score_$i');
      await prefs.remove('t3_l1_challenge_score_$i');
      await prefs.remove('t3_l2_challenge_score_$i');
      await prefs.remove('t3_l3_challenge_score_$i');
      await prefs.remove('t3_l4_challenge_score_$i');
      await prefs.remove('t3_l5_challenge_score_$i');
      await prefs.remove('t4_l1_challenge_score_$i');
      await prefs.remove('t4_l2_challenge_score_$i');
      await prefs.remove('t4_l3_challenge_score_$i');
      await prefs.remove('t4_l4_challenge_score_$i');
      await prefs.remove('t4_l5_challenge_score_$i');
      await prefs.remove('t5_l1_challenge_score_$i');
      await prefs.remove('t5_l2_challenge_score_$i');
      await prefs.remove('t5_l3_challenge_score_$i');
      await prefs.remove('t5_l4_challenge_score_$i');
      await prefs.remove('t5_l5_challenge_score_$i');
      await prefs.remove('t6_l1_challenge_score_$i');
      await prefs.remove('t6_l2_challenge_score_$i');
      await prefs.remove('t6_l3_challenge_score_$i');
      await prefs.remove('t6_l4_challenge_score_$i');
      await prefs.remove('t6_l5_challenge_score_$i');
      await prefs.remove('t7_l1_challenge_score_$i');
      await prefs.remove('t7_l2_challenge_score_$i');
      await prefs.remove('t7_l3_challenge_score_$i');
      await prefs.remove('t7_l4_challenge_score_$i');
      await prefs.remove('t7_l5_challenge_score_$i');
      await prefs.remove('t8_l1_challenge_score_$i');
      await prefs.remove('t8_l2_challenge_score_$i');
      await prefs.remove('t8_l3_challenge_score_$i');
      await prefs.remove('t8_l4_challenge_score_$i');
      await prefs.remove('t8_l5_challenge_score_$i');
      await prefs.remove('t9_l1_challenge_score_$i');
      await prefs.remove('t9_l2_challenge_score_$i');
      await prefs.remove('t9_l3_challenge_score_$i');
      await prefs.remove('t9_l4_challenge_score_$i');
      await prefs.remove('t9_l5_challenge_score_$i');
    }

    // Clear legacy lesson-completion progress keys if present.
    await prefs.remove('completedLessonIds');
    await prefs.remove('firstRun');

    notifyListeners();
  }
}
