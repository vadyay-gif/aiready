import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/onboarding_screen.dart';
import 'repositories/lesson_repository.dart';
import 'services/progress_store.dart';
import 'services/onboarding_service.dart';
import 'data/app_catalog.dart';
import 'dev/validators/content_validator.dart';

// Route observer for tracking navigation
final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

// Global validated tracks
List<TrackDef> validatedTracks = [];

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set system UI styling
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ));

  // Validate lessons on startup
  final lessonRepository = LessonRepository();
  lessonRepository.validateLessons();
  lessonRepository.ensureAllLessonsHaveContent();

  // Get validated tracks (soft-fail validation)
  validatedTracks = validateCatalog(kTracks);

  // Log loaded tracks for debugging
  logLoadedTracks();

  // Quick diagnostics
  if (kDebugMode) {
    debugPrint('[STARTUP] Validated tracks: ${validatedTracks.length}/9');
    for (int i = 0; i < validatedTracks.length; i++) {
      debugPrint('[STARTUP] Track ${i + 1}: ${validatedTracks[i].title}');
    }
  }

  runApp(
    ChangeNotifierProvider(
      create: (_) => ProgressStore(),
      child: const AIReadyApp(),
    ),
  );
}

class AIReadyApp extends StatelessWidget {
  const AIReadyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Ready',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: const _AppInitializer(),
      navigatorObservers: [routeObserver],
    );
  }
}

class _AppInitializer extends StatefulWidget {
  const _AppInitializer();

  @override
  State<_AppInitializer> createState() => _AppInitializerState();
}

class _AppInitializerState extends State<_AppInitializer> {
  bool _isLoading = true;
  bool _showOnboarding = false;

  @override
  void initState() {
    super.initState();
    _checkOnboardingStatus();
  }

  Future<void> _checkOnboardingStatus() async {
    final hasSeenOnboarding = await OnboardingService.hasSeenOnboarding();
    setState(() {
      _showOnboarding = !hasSeenOnboarding;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return _showOnboarding ? const OnboardingScreen() : const HomeScreen();
  }
}
