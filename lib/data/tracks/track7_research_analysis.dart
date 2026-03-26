import 'package:flutter/material.dart';
import '../app_catalog.dart';

const TrackDef track7ResearchAnalysis = TrackDef(
  title: "Research & Analysis with AI",
  icon: Icons.insights_outlined,
  // debugPrint('Track7 variants check -> all scenarios have ${lesson.scenarios.length} variants each');
  lessons: [
    // Lesson 1 — Find reliable sources
    LessonDef(
      title: "Find reliable sources",
      scenarios: [
        ScenarioDef(
          title: "Identify credible sources on a given topic",
          situation:
              "You need a shortlist of credible sources on a topic for a briefing. The list should be balanced and checkable.",
          prompt:
              "List credible sources on a topic with type and why they are credible.",
          output:
              "Sources: mix of primary, reputable media, industry reports, and peer-reviewed work\nEach: include source type and a brief credibility note",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Primary, peer-reviewed, reputable media, and industry reports with a one-line credibility note."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide a balanced list including primary sources, peer-reviewed articles, recognized media outlets, and industry reports, each with a brief credibility rationale."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Primary (SEC filing), Peer-reviewed (Journal article), Media (Reuters explainer), Industry (Gartner note) with why each is credible."),
          ],
          proTip:
              "Ask for source type and a credibility note to force vetting.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: list credible sources", isCorrect: true),
              PromptPieceDef(
                  text: "Format: source, type, 1-line credibility note",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include a balanced mix", isCorrect: true),
              PromptPieceDef(
                  text: "Input: the topic and scope", isCorrect: true),
              PromptPieceDef(
                  text: "Include personal blogs regardless of quality",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Skip credibility rationale", isCorrect: false),
            ],
            coachingNote:
                "Type and rationale reduce low-quality entries and bias.",
            assembledPromptExample:
                "List credible sources (source, type, 1-line credibility note) with a balanced mix. Topic: <topic>.",
          ),
          takeaway: "Name source type and why it is credible.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Spot and filter out low-quality sources",
          situation:
              "Your research pool includes questionable links. You need criteria to filter them out and keep only solid references.",
          prompt:
              "Evaluate sources and flag low-quality using criteria: authorship, citations, recency, bias, transparency.",
          output:
              "Criteria: authorship, citations, recency, bias, transparency\nFlag: list low-quality with reason\nKeep: list remaining vetted sources",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Use authorship, citations, recency, bias, transparency; flag low-quality with reasons; list vetted."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Apply evaluation criteria (authorship, citations, recency, bias, transparency) to flag low-quality sources with reasons and list vetted sources."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Flag: anonymous blog (no citations); Keep: peer-reviewed study (recent, cites)."),
          ],
          proTip:
              "Write the criteria into the prompt so the filter is consistent.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: evaluate source quality", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: criteria list, flagged list with reasons, vetted list",
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      "Constraint: apply authorship/citations/recency/bias/transparency",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: list of candidate links", isCorrect: true),
              PromptPieceDef(
                  text: "Accept sources that confirm your view",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Ignore missing authorship if the content seems fine",
                  isCorrect: false),
            ],
            coachingNote:
                "Explicit criteria reduce bias and improve repeatability.",
            assembledPromptExample:
                "Evaluate sources using authorship, citations, recency, bias, transparency. Flag low-quality with reasons; list vetted. Input: <links>.",
          ),
          takeaway: "Bake criteria into the request to reduce bias.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Compare two conflicting sources",
          situation:
              "Two sources conflict on a key fact. You need a comparison that surfaces claims, evidence, and likely reasons for disagreement.",
          prompt:
              "Compare two sources: claims, evidence cited, methodology, conflicts, and likely reasons for disagreement.",
          output:
              "Claims: summarize each\nEvidence: what each cites\nMethod: how they measured\nConflict: where they differ\nReasons: sample, timeframe, incentives",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Claims, evidence, method, conflict, reasons (sample/timeframe/incentives)."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide claims, cited evidence, methodology, points of conflict, and likely reasons (e.g., sample, timeframe, incentives)."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Source A: survey n=1,200 (2022); Source B: admin data (2020). Conflict: definition. Reason: timeframe + method."),
          ],
          proTip: "Ask for method and reasons to avoid surface-level debates.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: compare conflicting sources", isCorrect: true),
              PromptPieceDef(
                  text: "Format: claims, evidence, method, conflict, reasons",
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      "Constraint: cite reason categories (sample/timeframe/incentives)",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: two sources or summaries", isCorrect: true),
              PromptPieceDef(
                  text: "Pick a side without analysis", isCorrect: false),
              PromptPieceDef(
                  text: "Ignore methodology differences", isCorrect: false),
            ],
            coachingNote:
                "Comparing claims and methods reveals why results diverge.",
            assembledPromptExample:
                "Compare two sources across claims, evidence, method, conflict, and reasons (sample/timeframe/incentives). Input: <two sources>.",
          ),
          takeaway: "Compare methods, not just conclusions.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),

    // Lesson 2 — Compare options
    LessonDef(
      title: "Compare options",
      scenarios: [
        ScenarioDef(
          title: "Compare two software tools",
          situation:
              "You must choose between two tools. You need capabilities, limits, pricing, integrations, and a fit summary.",
          prompt:
              "Compare two tools: capabilities, limits, pricing, integrations, and fit by use case.",
          output:
              "Capabilities: list\nLimits: list\nPricing: model and key tiers\nIntegrations: key systems\nFit: when to choose each",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Capabilities, limits, pricing, integrations, fit by use case."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide capabilities and limitations, pricing structure, notable integrations, and a fit-by-use-case summary."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Cap: gen + templates; Limits: no SSO; Pricing: per seat; Integrations: GDrive/Slack; Fit: small teams vs enterprise."),
          ],
          proTip: "Name comparison slots so results are consistent.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: compare software tools", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: capabilities, limits, pricing, integrations, fit",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: provide fit-by-use-case", isCorrect: true),
              PromptPieceDef(
                  text: "Input: tool names and context", isCorrect: true),
              PromptPieceDef(
                  text: "Ignore pricing because it changes", isCorrect: false),
              PromptPieceDef(
                  text: "Describe marketing slogans instead of features",
                  isCorrect: false),
            ],
            coachingNote:
                "Defined slots prevent apples-to-oranges comparisons.",
            assembledPromptExample:
                "Compare two tools: capabilities, limits, pricing, integrations, and fit by use case. Input: <tool A/B + context>.",
          ),
          takeaway: "Use fixed slots for fair comparisons.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Compare vendors based on criteria",
          situation:
              "You are down to three vendors. You need a criteria matrix and a shortlist with rationale.",
          prompt:
              "Compare vendors: criteria matrix (weights optional) and shortlist with rationale.",
          output:
              "Criteria: 5-7 with brief notes\nMatrix: vendors scored per criterion\nShortlist: top 1-2 with reason",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "Criteria; matrix; shortlist with rationale."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide criteria with notes, a comparison matrix across vendors, and a shortlist with rationale."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Crit: security, TCO, fit. Matrix: A/B/C scored. Shortlist: B for enterprise, A for SMB."),
          ],
          proTip: "List criteria first so scoring is transparent.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: build a vendor comparison", isCorrect: true),
              PromptPieceDef(
                  text: "Format: criteria, matrix, shortlist", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: keep rationale to 1 line",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: vendor list and constraints", isCorrect: true),
              PromptPieceDef(
                  text: "Hide weaknesses to avoid conflict", isCorrect: false),
              PromptPieceDef(
                  text: "Skip the shortlist to stay neutral", isCorrect: false),
            ],
            coachingNote:
                "Up-front criteria keep comparisons fair and auditable.",
            assembledPromptExample:
                "Provide criteria, a vendor matrix, and a 1-2 item shortlist with one-line rationale. Input: <vendors/constraints>.",
          ),
          takeaway: "Criteria first; then score and choose.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Compare strategic options with pros/cons",
          situation:
              "Leadership is weighing strategic paths. You need a concise pros/cons comparison with risks and an initial recommendation.",
          prompt:
              "Compare strategic options: pros, cons, risks, and an initial recommendation.",
          output:
              "Options: list\nPros: one per option\nCons: one per option\nRisks: cross-cutting\nRecommendation: initial pick with caveat",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Options; one pro/one con each; cross-cutting risks; initial recommendation."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide options, with a concise pro and con per option, cross-cutting risks, and an initial recommendation with caveats."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Choices with a quick win and a tradeoff each, plus shared risks and a first call."),
          ],
          proTip: "Keep pros/cons parallel and list shared risks.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: compare strategic options", isCorrect: true),
              PromptPieceDef(
                  text: "Format: options, pros/cons, risks, recommendation",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: one pro/one con per option",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: options and context", isCorrect: true),
              PromptPieceDef(
                  text: "List only pros to sell a direction", isCorrect: false),
              PromptPieceDef(
                  text: "Skip risks to keep it short", isCorrect: false),
            ],
            coachingNote:
                "Parallel pros/cons and shared risks enable fair comparison.",
            assembledPromptExample:
                "Compare strategic options with one pro and one con each, note shared risks, and propose an initial recommendation. Input: <options/context>.",
          ),
          takeaway: "Parallel pros/cons improve clarity and trust.",
          refinements: ["Shorter", "More formal", "Friendlier"],
        ),
      ],
    ),

    // Lesson 3 — Synthesize findings
    LessonDef(
      title: "Synthesize findings",
      scenarios: [
        ScenarioDef(
          title: "Create a research summary from multiple sources",
          situation:
              "You've gathered research from 5+ sources on a complex topic. You need a coherent summary that synthesizes key findings without losing important nuances.",
          prompt:
              "Synthesize research findings: identify common themes, note conflicting evidence, highlight gaps, and provide a balanced summary.",
          output:
              "Themes: list 3-4 main patterns\nConflicts: where sources disagree and why\nGaps: what's missing or unclear\nSummary: balanced 2-paragraph synthesis",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "Themes, conflicts, gaps, 2-paragraph synthesis."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Identify common themes, document conflicting evidence with rationale, note research gaps, and provide a balanced synthesis."),
            ResponseVariant(
                label: "Add structure",
                response:
                    "Themes (3-4), Conflicts (with reasons), Gaps (missing data), Synthesis (2 paragraphs with caveats)."),
          ],
          proTip:
              "Ask for themes, conflicts, and gaps to ensure comprehensive synthesis.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: synthesize research findings", isCorrect: true),
              PromptPieceDef(
                  text: "Format: themes, conflicts, gaps, summary",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: identify 3-4 main themes",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: multiple research sources", isCorrect: true),
              PromptPieceDef(
                  text: "Ignore conflicting evidence", isCorrect: false),
              PromptPieceDef(text: "Skip research gaps", isCorrect: false),
            ],
            coachingNote:
                "Themes, conflicts, and gaps create a complete research picture.",
            assembledPromptExample:
                "Synthesize research findings: identify 3-4 main themes, note conflicting evidence with reasons, highlight gaps, and provide a balanced 2-paragraph summary. Input: <sources>.",
          ),
          takeaway:
              "Synthesize themes, conflicts, and gaps for complete understanding.",
          refinements: ["Shorter", "More formal", "Add structure"],
        ),
        ScenarioDef(
          title: "Build a research narrative with evidence",
          situation:
              "You need to tell a compelling story from your research that builds a case for a specific conclusion, using evidence to support each claim.",
          prompt:
              "Create a research narrative: structure as story with evidence, build logical progression, cite sources for claims, and conclude with supported recommendation.",
          output:
              "Narrative: logical story structure\nEvidence: source citations for each claim\nProgression: how each point builds the case\nRecommendation: conclusion backed by evidence",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Narrative, evidence citations, logical progression, evidence-backed recommendation."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Structure as narrative with evidence citations, logical progression, and evidence-backed recommendation."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Story: A→B→C. Evidence: Source 1 (claim A), Source 2 (claim B). Conclusion: Recommendation based on A+B+C."),
          ],
          proTip:
              "Structure as story with evidence to make research compelling.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: create research narrative", isCorrect: true),
              PromptPieceDef(
                  text: "Format: story structure with evidence",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: cite sources for each claim",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: research findings and conclusion",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Make claims without evidence", isCorrect: false),
              PromptPieceDef(
                  text: "Skip logical progression", isCorrect: false),
            ],
            coachingNote:
                "Narrative structure with evidence makes research persuasive.",
            assembledPromptExample:
                "Create a research narrative with story structure, evidence citations for each claim, logical progression, and evidence-backed recommendation. Input: <findings/conclusion>.",
          ),
          takeaway:
              "Structure research as narrative with evidence for each claim.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Identify research limitations and next steps",
          situation:
              "Your research has limitations and unanswered questions. You need to acknowledge these honestly and suggest concrete next steps for future investigation.",
          prompt:
              "Analyze research limitations: identify constraints, acknowledge gaps, suggest specific next steps, and prioritize future research directions.",
          output:
              "Limitations: list constraints and gaps\nGaps: what remains unanswered\nNext steps: specific research actions\nPriority: rank future directions by importance",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "Limitations, gaps, next steps, priority ranking."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Identify research limitations, acknowledge gaps, suggest specific next steps, and prioritize future research directions."),
            ResponseVariant(
                label: "Add timeline",
                response:
                    "Limitations: X, Y. Gaps: A, B. Next: Q1 (action 1), Q2 (action 2). Priority: 1, 2, 3."),
          ],
          proTip: "Be honest about limitations to build research credibility.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: analyze research limitations", isCorrect: true),
              PromptPieceDef(
                  text: "Format: limitations, gaps, next steps, priority",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: suggest specific actions",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: current research findings", isCorrect: true),
              PromptPieceDef(
                  text: "Hide limitations to look better", isCorrect: false),
              PromptPieceDef(text: "Skip next steps", isCorrect: false),
            ],
            coachingNote:
                "Honest limitations and specific next steps improve research quality.",
            assembledPromptExample:
                "Analyze research limitations: identify constraints and gaps, suggest specific next steps, and prioritize future research directions. Input: <findings>.",
          ),
          takeaway: "Acknowledge limitations and suggest specific next steps.",
          refinements: ["Shorter", "More formal", "Add timeline"],
        ),
      ],
    ),

    // Lesson 4 — Present research insights
    LessonDef(
      title: "Present research insights",
      scenarios: [
        ScenarioDef(
          title: "Create executive summary from research",
          situation:
              "Leadership needs a concise executive summary of your research findings. It should highlight key insights, implications, and recommendations in a format they can quickly digest.",
          prompt:
              "Create executive summary: key insights, business implications, recommendations, and next steps in 3-4 bullet points.",
          output:
              "Insights: 2-3 key findings\nImplications: business impact\nRecommendations: specific actions\nNext steps: timeline and owners",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Key insights, business impact, recommendations, next steps."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide key insights, business implications, specific recommendations, and next steps with timeline."),
            ResponseVariant(
                label: "Add metrics",
                response:
                    "Insights: X% improvement. Impact: \$Y savings. Recommendations: A, B. Timeline: Q1-Q2."),
          ],
          proTip:
              "Lead with insights and business impact for executive attention.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: create executive summary", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: insights, implications, recommendations, next steps",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: 3-4 bullet points", isCorrect: true),
              PromptPieceDef(text: "Input: research findings", isCorrect: true),
              PromptPieceDef(
                  text: "Include technical details", isCorrect: false),
              PromptPieceDef(
                  text: "Skip business implications", isCorrect: false),
            ],
            coachingNote:
                "Focus on insights and business impact for executive audience.",
            assembledPromptExample:
                "Create executive summary with key insights, business implications, specific recommendations, and next steps in 3-4 bullet points. Input: <findings>.",
          ),
          takeaway: "Lead with insights and business impact for executives.",
          refinements: ["Shorter", "More formal", "Add metrics"],
        ),
        ScenarioDef(
          title: "Design research presentation slides",
          situation:
              "You need to present your research to a mixed audience. Create slide content that tells a clear story with visual elements and supporting data.",
          prompt:
              "Design presentation slides: structure as story, include key data points, add visual descriptions, and create clear takeaways for each slide.",
          output:
              "Structure: story flow (intro→findings→implications→conclusion)\nData: key metrics and charts\nVisuals: slide design suggestions\nTakeaways: clear points per slide",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Story flow, key data, visual suggestions, clear takeaways."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Structure as story flow, include key data points, suggest visual elements, and create clear takeaways per slide."),
            ResponseVariant(
                label: "Add timing",
                response:
                    "Slide 1: Intro (2 min). Slide 2: Key finding (3 min). Slide 3: Implications (2 min). Slide 4: Conclusion (1 min)."),
          ],
          proTip: "Structure as story with clear takeaways for each slide.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: design presentation slides", isCorrect: true),
              PromptPieceDef(
                  text: "Format: story structure with data and visuals",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: clear takeaways per slide",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: research findings and audience",
                  isCorrect: true),
              PromptPieceDef(text: "Include all raw data", isCorrect: false),
              PromptPieceDef(
                  text: "Skip visual descriptions", isCorrect: false),
            ],
            coachingNote:
                "Story structure with clear takeaways makes presentations effective.",
            assembledPromptExample:
                "Design presentation slides with story structure, key data points, visual descriptions, and clear takeaways per slide. Input: <findings/audience>.",
          ),
          takeaway: "Structure presentations as story with clear takeaways.",
          refinements: ["Shorter", "More formal", "Add timing"],
        ),
        ScenarioDef(
          title: "Write research report with recommendations",
          situation:
              "You need to write a comprehensive research report that documents your findings, methodology, and provides actionable recommendations for stakeholders.",
          prompt:
              "Write research report: executive summary, methodology, key findings, analysis, limitations, and recommendations with implementation timeline.",
          output:
              "Summary: 1-page overview\nMethodology: research approach\nFindings: key results with data\nAnalysis: interpretation and insights\nLimitations: constraints and gaps\nRecommendations: specific actions with timeline",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Summary, methodology, findings, analysis, limitations, recommendations with timeline."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide executive summary, methodology, key findings, analysis, limitations, and recommendations with implementation timeline."),
            ResponseVariant(
                label: "Add sections",
                response:
                    "1. Summary. 2. Methodology. 3. Findings. 4. Analysis. 5. Limitations. 6. Recommendations (Q1-Q4 timeline)."),
          ],
          proTip:
              "Include methodology and limitations for research credibility.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write research report", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: summary, methodology, findings, analysis, recommendations",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include implementation timeline",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: research data and stakeholders",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Skip methodology section", isCorrect: false),
              PromptPieceDef(text: "Ignore limitations", isCorrect: false),
            ],
            coachingNote:
                "Complete report structure with methodology and timeline builds credibility.",
            assembledPromptExample:
                "Write research report with executive summary, methodology, key findings, analysis, limitations, and recommendations with implementation timeline. Input: <data/stakeholders>.",
          ),
          takeaway:
              "Include methodology and timeline for complete research reports.",
          refinements: ["Shorter", "More formal", "Add sections"],
        ),
      ],
    ),

    // Lesson 5 — Research collaboration
    LessonDef(
      title: "Research collaboration",
      scenarios: [
        ScenarioDef(
          title: "Coordinate research across teams",
          situation:
              "You're leading research that involves multiple teams and stakeholders. You need to coordinate efforts, share findings, and ensure everyone stays aligned on objectives.",
          prompt:
              "Coordinate research collaboration: define roles, set communication cadence, establish shared workspace, and create progress tracking system.",
          output:
              "Roles: who does what\nCommunication: meeting schedule and channels\nWorkspace: shared tools and documents\nTracking: progress updates and milestones",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Roles, communication schedule, shared workspace, progress tracking."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Define roles and responsibilities, establish communication cadence, set up shared workspace, and create progress tracking system."),
            ResponseVariant(
                label: "Add tools",
                response:
                    "Roles: A (research), B (analysis). Communication: Weekly Slack + bi-weekly calls. Workspace: Notion. Tracking: Monday.com milestones."),
          ],
          proTip:
              "Define clear roles and communication cadence for effective collaboration.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: coordinate research collaboration",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Format: roles, communication, workspace, tracking",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: define specific responsibilities",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: team members and research scope",
                  isCorrect: true),
              PromptPieceDef(text: "Keep roles vague", isCorrect: false),
              PromptPieceDef(text: "Skip progress tracking", isCorrect: false),
            ],
            coachingNote:
                "Clear roles and communication prevent research confusion.",
            assembledPromptExample:
                "Coordinate research collaboration: define specific roles, establish communication cadence, set up shared workspace, and create progress tracking system. Input: <team/scope>.",
          ),
          takeaway: "Define clear roles and communication for research teams.",
          refinements: ["Shorter", "More formal", "Add tools"],
        ),
        ScenarioDef(
          title: "Share research findings with stakeholders",
          situation:
              "You need to share research findings with different stakeholder groups who have varying levels of technical expertise and different interests in the results.",
          prompt:
              "Share research findings: tailor message for each audience, highlight relevant insights, provide appropriate detail level, and include clear next steps.",
          output:
              "Audience: identify stakeholder groups\nMessage: tailored content per group\nInsights: relevant findings for each\nNext steps: specific actions per audience",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Audience groups, tailored messages, relevant insights, specific next steps."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Identify stakeholder groups, tailor messages for each audience, highlight relevant insights, and provide specific next steps."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Execs: High-level insights + ROI. Technical: Detailed methodology + data. Operations: Implementation steps + timeline."),
          ],
          proTip: "Tailor message and detail level to each audience's needs.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: share research findings", isCorrect: true),
              PromptPieceDef(
                  text: "Format: audience-specific messages", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: appropriate detail level per audience",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: findings and stakeholder list",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Use same message for everyone", isCorrect: false),
              PromptPieceDef(text: "Skip next steps", isCorrect: false),
            ],
            coachingNote:
                "Tailored messages with appropriate detail engage each audience.",
            assembledPromptExample:
                "Share research findings: tailor messages for each audience, highlight relevant insights, provide appropriate detail level, and include specific next steps. Input: <findings/stakeholders>.",
          ),
          takeaway: "Tailor research communication to each audience's needs.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Build research knowledge base",
          situation:
              "You want to create a searchable knowledge base from your research that team members can use to find insights, methodologies, and learnings for future projects.",
          prompt:
              "Build research knowledge base: organize by topic, create searchable tags, include methodology notes, and add key insights with source links.",
          output:
              "Organization: topic-based structure\nTags: searchable keywords\nMethodology: research approach notes\nInsights: key findings with sources\nLinks: references and related work",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Topic organization, searchable tags, methodology notes, insights with sources."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Organize by topic, create searchable tags, include methodology notes, and add key insights with source links."),
            ResponseVariant(
                label: "Add structure",
                response:
                    "Topics: A, B, C. Tags: #methodology, #insights, #sources. Methodology: Step-by-step approach. Insights: Finding + source link."),
          ],
          proTip:
              "Use consistent tags and clear organization for easy searching.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: build research knowledge base", isCorrect: true),
              PromptPieceDef(
                  text: "Format: organized topics with tags and links",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: make it searchable", isCorrect: true),
              PromptPieceDef(
                  text: "Input: research findings and methodologies",
                  isCorrect: true),
              PromptPieceDef(text: "Skip source links", isCorrect: false),
              PromptPieceDef(text: "Use inconsistent tags", isCorrect: false),
            ],
            coachingNote:
                "Consistent organization and tags make knowledge bases useful.",
            assembledPromptExample:
                "Build research knowledge base: organize by topic, create searchable tags, include methodology notes, and add key insights with source links. Input: <findings/methodologies>.",
          ),
          takeaway:
              "Organize research with consistent tags for easy searching.",
          refinements: ["Shorter", "More formal", "Add structure"],
        ),
      ],
    ),
  ],
);
