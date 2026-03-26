import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';

class LightweightOnboardingScreen extends StatefulWidget {
  const LightweightOnboardingScreen({super.key});

  @override
  State<LightweightOnboardingScreen> createState() =>
      _LightweightOnboardingScreenState();
}

class _LightweightOnboardingScreenState extends State<LightweightOnboardingScreen> {
  int currentOnboardingStep = 0;
  final Set<int> selectedOptions = <int>{};
  int correctCount = 0;

  static const String _kHasCompletedOnboarding = 'hasCompletedOnboarding';
  static const Set<int> _correctOptionIndexes = {0, 1, 2, 3, 4};
  static const List<String> _challengeOptions = [
    'Explain the situation clearly',
    'Define the goal of the email',
    'Specify tone (professional, apologetic)',
    'Include key details (deadline, reason)',
    'Describe expected output format',
    'Use GPT-4',
    'Make it good',
    'Add emojis',
    'Be creative',
    'Write fast',
  ];

  Future<void> _completeOnboardingAndGoToLesson1() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kHasCompletedOnboarding, true);
    if (!mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute<void>(
        builder: (_) => const HomeScreen(
          autoOpenTrackIndex: 0,
          autoOpenLessonIndex: 0,
        ),
      ),
      (route) => false,
    );
  }

  Future<void> _completeOnboardingAndGoToTracks() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kHasCompletedOnboarding, true);
    if (!mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute<void>(builder: (_) => const HomeScreen()),
      (route) => false,
    );
  }

  void _goToNextStep() {
    if (currentOnboardingStep < 5) {
      setState(() => currentOnboardingStep += 1);
    }
  }

  void _goToPreviousStep() {
    if (currentOnboardingStep > 0) {
      setState(() => currentOnboardingStep -= 1);
    }
  }

  void _toggleSelection(int index) {
    setState(() {
      if (selectedOptions.contains(index)) {
        selectedOptions.remove(index);
        return;
      }
      if (selectedOptions.length < 5) {
        selectedOptions.add(index);
      }
    });
  }

  void _checkAnswer() {
    correctCount = selectedOptions.intersection(_correctOptionIndexes).length;
    _goToNextStep();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canSubmitChallenge = currentOnboardingStep == 2 && selectedOptions.length == 5;

    return PopScope(
      canPop: currentOnboardingStep == 0,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        _goToPreviousStep();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: currentOnboardingStep > 0
              ? IconButton(
                  onPressed: _goToPreviousStep,
                  icon: const Icon(Icons.arrow_back),
                )
              : null,
          title: const Text('AI Ready'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: _buildStepContent(theme, canSubmitChallenge),
          ),
        ),
      ),
    );
  }

  Widget _buildStepContent(ThemeData theme, bool canSubmitChallenge) {
    switch (currentOnboardingStep) {
      case 0:
        return _SimpleStep(
          headline: 'Most people use AI wrong.',
          body: 'They get vague, useless answers.',
          primaryCta: 'Show me',
          onPrimary: _goToNextStep,
        );
      case 1:
        return _SimpleStep(
          headline: 'In 60 seconds,',
          body: 'you’ll fix a real AI prompt\nand see the difference.',
          primaryCta: 'Try it',
          onPrimary: _goToNextStep,
        );
      case 2:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Situation',
              style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 6),
            Text(
              'You want AI to write a professional email to your manager about missing a deadline.',
              style: theme.textTheme.bodyLarge?.copyWith(height: 1.35),
            ),
            const SizedBox(height: 16),
            Text(
              'Task',
              style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 6),
            Text(
              'Select the 5 elements that would make this prompt effective.',
              style: theme.textTheme.bodyLarge?.copyWith(height: 1.35),
            ),
            const SizedBox(height: 14),
            Expanded(
              child: ListView.separated(
                itemCount: _challengeOptions.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, i) {
                  final selected = selectedOptions.contains(i);
                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () => _toggleSelection(i),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selected
                              ? theme.colorScheme.primary
                              : theme.colorScheme.outlineVariant,
                        ),
                        color: selected
                            ? theme.colorScheme.primaryContainer.withValues(alpha: 0.45)
                            : theme.colorScheme.surface,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            selected
                                ? Icons.check_circle
                                : Icons.radio_button_unchecked,
                            color: selected
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurfaceVariant,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              _challengeOptions[i],
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: canSubmitChallenge ? _checkAnswer : null,
                child: const Text('Check Answer'),
              ),
            ),
          ],
        );
      case 3:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You got $correctCount/5 right.',
              style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              'Most people miss at least 2 parts.',
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 18),
            const _ComparisonCard(
              label: 'Weak prompt',
              text: 'Write an email about missing a deadline.',
            ),
            const SizedBox(height: 10),
            const _ComparisonCard(
              label: 'Strong prompt',
              text:
                  'Write a professional email to my manager explaining that I will miss the Friday deadline because a client dependency was delayed. Use an apologetic but confident tone. Keep it concise and include a clear next step.',
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _goToNextStep,
                child: const Text('Continue'),
              ),
            ),
          ],
        );
      case 4:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Great prompts follow a simple structure:',
              style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 14),
            Text(
              'C.O.R.E.',
              style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 14),
            const _CoreItem(
              title: 'Context',
              body: 'what’s happening',
            ),
            const _CoreItem(
              title: 'Objective',
              body: 'what you want',
            ),
            const _CoreItem(
              title: 'Requirements',
              body: 'how it should be done',
            ),
            const _CoreItem(
              title: 'Expectations',
              body: 'what the output should look like',
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _goToNextStep,
                child: const Text('Got it'),
              ),
            ),
          ],
        );
      case 5:
      default:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Learn this step-by-step',
              style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              'across real scenarios in AI Ready.',
              style: theme.textTheme.bodyLarge,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _completeOnboardingAndGoToLesson1,
                child: const Text('Start Lesson 1'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: _completeOnboardingAndGoToTracks,
                child: const Text('View Tracks'),
              ),
            ),
          ],
        );
    }
  }
}

class _SimpleStep extends StatelessWidget {
  final String headline;
  final String body;
  final String primaryCta;
  final VoidCallback onPrimary;

  const _SimpleStep({
    required this.headline,
    required this.body,
    required this.primaryCta,
    required this.onPrimary,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Text(
          headline,
          style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 12),
        Text(
          body,
          style: theme.textTheme.bodyLarge?.copyWith(height: 1.35),
        ),
        const Spacer(),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onPrimary,
            child: Text(primaryCta),
          ),
        ),
      ],
    );
  }
}

class _ComparisonCard extends StatelessWidget {
  final String label;
  final String text;

  const _ComparisonCard({
    required this.label,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 4),
          Text(text, style: theme.textTheme.bodyMedium?.copyWith(height: 1.35)),
        ],
      ),
    );
  }
}

class _CoreItem extends StatelessWidget {
  final String title;
  final String body;

  const _CoreItem({
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: RichText(
        text: TextSpan(
          style: theme.textTheme.bodyMedium,
          children: [
            TextSpan(
              text: '$title ',
              style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
            TextSpan(text: '→ $body'),
          ],
        ),
      ),
    );
  }
}
