class LessonScenario {
  final String id;
  final String title;
  final String? subtitle;

  const LessonScenario({
    required this.id,
    required this.title,
    this.subtitle,
  });
}

// Scenarios for "The 5-Minute Email Superpower" lesson
const emailSuperpowerScenarios = [
  LessonScenario(
    id: 'quick_draft',
    title: 'Quick Draft',
    subtitle: 'Write a professional email in under 5 minutes',
  ),
  LessonScenario(
    id: 'tone_shift',
    title: 'Tone Shift',
    subtitle: 'Adapt your email tone for different audiences',
  ),
  LessonScenario(
    id: 'follow_up',
    title: 'Follow-up',
    subtitle: 'Create effective follow-up emails',
  ),
];

// Scenarios for "Messy Notes → Updates" lesson
const messyNotesScenarios = [
  LessonScenario(
    id: 'meeting_notes',
    title: 'Meeting Notes',
    subtitle: 'Transform meeting notes into structured reports',
  ),
  LessonScenario(
    id: 'voice_recording',
    title: 'Voice Recording',
    subtitle: 'Convert voice memos to written summaries',
  ),
  LessonScenario(
    id: 'rough_draft',
    title: 'Rough Draft',
    subtitle: 'Polish rough drafts into professional content',
  ),
];

// Scenarios for "Inbox Tamer" lesson
const inboxTamerScenarios = [
  LessonScenario(
    id: 'long_email',
    title: 'Long Email',
    subtitle: 'Summarize lengthy emails quickly',
  ),
  LessonScenario(
    id: 'document_summary',
    title: 'Document Summary',
    subtitle: 'Extract key points from long documents',
  ),
  LessonScenario(
    id: 'priority_sort',
    title: 'Priority Sort',
    subtitle: 'Organize and prioritize inbox content',
  ),
];

// Scenarios for "Master of Tone" lesson
const masterOfToneScenarios = [
  LessonScenario(
    id: 'formal_audience',
    title: 'Formal Audience',
    subtitle: 'Adapt tone for professional settings',
  ),
  LessonScenario(
    id: 'casual_team',
    title: 'Casual Team',
    subtitle: 'Adjust style for internal communications',
  ),
  LessonScenario(
    id: 'client_communication',
    title: 'Client Communication',
    subtitle: 'Balance professionalism with approachability',
  ),
];

// Scenarios for "Smart Quick Replies" lesson
const smartQuickRepliesScenarios = [
  LessonScenario(
    id: 'confirmation',
    title: 'Confirmation',
    subtitle: 'Draft quick confirmation responses',
  ),
  LessonScenario(
    id: 'delegation',
    title: 'Delegation',
    subtitle: 'Create effective delegation messages',
  ),
  LessonScenario(
    id: 'follow_up_quick',
    title: 'Follow-up Quick',
    subtitle: 'Write concise follow-up messages',
  ),
];

// Scenarios for "Summarize Meetings" lesson
const summarizeMeetingsScenarios = [
  LessonScenario(
    id: 'action_items',
    title: 'Action Items',
    subtitle: 'Extract and organize action items from meetings',
  ),
  LessonScenario(
    id: 'key_decisions',
    title: 'Key Decisions',
    subtitle: 'Capture and summarize important decisions made',
  ),
  LessonScenario(
    id: 'discussion_points',
    title: 'Discussion Points',
    subtitle: 'Summarize main discussion topics and outcomes',
  ),
];

// Scenarios for "Summarize Long Docs" lesson
const summarizeLongDocsScenarios = [
  LessonScenario(
    id: 'policy_document',
    title: 'Policy Document',
    subtitle: 'Summarize company policies and procedures',
  ),
  LessonScenario(
    id: 'contract_review',
    title: 'Contract Review',
    subtitle: 'Extract key terms and conditions from contracts',
  ),
  LessonScenario(
    id: 'research_report',
    title: 'Research Report',
    subtitle: 'Summarize research findings and methodology',
  ),
];

