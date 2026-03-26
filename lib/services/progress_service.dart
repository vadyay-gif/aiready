import 'package:shared_preferences/shared_preferences.dart';

class ProgressService {
  static const _kCompleted = 'completedLessonIds';
  static const _kFirstRun = 'firstRun';

  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  Future<void> _ensureInit() async {
    final p = await _prefs;
    final first = p.getBool(_kFirstRun) ?? true;
    if (first) {
      await p.setStringList(_kCompleted, <String>[]);
      await p.setBool(_kFirstRun, false);
    }
  }

  Future<Set<String>> _completed() async {
    await _ensureInit();
    final p = await _prefs;
    return (p.getStringList(_kCompleted) ?? <String>[]).toSet();
  }

  Future<void> markLessonComplete(String id) async {
    final p = await _prefs;
    final c = (p.getStringList(_kCompleted) ?? <String>[]).toSet()..add(id);
    await p.setStringList(_kCompleted, c.toList());
  }

  Future<void> markLessonIncomplete(String id) async {
    final p = await _prefs;
    final c = (p.getStringList(_kCompleted) ?? <String>[]).toSet()..remove(id);
    await p.setStringList(_kCompleted, c.toList());
  }

  Future<bool> isLessonComplete(String id) async {
    final c = await _completed();
    return c.contains(id);
  }

  Future<Set<String>> getCompletedLessonIds() async {
    return await _completed();
  }
}
