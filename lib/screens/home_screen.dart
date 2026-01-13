import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/progress_store.dart';
import '../services/tip_service.dart';
import '../widgets/track_tile.dart';
import '../theme/app_colors.dart';

import '../data/app_catalog.dart';
import '../main.dart';
import 'track_screen.dart';
import 'scenario_screen.dart';
import 'settings_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with RouteAware {
  String _tip = "";

  @override
  void initState() {
    super.initState();
    _loadTip(); // first load
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

  @override
  Widget build(BuildContext context) {
    final store = context.watch<ProgressStore>();
    final bottomPad = MediaQuery.of(context).padding.bottom;
    final media = MediaQuery.of(context)
        .copyWith(textScaler: const TextScaler.linear(1.0));

    // Use validated tracks (soft-fail validation)
    final tracks = validatedTracks;
    // TEMP: verify track count and order
    // ignore: invalid_use_of_visible_for_testing_member
    if (kDebugMode) {
      debugPrint(
          '[HOME] tracks=${tracks.length} | titles=${tracks.map((t) => t.title).join(' | ')}');
    }

    // Always show 9 tracks with placeholders for missing ones
    final requiredTitles = [
      'Everyday Communication',
      'Productivity & Workflow',
      'Spreadsheets & Data',
      'Presentations',
      'Communication',
      'Content Creation',
      'Problem-Solving & Analysis',
      'Decision Support',
      'Brainstorming & Strategy',
    ];

    final displayTracks = <TrackDef>[];
    for (int i = 0; i < 9; i++) {
      final requiredTitle = requiredTitles[i];
      final existingTrack =
          tracks.where((t) => t.title == requiredTitle).firstOrNull;

      if (existingTrack != null) {
        displayTracks.add(existingTrack);
        context
            .read<ProgressStore>()
            .setTotal(existingTrack.title, kScenariosPerTrack);
      } else {
        // Create placeholder track
        displayTracks.add(TrackDef(
          title: requiredTitle,
          icon: Icons.help_outline,
          lessons: [],
        ));
      }
    }

    // Set totals for progress tracking (15 scenarios per track)
    for (final track in tracks) {
      context.read<ProgressStore>().setTotal(track.title, kScenariosPerTrack);
    }

    return MediaQuery(
      data: media,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          bottom: true,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFEFF5FF),
                        Colors.white
                      ], // subtle blue → white
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
                  child: Column(
                    children: [
                      // Header with app icon
                      Center(
                        child: Container(
                          width: 76,
                          height: 76,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE6F0FF),
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: const Icon(Icons.auto_awesome,
                              size: 36, color: Color(0xFF3E7BFA)),
                        ),
                      ),
                      const SizedBox(height: 16),
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
                        'Practical AI Skills in 30 Days',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: const Color(0x99000000)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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

                        return TrackTile(
                          title: track.title,
                          icon: Icon(track.icon,
                              color: isPlaceholder
                                  ? Colors.grey
                                  : const Color(0xFF3E7BFA),
                              size: 44),
                          onTap: () {
                            if (kDebugMode) {
                              debugPrint('Open track: ${track.title}');
                            }
                            if (canOpen) {
                              if (kDebugMode) {
                                debugPrint(
                                    'Open track: ${track.title} | lessons=${track.lessons.length}');
                              }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => TrackScreen(trackIndex: i),
                                ),
                              );
                            } else {
                              // Show coming soon message
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('${track.title} - Coming Soon'),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            }
                          },
                        );
                      } else {
                        // 10th tile - Settings
                        return TrackTile(
                          title: 'AI Ready Info and Settings',
                          icon: const Icon(
                            Icons.settings_outlined,
                            color: Color(0xFF3E7BFA),
                            size: 44,
                          ),
                          onTap: () {
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
                    childCount: displayTracks.length + 1, // +1 for settings tile
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 4, 16, 16 + bottomPad),
                  child: Card(
                    child: InkWell(
                      onTap: () => _navigateToDailyTip(context),
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            const Icon(Icons.auto_awesome, color: AppColors.primary),
                            const SizedBox(width: 12),
                            Expanded(
                                child: Text(
                                    _tip.isNotEmpty ? 'Daily AI Tip: $_tip' : 'Daily AI Tip: "Summarize a meeting into action items."')),
                            const Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                    height: 16 + MediaQuery.of(context).padding.bottom),
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
}