// Scenarios for "Write Executive Summaries" lesson
const writeExecutiveSummariesScenarios = [
  LessonScenario(
    id: 'business_case',
    title: 'Business Case',
    subtitle: 'Create compelling executive summaries for proposals',
  ),
  LessonScenario(
    id: 'market_analysis',
    title: 'Market Analysis',
    subtitle: 'Summarize market research for leadership',
  ),
  LessonScenario(
    id: 'project_status',
    title: 'Project Status',
    subtitle: 'Write executive-level project updates',
  ),
];

// Scenarios for "Spot Key Takeaways" lesson
const spotKeyTakeawaysScenarios = [
  LessonScenario(
    id: 'data_analysis',
    title: 'Data Analysis',
    subtitle: 'Identify key insights from data sets',
  ),
  LessonScenario(
    id: 'trend_identification',
    title: 'Trend Identification',
    subtitle: 'Spot patterns and trends in information',
  ),
  LessonScenario(
    id: 'opportunity_spotting',
    title: 'Opportunity Spotting',
    subtitle: 'Recognize business opportunities from data',
  ),
];

// Scenarios for "Write Progress Reports" lesson
const writeProgressReportsScenarios = [
  LessonScenario(
    id: 'milestone_update',
    title: 'Milestone Update',
    subtitle: 'Report on project milestone achievements',
  ),
  LessonScenario(
    id: 'budget_status',
    title: 'Budget Status',
    subtitle: 'Summarize financial progress and forecasts',
  ),
  LessonScenario(
    id: 'team_performance',
    title: 'Team Performance',
    subtitle: 'Report on team productivity and goals',
  ),
];

// Scenarios for "Create Slide Outlines" lesson
const createSlideOutlinesScenarios = [
  LessonScenario(
    id: 'kickoff_presentation',
    title: 'Kickoff Presentation',
    subtitle: 'Structure project kickoff slides and agenda',
  ),
  LessonScenario(
    id: 'results_showcase',
    title: 'Results Showcase',
    subtitle: 'Organize results and achievements presentation',
  ),
  LessonScenario(
    id: 'training_session',
    title: 'Training Session',
    subtitle: 'Create training presentation outline and flow',
  ),
];

// Scenarios for "Turn Data Into Talking Points" lesson
const turnDataIntoTalkingPointsScenarios = [
  LessonScenario(
    id: 'chart_story',
    title: 'Chart Story',
    subtitle: 'Transform charts into compelling narratives',
  ),
  LessonScenario(
    id: 'metrics_narrative',
    title: 'Metrics Narrative',
    subtitle: 'Convert data metrics into engaging stories',
  ),
  LessonScenario(
    id: 'trend_explanation',
    title: 'Trend Explanation',
    subtitle: 'Explain data trends with clear talking points',
  ),
];

// Scenarios for "Generate Speaker Notes" lesson
const generateSpeakerNotesScenarios = [
  LessonScenario(
    id: 'key_points',
    title: 'Key Points',
    subtitle: 'Create concise speaker notes for main topics',
  ),
  LessonScenario(
    id: 'transition_phrases',
    title: 'Transition Phrases',
    subtitle: 'Generate smooth transitions between slides',
  ),
  LessonScenario(
    id: 'audience_engagement',
    title: 'Audience Engagement',
    subtitle: 'Include engagement prompts and questions',
  ),
];

// Scenarios for "Visual Storytelling" lesson
const visualStorytellingScenarios = [
  LessonScenario(
    id: 'narrative_flow',
    title: 'Narrative Flow',
    subtitle: 'Design slides that tell a cohesive story',
  ),
  LessonScenario(
    id: 'visual_hierarchy',
    title: 'Visual Hierarchy',
    subtitle: 'Create clear visual structure and emphasis',
  ),
  LessonScenario(
    id: 'emotional_impact',
    title: 'Emotional Impact',
    subtitle: 'Design slides for emotional engagement',
  ),
];

// Scenarios for "Tailor to Audience" lesson
const tailorToAudienceScenarios = [
  LessonScenario(
    id: 'executive_summary',
    title: 'Executive Summary',
    subtitle: 'Adapt content for C-level executives',
  ),
  LessonScenario(
    id: 'client_presentation',
    title: 'Client Presentation',
    subtitle: 'Tailor content for client stakeholders',
  ),
  LessonScenario(
    id: 'team_update',
    title: 'Team Update',
    subtitle: 'Customize content for internal team members',
  ),
];

