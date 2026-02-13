import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/guided_onboarding_navigation.dart';
import '../widgets/guided_overlay.dart';
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
  bool _didStabilizeFirstFrame = false;

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

  void _startGuidedTour() async {
    // Begin the in-app guided walkthrough. Completion is handled later
    // once the user finishes the full tour inside the app.
    // Note: This is called from the Continue button when NOT in guided mode.
    // When in guided mode (Repeat Onboarding), the onContinue handler in GuidedOverlay handles Step 3 → Step 4.
    await GuidedOnboardingController.start();
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
    return ValueListenableBuilder<GuidedOnboardingStep>(
      valueListenable: GuidedOnboardingController.stepNotifier,
      builder: (context, currentStepEnum, _) {
        final isGuided = GuidedOnboardingController.isActive;
        final currentStep = GuidedOnboardingController.currentStep;
        // For intro steps use the builder parameter so counter/overlay get correct step on first launch.
        int? stepNumber;
        if (currentStepEnum == GuidedOnboardingStep.intro1) {
          stepNumber = 1;
        } else if (currentStepEnum == GuidedOnboardingStep.intro2) {
          stepNumber = 2;
        } else if (currentStepEnum == GuidedOnboardingStep.intro3) {
          stepNumber = 3;
        } else {
          stepNumber = GuidedOnboardingController.getCurrentStepNumber();
        }

        // Determine if we should show onboarding UI for intro steps (enum only; no isActive gate so counter/overlay render on first frame)
        final bool isIntroStep = currentStepEnum == GuidedOnboardingStep.intro1 ||
            currentStepEnum == GuidedOnboardingStep.intro2 ||
            currentStepEnum == GuidedOnboardingStep.intro3;

        if (!_didStabilizeFirstFrame && isIntroStep) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) setState(() => _didStabilizeFirstFrame = true);
          });
        }

        // Sync page index with step number if in guided mode (minimal, read-only)
        if (isIntroStep && stepNumber != null && stepNumber >= 1 && stepNumber <= 3) {
          final targetIndex = stepNumber - 1;
          if (_index != targetIndex && _controller.hasClients) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted && _controller.hasClients && _index != targetIndex) {
                _controller.animateToPage(
                  targetIndex,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                setState(() {
                  _index = targetIndex;
                });
              }
            });
          }
        }

        // Get step text and handlers for onboarding UI (build G style: no duplicate text, just controls)
        // For intro steps, pass empty text to avoid duplicating slide content
        String stepText = '';
        bool showContinueButton = true;
        String continueButtonText = 'Next';
        VoidCallback? onContinue;

        if (isIntroStep && stepNumber != null) {
          switch (stepNumber) {
            case 1:
              // Step 1: Skip only + Next (no Previous)
              onContinue = () async {
                await GuidedOnboardingController.goNext();
                if (mounted && _controller.hasClients) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              };
              break;
            case 2:
              // Step 2: Previous + Skip + Next
              onContinue = () async {
                await GuidedOnboardingController.goNext();
                if (mounted && _controller.hasClients) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              };
              break;
            case 3:
              // Step 3: Previous + Skip + Start Guided Tour
              continueButtonText = 'Start Guided Tour';
              onContinue = () async {
                // Step 3 -> Step 4: Use centralized navigation helper
                await handleGuidedNext(context);
              };
              break;
          }
        }

        return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: _pages.length,
                    onPageChanged: (i) {
                      setState(() {
                        _index = i;
                      });
                      
                      // Sync controller step when user swipes between intro pages
                      // Only sync when onboarding is active and we're in intro flow
                      if (isGuided && isIntroStep) {
                        // Use post-frame callback to avoid state changes during build
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (mounted && GuidedOnboardingController.isActive) {
                            final currentStep = GuidedOnboardingController.currentStep;
                            final isStillIntro = currentStep == GuidedOnboardingStep.intro1 ||
                                currentStep == GuidedOnboardingStep.intro2 ||
                                currentStep == GuidedOnboardingStep.intro3;
                            
                            // Only sync if still in intro context (guard against race conditions)
                            if (isStillIntro) {
                              if (kDebugMode) {
                                debugPrint('[ONBOARDING_SCREEN] onPageChanged: syncing pageIndex=$i to controller step');
                              }
                              GuidedOnboardingController.setIntroStepFromPage(i);
                            }
                          }
                        });
                      }
                    },
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
                // Continue button (only shown when NOT in guided mode)
                if (!isIntroStep)
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
            // Intro step counter "X/17" at top center for steps 1–3 in guided mode.
            if (isIntroStep && stepNumber != null)
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    '$stepNumber/${GuidedOnboardingController.totalSteps}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            // Onboarding overlay for intro steps (build G style: bottom sheet controls only, no bubble text)
            if (isIntroStep)
              GuidedOverlay(
                text: stepText, // Empty text to avoid duplicating slide content
                highlightedKey: null, // No highlight for intro slides
                currentStep: stepNumber,
                onPreviousStep: null,
                onSkip: () => handleGuidedSkip(context),
                showContinueButton: showContinueButton,
                continueButtonText: continueButtonText,
                onContinue: onContinue,
              ),
          ],
        ),
      ),
    );
      },
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
