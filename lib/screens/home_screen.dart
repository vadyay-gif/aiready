import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/progress_store.dart';
import '../services/tip_service.dart';
// OldService import removed - HomeScreen now uses GuidedOnboardingController exclusively
import '../widgets/track_tile.dart';
import '../widgets/guided_overlay.dart';
import '../theme/app_colors.dart';

import '../data/app_catalog.dart';
import '../main.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/onboarding_debug_log.dart';
import '../onboarding/guided_onboarding_navigation.dart';
import 'track_screen.dart';
import 'scenario_screen.dart';
import 'scenario_choice_screen.dart';
import 'progress_screen.dart';
import 'settings_page.dart';

class HomeScreen extends StatefulWidget {
  final int? autoOpenTrackIndex;
  final int? autoOpenLessonIndex;

  const HomeScreen({
    super.key,
    this.autoOpenTrackIndex,
    this.autoOpenLessonIndex,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with RouteAware {
  String _tip = "";
  final GlobalKey _track1Key = GlobalKey();
  final GlobalKey _settingsKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  bool _didAutoScrollForStep16 = false;
  int? _lastLoggedStep;
  bool _wasOnboardingActive = false;

  @override
  void initState() {
    super.initState();
    _loadTip(); // first load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final trackIndex = widget.autoOpenTrackIndex;
      final lessonIndex = widget.autoOpenLessonIndex;
      if (trackIndex != null && lessonIndex != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ScenarioChoiceScreen(
              trackIndex: trackIndex,
              lessonIndex: lessonIndex,
            ),
          ),
        );
      }
    });
    // Safety net: if guided onboarding is active but the step is not set or has
    // already advanced past trackSelection while on Home, clamp it back to
    // trackSelection so Step 4 overlay can appear deterministically.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!GuidedOnboardingController.isActive) return;
      final currentStepEnum = GuidedOnboardingController.currentStep;
      final currentStepNumber =
          GuidedOnboardingController.getCurrentStepNumber();
      final bool needsClamp = currentStepEnum == GuidedOnboardingStep.none ||
          currentStepNumber == 5 ||
          currentStepNumber == 6;
      if (needsClamp) {
        await GuidedOnboardingController
            .goTo(GuidedOnboardingStep.trackSelection);
      }
    });

    // Initialize progress totals after first frame to avoid setState during build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final store = context.read<ProgressStore>();
      store.ensureLoaded();
      for (final track in validatedTracks) {
        store.setTotal(track.title, kScenariosPerTrack);
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // subscribe to be notified when screen becomes visible again
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didPush() {
    // already handled by initState, but harmless
  }

  @override
  void didPopNext() {
    // We came back to Home from another page — rotate tip
    _loadTip();
  }

  Future<void> _loadTip() async {
    try {
      final tip = await TipService().nextTip();
      if (!mounted) return;
      setState(() => _tip = tip);
    } catch (_) { /* swallow to avoid any crash */ }
  }

  void _scrollToTopNextFrame() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(0.0);
        if (kDebugMode) {
          debugPrint('[HOME] onboarding finished -> scrollToTop');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    context.watch<ProgressStore>();
    final bottomPad = MediaQuery.of(context).padding.bottom;
    final media = MediaQuery.of(context)
        .copyWith(textScaler: const TextScaler.linear(1.0));

    // Use validated tracks (soft-fail validation) - this is the source of truth
    final tracks = validatedTracks;
    if (kDebugMode) {
      debugPrint(
          '[HOME] tracks=${tracks.length} | titles=${tracks.map((t) => t.title).join(' | ')}');
    }

    // Always show 9 tracks with placeholders for missing ones
    // Use tracks directly by index (0-8) instead of matching by title to avoid regressions
    final displayTracks = <TrackDef>[];
    for (int i = 0; i < 9; i++) {
      if (i < tracks.length) {
        displayTracks.add(tracks[i]);
      } else {
        // Create placeholder track for missing indices
        displayTracks.add(TrackDef(
          title: 'Track ${i + 1}',
          icon: Icons.help_outline,
          lessons: [],
        ));
      }
    }

    // Use the new GuidedOnboardingController as the source of truth
    // CRITICAL: Read state directly from controller - state is set synchronously in start()
    final bool isGuided = GuidedOnboardingController.isActive;
    final currentStep = GuidedOnboardingController.currentStep;
    final stepNumber = GuidedOnboardingController.getCurrentStepNumber();
    
    // Detect when onboarding completes (transitions from active to inactive)
    if (_wasOnboardingActive && !isGuided) {
      _scrollToTopNextFrame();
    }
    _wasOnboardingActive = isGuided;
    
    // Determine if GuidedOverlay should be rendered for steps that belong on HomeScreen
    // Step 4 (trackSelection) and Step 15 (infoSettings) are shown on HomeScreen
    final bool shouldShowOverlay = isGuided && 
        (currentStep == GuidedOnboardingStep.trackSelection ||
         currentStep == GuidedOnboardingStep.infoSettings);
    
    // Debug logging for onboarding state (kDebugMode only)
    if (kDebugMode) {
      final routeName = ModalRoute.of(context)?.settings.name ?? 'unknown';
      debugPrint('[HOME_ONBOARDING] route=$routeName, isActive=$isGuided, '
          'currentStep=$currentStep, stepNumber=$stepNumber, '
          'shouldShowOverlay=$shouldShowOverlay');
    }

    return MediaQuery(
      data: media,
      child: Scaffold(
        backgroundColor: AppColors.bg,
        body: SafeArea(
          bottom: true,
          child: Stack(
            children: [
              CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                      child: _buildHomeProgressCard(context),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: AppColors.primary.withValues(alpha: 0.12),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.03),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 20),
                      child: Column(
                        children: [
                          // Header with brand logo anchor
                          Center(
                            child: Container(
                              width: 88,
                              height: 88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.08),
                                    blurRadius: 16,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                'assets/icons/ai_ready_icon.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          Text(
                            'AI Ready',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w800),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Practical AI Skills in 60 Days',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: AppColors.subtext,
                                  fontWeight: FontWeight.w500,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.92, // slightly taller than square
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, i) {
                          if (i < displayTracks.length) {
                            // Regular track tiles
                            final track = displayTracks[i];
                            final canOpen = track.lessons.isNotEmpty;
                            final isPlaceholder = track.lessons.isEmpty;

                            // Debug print for track information
                            if (kDebugMode) {
                              debugPrint(
                                  'HOME card -> ${track.title} lessons=${track.lessons.length} disabled=${track.isDisabled}');
                            }

                            final currentStepEnum =
                                GuidedOnboardingController.currentStep;
                            final bool isGuidedTarget = isGuided &&
                                currentStepEnum ==
                                    GuidedOnboardingStep.trackSelection &&
                                i == 0;
                            // Block ALL track taps while on Step 4 (trackSelection) and
                            // Step 16 (infoSettings on Home) in guided mode.
                            // During Step 4, only Track 1 (i == 0) is tappable.
                            final bool isStep4 =
                                isGuided && currentStepEnum == GuidedOnboardingStep.trackSelection;
                            final bool isStep16 =
                                isGuided && currentStepEnum == GuidedOnboardingStep.infoSettings;
                            final bool allowTap = !isGuided ||
                                (!isStep4 && !isStep16) ||
                                (isStep4 && i == 0);

                            final trackTile = TrackTile(
                              // Use a dedicated onboarding key applied directly to the Material root.
                              // This guarantees the measured rect matches the true visual/tappable tile.
                              onboardingKey: isGuidedTarget ? _track1Key : null,
                              title: track.title,
                              icon: Icon(
                                track.icon,
                                color: isPlaceholder
                                    ? AppColors.muted
                                    : _trackAccent(i),
                                size: 44,
                              ),
                              surfaceColor: AppColors.surface,
                              borderColor: AppColors.border,
                              highlight: isGuidedTarget,
                              onTap: () async {
                                if (!allowTap) {
                                  if (kDebugMode) {
                                    debugPrint(
                                        '[HOME_ONBOARDING] tap blocked (step=$currentStepEnum, index=$i)');
                                  }
                                  return;
                                }
                                if (kDebugMode) {
                                  debugPrint('Open track: ${track.title}');
                                }
                                if (canOpen) {
                                  // Step 4: advance to lessonSelection BEFORE navigating.
                                  final isStep4Tap = isGuided &&
                                      currentStepEnum ==
                                          GuidedOnboardingStep.trackSelection &&
                                      i == 0;
                                  if (isStep4Tap) {
                                    await GuidedOnboardingController.next();
                                    await Future.microtask(() {});
                                  }
                                  if (!context.mounted) return;

                                  // Navigate to TrackScreen (step 5 overlay will appear immediately)
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          TrackScreen(trackIndex: i),
                                    ),
                                  );
                                } else {
                                  if (!context.mounted) return;
                                  // Show coming soon message
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text('${track.title} - Coming Soon'),
                                      duration: const Duration(seconds: 2),
                                    ),
                                  );
                                }
                              },
                            );
                            return trackTile;
                          } else {
                            // 10th tile - Settings
                            final bool isGuidedTarget = isGuided &&
                                GuidedOnboardingController.currentStep ==
                                    GuidedOnboardingStep.infoSettings;
                            return TrackTile(
                              onboardingKey: isGuidedTarget ? _settingsKey : null,
                              title: 'AI Ready Info and Settings',
                              icon: const Icon(
                                Icons.settings_outlined,
                                color: AppColors.primaryPressed,
                                size: 44,
                              ),
                              surfaceColor: AppColors.surface,
                              borderColor: AppColors.border,
                              highlight: isGuidedTarget,
                              onTap: () async {
                                // Step 16: Info & Settings tile tap-required in guided mode.
                                // goNext() advances infoSettings -> repeatOnboarding (step 17); then push SettingsPage.
                                if (isGuided &&
                                    GuidedOnboardingController.currentStep ==
                                        GuidedOnboardingStep.infoSettings) {
                                  OnboardingDebugLog.log(
                                    'home_screen',
                                    'Step16 Settings tile tapped -> push SettingsPage + goNext (expect stepNumber=17)',
                                  );
                                  await GuidedOnboardingController.goNext();
                                }
                                if (!context.mounted) return;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const SettingsPage(),
                                  ),
                                );
                              },
                            );
                          }
                        },
                        childCount:
                            displayTracks.length + 1, // +1 for settings tile
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          EdgeInsets.fromLTRB(16, 8, 16, 16 + bottomPad),
                      child: Card(
                        color: const Color(0xFFFBF8FF),
                        child: InkWell(
                          onTap: () => _navigateToDailyTip(context),
                          borderRadius: BorderRadius.circular(16),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                            child: Row(
                              children: [
                                Container(
                                  width: 34,
                                  height: 34,
                                  decoration: BoxDecoration(
                                    color: AppColors.insight.withValues(alpha: 0.16),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.auto_awesome,
                                    size: 20,
                                    color: AppColors.insight,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Daily AI Tip',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(
                                              color: AppColors.insight,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        _tip.isNotEmpty
                                            ? _tip
                                            : 'Summarize a meeting into action items.',
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                              color: AppColors.text,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Icon(
                                  Icons.chevron_right,
                                  color: AppColors.subtext,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                        height:
                            16 + MediaQuery.of(context).padding.bottom),
                  ),
                ],
              ),
              // CRITICAL: GuidedOverlay must be in the Stack to render on top
              // It's conditionally added based on onboarding state
              if (shouldShowOverlay && currentStep == GuidedOnboardingStep.trackSelection)
                GuidedOverlay(
                  text:
                      "Tracks group lessons by theme.\nLet's start with everyday communication.",
                  highlightedKey: _track1Key,
                  scrollController: _scrollController,
                  currentStep: stepNumber,
                  onHighlightReadyChanged: (_) {
                    if (!mounted) return;
                    setState(() {});
                  },
                  onPreviousStep: null,
                  onSkip: () => handleGuidedSkip(context),
                  // Step 4 is TAP-REQUIRED: no Next button (UIActionHint supplies tap instruction).
                  showContinueButton: false,
                )
              else
              // Step 16 overlay (notifier-driven rebuild)
              ValueListenableBuilder<GuidedOnboardingStep>(
                valueListenable: GuidedOnboardingController.stepNotifier,
                builder: (context, currentStepEnum, _) {
                  final int? liveStepNumber =
                      GuidedOnboardingController.getCurrentStepNumber();
                  final bool liveGuided = GuidedOnboardingController.isActive;
                  final bool isStep16 = liveGuided &&
                      currentStepEnum == GuidedOnboardingStep.infoSettings &&
                      liveStepNumber == 16;

                  if (!isStep16) {
                    if (_didAutoScrollForStep16) {
                      _didAutoScrollForStep16 = false; // Reset flag immediately to prevent repeated scheduling
                      // No setState needed - flag is only used for one-time scroll behavior
                    }
                    return const SizedBox.shrink();
                  }

                  // Only log on step transitions to prevent spam
                  if (liveStepNumber != _lastLoggedStep) {
                    OnboardingDebugLog.log(
                      'home_screen',
                      'render overlay for step=$liveStepNumber enum=$currentStepEnum',
                    );
                    _lastLoggedStep = liveStepNumber;
                  }

                  // Auto-scroll to Settings tile on Step 16 entry (once per entry)
                  if (!_didAutoScrollForStep16) {
                    final ctx = _settingsKey.currentContext;
                    OnboardingDebugLog.log(
                      'home_screen',
                      'step16 settingsTileContextNull=${ctx == null}',
                    );
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (!mounted) return;
                      final c = _settingsKey.currentContext;
                      if (c != null) {
                        final s = Scrollable.maybeOf(c);
                        if (s != null) {
                          Scrollable.ensureVisible(
                            c,
                            alignment: 0.2,
                            duration: const Duration(milliseconds: 250),
                          );
                          if (mounted) setState(() => _didAutoScrollForStep16 = true);
                          OnboardingDebugLog.log(
                            'home_screen',
                            'step16 autoScroll invoked mounted=true didScroll=true',
                          );
                        }
                      }
                    });
                  }

                  return GuidedOverlay(
                    text:
                        'Here you can learn more about AI Ready\nand adjust basic settings.',
                    highlightedKey: _settingsKey,
                    scrollController: _scrollController,
                    currentStep: liveStepNumber,
                    onPreviousStep: null,
                    onSkip: () => handleGuidedSkip(context),
                    // Step 16 is TAP-REQUIRED: NO Next button
                    showContinueButton: false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToDailyTip(BuildContext context) {
    // Navigate to a specific scenario for the daily tip
    // Using the first scenario from the first lesson of the first track as an example
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ScenarioScreen(
          trackIndex: 0,
          lessonIndex: 0,
          scenarioIndex: 0,
        ),
      ),
    );
  }

  Widget _buildHomeProgressCard(BuildContext context) {
    final completion = context.watch<ProgressStore>().overallCompletion();
    final percent = (completion * 100).round();

    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const ProgressScreen(),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
          child: Row(
            children: [
              Flexible(
                flex: 0,
                child: Text(
                  'Your Progress:',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.text,
                      ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: SizedBox(
                  height: 24,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        LinearProgressIndicator(
                          value: completion.clamp(0.0, 1.0),
                          minHeight: 24,
                          backgroundColor: AppColors.border,
                          color: AppColors.primary.withValues(alpha: 0.26),
                        ),
                        Text(
                          '$percent%',
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.text,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _trackAccent(int index) {
    const accents = <Color>[
      AppColors.primary,
      Color(0xFF4F7CF5),
      Color(0xFF5A67D8),
      Color(0xFF6B5BD2),
      Color(0xFF2F57C8),
      Color(0xFF3E63C7),
      Color(0xFF5673D1),
      Color(0xFF4968C5),
      Color(0xFF3B6EF5),
    ];
    return accents[index % accents.length];
  }
}

