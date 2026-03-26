import '../models/lesson.dart';

List<Lesson> getMarketingLessons() {
  return [
    const Lesson(
      id: 'mkt_ideas',
      title: 'Idea generator',
      subtitle: 'Generate campaign angles & hooks',
      content: 'Generate campaign angles & hooks.',
      trackId: 't_marketing',
    ),
    const Lesson(
      id: 'mkt_posts',
      title: 'Multi-platform posts',
      subtitle: 'Draft post variants for LinkedIn, X, IG',
      content: 'Draft post variants for LinkedIn, X, IG.',
      trackId: 't_marketing',
    ),
    const Lesson(
      id: 'mkt_landing',
      title: 'Landing copy',
      subtitle: 'Hero, value props, FAQs with A/B variants',
      content: 'Hero, value props, FAQs with A/B variants.',
      trackId: 't_marketing',
    ),
    const Lesson(
      id: 'mkt_email',
      title: 'Email sequences',
      subtitle: 'Welcome + nurture sequences',
      content: 'Welcome + nurture sequences.',
      trackId: 't_marketing',
    ),
    const Lesson(
      id: 'mkt_report',
      title: 'Performance summary',
      subtitle: 'Auto-summarize metrics into a report',
      content: 'Auto-summarize metrics into a report.',
      trackId: 't_marketing',
    ),
  ];
}
