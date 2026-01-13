import '../models/scenario.dart';

final Map<String, List<Scenario>> scenariosByLessonT5 = {
  // LESSON 1 — Capture everything
  't5_l1': [
    // Scenario A: Live Capture Template
    const Scenario(
      id: 'mn_l1_live_capture_template',
      situation:
          'In fast standups you miss details. You want a compact structure to capture who said what, decisions, and blockers while people talk.',
      prompt:
          'Give me a live-notes skeleton for a 15-minute standup. Include sections for speaker tags, decisions first, blockers with owners, and a parking lot.',
      baseOutput: '''Standup Live Notes (15m)

Decisions (owner + when):

Blockers (owner + ask):

Updates (Name → 1–2 bullets):

Parking:

Next sync goal:''',
      refinements: [
        Refinement(
          label: 'Ultra-compact bullets',
          output:
              '''Decisions → Blockers → Updates (Name: bullet) → Parking → Goal.''',
        ),
        Refinement(
          label: 'Remote-friendly',
          output:
              '''Add 'chat thread' link for blockers; note timebox per person (60–90s).''',
        ),
        Refinement(
          label: 'With emojis',
          output:
              '''✅ Decisions  🔧 Blockers  🗒️ Updates  📝 Parking  🎯 Goal''',
        ),
      ],
      takeaway:
          'Capture decisions and blockers first, then updates—your future self will thank you.',
    ),

    // Scenario B: From Recording to Notes
    const Scenario(
      id: 'mn_l1_from_recording_to_notes',
      situation:
          'You have a meeting recording and want structured notes without re-listening end-to-end.',
      prompt:
          'Turn this transcript into meeting notes with sections: decisions, action items (owner + due), risks, and a brief summary.',
      baseOutput: '''Summary: one paragraph

Decisions:

Action Items: owner + due

Risks:

Links:''',
      refinements: [
        Refinement(
          label: 'Executive summary first',
          output:
              '''Lead with key outcomes, then decisions, actions, risks, and supporting links.''',
        ),
        Refinement(
          label: 'Checklist layout only',
          output:
              '''Convert all sections to checkboxes for easy scanning and action tracking.''',
        ),
        Refinement(
          label: 'Add confidence flags (low/med/high)',
          output:
              '''Mark each decision and action with confidence level to indicate certainty.''',
        ),
      ],
      takeaway: 'Summaries let leads skim while action items keep momentum.',
    ),

    // Scenario C: Whiteboard → Clean Notes
    const Scenario(
      id: 'mn_l1_whiteboard_to_clean_notes',
      situation:
          'You photographed a whiteboard. You need clean notes that preserve structure and next steps.',
      prompt:
          'Convert these messy whiteboard bullets into structured notes with headers, owners, and immediate next steps.',
      baseOutput: '''Topics:

Key Points:

Owners & Next Steps:

Open Questions:''',
      refinements: [
        Refinement(
          label: 'One-pager',
          output:
              '''Condense to single page with clear sections and minimal text.''',
        ),
        Refinement(
          label: 'Add assumptions',
          output:
              '''Include section for assumptions made during the whiteboard session.''',
        ),
        Refinement(
          label: 'Client-facing polish',
          output:
              '''Format for external sharing with professional language and clear structure.''',
        ),
      ],
      takeaway: 'Photos are fine—structure is what makes them usable.',
    ),
  ],

  // LESSON 2 — Action items, owners
  't5_l2': [
    // Scenario A: Extract Action Items
    const Scenario(
      id: 'mn_l2_extract_action_items',
      situation:
          'Your raw notes hide tasks. You want paste-ready action lines.',
      prompt:
          'Extract action items from these notes. Use imperative verbs, add owner and due date, one line per task.',
      baseOutput: '''• Draft Q3 outline — Owner: You — Due: Wed 15:00
• Compile hiring stats — Owner: Alex — Due: Thu 11:00
• Schedule design review — Owner: Mina — Due: Fri 14:00''',
      refinements: [
        Refinement(
          label: 'Shorter lines',
          output: '''Draft Q3 outline (You, Wed 15:00)
Compile hiring stats (Alex, Thu 11:00)
Schedule design review (Mina, Fri 14:00)''',
        ),
        Refinement(
          label: 'Calendar-title style',
          output: '''Q3 outline draft
Hiring stats compilation
Design review scheduling''',
        ),
        Refinement(
          label: 'Add tags (#urgent/#lowrisk)',
          output: '''• Draft Q3 outline — Owner: You — Due: Wed 15:00 #urgent
• Compile hiring stats — Owner: Alex — Due: Thu 11:00 #lowrisk
• Schedule design review — Owner: Mina — Due: Fri 14:00 #medium''',
        ),
      ],
      takeaway: 'Clear one-line tasks prevent re-typing and slippage.',
    ),

    // Scenario B: Quick RACI Map
    const Scenario(
      id: 'mn_l2_quick_raci_map',
      situation: 'Ownership feels fuzzy across teams.',
      prompt:
          'Create a simple RACI table for these workstreams with names filled in.',
      baseOutput: '''Workstream | R | A | C | I
Requirements | PM | Sponsor | Design | Eng
Build | Tech Lead | PM | QA | Stakeholders
Launch | PM | Sponsor | Marketing | All''',
      refinements: [
        Refinement(
          label: 'Text table → bullets',
          output: '''Requirements: PM (R), Sponsor (A), Design (C), Eng (I)
Build: Tech Lead (R), PM (A), QA (C), Stakeholders (I)
Launch: PM (R), Sponsor (A), Marketing (C), All (I)''',
        ),
        Refinement(
          label: 'Add "D" for approver if needed',
          output: '''Workstream | R | A | C | I | D
Requirements | PM | Sponsor | Design | Eng | Sponsor
Build | Tech Lead | PM | QA | Stakeholders | PM
Launch | PM | Sponsor | Marketing | All | Sponsor''',
        ),
        Refinement(
          label: 'Risk-first variant',
          output:
              '''Start with highest-risk workstreams and clearly define escalation paths.''',
        ),
      ],
      takeaway: 'RACI reduces rework by making ownership explicit.',
    ),

    // Scenario C: Dependencies Tracker
    const Scenario(
      id: 'mn_l2_dependencies_tracker',
      situation:
          'Tasks block each other. You need a simple dependency list with owners.',
      prompt:
          'Create a dependency tracker: item, depends on, owner, target date, risk.',
      baseOutput: '''Item | Depends on | Owner | Target | Risk''',
      refinements: [
        Refinement(
          label: 'Color words (green/yellow/red)',
          output:
              '''Use color coding: Green (on track), Yellow (at risk), Red (blocked)''',
        ),
        Refinement(
          label: 'Include mitigation',
          output: '''Add mitigation column for each risk identified.''',
        ),
        Refinement(
          label: 'Weekly review line',
          output:
              '''Schedule weekly dependency review meetings to update status and address blockers.''',
        ),
      ],
      takeaway:
          'Small trackers beat giant spreadsheets for day-to-day execution.',
    ),
  ],

  // LESSON 3 — Minutes in minutes
  't5_l3': [
    // Scenario A: 10-Minute Minutes
    const Scenario(
      id: 'mn_l3_ten_minute_minutes',
      situation: 'You must send minutes quickly after a meeting.',
      prompt:
          'Draft concise minutes in 5–7 bullets: decisions first, then action items (owner + due), then key notes.',
      baseOutput: '''Decisions:

Actions (owner + due):

Key Notes:''',
      refinements: [
        Refinement(
          label: 'Even shorter (≤5 bullets)',
          output: '''Decisions, Actions, Notes, Next meeting, Risks.''',
        ),
        Refinement(
          label: 'More formal',
          output:
              '''Meeting minutes with formal language and structured format.''',
        ),
        Refinement(
          label: 'Include risks',
          output: '''Add risk assessment section with mitigation plans.''',
        ),
      ],
      takeaway: 'Decisions and actions are what people actually read.',
    ),

    // Scenario B: One-Paragraph Exec Minutes
    const Scenario(
      id: 'mn_l3_one_paragraph_exec_minutes',
      situation:
          'Leadership wants one paragraph they can paste into their update.',
      prompt:
          'Write one paragraph of minutes that names outcomes, owners, and next date.',
      baseOutput:
          '''In today's meeting we decided X (Owner: A, by DD MMM). Y remains a risk (Owner: B). Next check-in DD MMM.''',
      refinements: [
        Refinement(
          label: 'Bullet variant',
          output: '''Convert to bullet points for easier scanning.''',
        ),
        Refinement(
          label: 'Client-safe wording',
          output: '''Use language appropriate for external stakeholders.''',
        ),
        Refinement(
          label: 'Numbers first',
          output: '''Lead with key metrics and outcomes.''',
        ),
      ],
      takeaway: 'Exec summaries trade detail for speed and clarity.',
    ),

    // Scenario C: Issue/Risk Minutes
    const Scenario(
      id: 'mn_l3_issue_risk_minutes',
      situation: 'A project is wobbly. You need risk-centric minutes.',
      prompt:
          'Produce minutes focused on risks, impact, owner, and mitigation; keep actions separate.',
      baseOutput: '''Risks (impact → owner → mitigation):

Actions:

Next Review:''',
      refinements: [
        Refinement(
          label: 'Matrix layout',
          output: '''Organize risks in a matrix format for easy analysis.''',
        ),
        Refinement(
          label: 'Add probability',
          output: '''Include probability assessment for each risk.''',
        ),
        Refinement(
          label: 'Include contingency',
          output: '''Add contingency plans for high-impact risks.''',
        ),
      ],
      takeaway: 'Risk-first minutes drive the right conversations.',
    ),
  ],

  // LESSON 4 — Follow-up emails
  't5_l4': [
    // Scenario A: Immediate Recap
    const Scenario(
      id: 'mn_l4_immediate_recap',
      situation:
          'Right after a meeting, you want a recap email people will read.',
      prompt:
          'Write a short recap email with decisions, actions (owner + due), and next meeting details.',
      baseOutput: '''Subject: Recap — [Meeting/Date]

Decisions: …

Actions: owner + due

Next: date/time, agenda seed''',
      refinements: [
        Refinement(
          label: 'SMS-length version',
          output: '''Condense to text message length for quick reading.''',
        ),
        Refinement(
          label: 'More formal',
          output: '''Use formal business language and structure.''',
        ),
        Refinement(
          label: 'Client-facing',
          output: '''Format for external client communication.''',
        ),
      ],
      takeaway: 'Short recap emails build momentum and accountability.',
    ),

    // Scenario B: Nudge Unresponsive Owners
    const Scenario(
      id: 'mn_l4_nudge_unresponsive_owners',
      situation: 'Someone hasn\'t moved their action.',
      prompt:
          'Write a polite two-step follow-up to chase an overdue action; step 2 proposes a concrete deadline.',
      baseOutput: '''Step 1: Friendly check-in on [item].

Step 2 (48h later): Propose [next step] by [date/time]; invite alternatives if needed.''',
      refinements: [
        Refinement(
          label: 'Chat-friendly',
          output:
              '''Use casual, friendly language appropriate for team chat.''',
        ),
        Refinement(
          label: 'More formal',
          output: '''Use professional, formal business language.''',
        ),
        Refinement(
          label: 'Escalation path',
          output: '''Include clear escalation steps if no response received.''',
        ),
      ],
      takeaway: 'Polite, specific nudges outperform generic pings.',
    ),

    // Scenario C: Stakeholder Update
    const Scenario(
      id: 'mn_l4_stakeholder_update',
      situation:
          'Stakeholders missed the meeting; they need the gist without noise.',
      prompt:
          'Draft a stakeholder email: headline outcome, top 3 points, decisions, actions, and risks.',
      baseOutput: '''Headline:

Top 3:

Decisions:

Actions:

Risks:''',
      refinements: [
        Refinement(
          label: 'Slide-ready bullets',
          output: '''Format for easy conversion to presentation slides.''',
        ),
        Refinement(
          label: 'Narrative variant',
          output: '''Convert to flowing narrative paragraph format.''',
        ),
        Refinement(
          label: 'Add links section',
          output: '''Include relevant links and resources for stakeholders.''',
        ),
      ],
      takeaway: 'Package the signal; skip the play-by-play.',
    ),
  ],

  // LESSON 5 — Weekly rollups
  't5_l5': [
    // Scenario A: Team Meeting Digest
    const Scenario(
      id: 'mn_l5_team_meeting_digest',
      situation:
          'You ran several meetings this week. You want a single digest for your team.',
      prompt:
          'Create a weekly digest that merges minutes into sections: shipped, decisions, actions due next week, and risks.',
      baseOutput: '''Shipped:

Decisions:

Due Next Week (owner + date):

Risks:''',
      refinements: [
        Refinement(
          label: 'Add emojis',
          output: '''🚀 Shipped, ✅ Decisions, 📅 Due Next Week, ⚠️ Risks''',
        ),
        Refinement(
          label: 'Numbers first',
          output: '''Lead with key metrics and counts.''',
        ),
        Refinement(
          label: 'Include links index',
          output:
              '''Add section with links to all meeting notes and resources.''',
        ),
      ],
      takeaway: 'One digest reduces Slack/Email scatter.',
    ),

    // Scenario B: Metrics + Highlights
    const Scenario(
      id: 'mn_l5_metrics_highlights',
      situation: 'Your manager wants numbers with context.',
      prompt:
          'Make a rollup with 3 metrics, short context lines, and the one story that explains them.',
      baseOutput: '''Metrics: [3 lines]

Context: [one-liners]

Story of the week: [3–4 lines]''',
      refinements: [
        Refinement(
          label: 'Table layout',
          output: '''Organize in table format for easy scanning.''',
        ),
        Refinement(
          label: 'Executive tone',
          output: '''Use executive-level language and focus.''',
        ),
        Refinement(
          label: 'Include trend vs last week',
          output: '''Show week-over-week changes and trends.''',
        ),
      ],
      takeaway: 'Numbers land better with one clear narrative.',
    ),

    // Scenario C: Risk & Mitigation Report
    const Scenario(
      id: 'mn_l5_risk_mitigation_report',
      situation: 'You need a weekly risk view that prompts action.',
      prompt:
          'Produce a brief risk report: risk → impact → owner → mitigation → next check date.',
      baseOutput: '''Risk | Impact | Owner | Mitigation | Next Check''',
      refinements: [
        Refinement(
          label: 'Heat words (low/med/high)',
          output:
              '''Use heat mapping: Low, Medium, High for impact and probability.''',
        ),
        Refinement(
          label: 'Add contingency',
          output: '''Include contingency plans for each risk.''',
        ),
        Refinement(
          label: 'Auto-carry open risks to next week',
          output:
              '''Automatically carry forward unresolved risks to next week's report.''',
        ),
      ],
      takeaway: 'A consistent risk cadence prevents surprises.',
    ),
  ],
};
