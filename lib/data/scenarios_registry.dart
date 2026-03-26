import '../models/scenario.dart';
import 'app_catalog.dart';

/// lessonId → List<Scenario>
/// Aggregates scenarios from all tracks into a single map for easy lookup
/// Now uses the unified catalog system
final Map<String, List<Scenario>> allScenariosByLesson =
    getAllScenariosByLesson();
