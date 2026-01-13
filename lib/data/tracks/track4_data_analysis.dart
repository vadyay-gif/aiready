import 'package:flutter/material.dart';
import '../app_catalog.dart';

const TrackDef track4DataAnalysis = TrackDef(
  title: "Research & Brainstorming",
  icon: Icons.analytics_outlined,
  lessons: [
    LessonDef(
      title: "Extract Insights from Data",
      scenarios: [
        ScenarioDef(
          title: "Sales Data → Executive Insights",
          situation:
              "You exported 12 months of sales data. The VP wants a summary of trends, anomalies, and action items without raw tables.",
          prompt:
              "From sales data, produce 5 insights: 2 trends, 2 anomalies, 1 action recommendation.",
          output:
              "- Trend: Q2 and Q3 revenue grew +15% YoY\n- Trend: SMB churn dropped 4 pts\n- Anomaly: spike in returns May\n- Anomaly: EU pipeline stalled in July\n- Action: expand EU sales enablement",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Trends: revenue +15%, churn -4. Anomalies: May returns, July EU stall. Action: boost EU enablement."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Revenue increased 15% YoY in Q2/Q3; SMB churn fell 4 points. Anomalies: elevated May returns and a July EU pipeline stall. Recommended action: strengthen EU sales enablement."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "Revenue +15% YoY Q2/Q3; SMB churn -4 pts; May returns +22%; EU pipeline -30% July. Action: hire 2 enablement reps in EU."),
          ],
          proTip: "Tell AI the count and categories of insights you want.",
          task: TaskDef(
            goal: "Convert raw sales data into 5 insights.",
            pieces: [
              PromptPieceDef(text: "2 trends", isCorrect: true),
              PromptPieceDef(text: "2 anomalies", isCorrect: true),
              PromptPieceDef(text: "1 action recommendation", isCorrect: true),
              PromptPieceDef(text: "Include raw tables", isCorrect: false),
            ],
            coachingNote:
                "Slots (trends, anomalies, action) prevent data dumps.",
            assembledPromptExample:
                "From sales data, produce 5 insights: 2 trends, 2 anomalies, 1 action recommendation.",
          ),
          takeaway: "Define insight slots to move from data to action.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Customer Support Tickets → Insights",
          situation:
              "You analyzed 3,000 support tickets tagged by category. Leaders want actionable insights, not just volume counts.",
          prompt:
              "From support tickets, create 4 insights: 2 themes, 1 root cause, 1 recommended action.",
          output:
              "- Theme: 35% tickets on password reset\n- Theme: 20% on billing errors\n- Root cause: outdated SSO flow\n- Action: update login and billing validation",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Themes: password, billing. Root: SSO flow. Action: update login/billing."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Themes: password-reset issues (35%) and billing errors (20%). Root cause: outdated SSO. Recommended action: update login and billing validation."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "35% tickets: password; 20%: billing. Root: SSO v1. Action: upgrade to SSO v2 + add billing checks."),
          ],
          proTip: "Ask AI to surface themes, causes, and actions explicitly.",
          task: TaskDef(
            goal: "Turn ticket analysis into 4 insights.",
            pieces: [
              PromptPieceDef(text: "2 themes", isCorrect: true),
              PromptPieceDef(text: "1 root cause", isCorrect: true),
              PromptPieceDef(text: "1 action", isCorrect: true),
              PromptPieceDef(text: "List all 3,000 tickets", isCorrect: false),
            ],
            coachingNote: "Root cause + action turns themes into fixes.",
            assembledPromptExample:
                "From tickets, create 4 insights: 2 themes, 1 root cause, 1 action.",
          ),
          takeaway: "Add causes and actions so ticket data drives change.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Marketing Campaign → Insights Deck",
          situation:
              "Your team ran a digital ad campaign. You need a 1-slide insight summary for leadership.",
          prompt:
              "Summarize campaign into 5 bullets: 2 wins, 2 misses, 1 next step.",
          output:
              "- Win: CTR +20%\n- Win: CPC -15%\n- Miss: low conversion from mobile\n- Miss: weak retargeting ROI\n- Next: revamp mobile landing pages",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Wins: CTR +20%, CPC -15%. Misses: mobile conv, retargeting ROI. Next: better mobile LP."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Wins: CTR rose 20%, CPC fell 15%. Misses: mobile conversions lag, retargeting ROI weak. Next: redesign mobile landing."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "CTR +20% (2.4%→2.9%), CPC -15% (\$2.00→\$1.70). Mobile conv -30% vs desktop; retargeting ROI 0.8. Next: mobile LP test."),
          ],
          proTip: "Use win/miss/next slots to keep insight slides sharp.",
          task: TaskDef(
            goal: "Convert campaign data into a 1-slide insight deck.",
            pieces: [
              PromptPieceDef(text: "2 wins", isCorrect: true),
              PromptPieceDef(text: "2 misses", isCorrect: true),
              PromptPieceDef(text: "1 next step", isCorrect: true),
              PromptPieceDef(text: "Include full ad logs", isCorrect: false),
            ],
            coachingNote: "Wins + misses + next step = balanced debrief.",
            assembledPromptExample:
                "Summarize campaign into 5 bullets: 2 wins, 2 misses, 1 next step.",
          ),
          takeaway: "Balanced slots prevent cherry-picking results.",
          refinements: [],
        ),
      ],
    ),
    LessonDef(
      title: "Create Data Visualizations",
      scenarios: [
        ScenarioDef(
          title: "KPI Dashboard",
          situation:
              "Your boss wants a KPI dashboard for weekly updates. Data includes revenue, churn, and NPS.",
          prompt:
              "Design a dashboard with 3 visuals: revenue trend, churn bar chart, NPS gauge with target.",
          output:
              "Visuals: line chart (revenue trend); bar chart (monthly churn rate); gauge chart (NPS vs 50 target).",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "Line (revenue), bar (churn), gauge (NPS)."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use a line for revenue trends, a bar for churn, and a gauge for NPS against target."),
            ResponseVariant(
                label: "Add details",
                response:
                    "Add axis labels: revenue (\$), churn %, NPS scale 0-100."),
          ],
          proTip: "Assign chart types that match each metric.",
          task: TaskDef(
            goal: "Create a 3-visual KPI dashboard.",
            pieces: [
              PromptPieceDef(
                  text: "Line chart for revenue trend", isCorrect: true),
              PromptPieceDef(text: "Bar chart for churn", isCorrect: true),
              PromptPieceDef(text: "Gauge for NPS vs target", isCorrect: true),
              PromptPieceDef(text: "Pie chart for churn", isCorrect: false),
            ],
            coachingNote: "Chart types should fit the metric type.",
            assembledPromptExample:
                "Design a dashboard: line (revenue), bar (churn), gauge (NPS).",
          ),
          takeaway: "Pick chart type to fit the data, not by habit.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Survey Results → Slide",
          situation:
              "You analyzed 1,000 survey responses. Execs want a slide that shows positives, negatives, and actions.",
          prompt:
              "Visualize survey: bar chart 3 positives, bar chart 3 negatives, 1 box of 2 actions.",
          output:
              "Visual: bar of top 3 positives (support, uptime, onboarding); bar of 3 negatives (pricing, releases, integrations); callout box with 2 actions (clarify pricing, speed roadmap).",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "Bars: positives, negatives. Box: 2 actions."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Bar charts show positives and negatives; action box lists next steps."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "Positives: support 80%, uptime 75%, onboarding 70%. Negatives: pricing 55%, releases 50%, integrations 45%."),
          ],
          proTip: "Use visuals for positives/negatives and box for actions.",
          task: TaskDef(
            goal: "Turn survey results into an exec slide.",
            pieces: [
              PromptPieceDef(text: "Bar 3 positives", isCorrect: true),
              PromptPieceDef(text: "Bar 3 negatives", isCorrect: true),
              PromptPieceDef(text: "Action box with 2 items", isCorrect: true),
              PromptPieceDef(
                  text: "Show all 1,000 responses", isCorrect: false),
            ],
            coachingNote: "Pair bars with actions for balance.",
            assembledPromptExample:
                "Visualize survey: bar chart positives, bar chart negatives, 1 action box.",
          ),
          takeaway:
              "Pair visuals with actions so survey insights lead to change.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Budget vs Spend → Chart",
          situation:
              "Finance asks for a quick chart comparing budget to spend by quarter.",
          prompt:
              "Create a bar+line chart: bars = spend, line = budget, annotate variance.",
          output:
              "Bars: Q1-Q4 spend. Line: budget. Annotate: Q2 +\$50k, Q3 -\$30k.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "Bar spend, line budget, variance notes."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use bars for spend, a line for budget, and annotate key variances."),
            ResponseVariant(
                label: "Add numbers",
                response: "Q2 spend +\$50k over budget; Q3 -\$30k under."),
          ],
          proTip: "Overlay budget line on spend bars to show gaps fast.",
          task: TaskDef(
            goal: "Visualize budget vs spend by quarter.",
            pieces: [
              PromptPieceDef(text: "Bars for spend", isCorrect: true),
              PromptPieceDef(text: "Line for budget", isCorrect: true),
              PromptPieceDef(text: "Annotate variance", isCorrect: true),
              PromptPieceDef(
                  text: "Pie chart for budget vs spend", isCorrect: false),
            ],
            coachingNote: "Overlay line vs bars makes gaps obvious.",
            assembledPromptExample:
                "Create bar+line chart: bars spend, line budget, annotate variance.",
          ),
          takeaway: "Overlay line + bars to spotlight budget gaps.",
          refinements: [],
        ),
      ],
    ),
    LessonDef(
      title: "Write Data Reports",
      scenarios: [
        ScenarioDef(
          title: "Weekly Ops Report",
          situation:
              "Operations expects a weekly report with highlights, issues, and next steps. You have a spreadsheet of metrics and notes.",
          prompt:
              "Draft a weekly ops report: 3 highlights, 2 issues with owners, and 3 next steps with dates. Keep under 180 words.",
          output:
              "Highlights: fulfillment on-time 95% (+3 pts), backlog cleared in Site C, defect rate -0.6 pts. Issues: inbound delays (Owner: Logistics), QA staffing gap (Owner: HR). Next steps: expedite carrier review (May 9), hire 2 QA temps (May 12), finalize buffer stock plan (May 15).",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Highlights: on-time 95%, backlog clear, defects -0.6. Issues: inbound delays (Logistics), QA staffing (HR). Next: carrier review May 9, QA temps May 12, stock plan May 15."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Highlights: on-time performance improved to 95%; Site C backlog cleared; defect rate declined by 0.6 points. Issues: inbound delays (Logistics) and QA staffing (HR). Next steps: carrier review by May 9, hire QA temps by May 12, buffer stock plan by May 15."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "On-time 95% (+3), backlog 0 in Site C, defects -0.6. Issues: inbound SLA +18h (Logistics), QA staffing -2 FTE (HR). Next: carrier review 5/9, hire 2 temps 5/12, buffer plan 5/15."),
          ],
          proTip: "Define sections and a word limit to keep ops reports tight.",
          task: TaskDef(
            goal: "Turn raw ops notes into a concise weekly report.",
            pieces: [
              PromptPieceDef(text: "3 highlights", isCorrect: true),
              PromptPieceDef(text: "2 issues with owners", isCorrect: true),
              PromptPieceDef(text: "3 next steps with dates", isCorrect: true),
              PromptPieceDef(
                  text: "Explain full history of issues", isCorrect: false),
              PromptPieceDef(text: "Limit to ~180 words", isCorrect: true),
            ],
            coachingNote:
                "Sections make the report scannable; limits prevent drift.",
            assembledPromptExample:
                "Draft a ~180-word ops report: 3 highlights, 2 issues with owners, 3 next steps with dates.",
          ),
          takeaway: "Reports land better with fixed sections and length.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Customer Health Report",
          situation:
              "You track customer health signals (usage, tickets, NPS). The CS lead wants a report with early warnings and actions.",
          prompt:
              "Create a customer health report: segment-level trends, 3 risk indicators, and 3 actions with owners/dates.",
          output:
              "Trends: enterprise usage +9%, SMB stable; tickets down 12%. Risks: low adoption in APAC SMB, high ticket severity for legacy tier, NPS dip for new admin flow. Actions: APAC onboarding push (CS, May 14), legacy severity review (Support, May 12), admin flow survey (PM, May 16).",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Trends: enterprise +9%, SMB flat; tickets -12%. Risks: APAC adoption, legacy severity, admin NPS dip. Actions: onboarding May 14, review May 12, survey May 16."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Enterprise usage rose 9% while SMB is stable; tickets declined 12%. Risks include low APAC SMB adoption, severe legacy-tier tickets, and an NPS dip for the admin flow. Actions: APAC onboarding (May 14), severity review (May 12), admin survey (May 16)."),
            ResponseVariant(
                label: "Add owners",
                response:
                    "Actions: CS (APAC onboarding May 14), Support (severity review May 12), PM (admin survey May 16)."),
          ],
          proTip: "Pair risk indicators with owner-tagged actions.",
          task: TaskDef(
            goal: "Assemble a health report that triggers action.",
            pieces: [
              PromptPieceDef(text: "Segment trends", isCorrect: true),
              PromptPieceDef(text: "3 risk indicators", isCorrect: true),
              PromptPieceDef(
                  text: "3 owner-tagged actions with dates", isCorrect: true),
              PromptPieceDef(text: "Generic commentary only", isCorrect: false),
            ],
            coachingNote: "Risks matter when they connect to owners and dates.",
            assembledPromptExample:
                "Create a health report: segment trends, 3 risks, 3 actions with owners/dates.",
          ),
          takeaway: "Risks are useful only when paired with actions.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Executive Data Memo",
          situation:
              "SVP requests a data-backed memo to decide on Q3 priorities. You have metrics, risks, and proposed initiatives.",
          prompt:
              "Draft a 300-word executive data memo: 2 outcomes, 3 insights with numbers, 2 risks with mitigations, and 2 recommended decisions.",
          output:
              "Outcomes: revenue +11% vs plan; churn -1.8 pts. Insights: activation +9 pts after onboarding tweaks; enterprise ACV +14%; APAC pipeline slowed -12%. Risks: security backlog; design capacity. Mitigations: add reviewers; contractor. Decisions: extend vendor; approve design backfill.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Outcomes: +11% revenue; churn -1.8pts. Insights: activation +9, ACV +14%, APAC -12%. Risks: security backlog, design. Decisions: extend vendor, backfill design."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Results exceed plan (+11% revenue, -1.8 pts churn). Insights: activation rose following onboarding changes; enterprise ACV up; APAC pipeline slowed. Risks: security backlog and design capacity, with mitigations. Decisions: vendor extension and design backfill."),
            ResponseVariant(
                label: "Add bullets",
                response:
                    "- Outcomes: +11% revenue; -1.8pts churn\n- Insights: +9 activation; +14% ACV; -12% APAC pipeline\n- Risks: security backlog; design capacity\n- Decisions: vendor extension; design backfill"),
          ],
          proTip: "Give AI a memo structure and word limit to focus signal.",
          task: TaskDef(
            goal: "Produce a 300-word executive memo that drives decisions.",
            pieces: [
              PromptPieceDef(text: "2 outcomes up front", isCorrect: true),
              PromptPieceDef(text: "3 insights with numbers", isCorrect: true),
              PromptPieceDef(text: "2 risks with mitigations", isCorrect: true),
              PromptPieceDef(text: "2 recommended decisions", isCorrect: true),
              PromptPieceDef(
                  text: "Exhaustive appendix text", isCorrect: false),
            ],
            coachingNote: "A memo earns attention when it leads to decisions.",
            assembledPromptExample:
                "Draft a <=300-word executive memo: 2 outcomes, 3 insights with numbers, 2 risks with mitigations, 2 decisions.",
          ),
          takeaway:
              "Decisions happen when outcomes, numbers, and risks are clear.",
          refinements: [],
        ),
      ],
    ),
    LessonDef(
      title: "Statistical Analysis",
      scenarios: [
        ScenarioDef(
          title: "A/B Test Readout",
          situation:
              "You ran an A/B test on signup copy. You need a concise statistical readout leaders can trust.",
          prompt:
              "Write an A/B readout: lift %, sample sizes, p-value, confidence interval, and recommendation.",
          output:
              "Variant B increased conversion by +6.2% (A: n=12,480; B: n=12,515). p=0.018; 95% CI [+1.1%, +11.3%]. Recommendation: ship B and monitor cohort activation.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Lift +6.2% (A 12,480; B 12,515), p=0.018, 95% CI [+1.1%, +11.3%]. Recommend ship B."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Variant B achieved a 6.2% lift with p=0.018 and 95% CI from 1.1% to 11.3% (A n=12,480; B n=12,515). Recommendation: deploy B; monitor activation."),
            ResponseVariant(
                label: "Add caveats",
                response:
                    "Lift +6.2%, p=0.018 (A 12,480; B 12,515). 95% CI [+1.1%, +11.3%]. Caveat: mobile traffic slightly underrepresented."),
          ],
          proTip: "Include lift, N, p-value, CI, and a clear recommendation.",
          task: TaskDef(
            goal:
                "Turn test results into a statistical readout with a decision.",
            pieces: [
              PromptPieceDef(text: "State lift in %", isCorrect: true),
              PromptPieceDef(text: "Include sample sizes", isCorrect: true),
              PromptPieceDef(
                  text: "Report p-value and 95% CI", isCorrect: true),
              PromptPieceDef(text: "Provide a recommendation", isCorrect: true),
              PromptPieceDef(text: "Hide caveats and bias", isCorrect: false),
            ],
            coachingNote:
                "Decision-makers need effect size, certainty, and next action.",
            assembledPromptExample:
                "Write an A/B readout: lift %, sample sizes, p-value, 95% CI, recommendation.",
          ),
          takeaway: "Stats must end in a recommendation, not just numbers.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Cohort Retention Analysis",
          situation:
              "You analyzed monthly retention by signup cohort. PM wants a summary with the main drivers and an action plan.",
          prompt:
              "Summarize cohort retention: best/worst cohorts, likely drivers, and 3 actions with owners/dates.",
          output:
              "Best: Jan cohort +4 pts above avg; Worst: Apr cohort -5 pts. Drivers: delayed onboarding emails and data import friction. Actions: fix email triggers (Growth May 10), improve import wizard (Eng May 22), add in-app checklist (PM May 18).",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Best: Jan +4; Worst: Apr -5. Drivers: onboarding emails, import friction. Actions: emails May 10, wizard May 22, checklist May 18."),
            ResponseVariant(
                label: "More formal",
                response:
                    "January cohort retained 4 points above average; April fell 5 below. Drivers include onboarding email delays and import friction. Actions: email triggers (May 10), import wizard (May 22), in-app checklist (May 18)."),
            ResponseVariant(
                label: "Add numbers",
                response:
                    "Jan m3 retention 61% (+4); Apr 52% (-5). Drivers: email latency +48h; 22% import error rate. Actions with owners/dates listed."),
          ],
          proTip: "Name best/worst cohorts, drivers, and owner-dated actions.",
          task: TaskDef(
            goal: "Turn cohort charts into actions to improve retention.",
            pieces: [
              PromptPieceDef(
                  text: "Identify best/worst cohorts", isCorrect: true),
              PromptPieceDef(text: "State likely drivers", isCorrect: true),
              PromptPieceDef(
                  text: "3 actions with owners/dates", isCorrect: true),
              PromptPieceDef(
                  text: "Include raw cohort tables", isCorrect: false),
            ],
            coachingNote: "Retention analysis should end with fixes.",
            assembledPromptExample:
                "Summarize cohort retention: best/worst cohorts, drivers, 3 actions with owners/dates.",
          ),
          takeaway: "Translate cohort patterns into assigned actions.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Correlation vs Causation Brief",
          situation:
              "Stakeholders conflate correlation with causation. You need a brief that explains what the data shows and what it does not.",
          prompt:
              "Draft a 1-page brief: what is correlated, why causation is not proven, what experiment would test it, and a recommended interim action.",
          output:
              "Data shows feature adoption correlates with renewal, but causation is unproven due to selection bias. To test causation: randomized activation nudges and measure renewal lift. Interim: target low adopters with guided tours.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Correlation: adoption ↔ renewal; causation unproven. Test: randomized nudges. Interim: guided tours for low adopters."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Feature adoption correlates with renewal; causality is unproven. Proposed test: randomized activation nudges. Interim action: targeted guided tours for low-adoption accounts."),
            ResponseVariant(
                label: "Add bullets",
                response:
                    "- Correlation: adoption-renewal\n- Not causal: selection bias\n- Test: randomized nudges\n- Interim: guided tours"),
          ],
          proTip: "Be explicit about limits of inference and propose a test.",
          task: TaskDef(
            goal: "Explain correlation limits and propose a causal test.",
            pieces: [
              PromptPieceDef(
                  text: "State correlation clearly", isCorrect: true),
              PromptPieceDef(
                  text: "Explain why causation is not proven", isCorrect: true),
              PromptPieceDef(
                  text: "Describe an experiment to test it", isCorrect: true),
              PromptPieceDef(
                  text: "Recommend an interim action", isCorrect: true),
              PromptPieceDef(
                  text: "Claim causation without a test", isCorrect: false),
            ],
            coachingNote: "Clarify limits, then show the path to proof.",
            assembledPromptExample:
                "Draft a 1-page brief: correlated pattern, why not causal, proposed experiment, interim action.",
          ),
          takeaway: "Name limits, propose tests, and keep moving.",
          refinements: [],
        ),
      ],
    ),
    LessonDef(
      title: "Predictive Modeling",
      scenarios: [
        ScenarioDef(
          title: "Churn Model → Action Plan",
          situation:
              "You built a churn propensity model. Leadership wants actions tied to the scores.",
          prompt:
              "Translate churn scores into actions: 3 tiers with thresholds, actions per tier, owners, and weekly review cadence.",
          output:
              "Tiers: High >=0.7, Medium 0.4-0.69, Low <0.4. Actions: High → CSM outreach + success plan; Medium → in-app nudges + email tips; Low → adoption milestones. Owners: CS, Growth, PM. Review: weekly Friday standup.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "High >=0.7 (CSM plan), Medium 0.4-0.69 (nudges), Low <0.4 (milestones). Owners set; weekly review."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Define thresholds (High >=0.70; Medium 0.40-0.69; Low <0.40), assign actions per tier with owners, and establish a weekly review."),
            ResponseVariant(
                label: "Add playbooks",
                response:
                    "Attach playbooks: High = 3-touch plan; Medium = 2 nudges; Low = milestone checklist."),
          ],
          proTip: "Turn predictions into tiered playbooks with owners.",
          task: TaskDef(
            goal: "Map model outputs to tiered actions and cadence.",
            pieces: [
              PromptPieceDef(text: "Define tier thresholds", isCorrect: true),
              PromptPieceDef(text: "Assign actions per tier", isCorrect: true),
              PromptPieceDef(text: "Name owners", isCorrect: true),
              PromptPieceDef(text: "Set review cadence", isCorrect: true),
              PromptPieceDef(
                  text: "Hide thresholds to avoid scrutiny", isCorrect: false),
            ],
            coachingNote: "A model is useful when it drives consistent action.",
            assembledPromptExample:
                "Translate churn scores into 3 tiers with thresholds, actions per tier, owners, and a weekly review cadence.",
          ),
          takeaway: "Operationalize predictions into routinized actions.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Lead Scoring → Sales Brief",
          situation:
              "Marketing deployed a lead scoring model. Sales wants a brief that explains scores and the next steps for reps.",
          prompt:
              "Create a sales brief: score thresholds, qualification checklist, outreach sequence (3 steps), and exceptions.",
          output:
              "Scores: A >=80, B 60-79, C <60. Checklist: fit, need, timing. Sequence: same-day email, day-2 call, day-4 case study. Exceptions: strategic accounts bypass threshold.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "A >=80, B 60-79, C <60. Checklist: fit/need/timing. Sequence: email, call, case study. Exception: strategic accounts."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Score thresholds define A/B/C. Use a 3-item qualification checklist and a 3-step outreach sequence. Strategic accounts may bypass thresholds."),
            ResponseVariant(
                label: "Add owners",
                response: "Add SDR owner for steps 1–2; AE for step 3."),
          ],
          proTip: "Explain thresholds and sequences to make scores actionable.",
          task: TaskDef(
            goal: "Turn lead scores into a clear sales play.",
            pieces: [
              PromptPieceDef(text: "Define A/B/C thresholds", isCorrect: true),
              PromptPieceDef(text: "Qualification checklist", isCorrect: true),
              PromptPieceDef(text: "3-step outreach sequence", isCorrect: true),
              PromptPieceDef(text: "List allowed exceptions", isCorrect: true),
              PromptPieceDef(
                  text: "Exclude strategic accounts", isCorrect: false),
            ],
            coachingNote: "Sales needs thresholds plus what to do next.",
            assembledPromptExample:
                "Create a sales brief: thresholds (A/B/C), 3-item checklist, 3-step outreach, and exceptions.",
          ),
          takeaway: "Thresholds + sequences = sales can act immediately.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Forecast Model → Executive Summary",
          situation:
              "You built a demand forecast. Executives want a short summary with accuracy and decision levers.",
          prompt:
              "Summarize forecast: model type, accuracy (MAPE), scenarios (base/optimistic/conservative), and 2 decision levers.",
          output:
              "Model: gradient-boosted trees with holiday features. Accuracy: MAPE 7.8%. Scenarios: base +6% YoY, optimistic +10%, conservative +2%. Levers: promo intensity and hiring plan.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "GBT model; MAPE 7.8%. Scenarios: +6% base, +10% opt, +2% cons. Levers: promo, hiring."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Gradient-boosted tree model with holiday features achieved 7.8% MAPE. Scenarios: base (+6%), optimistic (+10%), conservative (+2%). Decision levers: promotion intensity and hiring."),
            ResponseVariant(
                label: "Add risks",
                response:
                    "Add risks: supplier lead-time variance and macro shifts; propose monitoring weekly."),
          ],
          proTip: "Link model accuracy and scenarios to real levers.",
          task: TaskDef(
            goal: "Create an exec summary that ties forecast to decisions.",
            pieces: [
              PromptPieceDef(text: "State model type", isCorrect: true),
              PromptPieceDef(text: "Report accuracy (MAPE)", isCorrect: true),
              PromptPieceDef(text: "Show 3 scenarios", isCorrect: true),
              PromptPieceDef(text: "Name 2 decision levers", isCorrect: true),
              PromptPieceDef(
                  text: "Hide risks and uncertainty", isCorrect: false),
            ],
            coachingNote: "Executives act on accuracy, scenarios, and levers.",
            assembledPromptExample:
                "Summarize forecast: model type, MAPE, base/optimistic/conservative scenarios, and 2 decision levers.",
          ),
          takeaway: "Forecasts matter when tied to accuracy and levers.",
          refinements: [],
        ),
      ],
    ),
  ],
);
