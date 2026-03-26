import 'package:flutter/material.dart';
import '../app_catalog.dart';

const TrackDef track3Presentations = TrackDef(
  title: "Presentations",
  icon: Icons.bar_chart_outlined,
  lessons: [
    LessonDef(
      title: "Create Slide Outlines",
      scenarios: [
        ScenarioDef(
          title: "Product Launch Kickoff Deck",
          situation:
              "You're leading a new product launch. Stakeholders want a clear kickoff deck that frames goals, audience, milestones, risks, and who owns what. You need a tight slide outline that a teammate can flesh out quickly.",
          prompt:
              "Draft a 12-slide outline for a launch kickoff: goal, audience, positioning, timeline milestones (3), roles/owners, risks/mitigations (2), metrics, and next steps.",
          output:
              "1) Title\n2) Goal & success criteria\n3) Target audience & key needs\n4) Positioning & value props\n5) Launch scope (in/out)\n6) Timeline milestones: beta, GA, campaign\n7) Roles & owners\n8) Risks & mitigations\n9) Readiness checklist\n10) Metrics & dashboards\n11) Dependencies\n12) Next steps & decisions needed",
          refinements: ["Shorter", "More formal", "Add examples"],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Title; Goal; Audience; Positioning; Scope; 3 Milestones; Roles; 2 Risks; Readiness; Metrics; Dependencies; Next steps."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Title; Objectives and success criteria; Audience and needs; Positioning; Scope (in/out); Milestones (beta, GA, campaign); Roles and ownership; Risks with mitigations; Readiness checklist; Metrics; Dependencies; Next steps and decisions."),
            ResponseVariant(
                label: "Add owners",
                response:
                    "As above, with slide 7 listing each workstream owner (PM, Eng, Design, Marketing) and slide 12 assigning owners/dates for next steps."),
            ResponseVariant(
                label: "Add dates",
                response:
                    "As above, with slide 6 inserting target dates for beta, GA, and campaign launch."),
          ],
          proTip:
              "Tell AI the exact slide count and the sections to lock the outline to a usable length.",
          task: TaskDef(
            goal:
                "Turn a vague launch brief into a 12-slide kickoff outline that names owners and dates.",
            pieces: [
              PromptPieceDef(
                  text: "Include 3 dated milestones", isCorrect: true),
              PromptPieceDef(text: "Add roles and owners", isCorrect: true),
              PromptPieceDef(
                  text: "Describe every slide in prose", isCorrect: false),
              PromptPieceDef(
                  text: "Include 2 risks with mitigations", isCorrect: true),
              PromptPieceDef(
                  text: "Add next steps with decisions needed",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Remove the metrics section", isCorrect: false),
            ],
            coachingNote:
                "Defining slide count + must-have sections keeps the outline focused and actionable.",
            assembledPromptExample:
                "Draft a 12-slide kickoff outline: goal, audience, positioning, scope, 3 dated milestones, roles/owners, 2 risks with mitigations, readiness, metrics, dependencies, next steps with decisions.",
          ),
          takeaway:
              "Set slide count and required sections to get a tight, buildable outline.",
        ),
        ScenarioDef(
          title: "Quarterly Business Review (QBR)",
          situation:
              "You owe a QBR to execs covering performance, customers, product, and plan. You need a crisp outline that foregrounds outcomes and decisions, not a slide dump.",
          prompt:
              "Create a 10-slide QBR outline: highlights vs plan, customer wins/losses, product progress, KPIs, risks, and 2 decisions needed.",
          output:
              "1) Title & agenda\n2) Highlights vs plan\n3) KPI dashboard\n4) Customer wins & references\n5) Customer churn & reasons\n6) Product progress & roadmap\n7) GTM outcomes & pipeline\n8) Risks & mitigations\n9) Next quarter priorities\n10) Decisions requested (2) & appendix index",
          refinements: ["Shorter", "More formal", "Add examples"],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Title; Highlights; KPIs; Wins; Churn; Product; GTM; Risks; Priorities; Decisions (2)."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Title/agenda; Highlights versus plan; KPI dashboard; Customer wins and references; Churn and causal factors; Product progress and roadmap; GTM outcomes and pipeline; Risks and mitigations; Next-quarter priorities; Decisions requested (two)."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "Slide 2 lists top 3 highlights; Slide 3 shows 5 KPIs; Slide 10 calls out exactly 2 decisions."),
          ],
          proTip:
              "Ask for slide counts and decision slides so execs know where to engage.",
          task: TaskDef(
            goal:
                "Build a 10-slide QBR outline that centers outcomes and decisions.",
            pieces: [
              PromptPieceDef(
                  text: "Include highlights vs plan", isCorrect: true),
              PromptPieceDef(
                  text: "Add a KPI dashboard slide", isCorrect: true),
              PromptPieceDef(
                  text: "Insert a long methodology appendix", isCorrect: false),
              PromptPieceDef(text: "Cover wins and churn", isCorrect: true),
              PromptPieceDef(
                  text: "Include 2 decisions needed", isCorrect: true),
              PromptPieceDef(text: "Skip risks to save time", isCorrect: false),
            ],
            coachingNote:
                "Execs scan for outcomes, KPIs, and decisions—make them explicit.",
            assembledPromptExample:
                "Create a 10-slide QBR outline: highlights vs plan, KPI dashboard, wins and churn, product progress, GTM outcomes, risks, next-quarter priorities, and 2 decisions needed.",
          ),
          takeaway:
              "Design QBRs around outcomes and decisions, not exhaustive slides.",
        ),
        ScenarioDef(
          title: "Sales Pitch Outline (Problem → Solution)",
          situation:
              "You're preparing a first-call sales pitch for a mid-market prospect. You want a problem-led story that lands value quickly and proposes clear next steps.",
          prompt:
              "Write a 9-slide pitch outline: problem, impact, current alternatives, solution overview, 3 value points, proof, pricing overview, next steps.",
          output:
              "1) Title & agenda\n2) Problem and impact\n3) Current alternatives & gaps\n4) Our solution overview\n5) Value point 1 (time saved)\n6) Value point 2 (cost control)\n7) Value point 3 (risk reduction)\n8) Proof: case study/results\n9) Pricing overview & next steps",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Title; Problem/impact; Alternatives; Solution; 3 values; Proof; Pricing; Next steps."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Title and agenda; Problem and quantified impact; Existing alternatives and gaps; Solution overview; Three value propositions; Evidence (case study); Pricing overview; Next steps."),
            ResponseVariant(
                label: "Add questions",
                response:
                    "Keep the outline; add 2 discovery questions at the end of slides 2 and 3 to confirm fit."),
          ],
          proTip:
              "Specify the story spine (problem → solution → proof → next steps) to keep pitches focused.",
          task: TaskDef(
            goal: "Build a concise 9-slide problem-led pitch outline.",
            pieces: [
              PromptPieceDef(
                  text: "Lead with the prospect's problem", isCorrect: true),
              PromptPieceDef(text: "Quantify impact", isCorrect: true),
              PromptPieceDef(
                  text: "Skip proof to shorten time", isCorrect: false),
              PromptPieceDef(text: "Present 3 value points", isCorrect: true),
              PromptPieceDef(
                  text: "End with pricing and next steps", isCorrect: true),
              PromptPieceDef(
                  text: "Add unrelated product features", isCorrect: false),
            ],
            coachingNote:
                "Problem → impact → solution → proof → next steps is a reliable pitch spine.",
            assembledPromptExample:
                "Write a 9-slide outline: problem and impact, current alternatives, solution overview, 3 value points, proof, pricing overview, and next steps.",
          ),
          takeaway:
              "Control the story arc so every slide advances problem-to-solution.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),
    LessonDef(
      title: "Turn Data Into Talking Points",
      scenarios: [
        ScenarioDef(
          title: "Quarterly Metrics → Talking Points",
          situation:
              "You have 20 KPI charts for the quarter. Executives want 5 talking points they can use in meetings.",
          prompt:
              "From KPIs, create 5 talking points: 2 wins, 2 challenges, 1 outlook.",
          output:
              "- Win: revenue +12% vs plan\n- Win: churn -2 pts\n- Challenge: supply delays\n- Challenge: slow EU adoption\n- Outlook: pipeline strong for Q3",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Wins: +12% revenue, churn -2pts. Challenges: supply delays, EU adoption. Outlook: strong Q3."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Revenue +12% above plan; churn reduced 2 points. Challenges: supply delays, EU adoption lag. Outlook: Q3 pipeline strong."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "Revenue +12%; churn -2pts; supply delays cut output 5%; EU adoption -10%; pipeline +15% Q3."),
          ],
          proTip: "Slot wins, challenges, and outlook to shape the story.",
          task: TaskDef(
            goal: "Convert KPI charts into 5 talking points.",
            pieces: [
              PromptPieceDef(text: "2 wins", isCorrect: true),
              PromptPieceDef(text: "2 challenges", isCorrect: true),
              PromptPieceDef(text: "1 outlook", isCorrect: true),
              PromptPieceDef(text: "Describe all 20 charts", isCorrect: false),
            ],
            coachingNote: "Slots force prioritization.",
            assembledPromptExample:
                "From KPIs, create 5 talking points: 2 wins, 2 challenges, 1 outlook.",
          ),
          takeaway: "Guide AI with slots to turn data into story.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Survey Data → All-Hands Notes",
          situation:
              "You analyzed employee survey data. Leadership wants talking points for the all-hands.",
          prompt:
              "From survey, create 4 talking points: 2 strengths, 2 improvements.",
          output:
              "- Strength: teamwork praised by 72%\n- Strength: flexible work\n- Improve: career growth clarity\n- Improve: workload balance",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Strengths: teamwork, flexibility. Improvements: career growth, workload."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Survey: teamwork (72%) and flexibility strong. Improvements: clarity in career growth, workload balance."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "72% teamwork, 65% flexibility. 40% want clearer career paths, 35% workload issues."),
          ],
          proTip: "Balance strengths and improvements for credibility.",
          task: TaskDef(
            goal: "Turn survey data into 4 talking points.",
            pieces: [
              PromptPieceDef(text: "2 strengths", isCorrect: true),
              PromptPieceDef(text: "2 improvements", isCorrect: true),
              PromptPieceDef(text: "Include every comment", isCorrect: false),
            ],
            coachingNote: "Balance good and bad for trust.",
            assembledPromptExample:
                "From survey, create 4 talking points: 2 strengths, 2 improvements.",
          ),
          takeaway: "Explicit counts produce balanced messages.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Customer Interviews → Board Talking Points",
          situation:
              "You ran 5 customer interviews. The board wants 3 talking points.",
          prompt:
              "From interviews, extract 3 talking points: pain, delight, next step.",
          output:
              "- Pain: onboarding confusing\n- Delight: support responsiveness praised\n- Next step: simplify setup",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Pain: onboarding; Delight: support; Next: simplify setup."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Customers cited confusing onboarding but praised support. Next: simplify setup."),
            ResponseVariant(
                label: "Add quotes",
                response:
                    "Pain: 'setup took 2 hours'; Delight: 'support replied in 1h'; Next: simplify setup."),
          ],
          proTip: "Ask AI to fill 3 slots: pain, delight, next step.",
          task: TaskDef(
            goal: "Distill interviews into 3 talking points.",
            pieces: [
              PromptPieceDef(text: "1 pain", isCorrect: true),
              PromptPieceDef(text: "1 delight", isCorrect: true),
              PromptPieceDef(text: "1 next step", isCorrect: true),
              PromptPieceDef(text: "List all quotes", isCorrect: false),
            ],
            coachingNote: "Slots force clarity.",
            assembledPromptExample:
                "From interviews, extract 3 talking points: 1 pain, 1 delight, 1 next step.",
          ),
          takeaway: "Slotting keeps customer insights crisp.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),
    LessonDef(
      title: "Generate Speaker Notes",
      scenarios: [
        ScenarioDef(
          title: "Product Launch Deck → Speaker Notes",
          situation:
              "You built a product launch deck and need crisp speaker notes that follow a clear story and keep timing tight.",
          prompt:
              "Generate concise speaker notes for a 12-15 minute talk: 1-minute intro, story arc (problem → solution → proof), 3 highlights with time cues, and a closing CTA.",
          output:
              "Intro (1m): welcome, context, promise of value. Arc: problem (teams struggle to launch on time) → solution (our workflow) → proof (beta results). Highlights (3m total): beta NPS +14, setup time -30%, 3 design partners live. Close (1m): ask for support on campaign assets and customer referrals.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Intro 1m; problem → solution → proof; 3 highlights with cues; close with CTA."),
            ResponseVariant(
                label: "More formal",
                response:
                    "One-minute introduction, narrative arc from problem to solution with supporting evidence, three timed highlights, and a closing call to action."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Add one customer quote under proof and a concrete CTA: 'Nominate 2 customers for launch stories by Friday.'"),
          ],
          proTip: "Give AI timing per section so notes fit the slot.",
          task: TaskDef(
            goal: "Turn a launch deck into concise, timed speaker notes.",
            pieces: [
              PromptPieceDef(text: "Set timings by section", isCorrect: true),
              PromptPieceDef(
                  text: "Use problem → solution → proof arc", isCorrect: true),
              PromptPieceDef(
                  text: "Add 3 highlights with cues", isCorrect: true),
              PromptPieceDef(text: "Include a closing CTA", isCorrect: true),
              PromptPieceDef(text: "Paste full slide text", isCorrect: false),
            ],
            coachingNote: "Time boxes stop you from overrunning and keep pace.",
            assembledPromptExample:
                "Generate 12-15 minute speaker notes: 1-minute intro, problem → solution → proof, 3 timed highlights, closing CTA.",
          ),
          takeaway: "Timing plus a clear arc produces usable notes fast.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Executive Update Town Hall",
          situation:
              "You are presenting quarterly updates at a company town hall. You want speaker notes that are plain, positive, and honest about risks.",
          prompt:
              "Draft town-hall speaker notes: 30-second opener, 5 highlights (wins and challenges), 2 risks with mitigations, and a thank-you close.",
          output:
              "Opener: thank teams and set context. Highlights: revenue +12%, churn -2 pts, first enterprise logo, release cadence slower than plan, EU pipeline building. Risks: backlog in security reviews; design capacity. Mitigations: add reviewers; backfill design contractor. Close: thanks and next AMA.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Opener; 5 highlights (mix wins/challenges); 2 risks + mitigations; close with thanks/AMA."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Open with appreciation and context; present five balanced highlights; state two risks with mitigations; close with gratitude and next steps."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Open with thanks; share wins and where we can do better; name two risks and what we're doing; close with appreciation and AMA."),
          ],
          proTip: "Balance wins and challenges to build trust.",
          task: TaskDef(
            goal: "Prepare honest, upbeat town-hall notes.",
            pieces: [
              PromptPieceDef(text: "Opener under 30 seconds", isCorrect: true),
              PromptPieceDef(
                  text: "5 highlights with plain language", isCorrect: true),
              PromptPieceDef(text: "2 risks with mitigations", isCorrect: true),
              PromptPieceDef(text: "Thank-you close", isCorrect: true),
              PromptPieceDef(
                  text: "Hide challenges to keep morale high",
                  isCorrect: false),
            ],
            coachingNote: "Balanced notes feel credible and motivating.",
            assembledPromptExample:
                "Draft town-hall notes: 30s opener, 5 highlights (wins + challenges), 2 risks with mitigations, thank-you close.",
          ),
          takeaway: "Name challenges and mitigations; keep language plain.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Demo Walkthrough",
          situation:
              "You will demo a new feature to customers. You need step-by-step speaker notes with transitions and objection handling.",
          prompt:
              "Create demo notes: 1-sentence value promise, 5 steps with talk tracks, 2 transition lines, and 3 common objections with concise responses.",
          output:
              "Promise: 'Save an hour a week on status updates.' Steps: 1) Connect data; 2) Pick template; 3) Generate summary; 4) Edit sections; 5) Share link. Transitions: 'Now let's generate a first draft...' / 'Finally, we share it out...' Objections: price, accuracy, security with short responses.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Promise; 5 steps with talk tracks; 2 transitions; 3 objections + responses."),
            ResponseVariant(
                label: "More formal",
                response:
                    "State value proposition, outline five guided steps with talk tracks, provide two transitions, and address three common objections."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Add a real customer example under step 3 and a 1-line success metric for step 5."),
          ],
          proTip:
              "Ask for steps, transitions, and objections so the flow feels smooth.",
          task: TaskDef(
            goal: "Write demo notes that guide the flow and handle objections.",
            pieces: [
              PromptPieceDef(
                  text: "Value promise in 1 sentence", isCorrect: true),
              PromptPieceDef(text: "5 steps with talk tracks", isCorrect: true),
              PromptPieceDef(text: "2 transitions", isCorrect: true),
              PromptPieceDef(
                  text: "3 objections with responses", isCorrect: true),
              PromptPieceDef(text: "Deep technical appendix", isCorrect: false),
            ],
            coachingNote: "Transitions and objections prevent stalls.",
            assembledPromptExample:
                "Create demo notes: value promise, 5 steps with talk tracks, 2 transitions, 3 objections with short responses.",
          ),
          takeaway: "Guide the audience with steps and smooth transitions.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),
    LessonDef(
      title: "Visual Storytelling",
      scenarios: [
        ScenarioDef(
          title: "Choose the Right Chart",
          situation:
              "You have metrics for growth, conversion, and retention. You need guidance on which charts to use and what message to emphasize.",
          prompt:
              "Recommend visuals for growth, conversion, and retention: chart type, reason, and one sentence to emphasize on the slide.",
          output:
              "- Growth: line chart to show trend and seasonality; emphasize 'steady +12% QoQ.'\n- Conversion: funnel chart to highlight drop at signup step; emphasize 'optimize step 2.'\n- Retention: cohort chart to show month-over-month stickiness; emphasize 'new cohort up 3 pts.'",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Growth: line (+12% QoQ). Conversion: funnel (drop at step 2). Retention: cohort (new cohort +3 pts)."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use a line for growth trends, a funnel for conversion drop-off, and a cohort chart for retention patterns; add one emphasis line per slide."),
            ResponseVariant(
                label: "Add callouts",
                response:
                    "Add callout dots on growth inflection, a red label on funnel drop, and a green arrow on improved cohort."),
          ],
          proTip: "Tell AI to pair chart type with the one-sentence takeaway.",
          task: TaskDef(
            goal: "Map metrics to the right visuals with a message.",
            pieces: [
              PromptPieceDef(text: "Line for growth trend", isCorrect: true),
              PromptPieceDef(
                  text: "Funnel for conversion drop-off", isCorrect: true),
              PromptPieceDef(text: "Cohort for retention", isCorrect: true),
              PromptPieceDef(
                  text: "Pie chart for time series", isCorrect: false),
              PromptPieceDef(
                  text: "Add one-sentence emphasis", isCorrect: true),
            ],
            coachingNote: "Every chart needs a message, not just data.",
            assembledPromptExample:
                "Recommend visuals: chart type + reason + one-sentence emphasis for growth, conversion, retention.",
          ),
          takeaway:
              "Choose the chart that matches the question, then state the message.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Turn a Dense Table Into a Slide",
          situation:
              "A partner sent a big comparison table. You need one clear slide that shows the decision logic.",
          prompt:
              "Convert a 12-row comparison table into a single decision slide: 3 criteria, traffic-light ratings, 1 recommendation with reason.",
          output:
              "Criteria: security, total cost, integration. Scores: Vendor A (G,Y,G); B (Y,G,Y); C (G,G,G). Recommendation: choose C due to green across criteria and lowest integration effort.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Criteria: security, cost, integration. A G/Y/G; B Y/G/Y; C G/G/G. Recommend C."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use three criteria with traffic-light ratings. Vendor C is recommended based on consistently high ratings and simpler integration."),
            ResponseVariant(
                label: "Add owners",
                response:
                    "Add owner for next step: Procurement to negotiate with Vendor C by May 20."),
          ],
          proTip:
              "Reduce to 3 criteria and use color coding to speed decisions.",
          task: TaskDef(
            goal: "Compress a comparison table into a decision slide.",
            pieces: [
              PromptPieceDef(text: "Select 3 criteria", isCorrect: true),
              PromptPieceDef(
                  text: "Use traffic-light ratings", isCorrect: true),
              PromptPieceDef(
                  text: "State 1 recommendation with reason", isCorrect: true),
              PromptPieceDef(text: "Keep all 12 rows", isCorrect: false),
            ],
            coachingNote: "Constraints make the decision obvious.",
            assembledPromptExample:
                "Create a decision slide: 3 criteria with traffic-light ratings and 1 recommendation with reason.",
          ),
          takeaway: "Strip to criteria that decide; visualize for speed.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Before/After Visual Redesign",
          situation:
              "You have a cluttered slide with tiny charts and multiple fonts. You want a clean before/after plan.",
          prompt:
              "Propose a before/after redesign: layout grid, typography, color usage, and a single headline per slide.",
          output:
              "Grid: 12-column, rule of thirds for charts/text. Typography: single sans family at 16/24/32. Color: rely on gray + 1 accent. Headline: 'Activation up 18% QoQ' with supporting chart and one callout.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Grid 12-col; single sans; gray + 1 accent; single headline."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Adopt a 12-column grid, consistent sans-serif typography, restrained palette, and a single headline guiding the slide."),
            ResponseVariant(
                label: "Add checklist",
                response:
                    "Add a 5-item checklist: remove drop shadows, align axes, simplify legends, reduce labels, add one callout."),
          ],
          proTip:
              "Ask for layout, type scale, and color rules to reduce noise.",
          task: TaskDef(
            goal: "Redesign a cluttered slide into a clean visual story.",
            pieces: [
              PromptPieceDef(text: "Use a grid layout", isCorrect: true),
              PromptPieceDef(
                  text: "One type family with scale", isCorrect: true),
              PromptPieceDef(text: "Gray + 1 accent color", isCorrect: true),
              PromptPieceDef(text: "One headline per slide", isCorrect: true),
              PromptPieceDef(
                  text: "Multiple fonts and accents", isCorrect: false),
            ],
            coachingNote: "Consistency frees attention for the message.",
            assembledPromptExample:
                "Propose a before/after redesign: grid, type scale, color rules, and a single headline.",
          ),
          takeaway: "Reduce visual noise so the message lands first.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),
    LessonDef(
      title: "Tailor to Audience",
      scenarios: [
        ScenarioDef(
          title: "CFO Version of Update",
          situation:
              "You have a general progress update. The CFO needs a version focused on cost, risk, ROI, and decisions.",
          prompt:
              "Rewrite the update for a CFO: cost to date vs budget, forecast, ROI assumptions, top 2 risks with mitigations, and 2 decisions needed.",
          output:
              "Cost: \$1.2M of \$1.4M YTD; forecast +\$120k to complete. ROI: payback 11 months based on pipeline conversion. Risks: vendor quota and hiring delay; mitigations in place. Decisions: extend vendor contract; approve temp designer.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Cost \$1.2M/\$1.4M; +\$120k to complete. ROI 11-month payback. Risks: vendor, hiring (mitigated). Decisions: extend vendor; temp designer."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Costs total \$1.2M against a \$1.4M budget; completion requires an additional \$120k. ROI estimate indicates 11-month payback. Risks include vendor quota and hiring delay with mitigations. Decisions requested: vendor extension and temporary design approval."),
            ResponseVariant(
                label: "Add table",
                response:
                    "Add mini table: Cost YTD, Forecast to Complete, Variance, Payback months."),
          ],
          proTip: "Surface budget, forecast, ROI, and decisions early.",
          task: TaskDef(
            goal: "Tailor a progress update for a CFO.",
            pieces: [
              PromptPieceDef(text: "Cost to date vs budget", isCorrect: true),
              PromptPieceDef(text: "Forecast to complete", isCorrect: true),
              PromptPieceDef(
                  text: "ROI or payback assumption", isCorrect: true),
              PromptPieceDef(text: "2 risks with mitigations", isCorrect: true),
              PromptPieceDef(text: "2 decisions needed", isCorrect: true),
              PromptPieceDef(
                  text: "Product feature deep dive", isCorrect: false),
            ],
            coachingNote: "Lead with money, risk, and decisions.",
            assembledPromptExample:
                "Rewrite for CFO: cost vs budget, forecast, ROI assumption, 2 risks with mitigations, 2 decisions.",
          ),
          takeaway: "Change emphasis and language to match CFO priorities.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Engineering Team Version",
          situation:
              "You must brief engineers on the same initiative. Focus on scope, timelines, risks, and technical decisions.",
          prompt:
              "Rewrite for engineers: current scope, timeline by milestone, open technical decisions, risks and mitigations, and next sprint goals.",
          output:
              "Scope: MVP features A/B/C. Timeline: beta May 20, GA Jun 30. Open decisions: data model for events, auth flow option. Risks: pipeline instability and design capacity; mitigations: weekly reliability review and contractor.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Scope A/B/C; beta May 20; GA Jun 30; open: events model, auth flow; risks: pipeline, design; next sprint goals included."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Scope covers MVP A/B/C. Milestones: beta May 20, GA June 30. Open decisions: event data model and authentication flow. Risks: pipeline stability and design capacity with mitigations. Next sprint goals included."),
            ResponseVariant(
                label: "Add tickets",
                response:
                    "Reference JIRA tickets for data model and auth flow; add owners."),
          ],
          proTip: "Swap financials for scope, milestones, and tech decisions.",
          task: TaskDef(
            goal: "Tailor the update for an engineering audience.",
            pieces: [
              PromptPieceDef(text: "State scope clearly", isCorrect: true),
              PromptPieceDef(text: "Timeline by milestone", isCorrect: true),
              PromptPieceDef(
                  text: "List open technical decisions", isCorrect: true),
              PromptPieceDef(
                  text: "Show risks with mitigations", isCorrect: true),
              PromptPieceDef(
                  text: "Include next sprint goals", isCorrect: true),
              PromptPieceDef(text: "Add ROI payback math", isCorrect: false),
            ],
            coachingNote: "Engineers want scope, dates, decisions, and risks.",
            assembledPromptExample:
                "Rewrite for engineers: scope, milestone timeline, open technical decisions, risks/mitigations, next sprint goals.",
          ),
          takeaway: "Audience fit = what they need to act on next.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Customer-Facing Version",
          situation:
              "You need a customer-facing summary for a roadmap webinar. Keep it benefits-first and avoid internal jargon.",
          prompt:
              "Rewrite for customers: benefit-first headlines, 3 value bullets, simple dates, and a clear CTA to sign up for the beta.",
          output:
              "Headline: 'Less manual work, faster insights.' Value: automate report prep, share links securely, collaborate with comments. Dates: beta in June, GA in late July. CTA: join the beta list.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Benefit first, 3 value bullets, dates, CTA to join beta."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use benefit-led headlines, three value bullets, dates, and a clear beta call to action."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Lead with benefits, list three wins, share simple dates, and invite them to try the beta."),
          ],
          proTip: "Translate features into benefits and keep dates simple.",
          task: TaskDef(
            goal: "Tailor the roadmap message for customers.",
            pieces: [
              PromptPieceDef(text: "Benefit-first headline", isCorrect: true),
              PromptPieceDef(text: "3 value bullets", isCorrect: true),
              PromptPieceDef(text: "Simple dates", isCorrect: true),
              PromptPieceDef(text: "Clear CTA", isCorrect: true),
              PromptPieceDef(
                  text: "Internal jargon and ticket IDs", isCorrect: false),
            ],
            coachingNote: "Benefits beat features for external audiences.",
            assembledPromptExample:
                "Rewrite for customers: benefit-first headline, 3 value bullets, simple dates, clear CTA to join the beta.",
          ),
          takeaway:
              "Switch to benefits and plain dates for external audiences.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),
  ],
);