// Scenarios for "Generate Ideas" lesson
const generateIdeasScenarios = [
  LessonScenario(
    id: 'campaign_concepts',
    title: 'Campaign Concepts',
    subtitle: 'Brainstorm creative marketing campaign ideas',
  ),
  LessonScenario(
    id: 'event_planning',
    title: 'Event Planning',
    subtitle: 'Generate innovative event and activity concepts',
  ),
  LessonScenario(
    id: 'product_features',
    title: 'Product Features',
    subtitle: 'Ideate new product features and improvements',
  ),
];

// Scenarios for "Competitor Research" lesson
const competitorResearchScenarios = [
  LessonScenario(
    id: 'strength_analysis',
    title: 'Strength Analysis',
    subtitle: 'Identify competitor strengths and advantages',
  ),
  LessonScenario(
    id: 'weakness_spotting',
    title: 'Weakness Spotting',
    subtitle: 'Find gaps and weaknesses in competitor offerings',
  ),
  LessonScenario(
    id: 'opportunity_mapping',
    title: 'Opportunity Mapping',
    subtitle: 'Map market opportunities from competitor analysis',
  ),
];

// Scenarios for "Industry Trends" lesson
const industryTrendsScenarios = [
  LessonScenario(
    id: 'trend_monitoring',
    title: 'Trend Monitoring',
    subtitle: 'Track and analyze industry developments',
  ),
  LessonScenario(
    id: 'impact_assessment',
    title: 'Impact Assessment',
    subtitle: 'Evaluate trend implications for your business',
  ),
  LessonScenario(
    id: 'strategic_application',
    title: 'Strategic Application',
    subtitle: 'Apply trend insights to strategic planning',
  ),
];

// Scenarios for "Problem-Solving with AI" lesson
const problemSolvingWithAIScenarios = [
  LessonScenario(
    id: 'morale_issues',
    title: 'Morale Issues',
    subtitle: 'Use AI to address team morale challenges',
  ),
  LessonScenario(
    id: 'budget_optimization',
    title: 'Budget Optimization',
    subtitle: 'Leverage AI for budget and resource optimization',
  ),
  LessonScenario(
    id: 'process_improvement',
    title: 'Process Improvement',
    subtitle: 'Apply AI to streamline business processes',
  ),
];

// Scenarios for "Creative Writing Help" lesson
const creativeWritingHelpScenarios = [
  LessonScenario(
    id: 'subject_lines',
    title: 'Subject Lines',
    subtitle: 'Create compelling email subject lines',
  ),
  LessonScenario(
    id: 'social_posts',
    title: 'Social Posts',
    subtitle: 'Draft engaging social media content',
  ),
  LessonScenario(
    id: 'communication_copy',
    title: 'Communication Copy',
    subtitle: 'Write effective internal and external communications',
  ),
];

// Scenarios for "Daily To-Do Assistant" lesson
const dailyToDoAssistantScenarios = [
  LessonScenario(
    id: 'task_prioritization',
    title: 'Task Prioritization',
    subtitle: 'Organize and prioritize daily tasks effectively',
  ),
  LessonScenario(
    id: 'time_estimation',
    title: 'Time Estimation',
    subtitle: 'Estimate realistic time requirements for tasks',
  ),
  LessonScenario(
    id: 'progress_tracking',
    title: 'Progress Tracking',
    subtitle: 'Monitor and track task completion progress',
  ),
];

// Scenarios for "Agendas & Checklists" lesson
const agendasChecklistsScenarios = [
  LessonScenario(
    id: 'meeting_agendas',
    title: 'Meeting Agendas',
    subtitle: 'Create structured meeting agendas and timelines',
  ),
  LessonScenario(
    id: 'project_checklists',
    title: 'Project Checklists',
    subtitle: 'Develop comprehensive project completion checklists',
  ),
  LessonScenario(
    id: 'process_workflows',
    title: 'Process Workflows',
    subtitle: 'Design step-by-step process workflows',
  ),
];

