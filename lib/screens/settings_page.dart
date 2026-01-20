import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import '../services/progress_store.dart';
import '../services/onboarding_service.dart';
import '../services/guided_onboarding.dart' as OldService;
import '../widgets/guided_overlay.dart';
import '../app/build_info.dart';
import '../onboarding/onboarding_state.dart';
import '../onboarding/guided_onboarding_controller.dart';
import 'onboarding_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _dailyTipEnabled = true;
  final GlobalKey _progressKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  bool? _onboardingCompleted;
  bool? _onboardingActive;

  @override
  void initState() {
    super.initState();
    _loadSettings();
    _loadOnboardingState();
  }
  
  Future<void> _loadOnboardingState() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _onboardingCompleted = prefs.getBool('onboarding_completed') ?? false;
      _onboardingActive = prefs.getBool('onboarding_active') ?? false;
    });
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
    // Reset all onboarding state (intro + guided)
    // This must happen BEFORE navigation to ensure any active overlay is cleared
    // CRITICAL: resetCompletely() sets _active=false and _step=none SYNCHRONOUSLY
    // before any async operations, so state is immediately cleared
    await OnboardingService.resetOnboarding();
    await GuidedOnboardingController.resetCompletely();
    
    // Debug log to confirm reset worked
    if (kDebugMode) {
      debugPrint('[SETTINGS] Repeat Onboarding: Reset complete. '
          'isActive=${GuidedOnboardingController.isActive}, '
          'currentStep=${GuidedOnboardingController.currentStep}');
    }
    
    if (!mounted) return;
    
    // Immediately navigate to onboarding screen to restart now
    // Use pushReplacement to clear navigation stack and ensure clean state
    // State is already cleared synchronously, so navigation is safe
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const OnboardingScreen(initialPage: 0),
      ),
    );
  }
  
  void _resetOnboardingNow() async {
    // Clear all onboarding flags
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('onboarding_completed');
    await prefs.remove('onboarding_active');
    await prefs.remove('onboarding_step');
    await prefs.remove('onboarding_seen_version');
    
    // Reset GuidedOnboardingController state
    await GuidedOnboardingController.resetCompletely();
    
    // Update local state
    await _loadOnboardingState();
    
    if (mounted) {
      // Navigate to onboarding screen (page 0)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const OnboardingScreen(initialPage: 0),
        ),
      );
    }
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

  @override
  Widget build(BuildContext context) {
    // Use new controller as source of truth
    final isGuided = GuidedOnboardingController.isActive &&
        GuidedOnboardingController.currentStep == GuidedOnboardingStep.infoSettings;
    final stepNumber = GuidedOnboardingController.getCurrentStepNumber(settingsPage: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Ready Info and Settings'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            padding: const EdgeInsets.all(16),
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
          SizedBox(
            key: isGuided ? _progressKey : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),
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
          
          // Diagnostics Section
          _buildSectionHeader(context, 'Diagnostics'),
          
          Card(
            margin: const EdgeInsets.only(bottom: 8),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDiagnosticRow('Build ID', BuildInfo.kBuildId),
                  const SizedBox(height: 8),
                  _buildDiagnosticRow('Onboarding steps', '${BuildInfo.kExpectedOnboardingSteps}'),
                  const SizedBox(height: 8),
                  _buildDiagnosticRow('Track 7 title', BuildInfo.kTrack7Title),
                  const SizedBox(height: 8),
                  _buildDiagnosticRow('Guided overlay present', '${BuildInfo.kGuidedOverlayPresent}'),
                  const SizedBox(height: 8),
                  _buildDiagnosticRow('Onboarding completed', '${_onboardingCompleted ?? "?"}'),
                  const SizedBox(height: 8),
                  _buildDiagnosticRow('Onboarding active', '${_onboardingActive ?? "?"}'),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Reset Onboarding Now button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _resetOnboardingNow,
              icon: const Icon(Icons.refresh),
              label: const Text('RESET ONBOARDING NOW'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ],
      ),
          if (isGuided && stepNumber == 17)
            GuidedOverlay(
              text: "You can track your progress here.",
              highlightedKey: _progressKey,
              scrollController: _scrollController,
              currentStep: stepNumber,
              showCompletionButton: true,
              onComplete: () async {
                await GuidedOnboardingController.complete();
                if (mounted) {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                }
              },
            ),
        ],
      ),
    );
  }

  Widget _buildDiagnosticRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 140,
          child: Text(
            '$label:',
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
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
    Key? key,
    required IconData icon,
    required String title,
    required String subtitle,
    Widget? trailing,
    VoidCallback? onTap,
    bool isDestructive = false,
  }) {
    final card = Card(
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
    
    if (key != null) {
      return SizedBox(key: key, child: card);
    }
    return card;
  }
}
