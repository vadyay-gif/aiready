class Track {
  final String id;
  final String title;
  final String subtitle;
  final String emoji;

  const Track({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.emoji,
  });
}

const tracks = <Track>[
  Track(
    id: 't1',
    title: 'Everyday Communication',
    subtitle: 'Emails, meetings, chat',
    emoji: '📧',
  ),
  Track(
    id: 't2',
    title: 'Reports & Summaries',
    subtitle: 'Docs, briefs, updates',
    emoji: '📑',
  ),
  Track(
    id: 't3',
    title: 'Presentations',
    subtitle: 'Slides, notes, delivery',
    emoji: '📊',
  ),
  Track(
    id: 't4',
    title: 'Research & Brainstorming',
    subtitle: 'Ideas, trends, competitors',
    emoji: '💡',
  ),
  Track(
    id: 't5',
    title: 'Personal Productivity',
    subtitle: 'To-dos, agendas, reminders',
    emoji: '⏱️',
  ),
  Track(
    id: 't6',
    title: 'Meetings & Notes with AI',
    subtitle: 'Capture, summarize, follow up',
    emoji: '📝',
  ),
  Track(
    id: 't7',
    title: 'Research & Analysis with AI',
    subtitle: 'Sources, data, insights',
    emoji: '🔍',
  ),
  Track(
    id: 't8',
    title: 'Marketing & Social with AI',
    subtitle: 'Content, campaigns, performance',
    emoji: '📢',
  ),
  Track(
    id: 't9',
    title: 'Spreadsheets & Data with AI',
    subtitle: 'Speed up analysis and reporting in Sheets/Excel',
    emoji: '📊',
  ),
];
