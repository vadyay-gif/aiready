import '../models/lesson.dart';

List<Lesson> getResearchLessons() {
  return [
    const Lesson(
      id: 'res_sources',
      title: 'Find reliable sources',
      subtitle: 'Surface, cluster, and vet sources',
      content: 'Use AI to surface, cluster, and vet sources.',
      trackId: 't_research',
    ),
    const Lesson(
      id: 'res_compare',
      title: 'Compare options',
      subtitle: 'Side-by-side pros/cons with citations',
      content: 'Side-by-side pros/cons with citations.',
      trackId: 't_research',
    ),
    const Lesson(
      id: 'res_numbers',
      title: 'Crunch numbers',
      subtitle: 'Summarize CSV/Sheets and compute KPIs',
      content: 'Summarize CSV/Sheets and compute KPIs.',
      trackId: 't_research',
    ),
    const Lesson(
      id: 'res_briefs',
      title: 'Create decision briefs',
      subtitle: 'Executive brief templates with risks',
      content: 'Executive brief templates with risks.',
      trackId: 't_research',
    ),
    const Lesson(
      id: 'res_refs',
      title: 'References & quotes',
      subtitle: 'Collect quotes/snippets with links',
      content: 'Collect quotes/snippets with links.',
      trackId: 't_research',
    ),
  ];
}