// Scenarios for "Reminders & Nudges" lesson
const remindersNudgesScenarios = [
  LessonScenario(
    id: 'follow_up_reminders',
    title: 'Follow-up Reminders',
    subtitle: 'Set up effective follow-up reminder systems',
  ),
  LessonScenario(
    id: 'deadline_alerts',
    title: 'Deadline Alerts',
    subtitle: 'Create deadline notification systems',
  ),
  LessonScenario(
    id: 'habit_nudges',
    title: 'Habit Nudges',
    subtitle: 'Design habit-building reminder strategies',
  ),
];

// Scenarios for "Time-Saver Templates" lesson
const timeSaverTemplatesScenarios = [
  LessonScenario(
    id: 'email_templates',
    title: 'Email Templates',
    subtitle: 'Create reusable email response templates',
  ),
  LessonScenario(
    id: 'document_templates',
    title: 'Document Templates',
    subtitle: 'Develop standardized document templates',
  ),
  LessonScenario(
    id: 'meeting_templates',
    title: 'Meeting Templates',
    subtitle: 'Build meeting structure and follow-up templates',
  ),
];

// Scenarios for "Reflection & Journaling" lesson
const reflectionJournalingScenarios = [
  LessonScenario(
    id: 'daily_reflection',
    title: 'Daily Reflection',
    subtitle: 'Structure daily reflection and learning prompts',
  ),
  LessonScenario(
    id: 'goal_tracking',
    title: 'Goal Tracking',
    subtitle: 'Create goal progress tracking frameworks',
  ),
  LessonScenario(
    id: 'learning_journal',
    title: 'Learning Journal',
    subtitle: 'Design learning and development journal formats',
  ),
];

// Scenarios for "Clean messy data" lesson
const cleanMessyDataScenarios = [
  LessonScenario(
    id: 'duplicate_removal',
    title: 'Duplicate Removal',
    subtitle: 'Identify and remove duplicate data entries',
  ),
  LessonScenario(
    id: 'data_normalization',
    title: 'Data Normalization',
    subtitle: 'Standardize data formats and naming conventions',
  ),
  LessonScenario(
    id: 'missing_data_handling',
    title: 'Missing Data Handling',
    subtitle: 'Address and fill missing data gaps',
  ),
];

// Scenarios for "Formula helper" lesson
const formulaHelperScenarios = [
  LessonScenario(
    id: 'lookup_formulas',
    title: 'Lookup Formulas',
    subtitle: 'Create VLOOKUP and XLOOKUP formulas',
  ),
  LessonScenario(
    id: 'conditional_formulas',
    title: 'Conditional Formulas',
    subtitle: 'Build IF and IFS statements for data analysis',
  ),
  LessonScenario(
    id: 'aggregation_formulas',
    title: 'Aggregation Formulas',
    subtitle: 'Use SUMIF, COUNTIF, and AVERAGEIF functions',
  ),
];

// Scenarios for "Instant charts" lesson
const instantChartsScenarios = [
  LessonScenario(
    id: 'chart_selection',
    title: 'Chart Selection',
    subtitle: 'Choose the right chart type for your data',
  ),
  LessonScenario(
    id: 'chart_customization',
    title: 'Chart Customization',
    subtitle: 'Customize chart titles, labels, and formatting',
  ),
  LessonScenario(
    id: 'chart_insights',
    title: 'Chart Insights',
    subtitle: 'Extract meaningful insights from chart data',
  ),
];

// Scenarios for "Pivot tables to insights" lesson
const pivotTablesToInsightsScenarios = [
  LessonScenario(
    id: 'pivot_structure',
    title: 'Pivot Structure',
    subtitle: 'Build effective pivot table layouts',
  ),
  LessonScenario(
    id: 'data_grouping',
    title: 'Data Grouping',
    subtitle: 'Group and segment data for analysis',
  ),
  LessonScenario(
    id: 'outlier_detection',
    title: 'Outlier Detection',
    subtitle: 'Identify and analyze data outliers',
  ),
];

// Scenarios for "Auto KPI report" lesson
const autoKPIReportScenarios = [
  LessonScenario(
    id: 'kpi_identification',
    title: 'KPI Identification',
    subtitle: 'Identify key performance indicators from data',
  ),
  LessonScenario(
    id: 'report_structure',
    title: 'Report Structure',
    subtitle: 'Create organized KPI report layouts',
  ),
  LessonScenario(
    id: 'action_items',
    title: 'Action Items',
    subtitle: 'Extract actionable insights from KPI data',
  ),
];

