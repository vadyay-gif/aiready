import 'package:shared_preferences/shared_preferences.dart';

class ScenarioProgressService {
  static const String _keyPrefix = 'scenariosCompleted:';

  /// Mark a scenario as completed for a specific lesson
  static Future<void> markScenarioComplete(
      String lessonId, String scenarioId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = '$_keyPrefix$lessonId';

    // Get existing completed scenarios
    final completedScenarios = prefs.getStringList(key) ?? [];

    // Add the new scenario if not already completed
    if (!completedScenarios.contains(scenarioId)) {
      completedScenarios.add(scenarioId);
      await prefs.setStringList(key, completedScenarios);
    }
  }

  /// Check if a scenario is completed for a specific lesson
  static Future<bool> isScenarioComplete(
      String lessonId, String scenarioId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = '$_keyPrefix$lessonId';

    final completedScenarios = prefs.getStringList(key) ?? [];
    return completedScenarios.contains(scenarioId);
  }

  /// Get all completed scenarios for a specific lesson
  static Future<List<String>> getCompletedScenarios(String lessonId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = '$_keyPrefix$lessonId';

    return prefs.getStringList(key) ?? [];
  }

  /// Clear all completed scenarios for a specific lesson (for testing)
  static Future<void> clearCompletedScenarios(String lessonId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = '$_keyPrefix$lessonId';

    await prefs.remove(key);
  }
}
