import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../services/onboarding_service.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _index = 0;

  void _skip() => _finish();
  void _next() => (_index < _pages.length - 1)
      ? _controller.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.easeOut)
      : _finish();

  void _finish() {
    OnboardingService.markOnboardingSeen().then((_) {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  late final List<_PageData> _pages = const <_PageData>[
    _PageData(
      icon: Icons.auto_awesome,
      title: 'Master AI at work',
      subtitle: 'Learn practical AI skills that will transform how you work. From writing emails to creating presentations, become an AI power user in just 30 days.',
      bullets: null,
    ),
    _PageData(
      icon: Icons.schedule,
      title: 'Learn in minutes',
      subtitle: 'Quick, practical lessons you can finish fast.',
      bullets: [
        _Bullet(icon: Icons.flash_on, title: 'Quick 5-minute lessons', subtitle: 'Perfect for busy schedules'),
        _Bullet(icon: Icons.handyman, title: 'Hands-on practice', subtitle: 'Real scenarios you\'ll use at work'),
        _Bullet(icon: Icons.trending_up, title: 'Immediate results', subtitle: 'See improvements from day one'),
      ],
    ),
    _PageData(
      icon: Icons.school,
      title: 'Your AI coach',
      subtitle: 'Personalized daily tips and progress tracking.',
      bullets: [
        _Bullet(icon: Icons.tips_and_updates, title: 'Daily AI Tips', subtitle: 'Short, useful nudges'),
        _Bullet(icon: Icons.analytics, title: 'Track progress', subtitle: 'Stay motivated'),
      ],
    ),
    _PageData(
      icon: Icons.rocket_launch,
      title: 'Ready to try?',
      subtitle: 'Join thousands of professionals who are already using AI to work smarter, not harder. Your journey to AI mastery starts now!',
      bullets: [
        _Bullet(icon: Icons.layers, title: '9 specialized AI skill tracks', subtitle: 'Emails, reports, presentations, and more'),
        _Bullet(icon: Icons.assignment, title: '45+ hands-on scenarios', subtitle: 'Real-world applications'),
        _Bullet(icon: Icons.timeline, title: 'Daily tips and progress tracking', subtitle: 'Stay on track'),
      ],
      ctaText: 'Start Learning',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top bar with Skip
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: _skip,
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (i) => setState(() => _index = i),
                itemBuilder: (context, i) => _OnboardPage(data: _pages[i]),
              ),
            ),
            // Dots (above bottom bar so they never overflow)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _Dots(count: _pages.length, index: _index),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
          child: SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: _next,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                _index < _pages.length - 1 ? 'Next' : 'Start Learning',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _OnboardPage extends StatelessWidget {
  const _OnboardPage({required this.data});
  final _PageData data;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      final h = c.maxHeight;
      final isSmall = h < 680;
      final iconSize = isSmall ? 64.0 : 88.0;
      final gapLg = isSmall ? 16.0 : 24.0;
      final gapSm = isSmall ? 8.0 : 12.0;
      final maxW = math.min(c.maxWidth, 720.0);

      return Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxW),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: h),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: gapLg),
                    CircleAvatar(
                      radius: iconSize / 2,
                      backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                      child: Icon(
                        data.icon,
                        size: iconSize,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    SizedBox(height: gapLg),
                    Text(
                      data.title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    if (data.subtitle != null) ...[
                      SizedBox(height: gapSm),
                      Text(
                        data.subtitle!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey.shade600,
                          height: 1.5,
                        ),
                      ),
                    ],
                    SizedBox(height: gapLg),
                    if (data.bullets != null)
                      ...data.bullets!.map((b) => _BulletTile(b)).toList(),
                    const Spacer(), // pushes content but allows scroll if needed
                    SizedBox(height: gapLg),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class _BulletTile extends StatelessWidget {
  const _BulletTile(this.b);
  final _Bullet b;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
            child: Icon(
              b.icon,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  b.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                if (b.subtitle != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      b.subtitle!,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots({required this.count, required this.index});
  final int count;
  final int index;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (i) => AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: i == index ? 18 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: i == index
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primary.withValues(alpha: 0.35),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

class _PageData {
  const _PageData({
    required this.icon,
    required this.title,
    this.subtitle,
    this.bullets,
    this.ctaText,
  });
  final IconData icon;
  final String title;
  final String? subtitle;
  final List<_Bullet>? bullets;
  final String? ctaText;
}

class _Bullet {
  const _Bullet({
    required this.icon,
    required this.title,
    this.subtitle,
  });
  final IconData icon;
  final String title;
  final String? subtitle;
}