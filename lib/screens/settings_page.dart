import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import '../services/progress_store.dart';
import '../services/onboarding_service.dart';
import '../app/build_info.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/guided_onboarding_navigation.dart';
import '../onboarding/onboarding_debug_log.dart';
import '../widgets/guided_overlay.dart';
import 'onboarding_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _dailyTipEnabled = true;
  int _buildIdTapCount = 0;
  bool _showDiagnostics = false;
  final GlobalKey _repeatOnboardingKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  bool _didAutoScrollForStep17 = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _dailyTipEnabled = prefs.getBool('dailyTipEnabled') ?? true;
    });
  }

  Future<void> _toggleDailyTip(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('dailyTipEnabled', value);
    setState(() {
      _dailyTipEnabled = value;
    });
  }

  void _showFeedback() {
    // For now, show a placeholder dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Send Feedback'),
        content: const Text('Feedback feature coming soon! You can reach us at feedback@aiready.app'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _repeatOnboarding() async {
    OnboardingDebugLog.log(
      'settings',
      'RepeatOnboarding tapped',
    );
    
    // Reset and restart onboarding immediately from intro1
    await GuidedOnboardingController.resetCompletely();
    await GuidedOnboardingController.startFromIntro();
    
    final isActive = GuidedOnboardingController.isActive;
    final stepNumber = GuidedOnboardingController.getCurrentStepNumber();
    final stepEnum = GuidedOnboardingController.currentStep;
    
    OnboardingDebugLog.log(
      'settings',
      'after reset/start -> active=$isActive step=$stepNumber enum=$stepEnum',
    );
    
    // Navigate to start screen (OnboardingScreen) immediately
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      OnboardingDebugLog.log(
        'settings',
        'navigating to start screen',
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const OnboardingScreen(initialPage: 0),
        ),
      );
    });
  }

  void _resetProgress() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset Progress'),
        content: const Text(
          'This will clear all your progress and start you from the beginning. This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<ProgressStore>().clear();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Progress cleared successfully'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }

  void _handleBuildIdTap() {
    setState(() {
      _buildIdTapCount += 1;
      if (_buildIdTapCount >= 7) {
        _showDiagnostics = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Ready Info and Settings'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SafeArea(
            bottom: true,
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.fromLTRB(
                16,
                16,
                16,
                MediaQuery.of(context).padding.bottom + 16,
              ),
            children: [
              // Notifications Section
              _buildSectionHeader(context, 'Notifications'),
              
              _buildSettingsTile(
                context,
                icon: Icons.tips_and_updates,
                title: 'Daily Tip',
                subtitle: 'Get helpful AI tips on the home screen',
                trailing: Switch(
                  value: _dailyTipEnabled,
                  onChanged: _toggleDailyTip,
                ),
                onTap: null,
              ),
              
              const SizedBox(height: 24),
              
              // Progress Section
              _buildSectionHeader(context, 'Progress'),
              
              Consumer<ProgressStore>(
                builder: (context, store, child) {
                  final completion = store.overallCompletion();
                  return _buildSettingsTile(
                    context,
                    icon: Icons.analytics,
                    title: 'Overall Completion',
                    subtitle: 'Your progress: ${(completion * 100).round()}% complete',
                    trailing: null,
                    onTap: null,
                  );
                },
              ),
              
              const SizedBox(height: 24),
              
              // App Section
              _buildSectionHeader(context, 'App'),
              
              _buildSettingsTile(
                context,
                icon: Icons.school,
                title: 'Repeat Onboarding',
                subtitle: 'Show introduction screens again',
                trailing: const Icon(Icons.chevron_right),
                onTap: _repeatOnboarding,
                key: _repeatOnboardingKey,
              ),
              
              _buildSettingsTile(
                context,
                icon: Icons.feedback,
                title: 'Send Feedback',
                subtitle: 'Help us improve the app',
                trailing: const Icon(Icons.chevron_right),
                onTap: _showFeedback,
              ),
              
              const SizedBox(height: 24),
              
              // Danger Zone
              _buildSectionHeader(context, 'Danger Zone'),
              
              _buildSettingsTile(
                context,
                icon: Icons.refresh,
                title: 'Reset Progress',
                subtitle: 'Clear all progress and start over',
                trailing: const Icon(Icons.chevron_right),
                onTap: _resetProgress,
                isDestructive: true,
              ),

              const SizedBox(height: 24),

              // Build Information Section
              _buildSectionHeader(context, 'Build Information'),
              Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDiagnosticRow(
                        'Build ID',
                        BuildInfo.kBuildId,
                        onTap: _handleBuildIdTap,
                      ),
                      if (_showDiagnostics) ...[
                        const SizedBox(height: 16),
                        _buildOnboardingDiagnosticsPanel(context),
                      ],
                    ],
                  ),
                ),
              ),
            ],
            ),
          ),
          // Step 17 overlay (notifier-driven rebuild)
          ValueListenableBuilder<GuidedOnboardingStep>(
            valueListenable: GuidedOnboardingController.stepNotifier,
            builder: (context, currentStepEnum, _) {
              final int? liveStepNumber =
                  GuidedOnboardingController.getCurrentStepNumber();
              final bool liveGuided = GuidedOnboardingController.isActive;
              final bool isStep17 = liveGuided && liveStepNumber == 17;

              if (!isStep17) {
                if (_didAutoScrollForStep17) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (mounted) setState(() => _didAutoScrollForStep17 = false);
                  });
                }
                return const SizedBox.shrink();
              }

              final repeatKeyMounted = _repeatOnboardingKey.currentContext != null;
              OnboardingDebugLog.log(
                'settings',
                'step17 render stepNumber=17 isGuided=true',
              );
              OnboardingDebugLog.log(
                'settings',
                'step17 repeatKeyMounted=$repeatKeyMounted contextNull=${!repeatKeyMounted}',
              );
              OnboardingDebugLog.log(
                'settings',
                'step17 highlight=repeatOnboarding',
              );

              // Auto-scroll to Repeat Onboarding (once per Step 17 entry)
              if (!_didAutoScrollForStep17) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (!mounted) return;
                  final ctx = _repeatOnboardingKey.currentContext;
                  final contextNull = ctx == null;
                  final s = ctx != null ? Scrollable.maybeOf(ctx) : null;
                  final didScroll = s != null;
                  OnboardingDebugLog.log(
                    'settings',
                    'step17 autoScroll alignment=0.08 didScroll=$didScroll',
                  );
                  if (ctx != null && s != null) {
                    Scrollable.ensureVisible(
                      ctx,
                      alignment: 0.08,
                      duration: const Duration(milliseconds: 250),
                    );
                    if (mounted) setState(() => _didAutoScrollForStep17 = true);
                  }
                });
              }

              return GuidedOverlay(
                text:
                    'You can repeat onboarding anytime.\nExplore settings and customize your experience.',
                highlightedKey: _repeatOnboardingKey,
                scrollController: _scrollController,
                currentStep: liveStepNumber,
                onPreviousStep: null,
                onSkip: () => handleGuidedSkip(context),
                showContinueButton: true,
                continueButtonText: 'Finish',
                onContinue: () async {
                  final before =
                      GuidedOnboardingController.getCurrentStepNumber();
                  OnboardingDebugLog.log(
                    'settings',
                    'Step17 Finish pressed -> complete() (stepNumber=$before)',
                  );
                  await GuidedOnboardingController.complete();
                  if (context.mounted) {
                    Navigator.of(context)
                        .popUntil((route) => route.isFirst);
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildSettingsTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    Widget? trailing,
    VoidCallback? onTap,
    bool isDestructive = false,
    Key? key,
  }) {
    return Card(
      key: key,
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(
          icon,
          color: isDestructive ? Colors.red : Theme.of(context).primaryColor,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: isDestructive ? Colors.red : null,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: isDestructive ? Colors.red.shade700 : null,
          ),
        ),
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }

  Widget _buildDiagnosticRow(
    String label,
    String value, {
    VoidCallback? onTap,
  }) {
    final content = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(width: 16),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );

    if (onTap == null) {
      return content;
    }

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: content,
      ),
    );
  }

  Widget _buildOnboardingDiagnosticsPanel(BuildContext context) {
    final controller = OnboardingDebugLog.controllerState;
    final overlay = OnboardingDebugLog.overlayState;
    final entries = OnboardingDebugLog.entries.take(40).toList();

    final isActive = GuidedOnboardingController.isActive;
    final currentStepEnum = GuidedOnboardingController.currentStep;
    final currentStepNumber =
        GuidedOnboardingController.getCurrentStepNumber();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Onboarding Diagnostics',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            TextButton(
              onPressed: () async {
                final text = _buildDiagnosticsText(
                  buildId: BuildInfo.kBuildId,
                  controller: controller,
                  overlay: overlay,
                  entries: entries,
                );
                await Clipboard.setData(ClipboardData(text: text));
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Diagnostics copied to clipboard'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: const Text('Copy diagnostics'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Live controller state
        Text(
          'Controller: active=$isActive, '
          'step=$currentStepEnum, '
          'stepNumber=$currentStepNumber, '
          'totalSteps=${GuidedOnboardingController.totalSteps}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        if (controller != null)
          Text(
            'Controller snapshot: '
            'active=${controller.isActive}, '
            'step=${controller.currentStepLabel}, '
            'stepNumber=${controller.stepNumber}, '
            'sectionIdx=${controller.scenarioSectionIndex}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        const SizedBox(height: 8),
        // Overlay debug
        Text(
          'Overlay:',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          overlay == null
              ? '  no overlay state yet'
              : '  hasAnyKey=${overlay.hasAnyKey}, '
                  'primaryMounted=${overlay.primaryTargetMounted}, '
                  'secondaryMounted=${overlay.secondaryTargetMounted}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        if (overlay != null) ...[
          Text(
            '  candidateRect=${overlay.candidateRect}, '
            'stableRect=${overlay.stableRect}, '
            'paintRect=${overlay.paintRect}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            '  stableFrames=${overlay.stableFrames}, '
            'requiredFrames=${overlay.requiredFrames}, '
            'measurementScheduled=${overlay.measurementScheduled}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            '  pendingFrames=${overlay.pendingMeasureFrames}, '
            'resetCount=${overlay.resetCount}, '
            'lastDelta=${overlay.lastRectDelta}, '
            'framesSinceFirstCandidate=${overlay.framesSinceFirstCandidate}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            '  lastResetReason=${overlay.lastResetReason}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
        Text(
          '  noCutoutReason=${OnboardingDebugLog.lastNoCutoutReason}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {
            final text = _buildDiagnosticsText(
              buildId: BuildInfo.kBuildId,
              controller: controller,
              overlay: overlay,
              entries: entries,
            );
            OnboardingDebugLog.log('overlay_dump', text);
          },
          child: const Text('Dump overlay state now'),
        ),
        const SizedBox(height: 8),
        // Buttons / transitions debug
        Text(
          'Buttons:',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          '  lastAction=${OnboardingDebugLog.lastBottomSheetAction}, '
          'onContinueNull=${OnboardingDebugLog.lastOnContinueWasNull}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          '  lastTransition=${OnboardingDebugLog.lastStepTransition}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 8),
        Text(
          'Recent events (${entries.length}):',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 4),
        ...entries.map(
          (e) => Text(
            '[${e.timestamp.toIso8601String().substring(11, 19)}] '
            '[${e.category}] ${e.message}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  String _buildDiagnosticsText({
    required String buildId,
    required OnboardingControllerDebugState? controller,
    required OnboardingOverlayDebugState? overlay,
    required List<OnboardingLogEntry> entries,
  }) {
    final buffer = StringBuffer();

    buffer.writeln('Build ID: $buildId');
    buffer.writeln('--- Controller ---');
    buffer.writeln(
      'live: active=${GuidedOnboardingController.isActive}, '
      'step=${GuidedOnboardingController.currentStep}, '
      'stepNumber=${GuidedOnboardingController.getCurrentStepNumber()}, '
      'totalSteps=${GuidedOnboardingController.totalSteps}',
    );
    if (controller != null) {
      buffer.writeln(
        'snapshot: active=${controller.isActive}, '
        'step=${controller.currentStepLabel}, '
        'stepNumber=${controller.stepNumber}, '
        'sectionIdx=${controller.scenarioSectionIndex}',
      );
    }

    buffer.writeln('--- Overlay ---');
    if (overlay == null) {
      buffer.writeln('no overlay state yet');
    } else {
      buffer.writeln(
        'hasAnyKey=${overlay.hasAnyKey}, '
        'primaryMounted=${overlay.primaryTargetMounted}, '
        'secondaryMounted=${overlay.secondaryTargetMounted}',
      );
      buffer.writeln('candidateRect=${overlay.candidateRect}');
      buffer.writeln('stableRect=${overlay.stableRect}');
      buffer.writeln('paintRect=${overlay.paintRect}');
      buffer.writeln(
        'stableFrames=${overlay.stableFrames}, '
        'requiredFrames=${overlay.requiredFrames}, '
        'measurementScheduled=${overlay.measurementScheduled}, '
        'pendingFrames=${overlay.pendingMeasureFrames}, '
        'resetCount=${overlay.resetCount}, '
        'lastDelta=${overlay.lastRectDelta}, '
        'framesSinceFirstCandidate=${overlay.framesSinceFirstCandidate}',
      );
      buffer.writeln(
        'noCutoutReason=${OnboardingDebugLog.lastNoCutoutReason}, '
        'lastResetReason=${overlay.lastResetReason}',
      );
    }

    buffer.writeln('--- Buttons ---');
    buffer.writeln(
      'lastAction=${OnboardingDebugLog.lastBottomSheetAction}, '
      'onContinueNull=${OnboardingDebugLog.lastOnContinueWasNull}, '
      'lastTransition=${OnboardingDebugLog.lastStepTransition}',
    );

    buffer.writeln('--- Recent events (${entries.length}) ---');
    for (final e in entries) {
      buffer.writeln(
        '[${e.timestamp.toIso8601String()}] [${e.category}] ${e.message}',
      );
    }

    return buffer.toString();
  }
}
