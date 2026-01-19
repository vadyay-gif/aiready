import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/onboarding_screen.dart';
import 'repositories/lesson_repository.dart';
import 'services/progress_store.dart';
import 'onboarding/onboarding_state.dart';
import 'onboarding/guided_onboarding_controller.dart';
import 'services/guided_onboarding.dart' as OldService;
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
  OnboardingStatus? _onboardingStatus;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    // Load onboarding status from centralized state manager
    // This must happen BEFORE any routing decisions
    final status = await OnboardingState.loadOnboardingStatus();
    
    if (kDebugMode) {
      debugPrint('[APP_INIT] Onboarding status loaded:');
      debugPrint('  - shouldShowIntro: ${status.shouldShowIntro}');
      debugPrint('  - shouldShowGuided: ${status.shouldShowGuided}');
      debugPrint('  - isCompleted: ${status.isCompleted}');
      debugPrint('  - status: ${status.status}');
    }
    
    // Initialize guided onboarding controller with the loaded status
    await GuidedOnboardingController.initialize();
    
    // Initialize the old service for backward compatibility with screens that still use it
    try {
      await OldService.GuidedOnboarding.initialize();
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[APP_INIT] Could not initialize old onboarding service: $e');
      }
    }
    
    // If resuming from a step, restore it
    if (status.shouldShowGuided && status.resumeStep != null) {
      // Restore the step in GuidedOnboardingController
      if (status.resumeStep! >= 0 && 
          status.resumeStep! < GuidedOnboardingStep.values.length) {
        await GuidedOnboardingController.goTo(
          GuidedOnboardingStep.values[status.resumeStep!],
        );
      }
    }
    
    if (mounted) {
      setState(() {
        _onboardingStatus = status;
        _isLoading = false;
      });
      
      if (kDebugMode) {
        debugPrint('[APP_INIT] Routing decision: ${status.shouldShowIntro ? "OnboardingScreen" : "HomeScreen"}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading || _onboardingStatus == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // Route based on onboarding status
    if (_onboardingStatus!.shouldShowIntro) {
      // Fresh install - show intro slides
      return const OnboardingScreen();
    } else if (_onboardingStatus!.shouldShowGuided) {
      // Mid-onboarding - go to home screen where guided walkthrough will resume
      return const HomeScreen();
    } else {
      // Completed - go to home screen
      return const HomeScreen();
    }
  }
}
