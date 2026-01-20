import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/onboarding_state.dart';
import '../services/onboarding_service.dart';
import '../ui/shared/app_scaffold.dart';
import '../ui/adaptive/adaptive_container.dart';
import '../ui/adaptive/adaptive_insets.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  final int? initialPage;
  
  const OnboardingScreen({super.key, this.initialPage});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _controller;
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = widget.initialPage ?? 0;
    _controller = PageController(initialPage: _index);
  }

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

  void _previous() {
    if (_index > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _skipOnboarding() async {
    // Skip the entire onboarding and mark it as completed
    await OnboardingState.markCompleted();
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  }

  Future<void> _startGuidedTour() async {
    // Mark intro slides as shown and begin the in-app guided walkthrough.
    // OnboardingState.markIntroShown() is called by GuidedOnboardingController.start()
    // CRITICAL: start() sets _active=true and _step=trackSelection SYNCHRONOUSLY
    // before any async operations, so state is immediately available
    await GuidedOnboardingController.start();
    
    // Debug log to confirm step 3 -> step 4 transition
    if (kDebugMode) {
      debugPrint('[ONBOARDING] Step 3 -> Step 4 transition: '
          'isActive=${GuidedOnboardingController.isActive}, '
          'currentStep=${GuidedOnboardingController.currentStep}');
    }
    
    if (!mounted) return;
    
    // Navigate to HomeScreen - state is already set synchronously, so overlay will mount immediately
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
    return AppScaffold(
      body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (i) => setState(() => _index = i),
                itemBuilder: (context, i) => _OnboardingPageWidget(
                  page: _pages[i],
                  stepNumber: i + 1,
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
            // Navigation buttons (Previous Step and Skip Onboarding)
            Padding(
              padding: EdgeInsets.fromLTRB(
                AdaptiveInsets.pagePadding(context).horizontal,
                0,
                AdaptiveInsets.pagePadding(context).horizontal,
                16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Previous Step button (only from page 2 onwards)
                  if (_index > 0)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _previous,
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          minimumSize: const Size(0, 44),
                          side: const BorderSide(color: Color(0xFF007AFF), width: 1.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Previous Step',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF007AFF),
                          ),
                        ),
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  if (_index > 0) const SizedBox(width: 12),
                  // Skip Onboarding button (available from page 1, but not on last step of guided tour)
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _skipOnboarding,
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        minimumSize: const Size(0, 44),
                        side: const BorderSide(color: Color(0xFF007AFF), width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Skip Onboarding',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF007AFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Continue button - wrapped in SafeArea to avoid nav bar coverage
            SafeArea(
              top: false,
              bottom: true,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  24,
                  0,
                  24,
                  16 + MediaQuery.of(context).viewPadding.bottom,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
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
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _OnboardingPageWidget extends StatefulWidget {
  const _OnboardingPageWidget({
    required this.page,
    required this.stepNumber,
  });

  final _OnboardingPage page;
  final int stepNumber;

  @override
  State<_OnboardingPageWidget> createState() => _OnboardingPageWidgetState();
}

class _OnboardingPageWidgetState extends State<_OnboardingPageWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SingleChildScrollView(
        padding: AdaptiveInsets.pagePadding(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: AdaptiveInsets.sectionGap(context) * 2),
            // Step number (for steps 1-3)
            Text(
              '${widget.stepNumber}/${GuidedOnboardingController.totalSteps}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1C1C1E),
                letterSpacing: 0.2,
              ),
            ),
            SizedBox(height: AdaptiveInsets.sectionGap(context) * 0.75),
            Text(
              widget.page.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
                letterSpacing: -0.5,
                height: 1.3,
              ),
            ),
            SizedBox(height: AdaptiveInsets.sectionGap(context)),
            // Use SelectableText for better wrapping and accessibility
            SelectableText(
              widget.page.body,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xFF3C3C43),
                letterSpacing: -0.4,
                height: 1.5,
              ),
            ),
            SizedBox(height: AdaptiveInsets.sectionGap(context) * 2),
          ],
        ),
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
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          width: index == currentIndex ? 10 : 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: index == currentIndex
                ? const Color(0xFF007AFF)
                : const Color(0xFFC7C7CC).withValues(alpha: 0.5),
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
