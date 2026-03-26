import '../models/scenario.dart';

final Map<String, List<Scenario>> scenariosByLessonT6Personal = {
  // LESSON 1 — Daily To-Do Assistant
  't6_l1': [
    // Scenario A: Daily Planning
    const Scenario(
      id: 'pp_l1_plan_realistic_day',
      situation:
          'You\'ve got a cluttered note of tasks after a chaotic morning. You have 30 minutes to plan a realistic workday with priorities and buffers.',
      prompt:
          'You are my planning assistant. Turn the unordered notes below into a realistic plan for today with priorities, time estimates, and three must-dos. Notes: [paste notes]. Constraints: 8-hour day, include a 60-minute buffer, and leave 30 minutes at the end for admin.',
      baseOutput: '''Today's Plan (example)
• Must-dos (top 3): 
  1) Finish Q3 summary draft (90m)
  2) Respond to hiring emails (30m)
  3) Prepare stakeholder update outline (45m)
• Time blocks:
  09:00–09:15 Inbox triage
  09:15–10:45 Q3 summary draft (deep work)
  10:45–11:15 Break + quick admin
  11:15–11:45 Hiring emails
  11:45–12:30 Stakeholder update outline
  12:30–13:30 Lunch
  13:30–14:30 Meetings / calls
  14:30–15:30 Deep work buffer (use if tasks run long)
  15:30–16:00 Admin & wrap-up
• Risks: Meeting overrun; unclear data for summary
• Mitigations: Time buffer at 14:30; request missing data by 10:00''',
      refinements: [
        Refinement(
          label: 'More concise',
          output:
              '''Must-dos: Q3 summary (90m), hiring emails (30m), stakeholder update (45m).
Blocks: 09:00 triage; 09:15-10:45 summary; 11:15-11:45 hiring; 11:45-12:30 update; 13:30-14:30 calls; 14:30-15:30 buffer; 15:30-16:00 admin.''',
        ),
        Refinement(
          label: 'Friendlier tone',
          output:
              '''Let's make today smooth: pick 3 wins (summary, hiring emails, update). Short bursts, breaks included, and a one-hour buffer so surprises don't derail you. You've got this!''',
        ),
        Refinement(
          label: 'Calendar-ready ranges',
          output: '''09:00–09:15 Inbox triage
09:15–10:45 Deep work — Q3 summary
11:15–11:45 Hiring emails
11:45–12:30 Stakeholder update outline
13:30–14:30 Meetings/calls
14:30–15:30 Buffer (overruns/catch-up)
15:30–16:00 Admin/wrap''',
        ),
      ],
      takeaway:
          'Plan with must-dos, time blocks, and a built-in buffer so overruns don\'t cascade.',
    ),

    // Scenario B: End-of-Day Review
    const Scenario(
      id: 'pp_l1_wrap_today_plan_tomorrow',
      situation:
          'It\'s 16:30 and the day was messy. You want a clean "done list" and a realistic plan for tomorrow.',
      prompt:
          'Rewrite today\'s activity as a \'done list\' with outcomes, then propose a lean plan for tomorrow with three priorities and no more than five tasks.',
      baseOutput: '''Done today:
• Q3 summary draft: sections 1–2 complete
• 9 hiring emails answered; 2 scheduled for tomorrow
• Stakeholder update: outline created
Tomorrow (lean plan):
• Priorities: finalize summary sections 3–4; reply to remaining hiring emails; draft update slides
• Tasks: 
  1) 09:00–10:30 Summary sections 3–4
  2) 10:45–11:15 Hiring replies
  3) 11:15–12:00 Update slides draft
  4) 14:00–14:30 Inbox triage
  5) 15:30–16:00 Admin/wrap''',
      refinements: [
        Refinement(
          label: 'Shorter',
          output: '''Done: summary 1–2; 9 hiring emails; update outline. 
Tomorrow: finish summary 3–4; remaining emails; draft slides. Max 5 tasks.''',
        ),
        Refinement(
          label: 'More formal',
          output:
              '''Completion report attached above. Proposed plan for next business day emphasizes completion of core deliverables and maintains workload discipline (≤5 tasks).''',
        ),
        Refinement(
          label: 'Include risks',
          output:
              '''Risk: summary data dependency; Mitigation: request data by 09:15.
Risk: meeting spillover; Mitigation: keep 15:30–16:00 buffer.''',
        ),
      ],
      takeaway:
          'Close the day with outcomes, then set a lean plan that fits tomorrow\'s capacity.',
    ),

    // Scenario C: Weekly Review
    const Scenario(
      id: 'pp_l1_weekly_review_scoreboard',
      situation:
          'You\'re doing a weekly review. You want to group tasks by theme and decide what to drop, delegate, or defer.',
      prompt:
          'From these notes, group tasks into themes (deliver, decide, delegate). Propose what to drop, what to defer, and a simple scoreboard to track next week.',
      baseOutput: '''Themes:
• Deliver: finalize Q3 summary; draft stakeholder slides; publish quick wins post
• Decide: campaign A vs B; metrics to report
• Delegate: competitor screenshots; schedule interviews
Drop/Defer:
• Drop: revamp whole deck this week (not needed)
• Defer: campaign decision until test results
Scoreboard (next week):
• 3 deliverables shipped; 1 key decision made; 2 tasks delegated/returned''',
      refinements: [
        Refinement(
          label: 'One-pager',
          output:
              '''Deliver / Decide / Delegate. Drop low-value; Defer uncertain. Scoreboard: 3 shipped, 1 decision, 2 delegated.''',
        ),
        Refinement(
          label: 'Add owners',
          output:
              '''Delegate: competitor screenshots (Alex); interview scheduling (Mina). Owner for slides: You; Decision owner: PM.''',
        ),
        Refinement(
          label: 'Add review cadence',
          output:
              '''Midweek check-in Wed 14:00; weekly close Fri 15:30 with scoreboard update.''',
        ),
      ],
      takeaway:
          'Theme your work, then drop/defer decisively; track with a simple scoreboard.',
    ),
  ],

  // LESSON 2 — Agendas & Checklists
  't6_l2': [
    // Scenario A: Team Sync Agenda
    const Scenario(
      id: 'pp_l2_team_sync_agenda',
      situation:
          'You need a crisp, outcome-driven agenda for a 30-minute team sync that often overruns and loses focus.',
      prompt:
          'Create a tight 30-minute team sync agenda with timeboxes, clear outcomes for each segment, and assigned roles (owner, note-taker). Include a short parking lot at the end.',
      baseOutput: '''Team Sync — 30 minutes (outcome-driven)

00:00–03:00 Check-in & wins (Owner: Lead; Notes: Alex)
Outcome: shared context and momentum

03:00–10:00 Blockers round (max 60s each)
Outcome: surfaced impediments and owners assigned

10:00–18:00 Priorities for today/tomorrow
Outcome: top 3 commitments confirmed

18:00–25:00 Decisions needed
Outcome: yes/no or next step + owner + deadline

25:00–28:00 Risks & dependencies
Outcome: risk list updated; mitigation owner named

28:00–30:00 Parking lot & wrap
Outcome: parking items captured; next sync goal set''',
      refinements: [
        Refinement(
          label: 'Even tighter (25-min)',
          output:
              '''Trim to 25 minutes: Check-in 2, Blockers 6, Priorities 7, Decisions 7, Wrap 3. Keep outcomes identical; move risks into Blockers if time runs short.''',
        ),
        Refinement(
          label: 'Remote-friendly tips',
          output:
              '''Add hand-raise rule, chat thread for blockers, and rotate note-taker weekly. Keep cameras on for decisions; async comments welcome before the call.''',
        ),
        Refinement(
          label: 'Checklist format',
          output: '''□ Start on time
□ Wins shared
□ Blockers captured with owners
□ Top 3 priorities confirmed
□ Decisions recorded (owner + date)
□ Risks noted
□ Parking lot updated
□ Next sync goal set''',
        ),
      ],
      takeaway:
          'Timebox each segment, define outcomes and roles, and end with a parking lot to protect focus.',
    ),

    // Scenario B: Project Kickoff Checklist
    const Scenario(
      id: 'pp_l2_project_kickoff_checklist',
      situation:
          'You\'re kicking off a cross-functional project and want a practical checklist to avoid rework and unclear ownership.',
      prompt:
          'Draft a project kickoff checklist with essentials: scope, success criteria, roles/owners, risks, dependencies, timeline, and communication plan.',
      baseOutput: '''Kickoff Checklist

Scope & Success
• Problem statement agreed
• In-scope / out-of-scope written
• Success criteria and metrics defined

People & Roles
• Sponsor, PM/Owner, Tech Lead, Design, QA named
• Stakeholders list and contact channel

Risks & Dependencies
• Top 5 risks captured + mitigations
• External dependencies and SLAs listed

Plan & Cadence
• Milestones + target dates
• Status cadence (weekly), decision cadence
• Channels: updates, docs, escalation path

Ground Rules
• Single source of truth link
• Decision log location
• Change control approach''',
      refinements: [
        Refinement(
          label: 'Minimal essentials',
          output: '''1) Problem + success
2) Owners + stakeholders
3) Risks + dependencies
4) Milestones + cadence
5) Source of truth + decision log''',
        ),
        Refinement(
          label: 'Include RACI sketch',
          output:
              '''Define RACI for major workstreams: Requirements (PM R, Sponsor A), Design (Design R, PM A), Build (Tech Lead R, PM A), QA (QA R, Tech Lead C), Launch (PM R, Sponsor A).''',
        ),
        Refinement(
          label: 'Risk-first variant',
          output:
              '''Start meeting with top 3 risks, assign mitigation owners immediately, then confirm scope and success criteria.''',
        ),
      ],
      takeaway:
          'Kickoffs succeed when scope, success, owners, and risks are explicit—and written down.',
    ),

    // Scenario C: Client Call Agenda
    const Scenario(
      id: 'pp_l2_client_call_status_decisions',
      situation:
          'You have an upcoming 45-minute client call with mixed goals (status + decisions). You need a clear agenda with good questions and decision points.',
      prompt:
          'Create a 45-minute client call agenda that blends status and decision-making. Add key questions to ask and where decisions must be captured.',
      baseOutput: '''Client Call — 45 minutes

00:00–05:00 Rapport & goals check
Questions: Has anything changed since last touchpoint?

05:00–15:00 Status by workstream (timebox 2–3 min each)
Outcome: green/yellow/red; blockers noted

15:00–30:00 Decisions
Questions: Which option best meets success criteria? Any constraints we must respect?
Outcome: decisions captured (owner + date)

30:00–40:00 Risks & next-step alignment
Questions: Are there hidden dependencies? What would block progress this week?
Outcome: mitigations assigned

40:00–45:00 Summary & follow-ups
Outcome: email summary within 2 hours; owners confirmed''',
      refinements: [
        Refinement(
          label: 'Consultative tone',
          output:
              '''Frame questions around client outcomes and constraints; propose 2–3 options with trade-offs before asking for a decision.''',
        ),
        Refinement(
          label: 'Add parking lot',
          output:
              '''Keep a visible parking lot for off-topic items; return in last 5 minutes or carry to next call with owners assigned.''',
        ),
        Refinement(
          label: 'Follow-up email template',
          output: '''Subject: Summary & Decisions — [Project/Date]
Thanks for the call. Decisions: [...]. Next steps: owner + date. Risks: owner + mitigation. Parking: [...]. Next check-in: [date/time].''',
        ),
      ],
      takeaway:
          'Design calls around outcomes: status fast, decide deliberately, and confirm owners in writing.',
    ),
  ],

  // LESSON 3 — Reminders & Nudges
  't6_l3': [
    // Scenario A: Follow-Up Reminders
    const Scenario(
      id: 'pp_l3_paste_ready_followup_reminders',
      situation:
          'You need to create a system of follow-up reminders that can be easily copied and pasted into your calendar or task manager.',
      prompt:
          'Design a follow-up reminder system with templates for different types of tasks (emails, calls, deliverables) that can be easily copied into calendar events.',
      baseOutput: '''Follow-Up Reminder Templates

Email Follow-Ups:
• "Follow up on [topic] email sent [date]"
• "Check if [person] responded to [request]"
• "Send reminder about [deadline] approaching"

Call Follow-Ups:
• "Follow up on [topic] discussed [date]"
• "Send meeting notes and action items"
• "Check on [decision] implementation"

Deliverable Follow-Ups:
• "Check status of [deliverable] due [date]"
• "Follow up on [feedback] implementation"
• "Verify [milestone] completion"''',
      refinements: [
        Refinement(
          label: 'More specific',
          output: '''Email: "Follow up on Q3 budget approval email sent Oct 15"
Call: "Send Q4 planning meeting notes and assign action items"
Deliverable: "Check status of website redesign due Nov 30"''',
        ),
        Refinement(
          label: 'Add timing',
          output:
              '''Email: "Follow up on [topic] email sent [date] - wait 3 business days"
Call: "Send meeting notes within 24 hours"
Deliverable: "Check status 1 week before deadline"''',
        ),
        Refinement(
          label: 'Include escalation',
          output: '''If no response after 2 follow-ups, escalate to manager
If no response after 1 week, schedule a call
If deadline missed, immediately notify stakeholders''',
        ),
      ],
      takeaway:
          'Create reusable reminder templates that can be quickly copied into your calendar for consistent follow-up tracking.',
    ),

    // Scenario B: Weekly Habit Nudges
    const Scenario(
      id: 'pp_l3_weekly_habit_nudges',
      situation:
          'You want to build consistent weekly habits and need a system of gentle nudges that remind you without being overwhelming.',
      prompt:
          'Design a weekly habit nudge system with 3-5 key habits, gentle reminders, and progress tracking that fits into your existing workflow.',
      baseOutput: '''Weekly Habit Nudge System

Core Habits:
• Monday: Plan week priorities (15 min)
• Wednesday: Midweek check-in (10 min)
• Friday: Weekly review & prep (20 min)

Gentle Nudges:
• Calendar alerts: "Time for weekly planning"
• Phone reminders: "Weekly check-in time"
• Desktop sticky: "What's your priority today?"

Progress Tracking:
• Weekly habit score (0-5)
• Monthly habit streak count
• Quarterly habit effectiveness review''',
      refinements: [
        Refinement(
          label: 'Minimal version',
          output: '''3 habits: Monday plan, Wednesday check, Friday review
1 reminder per habit
Simple tracking: done/not done''',
        ),
        Refinement(
          label: 'Detailed version',
          output:
              '''5 habits: Monday plan, Tuesday focus, Wednesday check, Thursday adjust, Friday review
Multiple reminder types: calendar, phone, desktop
Detailed tracking: completion rate, quality score, improvement notes''',
        ),
        Refinement(
          label: 'Team version',
          output:
              '''Shared habits: Monday team planning, Wednesday team check-in, Friday team review
Team reminders and accountability
Shared progress tracking and celebration''',
        ),
      ],
      takeaway:
          'Build consistent habits with gentle, scheduled nudges that fit your workflow and track progress over time.',
    ),

    // Scenario C: Polite Escalation
    const Scenario(
      id: 'pp_l3_two_step_polite_escalation',
      situation:
          'You need to escalate an issue but want to maintain professional relationships and give people a chance to respond first.',
      prompt:
          'Create a two-step escalation process that starts with a polite follow-up and then escalates professionally if no response is received.',
      baseOutput: '''Two-Step Polite Escalation

Step 1: Polite Follow-Up (Day 3)
Subject: "Gentle follow-up on [topic]"
• Acknowledge their busy schedule
• Restate the request clearly
• Offer to help if they're blocked
• Set a new deadline (2-3 days)

Step 2: Professional Escalation (Day 6)
Subject: "Escalating [topic] for resolution"
• Reference previous attempts
• Explain impact of delay
• Copy relevant stakeholders
• Request immediate response or delegation''',
      refinements: [
        Refinement(
          label: 'More diplomatic',
          output:
              '''Step 1: "I know you're busy, but this is important for our timeline"
Step 2: "I need to involve the team to keep this moving forward"''',
        ),
        Refinement(
          label: 'More direct',
          output: '''Step 1: "This is blocking our progress"
Step 2: "I'm escalating to ensure resolution"''',
        ),
        Refinement(
          label: 'Include alternatives',
          output: '''Step 1: "Can you help or should I find someone else?"
Step 2: "I'll assign this to [alternative person] if you can't respond"''',
        ),
      ],
      takeaway:
          'Escalate professionally by giving people a chance to respond first, then involving stakeholders to ensure resolution.',
    ),
  ],

  // LESSON 4 — Time-Saver Templates
  't6_l4': [
    // Scenario A: Status Update Email Template
    const Scenario(
      id: 'pp_l4_status_update_email_template',
      situation:
          'You owe a weekly status email to stakeholders and want a tight template you can reuse.',
      prompt:
          'Draft a reusable weekly status template with sections: headline, accomplishments, risks/blocks, next week, asks. Keep it scannable.',
      baseOutput: '''Subject: [Project] — Weekly Status — [Week of DD MMM]

Headline: one-line outcome

Accomplishments: 3–5 bullets

Risks/Blocks: owner + mitigation

Next Week: 3 priorities

Asks: decisions/data needed + by when''',
      refinements: [
        Refinement(
          label: 'Shorter one-pager',
          output: '''Subject: [Project] Status — [Date]
✅ Done: 3 bullets
⚠️ Blocked: owner + action
📅 Next: 3 priorities
❓ Need: decision + deadline''',
        ),
        Refinement(
          label: 'More formal tone',
          output: '''Subject: [Project] Weekly Status Report — [Date]

Executive Summary: [one-line outcome]

Key Accomplishments: [3-5 bullet points]

Risk Assessment: [owner + mitigation plan]

Strategic Priorities: [3 focus areas for next week]

Resource Requirements: [decisions/data needed + timeline]''',
        ),
        Refinement(
          label: 'Add emoji-friendly variant',
          output: '''Subject: [Project] Status — [Date]
🚀 Wins: 3 bullets
⚠️ Blocks: owner + fix
📋 Next: 3 priorities
❓ Help: what + when''',
        ),
      ],
      takeaway:
          'Re-use a scannable structure so stakeholders grasp progress and asks in under a minute.',
    ),

    // Scenario B: Repeatable Meeting Notes
    const Scenario(
      id: 'pp_l4_repeatable_meeting_notes',
      situation: 'Your meeting notes end up messy and inconsistent.',
      prompt:
          'Create a compact meeting notes template that captures decisions, owners, and due dates first; put discussion below.',
      baseOutput: '''Meeting: [name/date]

Decisions: bullet list (owner + due date)

Next Steps: owner + due

Notes (optional): key points only

Links: source of truth / doc''',
      refinements: [
        Refinement(
          label: 'Action-first (no notes)',
          output: '''Meeting: [name/date]
Decisions: [owner + due date]
Next Steps: [owner + due]
Links: [documents/resources]''',
        ),
        Refinement(
          label: 'Client-facing style',
          output: '''Meeting: [client + date]
Decisions Made: [what we agreed]
Next Actions: [who does what + when]
Follow-up: [when we'll check in]''',
        ),
        Refinement(
          label: 'Include parking lot section',
          output: '''Meeting: [name/date]
Decisions: [owner + due date]
Next Steps: [owner + due]
Parking Lot: [topics for later]
Notes: [key points only]
Links: [source of truth]''',
        ),
      ],
      takeaway:
          'Lead with decisions and owners; move discussion and context below.',
    ),

    // Scenario C: Reusable SOP Checklist
    const Scenario(
      id: 'pp_l4_reusable_sop_checklist',
      situation: 'You repeat the same 5–10 steps for a task each week.',
      prompt:
          'Turn these steps into a simple SOP checklist with verification points and an error-handling note.',
      baseOutput: '''Task SOP

□ Step 1 …

□ Step 2 …

Verify: [what proves success]

If something fails: [first aid + who to ping]''',
      refinements: [
        Refinement(
          label: 'Strict QA variant',
          output: '''Task SOP
□ Step 1 [owner]
□ Step 2 [owner]
□ Step 3 [owner]
QA Check: [specific verification]
If fail: [immediate action + escalation path]''',
        ),
        Refinement(
          label: 'Faster "good-enough" variant',
          output: '''Quick SOP
□ Step 1
□ Step 2
□ Step 3
Done when: [basic success criteria]
If stuck: [quick fix + backup plan]''',
        ),
        Refinement(
          label: 'Add owner per step',
          output: '''Task SOP
□ Step 1 [owner: name]
□ Step 2 [owner: name]
□ Step 3 [owner: name]
Verify: [success criteria]
If fail: [first aid + who to ping]''',
        ),
      ],
      takeaway: 'Checklists cut rework and make hand-offs safer.',
    ),
  ],

  // LESSON 5 — Reflection & Journaling
  't6_l5': [
    // Scenario A: Friday Wins & Lessons
    const Scenario(
      id: 'pp_l5_friday_wins_lessons',
      situation: 'You want a quick weekly reflection to close the loop.',
      prompt:
          'Make a 10-minute Friday reflection with prompts: 3 wins, 1 lesson, 1 improvement, 1 gratitude.',
      baseOutput: '''Wins: …

Lesson: …

Improvement: …

Gratitude: …

Next week focus: top 3''',
      refinements: [
        Refinement(
          label: 'Minimal SMS style',
          output: '''Wins: 3 things
Lesson: 1 thing learned
Improvement: 1 thing to change
Gratitude: 1 person/thing
Next week: top 3 priorities''',
        ),
        Refinement(
          label: 'More coaching tone',
          output: '''What went well this week? (3 wins)
What did you learn? (1 key insight)
What could you improve? (1 area)
What are you grateful for? (1 thing)
What's your focus next week? (top 3)''',
        ),
        Refinement(
          label: 'Add prompt for energy levels',
          output: '''Wins: 3 things
Lesson: 1 thing learned
Improvement: 1 thing to change
Gratitude: 1 person/thing
Energy level: 1-10 (why?)
Next week focus: top 3''',
        ),
      ],
      takeaway:
          'Short reflections improve clarity and morale without a big time cost.',
    ),

    // Scenario B: 1:1 Prep Notes
    const Scenario(
      id: 'pp_l5_one_one_prep_notes',
      situation: 'You show up to 1:1s unprepared.',
      prompt:
          'Generate a 1:1 prep sheet: agenda options, feedback prompts, blockers, asks, career note.',
      baseOutput: '''1:1 Prep — [Name/Date]

Agenda options: …

Feedback for me: …

Blockers/help: …

Asks/decisions: …

Career/growth note: …''',
      refinements: [
        Refinement(
          label: 'Direct report version',
          output: '''1:1 Prep — [Manager Name/Date]
Updates: [what I accomplished]
Challenges: [what I'm stuck on]
Help needed: [specific support]
Growth: [skills I want to develop]
Questions: [decisions I need]''',
        ),
        Refinement(
          label: 'Manager version',
          output: '''1:1 Prep — [Direct Report Name/Date]
Updates: [what they accomplished]
Feedback: [specific praise + improvement]
Development: [growth opportunities]
Support: [how I can help]
Next steps: [clear expectations]''',
        ),
        Refinement(
          label: 'Peer collaboration version',
          output: '''1:1 Prep — [Peer Name/Date]
Collaboration: [what we're working on]
Ideas: [thoughts to share]
Feedback: [input I need]
Support: [how I can help]
Next steps: [action items]''',
        ),
      ],
      takeaway: 'Arrive with a plan and a specific ask to make 1:1s count.',
    ),

    // Scenario C: Monthly Review Snapshot
    const Scenario(
      id: 'pp_l5_monthly_review_snapshot',
      situation:
          'You want a simple snapshot to share progress with your manager.',
      prompt:
          'Create a one-page monthly review: outcomes shipped, metrics moved, lessons, risks, next month focus.',
      baseOutput: '''Outcomes shipped: …

Metrics moved: …

Lessons: …

Risks: …

Next month focus: top 3''',
      refinements: [
        Refinement(
          label: 'Slide-ready bullet layout',
          output: '''Monthly Review — [Month Year]

✅ Outcomes Shipped
• [specific deliverable]
• [specific deliverable]

📊 Metrics Moved
• [metric] from X to Y
• [metric] from X to Y

💡 Lessons Learned
• [key insight]
• [key insight]

⚠️ Risks Identified
• [risk + mitigation]
• [risk + mitigation]

🎯 Next Month Focus
• [priority 1]
• [priority 2]
• [priority 3]''',
        ),
        Refinement(
          label: 'Narrative paragraph layout',
          output: '''Monthly Review — [Month Year]

This month, I successfully delivered [outcomes] which resulted in [metrics impact]. Key learnings include [lessons] that will inform future work. I've identified [risks] and have mitigation plans in place. For next month, my focus will be on [top 3 priorities] to drive continued progress.''',
        ),
        Refinement(
          label: 'Include scoreboard numbers',
          output: '''Monthly Review — [Month Year]

Outcomes shipped: [X] deliverables
Metrics moved: [X] KPIs improved
Lessons: [X] insights captured
Risks: [X] identified + mitigated
Next month focus: top 3 priorities

Score: [X]/5 objectives met''',
        ),
      ],
      takeaway:
          'A lightweight snapshot builds trust and makes prioritization easier.',
    ),
  ],
};
