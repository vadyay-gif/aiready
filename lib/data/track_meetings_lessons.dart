import '../models/lesson.dart';

List<Lesson> getMeetingsLessons() {
  return [
    const Lesson(
      id: 'meet_capture',
      title: 'Capture everything',
      subtitle: 'Live-capture key points during meetings',
      content:
          'Use AI to live-capture key points during meetings (desktop + mobile).',
      trackId: 't_meetings',
    ),
    const Lesson(
      id: 'meet_actions',
      title: 'Action items, owners',
      subtitle: 'Extract tasks with owners & due dates',
      content: 'Extract tasks with owners & due dates.',
      trackId: 't_meetings',
    ),
    const Lesson(
      id: 'meet_minutes',
      title: 'Minutes in minutes',
      subtitle: 'Turn raw notes into shareable minutes',
      content: 'Turn raw notes into shareable minutes.',
      trackId: 't_meetings',
    ),
    const Lesson(
      id: 'meet_followup',
      title: 'Follow-up emails',
      subtitle: 'Auto-draft follow-ups with decisions & asks',
      content: 'Auto-draft follow-ups with decisions & asks.',
      trackId: 't_meetings',
    ),
    const Lesson(
      id: 'meet_summary',
      title: 'Weekly rollups',
      subtitle: 'Roll up meetings into a weekly brief',
      content: 'Roll up meetings into a weekly brief.',
      trackId: 't_meetings',
    ),
  ];
}
