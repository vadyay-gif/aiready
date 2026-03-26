import '../app_catalog.dart';

/// Track 5 – Decision Structuring (lessons 1–5). Blueprint-aligned with Track 1 (C.O.R.E. learn tabs, 10-piece challenges).
List<LessonDef> buildTrack5Lessons() {
  const refinements = [
    'What Made This Work',
    'Weak vs Strong Prompt',
    'C.O.R.E. Breakdown',
  ];

  return [
    LessonDef(
      title: 'Execution-Ready Plans and Priorities',
      scenarios: [
        ScenarioDef(
          title: 'Prioritize a crowded task list',
          situation:
              'You have eight work items mixed together: some are urgent, some are important, some are neither.\n\nIf you ask AI to “prioritize my tasks” without structure, you usually get a generic list that ignores your real constraints.\n\nThis is why your prompt fails:\n- no clear Context for what “done” means this week\n- no Objective for what the ranking should optimize\n- weak Requirements for how to treat deadlines and dependencies\n- no Expectations for the output format\n\nTo get a usable result, your prompt must define:\n- Context - your role, week constraints, and what you can actually move\n- Objective - rank or group tasks for execution today/this week\n- Requirements - use an urgency/importance lens; name dependencies you know\n- Expectations - grouped output with a one-line rationale per item',
          prompt:
              'I am a product manager with one deep-work block today (2 hours) and scattered meetings.\n\nHere are my 8 tasks: [list].\n\nRank them for execution using urgency and importance. Group into: Do today, Schedule this week, Delegate/defer.\n\nFor each task, add one line explaining the grouping. Do not invent deadlines I did not provide; if a date is missing, mark it [Unknown].',
          output:
              '**Do today**\n- Client escalation (urgent + important; blocks release)\n- Brief exec summary (important; needed before EOD) [Unknown exact time]\n\n**Schedule this week**\n- Roadmap refresh (important, not urgent)\n- Hiring screen review (important; can move if needed)\n\n**Delegate/defer**\n- Reformat slides (low impact)\n- Research competitor blog (interesting, not time-critical)\n\nNotice how the model stayed inside your constraints: it did not invent dates, and it explained each call with one line—Requirements and Expectations doing the real work.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The model followed your frame instead of improvising “productivity advice.”\n- Context anchored role + time reality (2h deep work + meetings)\n- Objective forced ranking for execution, not inspiration\n- Requirements locked urgency/importance and banned invented dates\n- Expectations demanded groups + one-line rationale so you can act',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nPrioritize these tasks\n\nStrong prompt:\nState your role and time constraints. List tasks. Rank using urgency/importance. Group into Do today / This week / Delegate-defer. One-line rationale each. Do not invent deadlines; mark missing dates [Unknown].',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nPM; limited deep work; meeting-heavy day; 8 tasks listed\n\nO - Objective\nRank and group tasks for what to execute now vs later\n\nR - Requirements\nUrgency/importance; honest about unknown dates; no invented deadlines\n\nE - Expectations\nThree groups; one-line rationale per task',
            ),
          ],
          proTip:
              'Productivity prompts fail when you hide constraints. Name your real calendar and ban invented dates—or the model will “help” with fake precision.',
          takeaway:
              'Plans only work when Context and Requirements match your actual week—not an idealized one.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that make this a strong prioritization prompt under real calendar constraints.',
            pieces: [
              PromptPieceDef(
                  text:
                      'State your role and realistic time constraints for the day',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Define the objective: rank/group tasks for execution, not generic advice',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Require urgency/importance logic and explicit output groups',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Ban inventing deadlines; require [Unknown] when a date is missing',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Require a short rationale per task so choices are auditable',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to guess missing deadlines to keep the plan tight',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to “just be productive” without output structure',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for motivational quotes instead of a ranked plan',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI choose which tasks matter without your list',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a 12-month life plan from an 8-task weekly list',
                  isCorrect: false),
            ],
            coachingNote:
                'Strong productivity prompts are still C.O.R.E. prompts: context, objective, constraints, and a defined “done” shape for the plan.',
            assembledPromptExample:
                'I am a PM with one 2-hour deep-work block and meetings today. Here are 8 tasks: [...]. Rank them with urgency/importance. Group into Do today / This week / Delegate-defer. One-line rationale each. Do not invent deadlines; mark missing dates [Unknown].',
            feedbackWhenCorrect:
                'That is operator-grade prioritization: you forced constraints and output shape, so the model cannot hide behind generic advice.',
            resultPolishedPrompt:
                'I am a product manager with one 2-hour deep-work block today and several meetings. Here are my eight tasks: [paste list]. Rank and group them using urgency and importance into: Do today, Schedule this week, and Delegate or defer. Add one line of rationale per task. Do not invent deadlines I did not provide—mark any missing date as [Unknown].',
          ),
        ),
        ScenarioDef(
          title: 'Break a big project into a week-by-week plan',
          situation:
              'You owe a multi-week deliverable, but your brain only sees one giant blob of work.\n\nVague prompts produce vague timelines—usually too optimistic and missing dependencies.\n\nTo get a usable result, your prompt must define:\n- Context - project type, stakeholders, and known fixed dates\n- Objective - a phased plan with milestones you can track\n- Requirements - weekly buckets; explicit risks/unknowns; no invented facts\n- Expectations - table or bullet structure with owners if known',
          prompt:
              'Help me break a 4-week project into weekly milestones.\n\nContext: I am leading an internal analytics dashboard rollout. Fixed date: leadership demo on week 4 Friday.\n\nObjective: produce a week-by-week plan with milestones, dependencies, and a small “risk/unknown” line each week.\n\nRequirements: do not invent team capacity or approvals; mark unknowns [Unknown]. Keep each week to 5 bullets max.',
          output:
              '**Week 1 — Discovery & scope**\n- Milestones: agree metrics, audiences, data sources\n- Dependencies: data access requests submitted\n- Risk/unknown: source-of-truth ownership [Unknown]\n\n**Week 2 — Design & prototype**\n- Milestones: wireframe + sample queries\n- Dependencies: schema documentation\n- Risk/unknown: refresh cadence for data [Unknown]\n\n**Week 3 — Build & QA**\n- Milestones: v1 dashboard + test cases\n- Dependencies: QA sign-off owner [Unknown]\n- Risk/unknown: performance under peak load [Unknown]\n\n**Week 4 — Demo prep**\n- Milestones: dry run, storyline, fallback slides\n- Dependencies: exec calendar alignment [Unknown]\n\nNotice how “risk/unknown” lines protect you from a fairy-tale plan—Expectations + Requirements keep honesty in the schedule.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The plan is usable because the prompt demanded structure *and* uncertainty visibility.\n- Context anchored a real fixed demo date\n- Objective required milestones, not vibes\n- Requirements capped verbosity and banned invented capacity\n- Expectations forced weekly risk/unknown lines',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a project plan\n\nStrong prompt:\n4-week rollout; fixed demo date; weekly milestones with dependencies; risk/unknown per week; max 5 bullets/week; no invented approvals/capacity; mark [Unknown].',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nInternal dashboard rollout; demo fixed week 4 Friday\n\nO - Objective\nWeek-by-week milestones with dependencies\n\nR - Requirements\nNo invented capacity/approvals; unknowns tagged; bullet limit\n\nE - Expectations\nWeekly section + risk/unknown line each week',
            ),
          ],
          proTip:
              'If you do not force unknowns, AI will happily invent staffing and approvals. Mark [Unknown] early—you will thank yourself in week 3.',
          takeaway:
              'Good plans name dependencies and doubts. C.O.R.E. is how you keep both on the page.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that produce a phased plan without fake certainty.',
            pieces: [
              PromptPieceDef(
                  text: 'Name the project context and any fixed external dates',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'State the objective as phased milestones, not a vague timeline',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Require dependencies and explicit unknowns each phase/week',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban inventing capacity, approvals, or team availability',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Define output shape (weekly buckets, bullet limit, concise)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to guarantee on-time delivery no matter what',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit risks so the plan stays “positive”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI add fictional stakeholder names for realism',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a single paragraph with no milestones',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for a Gantt chart image without textual milestones',
                  isCorrect: false),
            ],
            coachingNote:
                'Milestone prompts need the same discipline as writing prompts: explicit structure, explicit unknowns, and a ban on invented facts.',
            assembledPromptExample:
                'Break a 4-week internal dashboard rollout into weekly milestones with dependencies. Fixed demo on week 4 Friday. Each week: max 5 bullets + risk/unknown line. Do not invent capacity or approvals; mark [Unknown].',
            feedbackWhenCorrect:
                'You are planning like someone who ships: milestones plus honest unknowns beat motivational timelines.',
            resultPolishedPrompt:
                'Break a four-week internal analytics dashboard rollout into weekly milestones. Context: I lead the rollout; leadership demo is fixed on Friday of week four. Include dependencies for each week and a short risk/unknown line per week. Use at most five bullets per week. Do not invent team capacity, approvals, or dates—mark anything missing as [Unknown].',
          ),
        ),
        ScenarioDef(
          title: 'Design a realistic day plan around energy and meetings',
          situation:
              'You need a day plan, not a fantasy.\n\nIf you only list tasks, you ignore energy and transitions—and the day collapses by 3pm.\n\nTo get a usable result, your prompt must define:\n- Context - meeting blocks, commute, and energy pattern\n- Objective - a schedule that protects one priority outcome\n- Requirements - include buffers, meal breaks, and a shutdown step\n- Expectations - time-blocked output with explicit “if overrun” rule',
          prompt:
              'Build a time-blocked plan for tomorrow.\n\nContext: meetings 9–10, 12–1, 3–4; I am sharpest mid-morning; I need 30 minutes admin.\n\nObjective: finish a draft requirements doc (90 minutes focused work minimum).\n\nRequirements: include buffers, lunch, and a 15-minute shutdown. If the doc slips, specify what gets cut vs moved.\n\nExpectations: show blocks with start/end times; keep total planned work realistic.',
          output:
              '**Tomorrow — time blocks**\n- 08:30–09:00 Admin triage (inbox + calendar)\n- 10:15–11:45 Deep work: requirements doc (90 min)\n- 11:45–12:00 Buffer / prep for noon call\n- 13:15–14:45 Second doc pass OR split: 45m doc + 45m stakeholder msgs if overrun risk\n- 14:45–15:00 Buffer before 3pm meeting\n- 16:15–16:30 Shutdown: tomorrow’s top 3 + file links\n\n**If overrun rule**\nIf doc not drafted by 11:45: shorten second pass to 45 minutes and move polish to Thursday deep block.\n\nNotice how buffers and an overrun rule make the plan survivable—Requirements + Expectations, not hope.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The plan respects reality: meetings, energy, and failure modes.\n- Context included fixed meetings and energy curve\n- Objective protected 90 minutes on the real priority\n- Requirements forced buffers, lunch, shutdown, and an overrun rule\n- Expectations demanded timed blocks',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nPlan my day\n\nStrong prompt:\nList meetings and energy pattern. Name one priority outcome with minimum focus time. Add buffers, lunch, shutdown, and an explicit if-overrun rule. Time-blocked output.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nKnown meetings; mid-morning peak focus; admin needs\n\nO - Objective\nSchedule that delivers the requirements draft\n\nR - Requirements\nBuffers; lunch; shutdown; overrun rule\n\nE - Expectations\nStart/end times; realistic totals',
            ),
          ],
          proTip:
              'Day plans fail at transitions. If you do not schedule buffers, your calendar lies to you—and AI will happily reinforce the lie.',
          takeaway:
              'Productivity is C.O.R.E. plus physics: time, energy, and buffers are Requirements, not extras.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a day plan executable, not aspirational.',
            pieces: [
              PromptPieceDef(
                  text: 'Include fixed meetings and your energy pattern in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Name one priority outcome with a minimum focus-time requirement',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Require buffers, meals, and a shutdown ritual in Requirements',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Add an explicit if-overrun rule (what cuts or moves)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: time-blocked schedule with start/end times',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to assume you have no meetings tomorrow',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit buffers to “maximize productivity minutes”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI pick your priority without you naming it',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a plan with only tasks and no times',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for hustle culture slogans instead of a schedule',
                  isCorrect: false),
            ],
            coachingNote:
                'Treat calendars like prompts: without Requirements for buffers and failure modes, the output looks neat and breaks instantly.',
            assembledPromptExample:
              'Time-block tomorrow with meetings at [...], peak focus mid-morning, 30m admin. Objective: 90m on requirements doc. Include buffers, lunch, shutdown, overrun rule. Start/end times.',
            feedbackWhenCorrect:
                'You built a plan that survives the real day—most people only prompt for an idealized one.',
            resultPolishedPrompt:
                'Create a time-blocked plan for tomorrow. Context: meetings from 9–10, 12–1, and 3–4; I am sharpest mid-morning; I need 30 minutes for admin. Objective: complete at least 90 minutes of focused work on my requirements doc. Requirements: include buffers between blocks, lunch, and a 15-minute shutdown; if the doc slips, state what gets cut or moved. Output blocks with start and end times and keep the total workload realistic.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Checklists That Hold Up Under Pressure',
      scenarios: [
        ScenarioDef(
          title: 'Checklist for a high-stakes team meeting',
          situation:
              'You are running a one-hour meeting that must end with decisions and owners.\n\nGeneric checklists miss your culture: some teams need async pre-reads, others need live debate time.\n\nTo get a usable result, your prompt must define:\n- Context - meeting purpose, attendees, and decision type\n- Objective - a checklist that guarantees outcomes, not just agenda fluff\n- Requirements - timeboxed sections, decision capture, and follow-up mechanism\n- Expectations - numbered checklist format with “done” criteria',
          prompt:
              'Create a facilitator checklist for a 60-minute decision meeting.\n\nContext: cross-functional launch go/no-go; attendees: PM, Eng lead, Legal, Support lead.\n\nObjective: end with a clear decision, recorded risks, and action items with owners/dates.\n\nRequirements: timebox each segment; include pre-read reminder; ban vague action items.\n\nExpectations: numbered checklist + what “decision captured” means.',
          output:
              '**Facilitator checklist (60 min)**\n1) Pre-read: decision memo link sent 24h early; confirm Legal reviewed [Unknown if sent]\n2) 0–5 Opening: decision question on screen; agree constraints\n3) 5–20 Options: two paths with trade-offs (timebox)\n4) 20–40 Risks: legal/support risks + mitigations (timebox)\n5) 40–50 Decision: go/no-go with explicit criteria met/not met\n6) 50–60 Actions: each item has owner + due date (no “team to follow up”)\n\n**Decision captured means:** one sentence outcome + link/place notes will live.\n\nChecklists work when Expectations define “done”—not when they repeat “discuss.”',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This checklist is executable because it ties time to outcomes.\n- Context named the decision type and roster\n- Objective focused on decision + risks + owned actions\n- Requirements banned vague owners and added pre-read discipline\n- Expectations defined “decision captured” literally',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a meeting checklist\n\nStrong prompt:\n60-minute go/no-go; name attendees; timebox segments; pre-read rule; decision + risks + dated owned actions; define what “decision captured” means.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nGo/no-go launch; PM/Eng/Legal/Support\n\nO - Objective\nDecision, risks, owned follow-ups\n\nR - Requirements\nTimeboxes; pre-read; no vague actions\n\nE - Expectations\nNumbered checklist + definition of captured decision',
            ),
          ],
          proTip:
              'Meetings rot when action items have no owners. Put that in Requirements up front—or AI will mirror your vagueness.',
          takeaway:
              'Checklists are C.O.R.E. in disguise: context, outcome, rules, and a clear finish line.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that produce a facilitator checklist that ends in owned actions.',
            pieces: [
              PromptPieceDef(
                  text: 'State meeting purpose, decision type, and attendees',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective must include decision, risks, and dated action items',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require timeboxed sections so the hour cannot sprawl',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban vague action items without named owners',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: define what “decision captured” means in one sentence',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for a checklist with only icebreakers and team bonding',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI choose attendees and meeting purpose for you',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit timeboxes so the agenda can flex organically',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a paragraph essay instead of a checklist',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to “keep it casual” with no outcomes',
                  isCorrect: false),
            ],
            coachingNote:
                'Meeting prompts fail when Objective is “have a good discussion.” Force decisions, risks, and owned next steps.',
            assembledPromptExample:
                'Facilitator checklist: 60m go/no-go with PM/Eng/Legal/Support. Timebox segments. Pre-read rule. End with decision sentence, risks, action items with owners/dates. Define decision captured.',
            feedbackWhenCorrect:
                'You now generate checklists that produce commitments—most meeting prompts stop at agenda titles.',
            resultPolishedPrompt:
                'Create a facilitator checklist for a 60-minute cross-functional go/no-go meeting (PM, Engineering lead, Legal, Support lead). Timebox each segment, include a pre-read reminder, and end with a clear decision, recorded risks, and action items that each have an owner and due date. Define in one sentence what “decision captured” means. Do not allow vague team-level actions.',
          ),
        ),
        ScenarioDef(
          title: 'Checklist for shipping a small feature safely',
          situation:
              'You are about to ship a small feature, but “small” still breaks things.\n\nA checklist prompt without Requirements becomes generic devops word salad.\n\nTo get a usable result, your prompt must define:\n- Context - feature, environment, and blast radius\n- Objective - reduce release risk with verifiable steps\n- Requirements - include rollback, monitoring, and comms; mark unknowns\n- Expectations - ordered checklist with owners or [Unknown]',
          prompt:
              'Create a release-day checklist for a small UI feature behind a flag.\n\nContext: web app; canary to 5% traffic; support should know before customers.\n\nObjective: verify flag behavior, metrics, and rollback path.\n\nRequirements: include monitoring signals, comms to support, and a rollback step with a decision trigger.\n\nExpectations: ordered checklist; if an owner is unknown, mark [Unknown].',
          output:
              '**Release checklist**\n1) Confirm flag default OFF in prod config (owner: Eng on-call [Unknown])\n2) Enable canary 5%; verify error rate dashboard + latency (signals: 5xx rate, p95) [Unknown dashboard link]\n3) Validate UI strings in staging screenshots match prod\n4) Notify Support with customer-facing summary + known limitations\n5) Rollback trigger: error rate > baseline + X minutes sustained [Unknown baseline]\n6) Rollback: disable flag; verify cache purge step [Unknown]\n7) Post-release: 30-min watch window + incident channel link [Unknown]\n\nStrong prompts admit unknowns—otherwise the checklist pretends your observability exists when it might not.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Checklist items are verifiable because the prompt demanded signals and triggers.\n- Context set environment + canary + support visibility\n- Objective focused on verification + rollback, not “ship fast”\n- Requirements forced monitoring, comms, rollback criteria\n- Expectations allowed [Unknown] instead of fabrication',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a release checklist\n\nStrong prompt:\nFeature behind flag; canary 5%; support notified; monitoring signals; rollback with trigger; ordered steps; owners or [Unknown].',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nWeb UI feature; flag; canary; support in loop\n\nO - Objective\nVerify release + safe rollback\n\nR - Requirements\nMonitoring signals; comms; rollback trigger\n\nE - Expectations\nOrdered checklist; unknown owners marked',
            ),
          ],
          proTip:
              'Release checklists without rollback triggers are wishful thinking. Write the trigger in Requirements—even if the baseline is [Unknown] until you look it up.',
          takeaway:
              'Operational excellence is C.O.R.E.: name the system you are changing and what “safe” means.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a release checklist verifiable and reversible.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe feature, environment, and rollout mechanism',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective should include verification and rollback readiness',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require monitoring signals or metrics to watch',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Include stakeholder comms (e.g., support) when user-visible',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Define rollback with a decision trigger; mark unknown baselines [Unknown]',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to skip rollback to move faster',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a checklist with only motivational affirmations',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent dashboard URLs and on-call names for realism',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit canary/flag details and keep steps generic',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to “just ship it” without checks',
                  isCorrect: false),
            ],
            coachingNote:
                'Shipping prompts need the same honesty as research prompts: unknowns belong in the checklist, not hidden.',
            assembledPromptExample:
                'Release checklist: flag; 5% canary; monitoring signals; support comms; rollback trigger; ordered steps; [Unknown] for missing owners/links.',
            feedbackWhenCorrect:
                'You are prompting releases like someone on-call: signals, triggers, and honesty about gaps.',
            resultPolishedPrompt:
                'Create an ordered release-day checklist for a small web UI feature released behind a feature flag with a 5% canary. Include verification steps, monitoring signals to watch, support communication before customers see changes, and a rollback path with an explicit decision trigger. If an owner, link, or baseline is unknown, mark it [Unknown] instead of inventing it.',
          ),
        ),
        ScenarioDef(
          title: 'Checklist for weekly personal reset',
          situation:
              'You want a weekly reset ritual that actually clears mental clutter.\n\nIf the prompt is mushy, you get “reflect on goals” with no behavior change.\n\nTo get a usable result, your prompt must define:\n- Context - your role and where work leaks into life\n- Objective - close the week and set next week’s top three\n- Requirements - time limits per step; capture commitments somewhere specific\n- Expectations - checklist format + definition of “closed loop”',
          prompt:
              'Create a 45-minute weekly reset checklist.\n\nContext: knowledge worker; inbox and chat create loose ends.\n\nObjective: end with 3 priorities for next week + calendar blocks scheduled.\n\nRequirements: cap each step; include inbox zero-lite (not perfection); include a “waiting-on” scan.\n\nExpectations: numbered checklist; “closed loop” means every waiting-on has a next nudge date or is dropped.',
          output:
              '**Weekly reset (45 min)**\n1) 5m — Capture: brain dump into one list\n2) 10m — Inbox zero-lite: archive obvious noise; star real tasks\n3) 10m — Waiting-on scan: for each item, set nudge date or drop [Unknown tool]\n4) 10m — Calendar reality check: delete/adjust 2 low-value meetings if possible [Unknown authority]\n5) 5m — Top 3 priorities next week (outcome phrased)\n6) 5m — Schedule blocks for top 2 priorities\n\n**Closed loop:** no waiting-on without a next action date or an explicit drop.\n\nPersonal productivity still follows C.O.R.E.: without Expectations, “reset” becomes journaling.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The ritual is actionable because timeboxing and definitions prevent drift.\n- Context named the leak sources (inbox/chat)\n- Objective forced priorities + calendar blocks\n- Requirements limited inbox perfectionism and added waiting-on discipline\n- Expectations defined closed loop concretely',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHelp me reset my week\n\nStrong prompt:\n45m checklist; knowledge worker; inbox zero-lite; waiting-on scan with nudge/drop; top 3 priorities; schedule blocks; define closed loop.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nKnowledge worker; loose ends from inbox/chat\n\nO - Objective\nPriorities + scheduled focus time\n\nR - Requirements\nTime caps; waiting-on handling; realistic inbox step\n\nE - Expectations\nNumbered checklist + closed-loop definition',
            ),
          ],
          proTip:
              'If you do not define “closed loop,” your weekly review becomes emotional homework. Define it like an engineer: nudge date or drop.',
          takeaway:
              'Even personal rituals need Expectations—otherwise AI gives you therapy cosplay.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a weekly reset checklist behavior-changing.',
            pieces: [
              PromptPieceDef(
                  text: 'Name your work context and where tasks typically leak',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: end with top priorities and scheduled focus blocks',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Requirements: time limits per step to keep it realistic',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Include a waiting-on or open-loop scan with a next action rule',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: define “closed loop” in testable language',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for a 6-hour mindfulness retreat as a “quick reset”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit time limits so the ritual can expand endlessly',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to secretly judge your work ethic',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request only inspirational quotes, no steps',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI invent your priorities without your input',
                  isCorrect: false),
            ],
            coachingNote:
                'Personal productivity prompts still need C.O.R.E.: vague “self care” language produces vague outputs.',
            assembledPromptExample:
                '45m weekly reset: inbox zero-lite; waiting-on nudge/drop; top 3 priorities; schedule blocks; define closed loop; timeboxed steps.',
            feedbackWhenCorrect:
                'You built a reset you can execute—tight Objective and defined closed loops beat vague reflection.',
            resultPolishedPrompt:
                'Create a 45-minute weekly reset checklist for a knowledge worker whose tasks leak through email and chat. End with three concrete priorities for next week and calendar blocks for the top two. Timebox each step, use an inbox zero-lite pass (not perfection), run a waiting-on scan where every item gets a nudge date or is explicitly dropped, and define what “closed loop” means in one sentence.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Sustainable Time Back in Your Week',
      scenarios: [
        ScenarioDef(
          title: 'Routine for async standup updates',
          situation:
              'Your team is async across time zones.\n\nDaily standup prompts often produce essays nobody reads.\n\nTo get a usable result, your prompt must define:\n- Context - team norms and where updates post\n- Objective - fast scanning for blockers\n- Requirements - strict format, length limits, and what counts as a blocker\n- Expectations - example skeleton you want copied',
          prompt:
              'Write instructions I can reuse each morning to post an async standup update in Slack.\n\nContext: product squad; blockers should tag the right role.\n\nObjective: readable in 20 seconds.\n\nRequirements: max 5 lines; yesterday/today/blockers format; blocker definition: needs a decision or external dependency.\n\nExpectations: include a filled example with [brackets] for placeholders.',
          output:
              '**Reusable prompt (copy daily)**\nYesterday: [shipped / learned]\nToday: [top 1 outcome + 2 tasks max]\nBlockers: [only if decision/dependency; tag @role]\nRisk: [optional one line]\nETA confidence: [High/Med/Low]\n\n**Example**\nYesterday: shipped search bugfix; learned billing edge case\nToday: finish export beta + write QA checklist\nBlockers: need Legal call on data retention (@legal) [Unknown date]\nRisk: export may slip if QA finds P1\nETA confidence: Med\n\nRoutines become C.O.R.E. templates: once Requirements are strict, quality stops depending on willpower.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The routine is repeatable because the format is constrained.\n- Context named channel and squad shape\n- Objective optimized for scan speed\n- Requirements capped lines and defined real blockers\n- Expectations included a bracketed example for copying',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite my standup\n\nStrong prompt:\nReusable daily instructions; 5 lines max; yesterday/today/blockers; blocker = decision/dependency; tag roles; bracket example.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nAsync product squad; Slack updates\n\nO - Objective\nFast scan + real blocker visibility\n\nR - Requirements\nLine limits; blocker definition; tagging\n\nE - Expectations\nBracketed example template',
            ),
          ],
          proTip:
              'If blockers are undefined, people use standup as venting. Define blocker in Requirements—your future self will read less drama.',
          takeaway:
              'Routines that save time are really Requirements that save attention.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make an async standup routine scannable and honest.',
            pieces: [
              PromptPieceDef(
                  text: 'State where updates go and the team shape (async, roles)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Objective: optimize for fast scanning, not storytelling',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: length limits + fixed fields (yesterday/today/blockers)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Define what counts as a blocker (decision/dependency), not general complaints',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: include a placeholder example to copy daily',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Encourage long paragraphs for “context”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask AI to post fake accomplishments to sound busy',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit blocker rules so anything can be a blocker',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI choose your tasks without your input',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request emojis only, no structured update',
                  isCorrect: false),
            ],
            coachingNote:
                'Great team routines are prompt templates: strict format beats daily improvisation.',
            assembledPromptExample:
                'Reusable Slack standup: 5 lines max; yesterday/today/blockers; blockers only for decisions/deps; tag roles; bracket example.',
            feedbackWhenCorrect:
                'You standardized communication: less reading, faster unblocking—that is real time saved.',
            resultPolishedPrompt:
                'Draft reusable instructions I can paste each morning to post a five-line async standup update in Slack for a product squad. Optimize for a 20-second read. Use yesterday / today / blockers, cap tasks, define blockers only as items needing a decision or external dependency with a tagged role, and include a filled example using bracketed placeholders.',
          ),
        ),
        ScenarioDef(
          title: 'Routine for email triage in two passes',
          situation:
              'Email eats your morning.\n\nIf you ask AI to “handle email” you get unrealistic inbox zero fantasies.\n\nTo get a usable result, your prompt must define:\n- Context - volume, tools, and what must never be auto-sent\n- Objective - two-pass triage within a time box\n- Requirements - classify, draft responses only when safe, escalation rules\n- Expectations - step list with time limits',
          prompt:
              'Design a 30-minute email triage routine.\n\nContext: ~40 emails/day; I use labels; I must not auto-send legal or exec threads.\n\nObjective: clear urgent decisions and park the rest.\n\nRequirements: Pass A (10m) sort into Reply/Waiting/Read later; Pass B (20m) draft replies only for low-risk threads; never auto-send—drafts only.\n\nExpectations: numbered steps; define what “low-risk” means.',
          output:
              '**30-minute triage routine**\nPass A (10m)\n1) Skim subjects/senders; tag Reply today (decision needed), Waiting (others owe you), Later\n2) Star exec/legal; do not draft those in Pass B\n\nPass B (20m)\n3) Reply today: draft max 5 emails; each max 6 sentences\n4) Low-risk definition: internal coordination, no commitments, no policy interpretation\n5) Waiting: add follow-up date note [Unknown tool]\n6) Later: move to weekend bucket\n\n**Hard rule:** drafts only; you send.\n\nC.O.R.E. keeps you from delegating judgment you should not delegate.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The routine is safe and finite because guardrails are explicit.\n- Context included volume and tool reality\n- Objective separated sorting from drafting\n- Requirements banned auto-send and capped drafts\n- Expectations defined low-risk to prevent reckless replies',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHelp with email\n\nStrong prompt:\n30m two-pass triage; sort then draft; drafts only; cap replies; exclude exec/legal; define low-risk.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\n40/day; labels; sensitive threads exist\n\nO - Objective\nClear urgent decisions; park rest\n\nR - Requirements\nTwo passes; draft limits; no auto-send\n\nE - Expectations\nNumbered steps + low-risk definition',
            ),
          ],
          proTip:
              'Never let AI auto-send on professional email. Put “drafts only” in Requirements like a seatbelt—non-negotiable.',
          takeaway:
              'Time-saving routines define what AI is allowed to touch. That is Requirements, not paranoia.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep email triage fast and safe.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe volume, tools, and sensitive thread types',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: time-boxed triage that separates sort vs respond',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: explicit no auto-send; drafts only if used',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Cap number or length of drafted replies to stay realistic',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Define “low-risk” threads that are allowed for draft replies',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to send all replies for speed',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit time limits so you can “finish email properly”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to impersonate you to external clients',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request full inbox zero in 30 minutes guaranteed',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Draft responses to legal questions without review',
                  isCorrect: false),
            ],
            coachingNote:
                'Email workflows need safety Requirements as much as marketing workflows need brand voice.',
            assembledPromptExample:
                '30m email triage: pass A sort; pass B draft max 5 low-risk internal replies; no auto-send; define low-risk; star exec/legal.',
            feedbackWhenCorrect:
                'You separated speed from recklessness—strong productivity hygiene.',
            resultPolishedPrompt:
                'Design a 30-minute two-pass email triage routine for about 40 emails per day using labels. Pass A sorts into reply today, waiting, and read later in 10 minutes. Pass B spends 20 minutes drafting at most five replies, each at most six sentences, only for low-risk internal coordination threads with no policy interpretation and no external commitments. Never auto-send. Star executive and legal threads and do not draft those in Pass B. Define low-risk in one sentence.',
          ),
        ),
        ScenarioDef(
          title: 'Routine for a calm end-of-day shutdown',
          situation:
              'You want to end work without carrying 47 open loops into dinner.\n\nVague “wind down” prompts produce bubble baths, not closure.\n\nTo get a usable result, your prompt must define:\n- Context - where tasks live (tool names optional)\n- Objective - close loops or schedule them honestly\n- Requirements - time box; capture; set tomorrow starter task\n- Expectations - checklist with a hard stop rule',
          prompt:
              'Create a 15-minute shutdown routine.\n\nContext: tasks live in a task tool + email flags.\n\nObjective: leave with one “start tomorrow” task chosen.\n\nRequirements: 5 steps max; each step has a minute budget; include capturing stray thoughts.\n\nExpectations: include a hard stop rule if time runs out (what gets dropped).',
          output:
              '**Shutdown (15m)**\n1) 3m — Scan task list: pick tomorrow starter (single task)\n2) 3m — Email flags: convert to tasks or snooze with date\n3) 4m — Capture stray thoughts into inbox [Unknown tool]\n4) 3m — Calendar glance: move prep items if needed\n5) 2m — Write first line of tomorrow starter in notes\n\n**Hard stop:** if time hits 15m mid-step, stop at end of current minute; drop calendar glance first.\n\nShutdown routines work when Expectations include a triage rule—otherwise you “almost finish” forever.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Closure is engineered: minute budgets + a hard stop rule.\n- Context named where work lives\n- Objective forced a single tomorrow starter\n- Requirements limited steps and added capture\n- Expectations defined what drops if time runs out',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHelp me wind down\n\nStrong prompt:\n15m shutdown; pick tomorrow starter; capture stray thoughts; minute budgets; hard stop drop order.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nTasks + email flags; end of day\n\nO - Objective\nClose loops; choose tomorrow start\n\nR - Requirements\n5 steps; per-step minutes; capture\n\nE - Expectations\nHard stop rule if time expires',
            ),
          ],
          proTip:
              'Hard stop rules feel harsh; they are kindness. Without them, shutdown becomes another perfectionism loop.',
          takeaway:
              'The best routines include an Expectation for what you will not finish.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a shutdown routine actually end.',
            pieces: [
              PromptPieceDef(
                  text: 'Name where tasks and loose ends currently live',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: pick one clear “start tomorrow” task as an output',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Requirements: time box the whole routine and each step',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Include capturing stray thoughts so they do not loop overnight',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: hard stop rule with explicit drop priority',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for a 90-minute spa routine instead of shutdown',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit time limits to allow “natural closure”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to shame you for unfinished work',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request 20 new tasks to add before bed',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI pick tomorrow’s priorities without your review',
                  isCorrect: false),
            ],
            coachingNote:
                'Shutdown is a micro-prompt: tight Objective, tight time, explicit trade-offs.',
            assembledPromptExample:
                '15m shutdown: minute-budget steps; pick tomorrow starter; capture thoughts; hard stop drop order.',
            feedbackWhenCorrect:
                'You ended the day with a decision, not a fog—this is how routines compound.',
            resultPolishedPrompt:
                'Create a 15-minute end-of-day shutdown checklist with at most five steps, each with a minute budget, using my task list and email flags. The objective is to pick exactly one “start tomorrow” task, capture stray thoughts into an inbox, and include a hard-stop rule that states what to skip first if time runs out.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Clear Decisions From Messy Inputs',
      scenarios: [
        ScenarioDef(
          title: 'Executive summary from a long document',
          situation:
              'You have a 12-page document and leadership wants “the gist” without errors.\n\nSummaries fail when the prompt does not define audience, decisions, and forbidden inventions.\n\nTo get a usable result, your prompt must define:\n- Context - doc purpose and who reads the summary\n- Objective - support a specific decision or alignment moment\n- Requirements - fidelity rules; mark unknowns; length limit\n- Expectations - bullet structure + explicit “not in doc” section if needed',
          prompt:
              'Summarize a long internal doc for an exec read in 5 bullets + 1 decision line.\n\nContext: pricing committee pre-read; doc mixes proposals and historical notes.\n\nObjective: help VP decide between two pricing models next meeting.\n\nRequirements: do not invent numbers; if a number is not in the doc, write [Not in doc]; max 120 words total.\n\nExpectations: bullets must be claims the doc actually supports; add “Open questions” with max 2 items.',
          output:
              '**5 bullets**\n- Two models under review: usage-based vs seat-based (trade-offs described)\n- Customer impact story is mixed; enterprise pushback noted on usage-based\n- Billing operations complexity higher for usage-based in doc’s assessment\n- Sales motion changes required either way; training cost mentioned qualitatively [Not in doc for dollar amounts]\n- Legal/privacy considerations referenced but not detailed in excerpt\n\n**Decision line**\nVP should choose based on operational readiness vs revenue predictability trade-off described in sections 3–4.\n\n**Open questions**\n- What baseline churn assumption is approved? [Not in doc]\n- What timeline is non-negotiable? [Not in doc]\n\nFidelity Requirements turn summarization from creativity into accountability.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The summary is trustworthy because invention is banned and structure is tight.\n- Context named the meeting and reader\n- Objective tied bullets to a real decision\n- Requirements enforced [Not in doc] and word cap\n- Expectations separated supported claims vs open questions',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarize this doc\n\nStrong prompt:\nExec pricing pre-read; 5 bullets + decision line; no invented numbers; [Not in doc]; word cap; open questions max 2.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\n12-page internal pricing doc; VP audience\n\nO - Objective\nSupport model decision\n\nR - Requirements\nFidelity; unknowns labeled; length limit\n\nE - Expectations\nBullets + decision line + open questions',
            ),
          ],
          proTip:
              'If you do not ban invented numbers, AI will “help” with plausible fiction. Use [Not in doc] like a safety rail.',
          takeaway:
              'Fast organization is still C.O.R.E.: decide the reader, the decision, and the fidelity rules first.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep summarization faithful and decision-useful.',
            pieces: [
              PromptPieceDef(
                  text: 'Name the audience and why they are reading (decision context)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective tied to a specific decision or alignment outcome',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: explicit fidelity rule for missing numbers/facts',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Length or format limits so the summary stays scannable',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: separate supported claims vs open questions',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to add plausible metrics to strengthen the story',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a 5-page rewrite “for completeness”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit the decision context so it stays generic',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to hide uncomfortable risks from leadership',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI invent citations to sound rigorous',
                  isCorrect: false),
            ],
            coachingNote:
                'Summaries are prompts: without Requirements, the model optimizes for fluency—not accuracy.',
            assembledPromptExample:
                'Exec summary: 5 bullets + decision line; pricing committee; ban invented numbers; [Not in doc]; 120 words; max 2 open questions.',
            feedbackWhenCorrect:
                'You prioritized fidelity over polish—this is how AI stays trustworthy in real work.',
            resultPolishedPrompt:
                'Summarize a long internal document for a VP pricing committee pre-read as five bullets plus one decision line, maximum 120 words. Do not invent numbers or facts; label anything missing from the document as [Not in doc]. Include at most two open questions. Each bullet must reflect claims actually supported by the document.',
          ),
        ),
        ScenarioDef(
          title: 'Turn messy notes into decisions and actions',
          situation:
              'After a working session, your notes are half sentences and arrows.\n\nIf you ask AI to “clean notes,” you lose decisions.\n\nTo get a usable result, your prompt must define:\n- Context - meeting type and attendees (if known)\n- Objective - extract decisions, actions, and open questions\n- Requirements - do not invent decisions; mark unclear items [Unclear]\n- Expectations - structured output with owners/dates or [Unknown]',
          prompt:
              'Transform messy meeting notes into a structured recap.\n\nContext: roadmap working session; notes are bullets and shorthand.\n\nObjective: produce Decisions / Actions / Open questions.\n\nRequirements: if a decision is not explicit in notes, do not infer it—put it in Open questions as [Unclear].\n\nExpectations: actions must have owner + due date or [Unknown].',
          output:
              '**Decisions**\n- Prioritize onboarding reliability over new integrations this quarter (explicit in notes)\n\n**Actions**\n- Write success metrics doc — Owner: PM [Unknown] — Due: [Unknown]\n- Schedule load test — Owner: Eng [Unknown] — Due: next Friday [Unclear if agreed]\n\n**Open questions**\n- Are we committing to deprecating legacy auth this quarter? [Unclear]\n- Budget for extra QA hours? [Unclear]\n\nOrganizing information is not “pretty formatting.” It is protecting integrity with Requirements.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The recap is trustworthy because inference is controlled.\n- Context named the session type\n- Objective separated decisions vs actions vs questions\n- Requirements banned inferring decisions from tone\n- Expectations forced owners/dates or explicit unknowns',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nClean up these notes\n\nStrong prompt:\nDecisions/actions/open questions; no inferred decisions; [Unclear]; owners/dates or [Unknown].',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nRoadmap session; messy notes\n\nO - Objective\nExtract decisions and next steps honestly\n\nR - Requirements\nNo invented decisions; mark unclear\n\nE - Expectations\nStructured sections + owner/date or unknown',
            ),
          ],
          proTip:
              'Notes cleanup is where AI hallucination hurts most. Ban inference on decisions—force [Unclear] instead.',
          takeaway:
              'Fast organization needs strict Requirements: clarity is not the same as confidence.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that convert messy notes into an honest recap.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe the meeting context and note quality',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: extract decisions, actions, and open questions separately',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: do not infer decisions that are not explicit; use [Unclear]',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Actions need owners and dates or explicit [Unknown]',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: fixed section headings and consistent formatting',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to invent decisions so the recap looks complete',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Merge everything into one narrative paragraph',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit open questions to keep the doc confident',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to assign owners randomly for speed',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request jokes between sections for readability',
                  isCorrect: false),
            ],
            coachingNote:
                'Meeting recaps are liability surfaces. C.O.R.E. Requirements reduce “helpful” fabrication.',
            assembledPromptExample:
                'Notes → Decisions/Actions/Open questions; no inferred decisions; [Unclear]; owner+due or [Unknown].',
            feedbackWhenCorrect:
                'You organized information without inventing commitments—this is professional-grade prompting.',
            resultPolishedPrompt:
                'Turn messy roadmap working-session notes into a structured recap with three sections: Decisions, Actions, and Open questions. Do not infer decisions that are not explicit in the notes—mark ambiguity as [Unclear]. Every action must list an owner and due date, or use [Unknown].',
          ),
        ),
        ScenarioDef(
          title: 'Naming scheme for files and folders',
          situation:
              'Your shared drive is becoming unsearchable.\n\nNaming prompts without rules become “use clear names,” which helps nobody.\n\nTo get a usable result, your prompt must define:\n- Context - team, asset types, and tools\n- Objective - searchable names + stable folder logic\n- Requirements - characters allowed, date format, version rules\n- Expectations - examples for 5 common file types',
          prompt:
              'Propose a simple naming convention for a marketing + product shared drive.\n\nContext: campaigns, specs, and research PDFs mixed together.\n\nObjective: make search reliable for non-experts.\n\nRequirements: YYYY-MM-DD dates; no spaces; use hyphens; version suffix _v01; illegal characters banned.\n\nExpectations: show 5 example filenames + folder top-level structure (max 6 folders).',
          output:
              '**Filename pattern**\n`<YYYY-MM-DD>_<team>-<type>-<short-slug>_v01.ext`\n\n**Examples**\n- 2025-03-10_mkt-campaign-spring-launch_v01.pdf\n- 2025-03-12_prd-feature-export-beta_v03.docx\n- 2025-03-15_research-competitor-pricing_v01.pdf\n- 2025-03-18_legal-terms-update-summary_v01.pdf\n- 2025-03-20_mkt-web-copy-homepage-hero_v02.docx\n\n**Top-level folders (6)**\n00_Inbox\n10_Active_Campaigns\n20_Product_Specs\n30_Research\n40_Legal_Compliance\n90_Archive\n\nNaming is Requirements work: without rules, “clear” means everyone’s private habit.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Searchability came from explicit mechanical rules + examples.\n- Context described mixed content types\n- Objective targeted non-expert search success\n- Requirements pinned date format and versioning\n- Expectations demanded concrete examples and bounded folder count',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSuggest better file names\n\nStrong prompt:\nShared drive; marketing+product; date format; no spaces; hyphen rules; _v01; 5 examples; <=6 top folders.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMixed marketing/product assets in shared drive\n\nO - Objective\nReliable search for generalists\n\nR - Requirements\nDate format; charset rules; version suffix\n\nE - Expectations\n5 filename examples + folder structure',
            ),
          ],
          proTip:
              'Examples beat adjectives. One good filename pattern teaches more than ten synonyms for “organized.”',
          takeaway:
              'Information architecture prompts need Requirements like engineering prompts: explicit, testable rules.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that produce a naming system people will actually follow.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe what kinds of files live in the system',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: searchability for people who do not know your jargon',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: date format, separators, versioning, banned characters',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: concrete example filenames for common cases',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Bound folder depth/count so structure stays maintainable',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Tell AI to use spaces and emojis for personality',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for “whatever feels intuitive” instead of rules',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request 40 top-level folders for precision',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI rename confidential files without guardrails',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit examples to keep the answer short',
                  isCorrect: false),
            ],
            coachingNote:
                'Conventions are prompts: rules + examples + limits. Without all three, adoption dies.',
            assembledPromptExample:
                'Naming convention: YYYY-MM-DD; hyphens; no spaces; _v01; 5 examples; <=6 top folders; marketing+product drive.',
            feedbackWhenCorrect:
                'You built a spec someone can follow—organization without Requirements is just vibes.',
            resultPolishedPrompt:
                'Propose a shared-drive naming convention for mixed marketing and product assets. Requirements: ISO-style dates (YYYY-MM-DD), no spaces, hyphens between segments, a _v01 version suffix, and banned ambiguous characters. Include five realistic example filenames and a top-level folder structure with at most six folders optimized for non-expert search.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Reusable Quality for Handoffs and Updates',
      skillRefocusLine:
          "This time, you're applying the same skill in a different context:",
      scenarios: [
        ScenarioDef(
          title: 'Template for weekly status updates',
          situation:
              'You send a weekly status update to leadership.\n\nWithout a template prompt, every week reinvents structure and you forget risks.\n\nTo get a usable result, your prompt must define:\n- Context - role, team, and what leaders care about\n- Objective - progress, risks, and asks in one screen\n- Requirements - word limits per section; honest risk language\n- Expectations - paste-ready template with [brackets]',
          prompt:
              'Create a reusable weekly status template for an engineering manager.\n\nContext: two squads; leaders care about delivery, risk, and hiring.\n\nObjective: show progress, blockers/risks, and asks.\n\nRequirements: 200 words max total; risks must include impact + mitigation or [Unknown].\n\nExpectations: provide a bracketed template + one filled fictional example clearly labeled EXAMPLE.',
          output:
              '**Template (copy weekly)**\nSubject: Weekly status — [Team] — [YYYY-MM-DD]\n\nShipped: [3 bullets max]\nIn flight: [top 3 initiatives + ETA confidence High/Med/Low]\nMetrics: [only if changed; else “no material change”]\nRisks: [max 2; each: impact + mitigation or [Unknown]]\nAsks: [decisions needed + owner suggestion]\nNext week focus: [one sentence]\n\n**EXAMPLE (fictional)**\nShipped: patch for export timeout; CI stability fix\nIn flight: permissions refactor (Med); billing dashboard (High)\nMetrics: no material change\nRisks: QA capacity tight — impact: release slip — mitigation: cut scope on non-core bugs [Unknown owner]\nAsks: Approve 1-week vendor eval extension — suggest owner: CTO\n\nTemplates are C.O.R.E. artifacts: once set, your weeks stop improvising.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The template is reusable because limits and risk rules are explicit.\n- Context named audience concerns\n- Objective balanced shipped, in-flight, risks, asks\n- Requirements capped words and forced mitigation discipline\n- Expectations separated bracket template from labeled example',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a status update\n\nStrong prompt:\nEM weekly template; word cap; risk=impact+mitigation/[Unknown]; bracket template + labeled fictional example.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nEM; two squads; exec readers\n\nO - Objective\nProgress + risks + asks\n\nR - Requirements\nWord limit; honest risk format\n\nE - Expectations\nBracket template + EXAMPLE',
            ),
          ],
          proTip:
              'Always label fictional examples EXAMPLE—otherwise they leak into real communications as “truth.”',
          takeaway:
              'Reusable templates are Expectations you only have to design once.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a status template safe to reuse every week.',
            pieces: [
              PromptPieceDef(
                  text: 'Name role, audience, and what they optimize for',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: cover progress, risks, and decisions/asks',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: per-section or total limits; risk includes impact + mitigation or unknown',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: bracketed paste-ready template format',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Include a clearly labeled fictional example separate from the template',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for unlimited length “for transparency”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit risks so leadership stays comfortable',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use a real person’s name in the example without labeling fiction',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to invent shipped items you did not provide',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request only emojis instead of structured sections',
                  isCorrect: false),
            ],
            coachingNote:
                'Template prompts should be boring in the best way: predictable structure, explicit limits, honest unknowns.',
            assembledPromptExample:
                'EM status template: 200 words max; risks w/ mitigation/[Unknown]; bracket template; labeled EXAMPLE.',
            feedbackWhenCorrect:
                'You made status updates repeatable without making them reckless—this is template mastery.',
            resultPolishedPrompt:
                'Create a reusable weekly status template for an engineering manager leading two squads, aimed at leadership who care about delivery, risk, and hiring. Cap the entire update at 200 words. Include sections for shipped work, in-flight initiatives with ETA confidence, metrics only if materially changed, at most two risks each with impact and mitigation or [Unknown], and explicit asks. Provide a bracketed paste-ready template plus one clearly labeled fictional EXAMPLE.',
          ),
        ),
        ScenarioDef(
          title: 'Template for handing work to another owner',
          situation:
              'Handoffs fail when context lives in someone’s head.\n\nYour template prompt must force artifacts, access, and next steps.\n\nTo get a usable result, your prompt must define:\n- Context - type of work and systems involved\n- Objective - enable the new owner to continue without you\n- Requirements - links/checklists; decisions already made; open questions\n- Expectations - one-page max; bracket template',
          prompt:
              'Create a handoff template for transitioning a feature owner.\n\nContext: SaaS product; work spans tickets, docs, and analytics.\n\nObjective: new owner can run standups and make tradeoff calls without re-discovery.\n\nRequirements: include sections for goal, current state, decisions, risks, links, and open questions; ban vague “sync with me.”\n\nExpectations: one page max; bracket template + short guidance when to use each section.',
          output:
              '**Handoff template**\nFeature: [name]\nNew owner: [name] / Old owner: [name] / Handoff date: [date]\nGoal: [customer outcome sentence]\nCurrent state: [what ships today; what is partial]\nKey decisions already made: [bullet list]\nOpen questions: [bullets; owners if known]\nRisks/constraints: [max 3]\nLinks: [doc, board, dashboard, on-call]\nNext 7 days: [3 concrete actions]\nNot transferring: [explicit exclusions]\n\n**Guidance**\nUse Open questions for anything that would otherwise require “quick syncs.”\n\nHandoffs are polite when Expectations ban mystery dependencies.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The template reduces re-discovery by requiring artifacts and decisions.\n- Context named systems involved\n- Objective focused on autonomous continuation\n- Requirements banned vague sync culture\n- Expectations limited length and structured links/next steps',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a handoff doc\n\nStrong prompt:\nFeature owner handoff; goal/state/decisions/risks/links/open questions; ban vague sync; 1 page; bracket template + guidance.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSaaS feature; tickets/docs/analytics\n\nO - Objective\nNew owner can operate without re-discovery\n\nR - Requirements\nExplicit sections; no “sync with me”\n\nE - Expectations\nOne-page bracket template + guidance',
            ),
          ],
          proTip:
              'If your handoff template does not have “decisions already made,” you are exporting anxiety, not work.',
          takeaway:
              'Templates turn soft knowledge into Requirements the next person can execute.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a handoff template complete.',
            pieces: [
              PromptPieceDef(
                  text: 'Name systems and the type of work being transferred',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: new owner can continue without re-discovery',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: capture decisions, links, risks, and open questions explicitly',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban vague “let’s sync” as a substitute for written context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: concise one-page bracket template + usage guidance',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Encourage keeping secrets to preserve team politics',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit links so the doc stays “timeless”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for a 10-page essay for thoroughness',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to guess passwords and access details',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Leave ownership blank so any reader can claim it',
                  isCorrect: false),
            ],
            coachingNote:
                'Handoff prompts are operational C.O.R.E.: the output should remove ambiguity, not add polish.',
            assembledPromptExample:
                'Handoff template: goal/state/decisions/risks/links/open questions/next 7 days; no vague sync; 1 page; brackets.',
            feedbackWhenCorrect:
                'You standardized knowledge transfer—fewer meetings, fewer dropped balls.',
            resultPolishedPrompt:
                'Create a one-page handoff template for transferring ownership of a SaaS feature across tickets, docs, and analytics. Include sections for goal, current state, decisions already made, open questions with suggested owners when known, risks, links, next seven days’ actions, and explicit non-transferred scope. Ban vague “sync with me” handoffs. Use bracketed placeholders and short guidance for when to use each section.',
          ),
        ),
        ScenarioDef(
          title: 'Template for requesting a focused working session',
          situation:
              'You need someone’s time, but “quick chat” creates churn.\n\nA good request template states decisions, prep, and outcomes.\n\nTo get a usable result, your prompt must define:\n- Context - relationship and urgency\n- Objective - one decision or output from the session\n- Requirements - duration, agenda, pre-read, and what “done” means\n- Expectations - message template with brackets',
          prompt:
              'Create a reusable calendar invite + message template for requesting a 25-minute decision session.\n\nContext: cross-functional partner busy with back-to-back meetings.\n\nObjective: exit with an approved approach, not “more discussion.”\n\nRequirements: max 5 agenda bullets; include pre-read link placeholder; define done as a chosen option A/B/C.\n\nExpectations: bracket template for email/Slack + invite fields.',
          output:
              '**Slack/email template**\nHi [Name] — can we book 25 minutes to decide [decision]?\nPre-read (5 min): [link]\nGoal: pick one approach (A/B/C) by end of session.\nAgenda:\n- Context (3m)\n- Options A/B/C trade-offs (12m)\n- Decision + owners/next steps (10m)\nDone means: recorded decision + action items with dates.\nProposed times: [2 options] (adjust if needed)\n\n**Invite fields**\nTitle: Decision — [topic] (A/B/C)\nDuration: 25m\nNotes: link pre-read; decision required\n\nMeetings shrink when Expectations define “done” before they start.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The template reduces churn by forcing a decision product.\n- Context respected partner overload\n- Objective required choosing among options\n- Requirements limited agenda length and added pre-read\n- Expectations separated comms text vs invite metadata',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a meeting invite\n\nStrong prompt:\n25m decision session; pre-read; <=5 agenda bullets; done = pick A/B/C + actions; bracket template.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nBusy cross-functional partner\n\nO - Objective\nExit with a chosen approach\n\nR - Requirements\nTimebox; pre-read; agenda cap; decision rule\n\nE - Expectations\nBracket message + invite field guidance',
            ),
          ],
          proTip:
              'If your meeting template does not define “done,” you scheduled a feelings seminar. Options A/B/C fix that.',
          takeaway:
              'Respectful scheduling is C.O.R.E.: context, outcome, constraints, and a clear finish.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a meeting request decision-oriented.',
            pieces: [
              PromptPieceDef(
                  text: 'Acknowledge the other person’s time pressure in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: end with a concrete decision between named options',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: short agenda, pre-read, and timeboxed sections',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Define done: chosen option plus owners and next steps',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: paste-ready bracket template + invite fields',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for a 2-hour meeting “to be safe”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit agenda so conversation can flow naturally',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a meeting with no intended outcome',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to pressure the person with false urgency',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Hide the decision topic to keep the invite mysterious',
                  isCorrect: false),
            ],
            coachingNote:
                'Calendar prompts are productivity prompts: optimize for decisions per minute, not politeness per paragraph.',
            assembledPromptExample:
                '25m decision session template; pre-read; agenda<=5; done=A/B/C + actions; bracket message + invite fields.',
            feedbackWhenCorrect:
                'You are reclaiming calendar time by prompting meetings like products—with a defined ship artifact.',
            resultPolishedPrompt:
                'Create a reusable 25-minute decision-session request template (Slack/email plus calendar invite notes) for a busy cross-functional partner. Include a five-minute pre-read link placeholder, at most five agenda bullets with time hints, explicit options A/B/C, and a definition of done: a recorded decision plus action items with owners. Provide bracketed placeholders and two proposed time options.',
          ),
        ),
      ],
    ),
  ];
}
