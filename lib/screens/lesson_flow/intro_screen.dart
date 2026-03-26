import 'package:flutter/material.dart';
import '../../models/track.dart';
import '../../models/lesson.dart';
import 'scenario_choice_screen.dart';
import '../../widgets/lesson_outlined_button.dart';

class IntroScreen extends StatelessWidget {
  final Track track;
  final Lesson lesson;

  const IntroScreen({
    super.key,
    required this.track,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 24 + bottomInset),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                lesson.title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                lesson.subtitle,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withValues(alpha: 0.7),
                    ),
              ),
              const SizedBox(height: 24),
              Text(
                'What you\'ll learn:',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 12),
              ..._getLearningPoints(lesson.id),
              const SizedBox(height: 24),
              Text(
                _getCompletionText(lesson.id),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Spacer(),
              SafeArea(
                top: false,
                bottom: true,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: LessonOutlinedButton(
                          label: 'Back',
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: LessonOutlinedButton(
                          label: 'Next',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ScenarioChoiceScreen(
                                  track: track,
                                  lesson: lesson,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getLearningPoints(String lessonId) {
    switch (lessonId) {
      case 't1_l1': // The 5-Minute Email Superpower
        return [
          _buildBulletPoint('Structure emails for clarity'),
          _buildBulletPoint('Adapt tone for different audiences'),
          _buildBulletPoint('Use AI to draft and refine content'),
        ];
      case 't1_l2': // Messy Notes → Updates
        return [
          _buildBulletPoint('Extract key information from unstructured notes'),
          _buildBulletPoint('Organize content logically'),
          _buildBulletPoint('Create professional summaries'),
        ];
      case 't1_l3': // Inbox Tamer
        return [
          _buildBulletPoint('Identify main points in lengthy content'),
          _buildBulletPoint('Create concise summaries'),
          _buildBulletPoint('Prioritize information effectively'),
        ];
      case 't1_l4': // Master of Tone
        return [
          _buildBulletPoint('Recognize appropriate tone for context'),
          _buildBulletPoint('Adjust formality levels'),
          _buildBulletPoint('Maintain professionalism while being personable'),
        ];
      case 't1_l5': // Smart Quick Replies
        return [
          _buildBulletPoint('Draft responses quickly'),
          _buildBulletPoint('Maintain appropriate tone'),
          _buildBulletPoint('Include necessary information'),
        ];
      case 't2_l1': // Summarize Meetings
        return [
          _buildBulletPoint('Extract key discussion points'),
          _buildBulletPoint('Capture action items and decisions'),
          _buildBulletPoint('Create structured meeting summaries'),
        ];
      case 't2_l2': // Summarize Long Docs
        return [
          _buildBulletPoint('Extract essential information'),
          _buildBulletPoint('Maintain accuracy in summaries'),
          _buildBulletPoint('Highlight key implications'),
        ];
      case 't2_l3': // Write Executive Summaries
        return [
          _buildBulletPoint('Distill complex information'),
          _buildBulletPoint('Focus on key insights'),
          _buildBulletPoint('Write for executive audience'),
        ];
      case 't2_l4': // Spot Key Takeaways
        return [
          _buildBulletPoint('Analyze information critically'),
          _buildBulletPoint('Identify patterns and trends'),
          _buildBulletPoint('Extract meaningful insights'),
        ];
      case 't2_l5': // Write Progress Reports
        return [
          _buildBulletPoint('Structure progress information'),
          _buildBulletPoint('Highlight achievements and challenges'),
          _buildBulletPoint('Maintain stakeholder focus'),
        ];
      case 't3_l1': // Create Slide Outlines
        return [
          _buildBulletPoint('Structure presentation content logically'),
          _buildBulletPoint('Create clear slide hierarchies'),
          _buildBulletPoint('Design effective presentation flows'),
        ];
      case 't3_l2': // Turn Data Into Talking Points
        return [
          _buildBulletPoint('Transform data into compelling narratives'),
          _buildBulletPoint('Create engaging talking points'),
          _buildBulletPoint('Connect data to audience interests'),
        ];
      case 't3_l3': // Generate Speaker Notes
        return [
          _buildBulletPoint('Create concise speaker notes'),
          _buildBulletPoint('Include transition phrases'),
          _buildBulletPoint('Add audience engagement elements'),
        ];
      case 't3_l4': // Visual Storytelling
        return [
          _buildBulletPoint('Design slides with narrative flow'),
          _buildBulletPoint('Create clear visual hierarchies'),
          _buildBulletPoint('Build emotional engagement'),
        ];
      case 't3_l5': // Tailor to Audience
        return [
          _buildBulletPoint('Adapt content for different audiences'),
          _buildBulletPoint('Adjust tone and complexity'),
          _buildBulletPoint('Customize messaging approach'),
        ];
      case 't4_l1': // Generate Ideas
        return [
          _buildBulletPoint('Brainstorm creative campaign concepts'),
          _buildBulletPoint('Generate innovative event ideas'),
          _buildBulletPoint('Ideate product features and improvements'),
        ];
      case 't4_l2': // Competitor Research
        return [
          _buildBulletPoint('Analyze competitor strengths and weaknesses'),
          _buildBulletPoint('Identify market gaps and opportunities'),
          _buildBulletPoint('Map competitive landscape effectively'),
        ];
      case 't4_l3': // Industry Trends
        return [
          _buildBulletPoint('Monitor industry developments and changes'),
          _buildBulletPoint('Assess trend impact on business'),
          _buildBulletPoint('Apply trend insights strategically'),
        ];
      case 't4_l4': // Problem-Solving with AI
        return [
          _buildBulletPoint('Address team morale challenges with AI'),
          _buildBulletPoint('Optimize budget and resource allocation'),
          _buildBulletPoint('Streamline business processes using AI'),
        ];
      case 't4_l5': // Creative Writing Help
        return [
          _buildBulletPoint('Create compelling email subject lines'),
          _buildBulletPoint('Draft engaging social media content'),
          _buildBulletPoint('Write effective communication copy'),
        ];
      case 't5_l1': // Daily To-Do Assistant
        return [
          _buildBulletPoint('Organize and prioritize daily tasks'),
          _buildBulletPoint('Estimate realistic time requirements'),
          _buildBulletPoint('Track task completion progress'),
        ];
      case 't5_l2': // Agendas & Checklists
        return [
          _buildBulletPoint('Create structured meeting agendas'),
          _buildBulletPoint('Develop comprehensive project checklists'),
          _buildBulletPoint('Design step-by-step process workflows'),
        ];
      case 't5_l3': // Reminders & Nudges
        return [
          _buildBulletPoint('Set up effective follow-up reminder systems'),
          _buildBulletPoint('Create deadline notification systems'),
          _buildBulletPoint('Design habit-building reminder strategies'),
        ];
      case 't5_l4': // Time-Saver Templates
        return [
          _buildBulletPoint('Create reusable email response templates'),
          _buildBulletPoint('Develop standardized document templates'),
          _buildBulletPoint('Build meeting structure templates'),
        ];
      case 't5_l5': // Reflection & Journaling
        return [
          _buildBulletPoint('Structure daily reflection and learning prompts'),
          _buildBulletPoint('Create goal progress tracking frameworks'),
          _buildBulletPoint('Design learning journal formats'),
        ];
      case 'data_clean': // Clean messy data
        return [
          _buildBulletPoint('Identify and remove duplicate data entries'),
          _buildBulletPoint('Standardize data formats and naming conventions'),
          _buildBulletPoint('Address and fill missing data gaps'),
        ];
      case 'data_formulas': // Formula helper
        return [
          _buildBulletPoint('Create VLOOKUP and XLOOKUP formulas'),
          _buildBulletPoint('Build IF and IFS statements for data analysis'),
          _buildBulletPoint('Use SUMIF, COUNTIF, and AVERAGEIF functions'),
        ];
      case 'data_charts': // Instant charts
        return [
          _buildBulletPoint('Choose the right chart type for your data'),
          _buildBulletPoint('Customize chart titles, labels, and formatting'),
          _buildBulletPoint('Extract meaningful insights from chart data'),
        ];
      case 'data_pivots': // Pivot tables to insights
        return [
          _buildBulletPoint('Build effective pivot table layouts'),
          _buildBulletPoint('Group and segment data for analysis'),
          _buildBulletPoint('Identify and analyze data outliers'),
        ];
      case 'data_report': // Auto KPI report
        return [
          _buildBulletPoint('Identify key performance indicators from data'),
          _buildBulletPoint('Create organized KPI report layouts'),
          _buildBulletPoint('Extract actionable insights from KPI data'),
        ];
      case 'meet_capture': // Capture everything
        return [
          _buildBulletPoint('Capture key points during live meetings'),
          _buildBulletPoint('Convert voice recordings to structured notes'),
          _buildBulletPoint('Extract main ideas from meeting discussions'),
        ];
      case 'meet_actions': // Action items, owners
        return [
          _buildBulletPoint('Identify and extract action items from meetings'),
          _buildBulletPoint('Assign clear ownership to action items'),
          _buildBulletPoint('Set realistic deadlines for action items'),
        ];
      case 'meet_minutes': // Minutes in minutes
        return [
          _buildBulletPoint('Create organized meeting minute structures'),
          _buildBulletPoint('Document key decisions and rationale'),
          _buildBulletPoint('Plan follow-up actions and next steps'),
        ];
      case 'meet_followup': // Follow-up emails
        return [
          _buildBulletPoint('Summarize meeting decisions in follow-up emails'),
          _buildBulletPoint('Remind team of assigned action items'),
          _buildBulletPoint('Communicate clear next steps to stakeholders'),
        ];
      case 'meet_summary': // Weekly rollups
        return [
          _buildBulletPoint(
              'Consolidate multiple meetings into weekly summaries'),
          _buildBulletPoint('Track progress on recurring meeting topics'),
          _buildBulletPoint('Identify patterns across weekly meetings'),
        ];
      case 'res_sources': // Find reliable sources
        return [
          _buildBulletPoint('Evaluate source credibility and reliability'),
          _buildBulletPoint(
              'Group and organize information from multiple sources'),
          _buildBulletPoint('Verify facts across multiple reliable sources'),
        ];
      case 'res_compare': // Compare options
        return [
          _buildBulletPoint('Create structured pros and cons comparisons'),
          _buildBulletPoint('Evaluate options against specific criteria'),
          _buildBulletPoint('Manage and organize source citations'),
        ];
      case 'res_numbers': // Crunch numbers
        return [
          _buildBulletPoint('Summarize numerical data and key metrics'),
          _buildBulletPoint('Calculate key performance indicators'),
          _buildBulletPoint('Analyze numerical trends and patterns'),
        ];
      case 'res_briefs': // Create decision briefs
        return [
          _buildBulletPoint('Create concise executive decision summaries'),
          _buildBulletPoint('Assess and document decision risks'),
          _buildBulletPoint('Structure clear decision recommendations'),
        ];
      case 'res_refs': // References & quotes
        return [
          _buildBulletPoint('Extract relevant quotes from sources'),
          _buildBulletPoint('Organize and manage source links'),
          _buildBulletPoint('Organize references for easy access'),
        ];
      case 'mkt_ideas': // Idea generator
        return [
          _buildBulletPoint('Generate creative marketing campaign ideas'),
          _buildBulletPoint('Create engaging content hooks and angles'),
          _buildBulletPoint('Develop compelling brand narrative ideas'),
        ];
      case 'mkt_posts': // Multi-platform posts
        return [
          _buildBulletPoint('Create professional LinkedIn posts'),
          _buildBulletPoint('Draft engaging Twitter/X posts'),
          _buildBulletPoint('Create visual Instagram post captions'),
        ];
      case 'mkt_landing': // Landing copy
        return [
          _buildBulletPoint('Write compelling hero section copy'),
          _buildBulletPoint('Create clear value proposition statements'),
          _buildBulletPoint('Write helpful FAQ content'),
        ];
      case 'mkt_email': // Email sequences
        return [
          _buildBulletPoint('Create onboarding email sequences'),
          _buildBulletPoint('Build lead nurturing email flows'),
          _buildBulletPoint('Design conversion-focused email series'),
        ];
      case 'mkt_report': // Performance summary
        return [
          _buildBulletPoint('Analyze key marketing performance metrics'),
          _buildBulletPoint('Extract actionable insights from data'),
          _buildBulletPoint('Create comprehensive performance reports'),
        ];
      default:
        return [
          _buildBulletPoint('Master key skills'),
          _buildBulletPoint('Practice with real scenarios'),
          _buildBulletPoint('Apply AI assistance effectively'),
        ];
    }
  }

  String _getCompletionText(String lessonId) {
    switch (lessonId) {
      case 't1_l1': // The 5-Minute Email Superpower
        return 'Complete the scenarios below to master email writing with AI.';
      case 't1_l2': // Messy Notes → Updates
        return 'Complete the scenarios below to master note-to-report conversion.';
      case 't1_l3': // Inbox Tamer
        return 'Complete the scenarios below to master email summarization.';
      case 't1_l4': // Master of Tone
        return 'Complete the scenarios below to master tone adaptation.';
      case 't1_l5': // Smart Quick Replies
        return 'Complete the scenarios below to master quick response creation.';
      case 't2_l1': // Summarize Meetings
        return 'Complete the scenarios below to master meeting summarization.';
      case 't2_l2': // Summarize Long Docs
        return 'Complete the scenarios below to master document summarization.';
      case 't2_l3': // Write Executive Summaries
        return 'Complete the scenarios below to master executive summary writing.';
      case 't2_l4': // Spot Key Takeaways
        return 'Complete the scenarios below to master insight extraction.';
      case 't2_l5': // Write Progress Reports
        return 'Complete the scenarios below to master progress report writing.';
      case 't3_l1': // Create Slide Outlines
        return 'Complete the scenarios below to master slide outline creation.';
      case 't3_l2': // Turn Data Into Talking Points
        return 'Complete the scenarios below to master data storytelling.';
      case 't3_l3': // Generate Speaker Notes
        return 'Complete the scenarios below to master speaker note generation.';
      case 't3_l4': // Visual Storytelling
        return 'Complete the scenarios below to master visual storytelling.';
      case 't3_l5': // Tailor to Audience
        return 'Complete the scenarios below to master audience adaptation.';
      case 't4_l1': // Generate Ideas
        return 'Complete the scenarios below to master creative idea generation.';
      case 't4_l2': // Competitor Research
        return 'Complete the scenarios below to master competitor analysis.';
      case 't4_l3': // Industry Trends
        return 'Complete the scenarios below to master trend analysis.';
      case 't4_l4': // Problem-Solving with AI
        return 'Complete the scenarios below to master AI-powered problem solving.';
      case 't4_l5': // Creative Writing Help
        return 'Complete the scenarios below to master creative writing assistance.';
      case 't5_l1': // Daily To-Do Assistant
        return 'Complete the scenarios below to master daily task management.';
      case 't5_l2': // Agendas & Checklists
        return 'Complete the scenarios below to master agenda and checklist creation.';
      case 't5_l3': // Reminders & Nudges
        return 'Complete the scenarios below to master reminder system design.';
      case 't5_l4': // Time-Saver Templates
        return 'Complete the scenarios below to master template creation.';
      case 't5_l5': // Reflection & Journaling
        return 'Complete the scenarios below to master reflection and journaling.';
      case 'data_clean': // Clean messy data
        return 'Complete the scenarios below to master data cleaning.';
      case 'data_formulas': // Formula helper
        return 'Complete the scenarios below to master spreadsheet formulas.';
      case 'data_charts': // Instant charts
        return 'Complete the scenarios below to master chart creation.';
      case 'data_pivots': // Pivot tables to insights
        return 'Complete the scenarios below to master pivot table analysis.';
      case 'data_report': // Auto KPI report
        return 'Complete the scenarios below to master KPI reporting.';
      case 'meet_capture': // Capture everything
        return 'Complete the scenarios below to master meeting capture.';
      case 'meet_actions': // Action items, owners
        return 'Complete the scenarios below to master action item management.';
      case 'meet_minutes': // Minutes in minutes
        return 'Complete the scenarios below to master minute creation.';
      case 'meet_followup': // Follow-up emails
        return 'Complete the scenarios below to master follow-up communication.';
      case 'meet_summary': // Weekly rollups
        return 'Complete the scenarios below to master weekly meeting summaries.';
      case 'res_sources': // Find reliable sources
        return 'Complete the scenarios below to master source evaluation.';
      case 'res_compare': // Compare options
        return 'Complete the scenarios below to master option comparison.';
      case 'res_numbers': // Crunch numbers
        return 'Complete the scenarios below to master numerical analysis.';
      case 'res_briefs': // Create decision briefs
        return 'Complete the scenarios below to master decision brief creation.';
      case 'res_refs': // References & quotes
        return 'Complete the scenarios below to master reference management.';
      case 'mkt_ideas': // Idea generator
        return 'Complete the scenarios below to master marketing idea generation.';
      case 'mkt_posts': // Multi-platform posts
        return 'Complete the scenarios below to master multi-platform content creation.';
      case 'mkt_landing': // Landing copy
        return 'Complete the scenarios below to master landing page copywriting.';
      case 'mkt_email': // Email sequences
        return 'Complete the scenarios below to master email sequence design.';
      case 'mkt_report': // Performance summary
        return 'Complete the scenarios below to master performance reporting.';
      default:
        return 'Complete the scenarios below to master key skills.';
    }
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
