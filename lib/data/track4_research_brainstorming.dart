import '../models/scenario.dart';

final Map<String, List<Scenario>> scenariosByLessonT4 = {
  // LESSON 1 — Generate Ideas
  't4_l1': [
    // Scenario A: Brainstorm 10 Options Fast
    const Scenario(
      id: 'rb_l1_brainstorm_10_options_fast',
      situation: 'You\'re stuck and need fresh ideas to kickstart a project.',
      prompt:
          'Generate 10 diverse ideas for [topic], grouped into 3 categories. Mark 1–2 as bold/unusual.',
      baseOutput: '''Category A:
• Idea 1
• Idea 2

Category B:
• Idea 3
…''',
      refinements: [
        Refinement(
          label: 'Short list (5 best)',
          output: '''Focus on the top 5 most promising ideas only.''',
        ),
        Refinement(
          label: 'More formal',
          output: '''Use professional business language and structure.''',
        ),
        Refinement(
          label: 'Wilder ideas',
          output: '''Include unconventional and out-of-the-box thinking.''',
        ),
      ],
      takeaway: 'Quantity sparks quality — sort later.',
    ),

    // Scenario B: Mind Map
    const Scenario(
      id: 'rb_l1_mind_map',
      situation: 'You want to expand one seed idea into related angles.',
      prompt:
          'Create a mind map: central theme → 3 branches → 2–3 sub-ideas each.',
      baseOutput: '''Theme: …

Branch 1 → …

Branch 2 → …

Branch 3 → …''',
      refinements: [
        Refinement(
          label: 'Text bullets only',
          output: '''Use simple text formatting without visual elements.''',
        ),
        Refinement(
          label: 'Visual ASCII tree',
          output: '''Create a text-based tree structure using characters.''',
        ),
        Refinement(
          label: 'Add risks per branch',
          output: '''Include potential risks or challenges for each branch.''',
        ),
      ],
      takeaway: 'Branching uncovers hidden paths.',
    ),

    // Scenario C: Idea Prioritizer
    const Scenario(
      id: 'rb_l1_idea_prioritizer',
      situation: 'You generated too many ideas and need to rank them.',
      prompt:
          'Rank ideas by impact vs effort in a 2x2 grid. List quick wins first.',
      baseOutput: '''Quick Wins:

Big Bets:

Fill-ins:

Avoid:''',
      refinements: [
        Refinement(
          label: 'Add scoring table',
          output: '''Include numerical scoring for impact and effort.''',
        ),
        Refinement(
          label: 'One-line rationale',
          output: '''Provide brief reasoning for each categorization.''',
        ),
        Refinement(
          label: 'Color words (green/red)',
          output: '''Use color indicators to highlight priorities.''',
        ),
      ],
      takeaway: 'A quick grid beats endless debate.',
    ),
  ],

  // LESSON 2 — Competitor Research
  't4_l2': [
    // Scenario A: Competitor Snapshot
    const Scenario(
      id: 'rb_l2_competitor_snapshot',
      situation: 'You want to summarize 3 competitors quickly.',
      prompt:
          'Make a table with competitor, key offering, pricing model, 1 strength, 1 weakness.',
      baseOutput: '''Competitor | Offering | Pricing | Strength | Weakness''',
      refinements: [
        Refinement(
          label: 'Add market position',
          output: '''Include market share or positioning information.''',
        ),
        Refinement(
          label: 'More detailed features',
          output: '''Expand on specific product features and capabilities.''',
        ),
        Refinement(
          label: 'Customer quotes',
          output: '''Include brief customer testimonials or feedback.''',
        ),
      ],
      takeaway: 'Even a simple grid beats memory.',
    ),

    // Scenario B: Messaging Comparison
    const Scenario(
      id: 'rb_l2_messaging_comparison',
      situation: 'Competitors pitch themselves differently. You want patterns.',
      prompt:
          'Extract competitor headlines/taglines and group into 3–4 themes (e.g., speed, trust, cost).',
      baseOutput: '''Theme 1: examples

Theme 2: examples

…''',
      refinements: [
        Refinement(
          label: 'Include emotional tone',
          output: '''Analyze the emotional appeal of messaging.''',
        ),
        Refinement(
          label: 'Shorter bullet summary',
          output: '''Condense to key bullet points for quick review.''',
        ),
        Refinement(
          label: 'Add screenshots link slot',
          output: '''Include links to visual examples and screenshots.''',
        ),
      ],
      takeaway: 'Themes reveal white space.',
    ),

    // Scenario C: Feature Gap List
    const Scenario(
      id: 'rb_l2_feature_gap_list',
      situation: 'Your product team needs to know gaps vs competition.',
      prompt:
          'List competitor features vs ours. Flag missing, parity, differentiators.',
      baseOutput: '''Feature | Competitors | Us | Status (gap/parity/unique)''',
      refinements: [
        Refinement(
          label: 'Include priority',
          output: '''Add priority level for each feature gap.''',
        ),
        Refinement(
          label: 'Add customer impact',
          output: '''Assess impact on customer experience.''',
        ),
        Refinement(
          label: 'Highlight 3 quick wins',
          output: '''Identify easy-to-implement improvements.''',
        ),
      ],
      takeaway: 'Gap lists guide roadmap choices.',
    ),
  ],

  // LESSON 3 — Industry Trends
  't4_l3': [
    // Scenario A: Trend Scan
    const Scenario(
      id: 'rb_l3_trend_scan',
      situation: 'You want a quick scan of 5 current trends in your industry.',
      prompt:
          'List 5 trends with short description, evidence link, and impact (H/M/L).',
      baseOutput: '''Trend | Description | Evidence | Impact''',
      refinements: [
        Refinement(
          label: 'Only 3 top trends',
          output: '''Focus on the most significant trends only.''',
        ),
        Refinement(
          label: 'Longer context',
          output: '''Provide more detailed background information.''',
        ),
        Refinement(
          label: 'Add adoption timeline',
          output: '''Include expected adoption timeframe.''',
        ),
      ],
      takeaway: 'Trends matter only if linked to impact.',
    ),

    // Scenario B: Signal vs Noise
    const Scenario(
      id: 'rb_l3_signal_vs_noise',
      situation: 'You get swamped by hype articles.',
      prompt:
          'From this list, mark which items are strong signals (backed by data) vs noise (hype).',
      baseOutput: '''Signal items:

Noise items:''',
      refinements: [
        Refinement(
          label: 'Add confidence rating',
          output: '''Include confidence level for each assessment.''',
        ),
        Refinement(
          label: 'One-line rationale',
          output: '''Provide brief reasoning for categorization.''',
        ),
        Refinement(
          label: 'Client-facing tone',
          output: '''Use language appropriate for external stakeholders.''',
        ),
      ],
      takeaway: 'Filtering hype saves time.',
    ),

    // Scenario C: Next 12 Months Forecast
    const Scenario(
      id: 'rb_l3_next_12_months_forecast',
      situation: 'You want a short forecast to present internally.',
      prompt:
          'Write 3 forecasts with reasoning: what will rise, what will fade, and one wild card.',
      baseOutput: '''Rise:

Fade:

Wild card:

Reasoning: …''',
      refinements: [
        Refinement(
          label: 'Add % likelihood',
          output: '''Include probability percentages for each forecast.''',
        ),
        Refinement(
          label: 'More formal tone',
          output: '''Use professional business language.''',
        ),
        Refinement(
          label: 'Storytelling style',
          output: '''Present forecasts in narrative format.''',
        ),
      ],
      takeaway: 'Simple forecasts set direction.',
    ),
  ],

  // LESSON 4 — Problem-Solving with AI
  't4_l4': [
    // Scenario A: Root Cause Analysis
    const Scenario(
      id: 'rb_l4_root_cause_analysis',
      situation: 'A recurring problem keeps reappearing.',
      prompt:
          'Apply 5 Whys method to identify the root cause, then suggest 2–3 fixes.',
      baseOutput: '''Why 1: …

Why 2: …

…

Root cause:

Fixes:''',
      refinements: [
        Refinement(
          label: 'Add risk of each fix',
          output: '''Assess potential risks for each proposed solution.''',
        ),
        Refinement(
          label: 'Shorter one-liner',
          output: '''Condense to concise one-line summaries.''',
        ),
        Refinement(
          label: 'More detailed steps',
          output: '''Provide step-by-step implementation details.''',
        ),
      ],
      takeaway: 'Ask why until you can act.',
    ),

    // Scenario B: Option Generator
    const Scenario(
      id: 'rb_l4_option_generator',
      situation: 'Your team is stuck debating one solution.',
      prompt:
          'Generate 5 alternative solutions, each with pros/cons and 1 risk.',
      baseOutput: '''Option | Pros | Cons | Risk''',
      refinements: [
        Refinement(
          label: 'Only 3 strong options',
          output: '''Focus on the top 3 most viable solutions.''',
        ),
        Refinement(
          label: 'More creative ideas',
          output: '''Include innovative and unconventional approaches.''',
        ),
        Refinement(
          label: 'Add quick-win flag',
          output: '''Identify solutions that can be implemented quickly.''',
        ),
      ],
      takeaway: 'Options expand thinking beyond the obvious.',
    ),

    // Scenario C: Decision Helper
    const Scenario(
      id: 'rb_l4_decision_helper',
      situation: 'You need to present a decision recommendation tomorrow.',
      prompt:
          'Draft a short decision helper: options considered, criteria, recommended choice, and rationale.',
      baseOutput: '''Options:

Criteria:

Recommendation:

Rationale:''',
      refinements: [
        Refinement(
          label: 'More formal tone',
          output: '''Use professional business language.''',
        ),
        Refinement(
          label: 'Numbers-first',
          output: '''Lead with quantitative data and metrics.''',
        ),
        Refinement(
          label: 'Add appendix slot',
          output:
              '''Include appendix with supporting materials and references.''',
        ),
      ],
      takeaway: 'Structured choices inspire confidence.',
    ),
  ],

  // LESSON 5 — Creative Writing Help
  't4_l5': [
    // Scenario A: Blog Post Starter
    const Scenario(
      id: 'rb_l5_blog_post_starter',
      situation: 'You face a blank page.',
      prompt:
          'Draft a blog post starter: headline options, intro paragraph, and 3 bullets for body.',
      baseOutput: '''Headline options:

Intro:

Body bullets:''',
      refinements: [
        Refinement(
          label: 'More formal tone',
          output: '''Use professional business language.''',
        ),
        Refinement(
          label: 'Storytelling style',
          output: '''Present content in narrative format.''',
        ),
        Refinement(
          label: 'Add CTA line',
          output: '''Include call-to-action for readers.''',
        ),
      ],
      takeaway: 'A starter unblocks the blank page.',
    ),

    // Scenario B: Story Reframe
    const Scenario(
      id: 'rb_l5_story_reframe',
      situation: 'You have dry text that needs life.',
      prompt:
          'Rewrite this dry text in 3 styles: story, metaphor, and analogy.',
      baseOutput: '''Story: …

Metaphor: …

Analogy: …''',
      refinements: [
        Refinement(
          label: 'Shorter',
          output: '''Condense to concise versions.''',
        ),
        Refinement(
          label: 'More professional',
          output: '''Use formal business language.''',
        ),
        Refinement(
          label: 'Add humor',
          output: '''Include lighthearted elements.''',
        ),
      ],
      takeaway: 'Reframes shift perspective fast.',
    ),

    // Scenario C: Tone Switcher
    const Scenario(
      id: 'rb_l5_tone_switcher',
      situation: 'You want to adjust tone for different audiences.',
      prompt:
          'Rewrite this paragraph in 3 tones: executive summary, friendly social, and persuasive sales.',
      baseOutput: '''Executive: …

Friendly: …

Sales: …''',
      refinements: [
        Refinement(
          label: 'More concise',
          output: '''Condense to shorter versions.''',
        ),
        Refinement(
          label: 'Add neutral/informative tone',
          output: '''Include objective, factual presentation.''',
        ),
        Refinement(
          label: 'Emoji-friendly version',
          output: '''Use casual, social media style.''',
        ),
      ],
      takeaway: 'Tone control = audience fit.',
    ),
  ],
};
