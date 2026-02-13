import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/scenario_complete_screen.dart';
import 'screens/settings_page.dart';
import 'repositories/lesson_repository.dart';
import 'services/progress_store.dart';
import 'services/onboarding_service.dart';
import 'onboarding/guided_onboarding_controller.dart';
import 'onboarding/onboarding_debug_log.dart';
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
  Widget? _targetScreen;

  @override
  void initState() {
    super.initState();
    _checkOnboardingStatus();
  }

  Future<void> _checkOnboardingStatus() async {
    // Initialize guided onboarding controller first
    await GuidedOnboardingController.initialize();
    
    final hasSeenOnboarding = await OnboardingService.hasSeenOnboarding();
    final isActive = GuidedOnboardingController.isActive;
    final stepNumber = GuidedOnboardingController.getCurrentStepNumber();
    
    OnboardingDebugLog.log(
      'app_init',
      'checkOnboardingStatus: hasSeenOnboarding=$hasSeenOnboarding isActive=$isActive stepNumber=$stepNumber',
    );
    
    // Determine target screen for resume routing (steps 15-17)
    Widget? targetScreen;
    if (isActive && stepNumber != null) {
      if (stepNumber == 15) {
        // Step 15: ScenarioCompleteScreen
        OnboardingDebugLog.log('app_init', 'resume routing: step=15 -> ScenarioCompleteScreen');
        targetScreen = const ScenarioCompleteScreen(
          trackIndex: 0,
          lessonIndex: 0,
          scenarioIndex: 0,
        );
      } else if (stepNumber == 16) {
        // Step 16: HomeScreen (Settings tile will be highlighted)
        OnboardingDebugLog.log('app_init', 'resume routing: step=16 -> HomeScreen');
        targetScreen = const HomeScreen();
      } else if (stepNumber == 17) {
        // Step 17: SettingsPage (repeatOnboarding)
        OnboardingDebugLog.log('app_init', 'resume routing: step=17 -> SettingsPage');
        targetScreen = const SettingsPage();
      }
    }
    
    if (mounted) {
      final showOnboarding = !hasSeenOnboarding && targetScreen == null;
      if (showOnboarding) {
        await GuidedOnboardingController.startFromIntro();
      }
      if (mounted) {
        setState(() {
          _showOnboarding = showOnboarding;
          _isLoading = false;
          _targetScreen = targetScreen;
        });
      }
    }
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

    // If we have a target screen for resume, show it; otherwise use normal routing
    if (_targetScreen != null) {
      return _targetScreen!;
    }

    return _showOnboarding ? const OnboardingScreen() : const HomeScreen();
  }
}
