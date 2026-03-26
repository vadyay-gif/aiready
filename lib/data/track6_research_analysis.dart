import '../models/scenario.dart';

final Map<String, List<Scenario>> scenariosByLessonT7Research = {
  // LESSON 1 — Find reliable sources
  't7_l1': [
    // Scenario A: Search Strategy Builder
    const Scenario(
      id: 'ra_l1_search_strategy_builder',
      situation:
          'You need to research a topic quickly and avoid low-quality results.',
      prompt:
          'Create a search strategy: key terms, synonyms, exclusions, advanced operators, and 3 reputable starting sources. Include a quick plan to validate credibility.',
      baseOutput: '''Query plan:
• Core terms:
• Synonyms / alternates:
• Exclusions:
• Operators: site:, filetype:, -term, "exact"

Starting sources: [3 links/titles]

Credibility checks: author, date, citations, conflicts of interest''',
      refinements: [
        Refinement(
          label: 'Academic-first variant',
          output:
              '''Focus on academic databases, peer-reviewed sources, and university repositories.''',
        ),
        Refinement(
          label: 'Industry/market-first variant',
          output:
              '''Prioritize industry reports, market research firms, and trade publications.''',
        ),
        Refinement(
          label: 'Government/standards-first variant',
          output:
              '''Lead with government data, regulatory documents, and industry standards.''',
        ),
      ],
      takeaway: 'Good queries + source vetting beat random browsing.',
    ),

    // Scenario B: Source Credibility Checklist
    const Scenario(
      id: 'ra_l1_source_credibility_checklist',
      situation:
          'You found mixed-quality articles and want a quick credibility pass.',
      prompt:
          'Turn this list of links into a credibility table: source, author/org, recency, evidence type, potential bias, verdict (use/skip/maybe).',
      baseOutput:
          '''Source | Author/Org | Date | Evidence | Bias notes | Verdict''',
      refinements: [
        Refinement(
          label: 'Color words (green/yellow/red)',
          output:
              '''Use color coding: Green (high credibility), Yellow (moderate), Red (low credibility).''',
        ),
        Refinement(
          label: 'Add "confidence" column',
          output:
              '''Include confidence level for each credibility assessment.''',
        ),
        Refinement(
          label: 'One-paragraph summary per source',
          output: '''Add brief summary of key findings and relevance.''',
        ),
      ],
      takeaway: 'A simple table makes weak sources obvious.',
    ),

    // Scenario C: Synthesis Notes
    const Scenario(
      id: 'ra_l1_synthesis_notes',
      situation: 'You\'ve skimmed 5–7 sources; you want a one-page synthesis.',
      prompt:
          'Synthesize these sources into themes, agreements, disagreements, and open questions. End with 3 recommended next steps.',
      baseOutput: '''Themes:

Where sources agree:

Where they differ:

Open questions:

Next steps:''',
      refinements: [
        Refinement(
          label: 'Executive one-pager',
          output:
              '''Condense to executive summary format with key insights and recommendations.''',
        ),
        Refinement(
          label: 'Academic tone',
          output: '''Use formal academic language and citation style.''',
        ),
        Refinement(
          label: 'Client-facing tone',
          output:
              '''Format for external client communication with business language.''',
        ),
      ],
      takeaway: 'Synthesis > summary: show patterns and gaps.',
    ),
  ],

  // LESSON 2 — Compare options
  't7_l2': [
    // Scenario A: Decision Matrix
    const Scenario(
      id: 'ra_l2_decision_matrix',
      situation: 'You must choose between 3–5 options under time pressure.',
      prompt:
          'Build a decision matrix with weighted criteria. Score each option and show the top choice with a short rationale.',
      baseOutput: '''Criteria (weights %):

Option | Score per criterion | Weighted total

Top choice: [option] — because [rationale]''',
      refinements: [
        Refinement(
          label: 'Minimal weights (3 criteria)',
          output: '''Limit to 3 key criteria to avoid overcomplication.''',
        ),
        Refinement(
          label: 'Risk-first view',
          output:
              '''Prioritize risk assessment and mitigation in the criteria.''',
        ),
        Refinement(
          label: 'Include non-negotiables',
          output:
              '''Add must-have criteria that eliminate options if not met.''',
        ),
      ],
      takeaway: 'Weighting clarifies trade-offs without overcomplicating.',
    ),

    // Scenario B: Pros/Cons with Evidence
    const Scenario(
      id: 'ra_l2_pros_cons_with_evidence',
      situation: 'Stakeholders argue based on opinions.',
      prompt:
          'Create a pros/cons list per option with evidence snippets and links to sources; flag assumptions.',
      baseOutput: '''Option A — Pros / Cons (with evidence)

Option B — Pros / Cons (with evidence)

Assumptions:''',
      refinements: [
        Refinement(
          label: 'Table layout',
          output: '''Organize in table format for easy comparison.''',
        ),
        Refinement(
          label: 'One-paragraph executive summary',
          output: '''Add executive summary highlighting key differences.''',
        ),
        Refinement(
          label: 'Add risk level per option',
          output: '''Include risk assessment for each option.''',
        ),
      ],
      takeaway: 'Evidence-backed pros/cons de-escalate opinion battles.',
    ),

    // Scenario C: Stakeholder Fit
    const Scenario(
      id: 'ra_l2_stakeholder_fit',
      situation: 'Different teams value different things.',
      prompt:
          'Map each option against stakeholder needs (e.g., Finance, Ops, Sales, Legal) and note likely objections.',
      baseOutput:
          '''Stakeholder | Need | How option fits | Likely objection | Mitigation''',
      refinements: [
        Refinement(
          label: 'RACI overlay',
          output: '''Add RACI roles to show who needs to be involved.''',
        ),
        Refinement(
          label: 'Client-facing variant',
          output: '''Format for external stakeholder communication.''',
        ),
        Refinement(
          label: 'Add win themes',
          output:
              '''Highlight key benefits that resonate with each stakeholder.''',
        ),
      ],
      takeaway: 'Fit-by-stakeholder avoids surprises later.',
    ),
  ],

  // LESSON 3 — Crunch numbers
  't7_l3': [
    // Scenario A: Back-of-the-Envelope Model
    const Scenario(
      id: 'ra_l3_back_of_the_envelope_model',
      situation: 'You need a quick estimate to sense-check feasibility.',
      prompt:
          'Create a simple back-of-the-envelope model: inputs, assumptions, formula steps, and result with a sensitivity note.',
      baseOutput: '''Inputs:

Assumptions:

Steps → result:

Sensitivity: which inputs move the result most''',
      refinements: [
        Refinement(
          label: 'Even simpler (3 inputs)',
          output: '''Limit to 3 key inputs for ultra-simple modeling.''',
        ),
        Refinement(
          label: 'More explicit assumptions',
          output: '''Clearly state all assumptions and their impact.''',
        ),
        Refinement(
          label: 'Add low/base/high cases',
          output: '''Include best-case, base-case, and worst-case scenarios.''',
        ),
      ],
      takeaway: 'Rough math beats guessing.',
    ),

    // Scenario B: KPI Snapshot
    const Scenario(
      id: 'ra_l3_kpi_snapshot',
      situation: 'Your manager wants a short KPI snapshot with trends.',
      prompt:
          'Produce a KPI snapshot with 3–5 metrics, current value, change vs last period, and one-line interpretation.',
      baseOutput: '''Metric | Now | Δ vs last period | Interpretation''',
      refinements: [
        Refinement(
          label: 'Add traffic-light words',
          output:
              '''Use Green (good), Yellow (caution), Red (concern) indicators.''',
        ),
        Refinement(
          label: 'Include mini targets',
          output: '''Add target values for each metric.''',
        ),
        Refinement(
          label: 'Narrative paragraph variant',
          output: '''Convert to flowing narrative format.''',
        ),
      ],
      takeaway: 'Trends + interpretation > raw numbers.',
    ),

    // Scenario C: Hypothesis & Test Plan
    const Scenario(
      id: 'ra_l3_hypothesis_test_plan',
      situation: 'You want to validate a hunch with minimal effort.',
      prompt:
          'Write a test plan: hypothesis, success metric, minimal test, data to collect, and decision rule.',
      baseOutput: '''Hypothesis:

Metric:

Minimal test:

Data:

Decision rule:''',
      refinements: [
        Refinement(
          label: 'Risk-reduction framing',
          output: '''Frame the test in terms of risk mitigation.''',
        ),
        Refinement(
          label: 'Customer-behavior framing',
          output: '''Focus on customer behavior and preferences.''',
        ),
        Refinement(
          label: 'Timeline + owner',
          output: '''Add timeline and ownership for the test.''',
        ),
      ],
      takeaway: 'A small test prevents big mistakes.',
    ),
  ],

  // LESSON 4 — Create decision briefs
  't7_l4': [
    // Scenario A: One-Page Decision Brief
    const Scenario(
      id: 'ra_l4_one_page_decision_brief',
      situation: 'Leadership needs a quick decision.',
      prompt:
          'Draft a one-page decision brief: context, options, criteria, recommendation, risks, and next steps.',
      baseOutput: '''Context:

Options:

Criteria:

Recommendation:

Risks:

Next steps:''',
      refinements: [
        Refinement(
          label: 'Numbers-first variant',
          output: '''Lead with key metrics and financial impact.''',
        ),
        Refinement(
          label: 'Client-safe wording',
          output: '''Use language appropriate for external stakeholders.''',
        ),
        Refinement(
          label: 'Add appendix links',
          output: '''Include links to supporting documents and data.''',
        ),
      ],
      takeaway: 'Concise briefs accelerate alignment.',
    ),

    // Scenario B: Counter-Argument Prep
    const Scenario(
      id: 'ra_l4_counter_argument_prep',
      situation: 'You expect pushback from a key stakeholder.',
      prompt:
          'List likely objections, evidence-backed responses, and concessions you can offer.',
      baseOutput: '''Objection → Response → Evidence → Concession''',
      refinements: [
        Refinement(
          label: 'Sales/exec tone',
          output: '''Use persuasive, executive-level language.''',
        ),
        Refinement(
          label: 'Risk-first framing',
          output: '''Address risk concerns proactively.''',
        ),
        Refinement(
          label: 'Add decision deadline',
          output: '''Include timeline pressure to encourage decision.''',
        ),
      ],
      takeaway: 'Prepare the pushback; win the meeting.',
    ),

    // Scenario C: Pre-Read Email
    const Scenario(
      id: 'ra_l4_pre_read_email',
      situation: 'You want stakeholders to read before the meeting.',
      prompt:
          'Write a short pre-read email: purpose, what to review, how long it takes, and the decision you\'ll make in the meeting.',
      baseOutput: '''Subject: Pre-read — [topic/date]

Purpose:

Please review (links):

Time to read:

Decision in meeting:''',
      refinements: [
        Refinement(
          label: 'SMS-length',
          output: '''Condense to text message length for quick reading.''',
        ),
        Refinement(
          label: 'More formal',
          output: '''Use formal business language and structure.''',
        ),
        Refinement(
          label: 'Include calendar-friendly bullets',
          output: '''Format for easy calendar integration and scheduling.''',
        ),
      ],
      takeaway: 'Clear pre-reads save meeting time.',
    ),
  ],

  // LESSON 5 — References & quotes
  't7_l5': [
    // Scenario A: Quote Extractor
    const Scenario(
      id: 'ra_l5_quote_extractor',
      situation: 'You need memorable quotes from long sources.',
      prompt:
          'Extract 5–8 quotable lines with speaker/source, date, and why each matters.',
      baseOutput: '''Quote | Source | Date | Why it matters''',
      refinements: [
        Refinement(
          label: 'Shorter (3–5 quotes)',
          output: '''Limit to 3-5 most impactful quotes.''',
        ),
        Refinement(
          label: 'Client-safe phrasings',
          output: '''Ensure quotes are appropriate for external audiences.''',
        ),
        Refinement(
          label: 'Add confidence level',
          output: '''Include confidence level for each quote's accuracy.''',
        ),
      ],
      takeaway: 'Relevant quotes sharpen storytelling.',
    ),

    // Scenario B: Citations Block
    const Scenario(
      id: 'ra_l5_citations_block',
      situation: 'You\'re writing a note and need a clean references section.',
      prompt:
          'Create a references block in a consistent style (APA-like or simplified), with author, title, org, date, and link.',
      baseOutput: '''[1] Author — Title (Org, Year). Link''',
      refinements: [
        Refinement(
          label: 'More formal',
          output: '''Use formal academic citation style.''',
        ),
        Refinement(
          label: 'Plain-text minimal',
          output: '''Use simplified, minimal citation format.''',
        ),
        Refinement(
          label: 'With annotation (1–2 lines)',
          output: '''Add brief annotation explaining relevance.''',
        ),
      ],
      takeaway: 'Consistent references add credibility.',
    ),

    // Scenario C: Fact-Check Pass
    const Scenario(
      id: 'ra_l5_fact_check_pass',
      situation:
          'You want to verify 3–10 factual claims before sending a deck.',
      prompt:
          'Make a fact-check table: claim, source used, verification note, confidence, action (ok/edit/remove).',
      baseOutput: '''Claim | Source | Verification | Confidence | Action''',
      refinements: [
        Refinement(
          label: 'Traffic-light words',
          output:
              '''Use Green (verified), Yellow (needs review), Red (unverified) indicators.''',
        ),
        Refinement(
          label: 'Include owner',
          output: '''Add owner responsible for fact-checking each claim.''',
        ),
        Refinement(
          label: 'Add due date',
          output: '''Include deadline for completing fact-checks.''',
        ),
      ],
      takeaway: 'A quick fact-check prevents public mistakes.',
    ),
  ],
};
