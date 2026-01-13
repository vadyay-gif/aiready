import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import '../services/progress_store.dart';
import '../services/onboarding_service.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _dailyTipEnabled = true;

  @override
  void initState() {
    super.initState();
    _loadSettings();
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
    await OnboardingService.resetOnboarding();
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Onboarding will show next launch'),
          duration: Duration(seconds: 2),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Ready Info and Settings'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: ListView(
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
  }) {
    return Card(
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
}
