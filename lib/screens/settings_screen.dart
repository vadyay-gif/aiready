import 'package:flutter/material.dart';
import '../services/onboarding_service.dart';
import 'onboarding_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // App Info Section
          _buildSectionHeader(context, 'App'),
          
          _buildSettingsTile(
            context,
            icon: Icons.info_outline,
            title: 'About AI Ready',
            subtitle: 'Version 1.0.0',
            onTap: () {
              _showAboutDialog(context);
            },
          ),
          
          const SizedBox(height: 24),
          
          // Learning Section
          _buildSectionHeader(context, 'Learning'),
          
          _buildSettingsTile(
            context,
            icon: Icons.school,
            title: 'Replay Onboarding',
            subtitle: 'See the introduction again',
            onTap: () {
              _replayOnboarding(context);
            },
          ),
          
          _buildSettingsTile(
            context,
            icon: Icons.refresh,
            title: 'Reset Progress',
            subtitle: 'Start over with all tracks',
            onTap: () {
              _showResetProgressDialog(context);
            },
          ),
          
          const SizedBox(height: 24),
          
          // Support Section
          _buildSectionHeader(context, 'Support'),
          
          _buildSettingsTile(
            context,
            icon: Icons.help_outline,
            title: 'Help & FAQ',
            subtitle: 'Get help using the app',
            onTap: () {
              _showComingSoon(context, 'Help & FAQ');
            },
          ),
          
          _buildSettingsTile(
            context,
            icon: Icons.feedback_outlined,
            title: 'Send Feedback',
            subtitle: 'Share your thoughts',
            onTap: () {
              _showComingSoon(context, 'Send Feedback');
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
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }

  void _replayOnboarding(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Replay Onboarding'),
        content: const Text(
          'This will show the introduction screens again. Your progress will be saved.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              await OnboardingService.resetOnboarding();
              if (context.mounted) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const OnboardingScreen(),
                  ),
                );
              }
            },
            child: const Text('Replay'),
          ),
        ],
      ),
    );
  }

  void _showResetProgressDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset Progress'),
        content: const Text(
          'This will reset all your progress and start you from the beginning. This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _showComingSoon(context, 'Reset Progress');
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

  void _showAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationName: 'AI Ready',
      applicationVersion: '1.0.0',
      applicationIcon: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.auto_awesome,
          size: 32,
          color: Theme.of(context).primaryColor,
        ),
      ),
      children: [
        const Text(
          'Master practical AI skills in just 30 days. Learn to work smarter with AI-powered tools and techniques.',
        ),
      ],
    );
  }

  void _showComingSoon(BuildContext context, String feature) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('$feature - Coming Soon'),
        content: Text('$feature will be available in a future update.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
