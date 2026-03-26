import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/lightweight_onboarding_screen.dart';
import 'repositories/lesson_repository.dart';
import 'services/progress_store.dart';
import 'data/app_catalog.dart';
import 'dev/validators/content_validator.dart';
import 'services/amplitude_analytics.dart';

// Route observer for tracking navigation
final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

// Global validated tracks
List<TrackDef> validatedTracks = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Amplitude API key must be provided via: --dart-define=AMPLITUDE_API_KEY=YOUR_KEY
  await AmplitudeAnalytics.init();
  await _trackAppOpenEvents();

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

Future<void> _trackAppOpenEvents() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final hasTrackedFirstOpen = prefs.getBool('first_open_tracked') ?? false;

    await AmplitudeAnalytics.logEvent('app_opened');

    if (!hasTrackedFirstOpen) {
      await AmplitudeAnalytics.logEvent('app_first_open');
      await prefs.setBool('first_open_tracked', true);
    }
  } catch (_) {
    // Swallow errors to keep startup resilient.
  }
}

class _AppInitializer extends StatefulWidget {
  const _AppInitializer();

  @override
  State<_AppInitializer> createState() => _AppInitializerState();
}

class _AppInitializerState extends State<_AppInitializer> {
  static const String _kHasCompletedOnboarding = 'hasCompletedOnboarding';

  bool _isLoading = true;
  bool _hasCompletedOnboarding = false;

  @override
  void initState() {
    super.initState();
    _loadOnboardingState();
  }

  Future<void> _loadOnboardingState() async {
    final prefs = await SharedPreferences.getInstance();
    final completed = prefs.getBool(_kHasCompletedOnboarding) ?? false;
    if (!mounted) return;
    setState(() {
      _isLoading = false;
      _hasCompletedOnboarding = completed;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return _hasCompletedOnboarding
        ? const HomeScreen()
        : const LightweightOnboardingScreen();
  }
}
