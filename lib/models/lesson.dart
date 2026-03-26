class Lesson {
  final String id;
  final String title;
  final String subtitle;
  final String content;
  final String trackId;
  const Lesson(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.content,
      required this.trackId});
}

final Map<String, List<Lesson>> lessonsByTrack = {
  't1': [
    const Lesson(
      id: 't1_l1',
      title: 'The 5-Minute Email Superpower',
      subtitle: 'Write clear emails fast',
      content: '''# The 5-Minute Email Superpower

## Overview
Learn to write clear, professional emails quickly using AI assistance.

## Key Skills
- Structure emails for clarity
- Adapt tone for different audiences
- Use AI to draft and refine content

## Practice Scenarios
Complete the scenarios below to master email writing with AI.''',
      trackId: 't1',
    ),
    const Lesson(
      id: 't1_l2',
      title: 'Messy Notes → Updates',
      subtitle: 'Turn notes into reports',
      content: '''# Messy Notes → Updates

## Overview
Transform rough meeting notes and voice recordings into polished updates and reports.

## Key Skills
- Extract key information from unstructured notes
- Organize content logically
- Create professional summaries

## Practice Scenarios
Complete the scenarios below to master note-to-report conversion.''',
      trackId: 't1',
    ),
    const Lesson(
      id: 't1_l3',
      title: 'Inbox Tamer',
      subtitle: 'Summaries in seconds',
      content: '''# Inbox Tamer

## Overview
Quickly summarize long emails and documents to stay on top of your inbox.

## Key Skills
- Identify main points in lengthy content
- Create concise summaries
- Prioritize information effectively

## Practice Scenarios
Complete the scenarios below to master email summarization.''',
      trackId: 't1',
    ),
    const Lesson(
      id: 't1_l4',
      title: 'Master of Tone',
      subtitle: 'Adapt your style',
      content: '''# Master of Tone

## Overview
Learn to adapt your communication style for different audiences and situations.

## Key Skills
- Recognize appropriate tone for context
- Adjust formality levels
- Maintain professionalism while being personable

## Practice Scenarios
Complete the scenarios below to master tone adaptation.''',
      trackId: 't1',
    ),
    const Lesson(
      id: 't1_l5',
      title: 'Smart Quick Replies',
      subtitle: 'Instant responses',
      content: '''# Smart Quick Replies

## Overview
Create effective quick responses for common situations using AI assistance.

## Key Skills
- Draft responses quickly
- Maintain appropriate tone
- Include necessary information

## Practice Scenarios
Complete the scenarios below to master quick response creation.''',
      trackId: 't1',
    ),
  ],
  't2': [
    const Lesson(
      id: 't2_l1',
      title: 'Summarize Meetings',
      subtitle: 'Key points in bullets',
      content: '''# Summarize Meetings

## Overview
Extract key points from meetings and create actionable summaries.

## Key Skills
- Identify main discussion points
- Capture action items and decisions
- Create structured summaries

## Practice Scenarios
Complete the scenarios below to master meeting summarization.''',
      trackId: 't2',
    ),
    const Lesson(
      id: 't2_l2',
      title: 'Summarize Long Docs',
      subtitle: 'Policies, contracts, reports',
      content: '''# Summarize Long Docs

## Overview
Break down complex documents into digestible summaries.

## Key Skills
- Extract essential information
- Maintain accuracy in summaries
- Highlight key implications

## Practice Scenarios
Complete the scenarios below to master document summarization.''',
      trackId: 't2',
    ),
    const Lesson(
      id: 't2_l3',
      title: 'Write Executive Summaries',
      subtitle: 'Concise, powerful',
      content: '''# Write Executive Summaries

## Overview
Create compelling executive summaries that capture attention and drive decisions.

## Key Skills
- Distill complex information
- Focus on key insights
- Write for executive audience

## Practice Scenarios
Complete the scenarios below to master executive summary writing.''',
      trackId: 't2',
    ),
    const Lesson(
      id: 't2_l4',
      title: 'Spot Key Takeaways',
      subtitle: 'From data to insight',
      content: '''# Spot Key Takeaways

## Overview
Transform data and information into actionable insights and key takeaways.

## Key Skills
- Analyze information critically
- Identify patterns and trends
- Extract meaningful insights

## Practice Scenarios
Complete the scenarios below to master insight extraction.''',
      trackId: 't2',
    ),
    const Lesson(
      id: 't2_l5',
      title: 'Write Progress Reports',
      subtitle: 'Stakeholder ready',
      content: '''# Write Progress Reports

## Overview
Create professional progress reports that keep stakeholders informed and engaged.

## Key Skills
- Structure progress information
- Highlight achievements and challenges
- Maintain stakeholder focus

## Practice Scenarios
Complete the scenarios below to master progress report writing.''',
      trackId: 't2',
    ),
  ],
  't3': [
    const Lesson(
      id: 't3_l1',
      title: 'Create Slide Outlines',
      subtitle: 'Kickoff, results, training',
      content: '''# Create Slide Outlines

## Overview
Structure effective presentations with clear slide outlines and content organization.

## Key Skills
- Organize presentation flow
- Create logical slide sequences
- Focus on key messages

## Practice Scenarios
Complete the scenarios below to master slide outline creation.''',
      trackId: 't3',
    ),
    const Lesson(
      id: 't3_l2',
      title: 'Turn Data Into Talking Points',
      subtitle: 'Charts → stories',
      content: '''# Turn Data Into Talking Points

## Overview
Transform charts and data into compelling talking points and stories.

## Key Skills
- Interpret data visually
- Create narrative from numbers
- Engage audience with data

## Practice Scenarios
Complete the scenarios below to master data storytelling.''',
      trackId: 't3',
    ),
    const Lesson(
      id: 't3_l3',
      title: 'Generate Speaker Notes',
      subtitle: 'Confident delivery',
      content: '''# Generate Speaker Notes

## Overview
Create effective speaker notes that support confident and engaging presentations.

## Key Skills
- Structure speaking points
- Include key reminders
- Maintain natural flow

## Practice Scenarios
Complete the scenarios below to master speaker note creation.''',
      trackId: 't3',
    ),
    const Lesson(
      id: 't3_l4',
      title: 'Visual Storytelling',
      subtitle: 'Make slides memorable',
      content: '''# Visual Storytelling

## Overview
Create memorable presentations through effective visual storytelling techniques.

## Key Skills
- Design compelling visuals
- Structure narrative flow
- Enhance audience engagement

## Practice Scenarios
Complete the scenarios below to master visual storytelling.''',
      trackId: 't3',
    ),
    const Lesson(
      id: 't3_l5',
      title: 'Tailor to Audience',
      subtitle: 'CEO, client, team',
      content: '''# Tailor to Audience

## Overview
Adapt presentations for different audiences to maximize impact and engagement.

## Key Skills
- Understand audience needs
- Adjust content and tone
- Maintain message clarity

## Practice Scenarios
Complete the scenarios below to master audience adaptation.''',
      trackId: 't3',
    ),
  ],
  't4': [
    const Lesson(
      id: 't4_l1',
      title: 'Generate Ideas',
      subtitle: 'Campaigns, events, activities',
      content: '''# Generate Ideas

## Overview
Use AI to brainstorm and develop creative ideas for campaigns, events, and activities.

## Key Skills
- Brainstorm effectively
- Develop creative concepts
- Refine and iterate ideas

## Practice Scenarios
Complete the scenarios below to master idea generation.''',
      trackId: 't4',
    ),
    const Lesson(
      id: 't4_l2',
      title: 'Competitor Research',
      subtitle: 'Strengths and gaps',
      content: '''# Competitor Research

## Overview
Conduct thorough competitor analysis to identify strengths, weaknesses, and opportunities.

## Key Skills
- Analyze competitor strategies
- Identify market gaps
- Extract actionable insights

## Practice Scenarios
Complete the scenarios below to master competitor research.''',
      trackId: 't4',
    ),
    const Lesson(
      id: 't4_l3',
      title: 'Industry Trends',
      subtitle: 'Digest what matters',
      content: '''# Industry Trends

## Overview
Stay ahead by identifying and analyzing key industry trends and their implications.

## Key Skills
- Monitor industry developments
- Analyze trend implications
- Apply insights strategically

## Practice Scenarios
Complete the scenarios below to master trend analysis.''',
      trackId: 't4',
    ),
    const Lesson(
      id: 't4_l4',
      title: 'Problem-Solving with AI',
      subtitle: 'From morale to budgets',
      content: '''# Problem-Solving with AI

## Overview
Leverage AI to tackle complex problems across various business areas.

## Key Skills
- Frame problems effectively
- Generate solution options
- Evaluate and implement solutions

## Practice Scenarios
Complete the scenarios below to master AI-powered problem solving.''',
      trackId: 't4',
    ),
    const Lesson(
      id: 't4_l5',
      title: 'Creative Writing Help',
      subtitle: 'Subjects, posts, comms',
      content: '''# Creative Writing Help

## Overview
Enhance your creative writing skills with AI assistance for various content types.

## Key Skills
- Develop engaging content
- Adapt writing style
- Maintain brand voice

## Practice Scenarios
Complete the scenarios below to master creative writing with AI.''',
      trackId: 't4',
    ),
  ],
  't5': [
    const Lesson(
      id: 't5_l1',
      title: 'Daily To-Do Assistant',
      subtitle: 'Prioritize and focus',
      content: '''# Daily To-Do Assistant

## Overview
Use AI to organize and prioritize your daily tasks for maximum productivity.

## Key Skills
- Prioritize tasks effectively
- Organize workflow
- Maintain focus on goals

## Practice Scenarios
Complete the scenarios below to master task organization.''',
      trackId: 't5',
    ),
    const Lesson(
      id: 't5_l2',
      title: 'Agendas & Checklists',
      subtitle: 'Meetings, travel, events',
      content: '''# Agendas & Checklists

## Overview
Create comprehensive agendas and checklists to ensure nothing falls through the cracks.

## Key Skills
- Structure meetings effectively
- Plan events thoroughly
- Create actionable checklists

## Practice Scenarios
Complete the scenarios below to master agenda and checklist creation.''',
      trackId: 't5',
    ),
    const Lesson(
      id: 't5_l3',
      title: 'Reminders & Nudges',
      subtitle: 'Polite, firm, clear',
      content: '''# Reminders & Nudges

## Overview
Craft effective reminders and follow-ups that get results without being pushy.

## Key Skills
- Write polite reminders
- Maintain professional tone
- Drive action effectively

## Practice Scenarios
Complete the scenarios below to master reminder writing.''',
      trackId: 't5',
    ),
    const Lesson(
      id: 't5_l4',
      title: 'Time-Saver Templates',
      subtitle: 'Reusable structures',
      content: '''# Time-Saver Templates

## Overview
Create and use templates to save time on repetitive tasks and communications.

## Key Skills
- Design effective templates
- Customize for context
- Maintain consistency

## Practice Scenarios
Complete the scenarios below to master template creation.''',
      trackId: 't5',
    ),
    const Lesson(
      id: 't5_l5',
      title: 'Reflection & Journaling',
      subtitle: 'End-of-day clarity',
      content: '''# Reflection & Journaling

## Overview
Use AI to enhance your reflection and journaling practice for better self-awareness and growth.

## Key Skills
- Structure reflection effectively
- Identify patterns and insights
- Track personal growth

## Practice Scenarios
Complete the scenarios below to master reflection and journaling.''',
      trackId: 't5',
    ),
  ],
  't6': [
    const Lesson(
      id: 't6_l1',
      title: 'Capture everything',
      subtitle: 'Live notes and templates',
      content: '''# Capture everything

## Overview
Learn to capture meeting details, decisions, and action items in real-time using AI assistance.

## Key Skills
- Take live notes during meetings
- Create effective note templates
- Capture key decisions and actions

## Practice Scenarios
Complete the scenarios below to master meeting capture.''',
      trackId: 't6',
    ),
    const Lesson(
      id: 't6_l2',
      title: 'Action items, owners',
      subtitle: 'Extract and assign tasks',
      content: '''# Action items, owners

## Overview
Extract action items from notes and assign clear ownership and deadlines.

## Key Skills
- Identify action items clearly
- Assign ownership effectively
- Set realistic deadlines

## Practice Scenarios
Complete the scenarios below to master action item management.''',
      trackId: 't6',
    ),
    const Lesson(
      id: 't6_l3',
      title: 'Minutes in minutes',
      subtitle: 'Quick meeting summaries',
      content: '''# Minutes in minutes

## Overview
Create concise meeting minutes quickly that capture the essential information.

## Key Skills
- Summarize meetings effectively
- Focus on key decisions
- Document action items clearly

## Practice Scenarios
Complete the scenarios below to master minute writing.''',
      trackId: 't6',
    ),
    const Lesson(
      id: 't6_l4',
      title: 'Follow-up emails',
      subtitle: 'Recap and next steps',
      content: '''# Follow-up emails

## Overview
Write effective follow-up emails that reinforce decisions and drive action.

## Key Skills
- Structure follow-up emails
- Reinforce key decisions
- Drive next steps

## Practice Scenarios
Complete the scenarios below to master follow-up communication.''',
      trackId: 't6',
    ),
    const Lesson(
      id: 't6_l5',
      title: 'Weekly rollups',
      subtitle: 'Consolidate and report',
      content: '''# Weekly rollups

## Overview
Create weekly summaries that consolidate multiple meetings and track progress.

## Key Skills
- Consolidate meeting information
- Track progress effectively
- Report status clearly

## Practice Scenarios
Complete the scenarios below to master weekly reporting.''',
      trackId: 't6',
    ),
  ],
  't7': [
    const Lesson(
      id: 't7_l1',
      title: 'Find reliable sources',
      subtitle: 'Research and validation',
      content: '''# Find reliable sources

## Overview
Learn to identify and validate reliable information sources for your research.

## Key Skills
- Evaluate source credibility
- Validate information
- Build research strategies

## Practice Scenarios
Complete the scenarios below to master source validation.''',
      trackId: 't7',
    ),
    const Lesson(
      id: 't7_l2',
      title: 'Compare options',
      subtitle: 'Analysis and decision making',
      content: '''# Compare options

## Overview
Effectively compare different options using structured analysis and decision frameworks.

## Key Skills
- Structure comparisons
- Evaluate alternatives
- Make informed decisions

## Practice Scenarios
Complete the scenarios below to master option comparison.''',
      trackId: 't7',
    ),
    const Lesson(
      id: 't7_l3',
      title: 'Crunch numbers',
      subtitle: 'Data analysis and insights',
      content: '''# Crunch numbers

## Overview
Analyze data effectively to extract meaningful insights and support decisions.

## Key Skills
- Analyze numerical data
- Identify patterns and trends
- Draw actionable insights

## Practice Scenarios
Complete the scenarios below to master data analysis.''',
      trackId: 't7',
    ),
    const Lesson(
      id: 't7_l4',
      title: 'Create decision briefs',
      subtitle: 'Structured recommendations',
      content: '''# Create decision briefs

## Overview
Create clear, structured briefs that support decision-making processes.

## Key Skills
- Structure decision briefs
- Present options clearly
- Support recommendations

## Practice Scenarios
Complete the scenarios below to master decision brief creation.''',
      trackId: 't7',
    ),
    const Lesson(
      id: 't7_l5',
      title: 'References & quotes',
      subtitle: 'Citation and attribution',
      content: '''# References & quotes

## Overview
Properly cite sources and use quotes effectively in your research and analysis.

## Key Skills
- Cite sources correctly
- Use quotes effectively
- Maintain academic integrity

## Practice Scenarios
Complete the scenarios below to master citation and attribution.''',
      trackId: 't7',
    ),
  ],
  't8': [
    const Lesson(
      id: 't8_l1',
      title: 'Idea generator',
      subtitle: 'Creative content creation',
      content: '''# Idea generator

## Overview
Generate creative content ideas and campaign themes using AI assistance.

## Key Skills
- Generate creative ideas
- Develop campaign themes
- Create engaging content

## Practice Scenarios
Complete the scenarios below to master idea generation.''',
      trackId: 't8',
    ),
    const Lesson(
      id: 't8_l2',
      title: 'Multi-platform posts',
      subtitle: 'Cross-channel content',
      content: '''# Multi-platform posts

## Overview
Create content that works effectively across multiple platforms and channels.

## Key Skills
- Adapt content for platforms
- Maintain brand consistency
- Optimize for engagement

## Practice Scenarios
Complete the scenarios below to master multi-platform content.''',
      trackId: 't8',
    ),
    const Lesson(
      id: 't8_l3',
      title: 'Landing copy',
      subtitle: 'Conversion-focused writing',
      content: '''# Landing copy

## Overview
Write compelling landing page copy that drives conversions and engagement.

## Key Skills
- Write persuasive copy
- Focus on conversions
- Optimize for engagement

## Practice Scenarios
Complete the scenarios below to master landing copy writing.''',
      trackId: 't8',
    ),
    const Lesson(
      id: 't8_l4',
      title: 'Email sequences',
      subtitle: 'Automated communication',
      content: '''# Email sequences

## Overview
Create effective email sequences that nurture relationships and drive action.

## Key Skills
- Structure email sequences
- Maintain engagement
- Drive desired actions

## Practice Scenarios
Complete the scenarios below to master email sequence creation.''',
      trackId: 't8',
    ),
    const Lesson(
      id: 't8_l5',
      title: 'Performance summary',
      subtitle: 'Results and insights',
      content: '''# Performance summary

## Overview
Analyze and report on marketing performance to drive continuous improvement.

## Key Skills
- Analyze performance data
- Identify key insights
- Report results effectively

## Practice Scenarios
Complete the scenarios below to master performance analysis.''',
      trackId: 't8',
    ),
  ],
  't9': [
    const Lesson(
      id: 't9_l1',
      title: 'Clean messy data',
      subtitle: 'Data preparation and cleaning',
      content: '''# Clean messy data

## Overview
Learn to clean and prepare messy data for analysis using spreadsheet functions and tools.

## Key Skills
- Normalize data formats
- Remove inconsistencies
- Prepare data for analysis

## Practice Scenarios
Complete the scenarios below to master data cleaning.''',
      trackId: 't9',
    ),
    const Lesson(
      id: 't9_l2',
      title: 'Formula helper',
      subtitle: 'Advanced spreadsheet functions',
      content: '''# Formula helper

## Overview
Master advanced spreadsheet formulas and functions to automate data processing.

## Key Skills
- Use complex formulas
- Automate calculations
- Handle errors gracefully

## Practice Scenarios
Complete the scenarios below to master advanced formulas.''',
      trackId: 't9',
    ),
    const Lesson(
      id: 't9_l3',
      title: 'Instant charts',
      subtitle: 'Quick data visualization',
      content: '''# Instant charts

## Overview
Create charts and visualizations quickly to communicate data insights effectively.

## Key Skills
- Choose appropriate chart types
- Create visualizations quickly
- Communicate insights clearly

## Practice Scenarios
Complete the scenarios below to master chart creation.''',
      trackId: 't9',
    ),
    const Lesson(
      id: 't9_l4',
      title: 'Pivot tables to insights',
      subtitle: 'Data analysis and discovery',
      content: '''# Pivot tables to insights

## Overview
Use pivot tables to analyze data and discover meaningful patterns and insights.

## Key Skills
- Create effective pivot tables
- Analyze data patterns
- Extract actionable insights

## Practice Scenarios
Complete the scenarios below to master pivot table analysis.''',
      trackId: 't9',
    ),
    const Lesson(
      id: 't9_l5',
      title: 'Auto KPI report',
      subtitle: 'Automated reporting',
      content: '''# Auto KPI report

## Overview
Create automated KPI reports that provide insights and drive decision-making.

## Key Skills
- Automate report generation
- Track key metrics
- Drive data-driven decisions

## Practice Scenarios
Complete the scenarios below to master automated reporting.''',
      trackId: 't9',
    ),
  ],
};