// Scenarios for "Capture everything" lesson
const captureEverythingScenarios = [
  LessonScenario(
    id: 'live_capture',
    title: 'Live Capture',
    subtitle: 'Capture key points during live meetings',
  ),
  LessonScenario(
    id: 'voice_transcription',
    title: 'Voice Transcription',
    subtitle: 'Convert voice recordings to structured notes',
  ),
  LessonScenario(
    id: 'key_point_extraction',
    title: 'Key Point Extraction',
    subtitle: 'Extract main ideas from meeting discussions',
  ),
];

// Scenarios for "Action items, owners" lesson
const actionItemsOwnersScenarios = [
  LessonScenario(
    id: 'task_extraction',
    title: 'Task Extraction',
    subtitle: 'Identify and extract action items from meetings',
  ),
  LessonScenario(
    id: 'ownership_assignment',
    title: 'Ownership Assignment',
    subtitle: 'Assign clear ownership to action items',
  ),
  LessonScenario(
    id: 'deadline_setting',
    title: 'Deadline Setting',
    subtitle: 'Set realistic deadlines for action items',
  ),
];

// Scenarios for "Minutes in minutes" lesson
const minutesInMinutesScenarios = [
  LessonScenario(
    id: 'structure_creation',
    title: 'Structure Creation',
    subtitle: 'Create organized meeting minute structures',
  ),
  LessonScenario(
    id: 'decision_documentation',
    title: 'Decision Documentation',
    subtitle: 'Document key decisions and rationale',
  ),
  LessonScenario(
    id: 'follow_up_planning',
    title: 'Follow-up Planning',
    subtitle: 'Plan follow-up actions and next steps',
  ),
];

// Scenarios for "Follow-up emails" lesson
const followUpEmailsScenarios = [
  LessonScenario(
    id: 'decision_summary',
    title: 'Decision Summary',
    subtitle: 'Summarize meeting decisions in follow-up emails',
  ),
  LessonScenario(
    id: 'action_item_reminder',
    title: 'Action Item Reminder',
    subtitle: 'Remind team of assigned action items',
  ),
  LessonScenario(
    id: 'next_steps_communication',
    title: 'Next Steps Communication',
    subtitle: 'Communicate clear next steps to stakeholders',
  ),
];

// Scenarios for "Weekly rollups" lesson
const weeklyRollupsScenarios = [
  LessonScenario(
    id: 'meeting_consolidation',
    title: 'Meeting Consolidation',
    subtitle: 'Consolidate multiple meetings into weekly summaries',
  ),
  LessonScenario(
    id: 'progress_tracking',
    title: 'Progress Tracking',
    subtitle: 'Track progress on recurring meeting topics',
  ),
  LessonScenario(
    id: 'trend_identification',
    title: 'Trend Identification',
    subtitle: 'Identify patterns across weekly meetings',
  ),
];

// Scenarios for "Find reliable sources" lesson
const findReliableSourcesScenarios = [
  LessonScenario(
    id: 'source_evaluation',
    title: 'Source Evaluation',
    subtitle: 'Evaluate source credibility and reliability',
  ),
  LessonScenario(
    id: 'information_clustering',
    title: 'Information Clustering',
    subtitle: 'Group and organize information from multiple sources',
  ),
  LessonScenario(
    id: 'fact_verification',
    title: 'Fact Verification',
    subtitle: 'Verify facts across multiple reliable sources',
  ),
];

// Scenarios for "Compare options" lesson
const compareOptionsScenarios = [
  LessonScenario(
    id: 'pros_cons_analysis',
    title: 'Pros/Cons Analysis',
    subtitle: 'Create structured pros and cons comparisons',
  ),
  LessonScenario(
    id: 'criteria_evaluation',
    title: 'Criteria Evaluation',
    subtitle: 'Evaluate options against specific criteria',
  ),
  LessonScenario(
    id: 'citation_management',
    title: 'Citation Management',
    subtitle: 'Manage and organize source citations',
  ),
];

