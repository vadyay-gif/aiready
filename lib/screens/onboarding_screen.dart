import 'package:flutter/material.dart';
import '../services/guided_onboarding.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _index = 0;

  void _next() {
    if (_index < _pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _startGuidedTour();
    }
  }

  void _startGuidedTour() {
    // Begin the in-app guided walkthrough. Completion is handled later
    // once the user finishes the full tour inside the app.
    GuidedOnboarding.start();
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  final List<_OnboardingPage> _pages = const [
    _OnboardingPage(
      title: 'Welcome to AI Ready',
      body:
          'AI Ready helps you use AI practically at work.\nClear guidance. Real scenarios. Better results.',
    ),
    _OnboardingPage(
      title: 'C.O.R.E. Prompting',
      body:
          'AI Ready teaches C.O.R.E. prompting:\nContext, Objective, Role, Expectations.\nA simple way to get better AI results.',
    ),
    _OnboardingPage(
      title: 'How It Works',
      body:
          'Choose a Track.\nChoose a Lesson.\nWork through real scenarios.\nLearn by doing.',
      isCompletion: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (i) => setState(() => _index = i),
                itemBuilder: (context, i) => _OnboardingPageWidget(
                  page: _pages[i],
                ),
              ),
            ),
            // Page indicators
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: _PageIndicators(
                count: _pages.length,
                currentIndex: _index,
              ),
            ),
            // Continue button
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _next,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF007AFF),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    _pages[_index].isCompletion
                        ? 'Start Guided Tour'
                        : 'Continue',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _OnboardingPageWidget extends StatelessWidget {
  const _OnboardingPageWidget({required this.page});

  final _OnboardingPage page;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Text(
            page.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000),
              letterSpacing: -0.5,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            page.body,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Color(0xFF3C3C43),
              letterSpacing: -0.4,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _PageIndicators extends StatelessWidget {
  const _PageIndicators({
    required this.count,
    required this.currentIndex,
  });

  final int count;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => Container(
          width: index == currentIndex ? 8 : 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: index == currentIndex
                ? const Color(0xFF007AFF)
                : const Color(0xFFC7C7CC),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class _OnboardingPage {
  const _OnboardingPage({
    required this.title,
    required this.body,
    this.isCompletion = false,
  });

  final String title;
  final String body;
  final bool isCompletion;
}
