import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProgressStore extends ChangeNotifier {
  static final ProgressStore _i = ProgressStore._();
  ProgressStore._();
  factory ProgressStore() => _i;

  final Map<String, int> _doneByTrack = {};
  final Map<String, int> _totalByTrack = {};
  bool _loaded = false;

  // Scenario completion flags
  final Set<String> _doneScenarios = {};

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

    _loaded = true;
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

  double overallCompletion() {
    int totalCompleted = 0;
    int totalScenarios = 0;
    
    for (final trackTitle in _totalByTrack.keys) {
      totalCompleted += getDone(trackTitle);
      totalScenarios += getTotal(trackTitle);
    }
    
    if (totalScenarios == 0) return 0.0;
    return totalCompleted / totalScenarios;
  }

  Future<void> clear() async {
    _doneByTrack.clear();
    _doneScenarios.clear();
    
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
    
    notifyListeners();
  }
}
