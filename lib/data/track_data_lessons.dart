import '../models/lesson.dart';

List<Lesson> getDataLessons() {
  return [
    const Lesson(
      id: 'data_clean',
      title: 'Clean messy data',
      subtitle: 'Dedupe, normalize, fix dates',
      content:
          'Use AI prompts to dedupe, normalize names, fix dates, and split/merge columns quickly.',
      trackId: 't_data',
    ),
    const Lesson(
      id: 'data_formulas',
      title: 'Formula helper',
      subtitle: 'Explain and generate formulas',
      content:
          'Explain and generate formulas (VLOOKUP/XLOOKUP, INDEX/MATCH, IF/IFS) from plain English.',
      trackId: 't_data',
    ),
    const Lesson(
      id: 'data_charts',
      title: 'Instant charts',
      subtitle: 'Turn tables into charts',
      content:
          'Turn a table into the right chart and auto-generate titles, captions, and insights.',
      trackId: 't_data',
    ),
    const Lesson(
      id: 'data_pivots',
      title: 'Pivot tables to insights',
      subtitle: 'Create summaries and segments',
      content:
          'Create pivot summaries, segments, and highlight outliers with AI explanations.',
      trackId: 't_data',
    ),
    const Lesson(
      id: 'data_report',
      title: 'Auto KPI report',
      subtitle: 'Summarize sheets into reports',
      content:
          'Summarize a sheet into weekly KPIs and action items; output a shareable brief.',
      trackId: 't_data',
    ),
  ];
}