// Scenarios for "Crunch numbers" lesson
const crunchNumbersScenarios = [
  LessonScenario(
    id: 'data_summarization',
    title: 'Data Summarization',
    subtitle: 'Summarize numerical data and key metrics',
  ),
  LessonScenario(
    id: 'kpi_calculation',
    title: 'KPI Calculation',
    subtitle: 'Calculate key performance indicators',
  ),
  LessonScenario(
    id: 'trend_analysis',
    title: 'Trend Analysis',
    subtitle: 'Analyze numerical trends and patterns',
  ),
];

// Scenarios for "Create decision briefs" lesson
const createDecisionBriefsScenarios = [
  LessonScenario(
    id: 'executive_summary',
    title: 'Executive Summary',
    subtitle: 'Create concise executive decision summaries',
  ),
  LessonScenario(
    id: 'risk_assessment',
    title: 'Risk Assessment',
    subtitle: 'Assess and document decision risks',
  ),
  LessonScenario(
    id: 'recommendation_framework',
    title: 'Recommendation Framework',
    subtitle: 'Structure clear decision recommendations',
  ),
];

// Scenarios for "References & quotes" lesson
const referencesQuotesScenarios = [
  LessonScenario(
    id: 'quote_extraction',
    title: 'Quote Extraction',
    subtitle: 'Extract relevant quotes from sources',
  ),
  LessonScenario(
    id: 'link_management',
    title: 'Link Management',
    subtitle: 'Organize and manage source links',
  ),
  LessonScenario(
    id: 'reference_organization',
    title: 'Reference Organization',
    subtitle: 'Organize references for easy access',
  ),
];

// Scenarios for "Idea generator" lesson
const ideaGeneratorScenarios = [
  LessonScenario(
    id: 'campaign_concepts',
    title: 'Campaign Concepts',
    subtitle: 'Generate creative marketing campaign ideas',
  ),
  LessonScenario(
    id: 'content_hooks',
    title: 'Content Hooks',
    subtitle: 'Create engaging content hooks and angles',
  ),
  LessonScenario(
    id: 'brand_storytelling',
    title: 'Brand Storytelling',
    subtitle: 'Develop compelling brand narrative ideas',
  ),
];

// Scenarios for "Multi-platform posts" lesson
const multiPlatformPostsScenarios = [
  LessonScenario(
    id: 'linkedin_content',
    title: 'LinkedIn Content',
    subtitle: 'Create professional LinkedIn posts',
  ),
  LessonScenario(
    id: 'twitter_content',
    title: 'Twitter Content',
    subtitle: 'Draft engaging Twitter/X posts',
  ),
  LessonScenario(
    id: 'instagram_content',
    title: 'Instagram Content',
    subtitle: 'Create visual Instagram post captions',
  ),
];

// Scenarios for "Landing copy" lesson
const landingCopyScenarios = [
  LessonScenario(
    id: 'hero_sections',
    title: 'Hero Sections',
    subtitle: 'Write compelling hero section copy',
  ),
  LessonScenario(
    id: 'value_propositions',
    title: 'Value Propositions',
    subtitle: 'Create clear value proposition statements',
  ),
  LessonScenario(
    id: 'faq_sections',
    title: 'FAQ Sections',
    subtitle: 'Write helpful FAQ content',
  ),
];

// Scenarios for "Email sequences" lesson
const emailSequencesScenarios = [
  LessonScenario(
    id: 'welcome_series',
    title: 'Welcome Series',
    subtitle: 'Create onboarding email sequences',
  ),
  LessonScenario(
    id: 'nurture_sequences',
    title: 'Nurture Sequences',
    subtitle: 'Build lead nurturing email flows',
  ),
  LessonScenario(
    id: 'conversion_sequences',
    title: 'Conversion Sequences',
    subtitle: 'Design conversion-focused email series',
  ),
];

// Scenarios for "Performance summary" lesson
const performanceSummaryScenarios = [
  LessonScenario(
    id: 'metrics_analysis',
    title: 'Metrics Analysis',
    subtitle: 'Analyze key marketing performance metrics',
  ),
  LessonScenario(
    id: 'insight_extraction',
    title: 'Insight Extraction',
    subtitle: 'Extract actionable insights from data',
  ),
  LessonScenario(
    id: 'report_creation',
    title: 'Report Creation',
    subtitle: 'Create comprehensive performance reports',
  ),
];
