import 'package:flutter/material.dart';
import '../app_catalog.dart';

const TrackDef track6MeetingsAndNotes = TrackDef(
  title: "Meetings & Notes with AI",
  icon: Icons.event_note_outlined,
  lessons: [
    // Lesson 1 — Capture everything
    LessonDef(
      title: "Capture everything",
      scenarios: [
        ScenarioDef(
          title: "Capture brainstorming session notes",
          situation:
              "Your team had a fast brainstorm with overlapping speakers. You need structured notes that capture ideas, decisions, and parking-lot items without losing the flow.",
          prompt:
              "From rough notes, produce structured brainstorm notes: goals, top ideas (5), decisions, parking lot.",
          output:
              "Goal: name the problem and a success metric\nTop ideas (5): shortlist bolded; cluster by theme\nDecisions: call out owners when made\nParking lot: capture good but out-of-scope items\nNext: pick 2 ideas to test this week",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Goal; 5 ideas (clustered); decisions w/ owners; parking lot; next two tests."),
            ResponseVariant(
                label: "More formal",
                response:
                    "State goal and metric; list five clustered ideas; enumerate decisions with owners; maintain a parking-lot section; end with two near-term tests."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Goal: reduce handoff time (<= 24h). Ideas: template, SLA bot, auto-assign, dashboard, weekly review. Decision: try template + auto-assign (Ops/Eng). Parking lot: CRM swap. Next: test template + auto-assign this week."),
          ],
          proTip:
              "Specify sections and counts so messy notes become a usable outline.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: act as a meeting scribe", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: sections for goal, ideas(5), decisions, parking lot",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: cluster ideas by theme", isCorrect: true),
              PromptPieceDef(
                  text: "Input: paste the rough notes", isCorrect: true),
              PromptPieceDef(
                  text: "Be creative and invent new ideas", isCorrect: false),
              PromptPieceDef(
                  text: "Skip owners under decisions", isCorrect: false),
            ],
            coachingNote:
                "Role + sections + constraints turn chaotic notes into a repeatable structure.",
            assembledPromptExample:
                "Act as a meeting scribe. Return goal, 5 clustered ideas, decisions with owners, and a parking lot. Input: <rough notes>.",
          ),
          takeaway:
              "Structure messy input into fixed sections for reliability.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Capture client meeting transcript",
          situation:
              "You recorded a client call. You need a clean summary with objectives, problems, constraints, decisions, and next steps your team can act on.",
          prompt:
              "Summarize a client meeting: objectives, problems, constraints, decisions, next steps with owners/dates.",
          output:
              "Objectives: restate the client's goals\nProblems: list pain points using client language\nConstraints: budget, timeline, compliance\nDecisions: note what was agreed\nNext steps: owners + dates",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Objectives; problems; constraints; decisions; next steps (owner/date)."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide objectives, articulated problems, explicit constraints, decisions recorded, and next steps with owners and dates."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Clear headings: goals, what hurts, limits, what we agreed, who does what by when."),
          ],
          proTip:
              "Mirror client wording for problems to keep summaries grounded.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: create client-call notes", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: objectives, problems, constraints, decisions, next steps",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include owners and dates for next steps",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: transcript or bullet notes", isCorrect: true),
              PromptPieceDef(
                  text: "Replace client wording with generic terms",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Skip decisions for brevity", isCorrect: false),
            ],
            coachingNote:
                "Capturing wording, limits, and decisions produces notes the team can trust.",
            assembledPromptExample:
                "Create client-call notes: objectives, problems, constraints, decisions, and next steps with owners/dates. Use: <transcript/notes>.",
          ),
          takeaway: "Mirror language, record decisions, assign owners.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Capture daily standup notes",
          situation:
              "You host a daily standup across time zones. You want consistent notes: what was done, what's next, and blockers with owners.",
          prompt:
              "From standup updates, produce notes: yesterday, today, blockers (owner + ask).",
          output:
              "Yesterday: key tasks done by person\nToday: one priority each\nBlockers: owner, impact, ask\nRisks: note any dates at risk\nFollow-ups: list side threads to resolve",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Yesterday, Today, Blockers (owner/ask), Risks, Follow-ups."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Summarize accomplishments, planned work, blockers with owners and asks, noted risks, and follow-up threads."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Yesterday: API 80% (J). Today: ship auth bug (K). Blocker: vendor key pending (L, ask Finance). Risk: mobile date slips. Follow-up: perf review thread."),
          ],
          proTip: "Use fixed slots and one priority to keep standups lean.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: summarize a daily standup", isCorrect: true),
              PromptPieceDef(
                  text: "Format: Yesterday, Today, Blockers, Risks, Follow-ups",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: one priority per person for Today",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: raw standup notes or transcript",
                  isCorrect: true),
              PromptPieceDef(text: "Add motivational quotes", isCorrect: false),
              PromptPieceDef(
                  text: "Combine people into a generic summary",
                  isCorrect: false),
            ],
            coachingNote:
                "Slots and limits prevent drift and make notes scannable.",
            assembledPromptExample:
                "Summarize standup into Yesterday, Today (one priority each), Blockers (owner/ask), Risks, and Follow-ups. Input: <standup notes>.",
          ),
          takeaway: "Limit scope per person to keep updates sharp.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),

    // Lesson 2 — Action items, owners
    LessonDef(
      title: "Action items, owners",
      scenarios: [
        ScenarioDef(
          title: "Assign owners from meeting text",
          situation:
              "A meeting transcript contains many verbs and names. You need to extract action items and assign clear owners based on who volunteered or was nominated.",
          prompt: "Extract action items with owners from meeting text.",
          output:
              "Actions: verb-first phrasing\nOwner: map to the person who agreed\nContext: one clause for where/what\nDate: include if stated\nStatus: note if blocked",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Actions (verb-first) with owner, context, date (if stated), status."),
            ResponseVariant(
                label: "More formal",
                response:
                    "List action items with assigned owners, brief context, dates when present, and current status."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Email pricing proposal (Owner: Dana, by May 12); Draft runbook (Owner: Sam, blocked by SSO docs)."),
          ],
          proTip:
              "Use verb-first phrasing and attach the named owner from the transcript.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: extract action items", isCorrect: true),
              PromptPieceDef(
                  text: "Format: action, owner, context, date, status",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: verb-first phrasing", isCorrect: true),
              PromptPieceDef(
                  text: "Input: meeting text or transcript", isCorrect: true),
              PromptPieceDef(
                  text: "Infer owners from job titles only", isCorrect: false),
              PromptPieceDef(
                  text: "Rephrase actions as vague goals", isCorrect: false),
            ],
            coachingNote:
                "Clear fields and verb-first phrasing produce tasks teams can track.",
            assembledPromptExample:
                "Extract action items with owner, context, date, and status using verb-first phrasing. Input: <meeting text>.",
          ),
          takeaway: "Actions should read like tasks someone can do next.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Extract deadlines from discussion",
          situation:
              "Deadlines are buried across the conversation. You want a list of dated commitments with who and what they cover, including inferred dates only if explicitly stated.",
          prompt:
              "From meeting text, list deadlines with owner and scope; do not invent dates.",
          output:
              "Owner: name\nDue: explicit date or 'TBD'\nScope: what the deadline covers\nSource: line or quote for traceability",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Owner, Due (explicit only), Scope, Source line/quote."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Enumerate deadlines with owner, due date when explicitly stated (else TBD), scope, and a source reference."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Who owes what by when, plus where it was said so nobody has to hunt."),
          ],
          proTip:
              "Separate explicit dates from TBD to avoid accidental commitments.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(text: "Role: extract deadlines", isCorrect: true),
              PromptPieceDef(
                  text: "Format: owner, due, scope, source", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: only explicit dates; mark others TBD",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: transcript with timestamps or lines",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Estimate dates from context anyway", isCorrect: false),
              PromptPieceDef(
                  text: "Omit source references to save space",
                  isCorrect: false),
            ],
            coachingNote:
                "Traceable deadlines prevent confusion and unwanted assumptions.",
            assembledPromptExample:
                "List deadlines with owner, due (explicit only or TBD), scope, and source line. Input: <meeting transcript>.",
          ),
          takeaway: "Only record dates people actually said.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Summarize follow-up actions",
          situation:
              "Post-meeting, you need a compact list of follow-ups your team can track in a tool.",
          prompt:
              "Summarize follow-up actions with owner, dependency, and next visible milestone.",
          output:
              "Action: verb-first\nOwner: person\nDependency: what must happen first\nMilestone: the next visible checkpoint\nNote: one-line context if needed",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Action, Owner, Dependency, Milestone, Note (1 line)."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide action items with owners, dependencies, next milestones, and concise notes."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Draft pricing FAQ (Owner: Sam; Dep: product sign-off; Milestone: v1 draft by May 14)."),
          ],
          proTip:
              "Add dependency and a near milestone so actions move, not stall.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: produce follow-up list", isCorrect: true),
              PromptPieceDef(
                  text: "Format: action, owner, dependency, milestone, note",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: verb-first actions", isCorrect: true),
              PromptPieceDef(
                  text: "Input: meeting notes or transcript", isCorrect: true),
              PromptPieceDef(
                  text: "Replace actions with status commentary",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Leave out dependencies to keep it simple",
                  isCorrect: false),
            ],
            coachingNote:
                "Dependencies and milestones expose the path to done.",
            assembledPromptExample:
                "Return follow-ups as action, owner, dependency, milestone, and note. Use verb-first phrasing. Input: <meeting notes>.",
          ),
          takeaway:
              "Good actions name the owner and the next visible checkpoint.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),

    // Lesson 3 — Minutes in minutes
    LessonDef(
      title: "Minutes in minutes",
      scenarios: [
        ScenarioDef(
          title: "Draft meeting minutes from notes",
          situation:
              "You have rough notes and need clean minutes with attendees, agenda items, discussion points, decisions, and next steps.",
          prompt:
              "From rough notes, draft minutes: attendees, agenda, discussion points, decisions, next steps.",
          output:
              "Attendees: list\nAgenda: bullets\nDiscussion: concise points per topic\nDecisions: who decided what\nNext steps: owner + date",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Attendees; agenda; discussion bullets; decisions; next steps (owner/date)."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide attendees, agenda, structured discussion points, recorded decisions, and next steps with owners and dates."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Attendees: Dana, Sam. Agenda: pricing, rollout. Discussion: pricing tiers, pilot scope. Decisions: pilot 10 customers. Next: FAQ draft (Sam, May 12)."),
          ],
          proTip: "Name the sections so minutes are predictable across teams.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: meeting minutes drafter", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: attendees, agenda, discussion, decisions, next steps",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: concise bullets per section",
                  isCorrect: true),
              PromptPieceDef(text: "Input: rough notes", isCorrect: true),
              PromptPieceDef(
                  text: "Add narrative flourishes", isCorrect: false),
              PromptPieceDef(
                  text: "Skip decisions if none recorded", isCorrect: false),
            ],
            coachingNote:
                "Fixed sections and bullets keep minutes fast to scan.",
            assembledPromptExample:
                "Draft minutes with attendees, agenda, discussion, decisions, next steps as concise bullets. Input: <rough notes>.",
          ),
          takeaway: "Use fixed sections to accelerate minute-taking.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Create executive summary minutes",
          situation:
              "Executives want a 5-bullet summary of what happened and what changes.",
          prompt:
              "Create executive minutes: 5 bullets covering outcomes, decisions, owners/dates.",
          output:
              "- Outcome: result of the meeting\n- Decision 1 (owner/date)\n- Decision 2 (owner/date)\n- Risk or dependency\n- Next milestone",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "5 bullets: outcome; two decisions (owner/date); one risk; next milestone."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide five bullets summarizing the outcome, two decisions with owners and dates, one risk, and the next milestone."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Five quick bullets: what changed, who owns what by when, one risk, and the next date."),
          ],
          proTip: "Impose a 5-bullet limit to make exec minutes skimmable.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: summarize for executives", isCorrect: true),
              PromptPieceDef(text: "Format: 5 bullets", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include owners and dates on decisions",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: full minutes or rough notes", isCorrect: true),
              PromptPieceDef(text: "Add background history", isCorrect: false),
              PromptPieceDef(
                  text: "Use 12 bullets for detail", isCorrect: false),
            ],
            coachingNote:
                "Severe limits force clarity and speed for executives.",
            assembledPromptExample:
                "Return 5 executive bullets: outcome, two decisions (owner/date), one risk, next milestone. Input: <minutes/notes>.",
          ),
          takeaway: "Limits create focus for busy readers.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Make minutes with decisions + owners",
          situation:
              "You want minutes that emphasize decisions and accountability.",
          prompt:
              "Draft minutes that foreground decisions and owners, then list context.",
          output:
              "Decisions: list with owner/date\nAccountability: one line per owner\nContext: brief discussion bullets\nOpen questions: parking lot",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Decisions (owner/date), Accountability, Context, Open questions."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Prioritize decisions with owners and dates, then provide accountability lines, brief context, and open questions."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Decisions: pilot scope (Dana, May 20). Accountability: Sam drafts FAQ. Context: pricing debate. Open: billing edge cases."),
          ],
          proTip: "Lead with decisions to drive follow-through.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: minutes emphasizing decisions", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: decisions, accountability, context, open questions",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: owner and date for each decision",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: meeting notes/transcript", isCorrect: true),
              PromptPieceDef(
                  text: "Bury decisions under context", isCorrect: false),
              PromptPieceDef(
                  text: "Omit owners to save time", isCorrect: false),
            ],
            coachingNote:
                "Leading with decisions assigns responsibility and momentum.",
            assembledPromptExample:
                "Draft minutes with decisions (owner/date), accountability lines, brief context, and open questions. Input: <notes>.",
          ),
          takeaway: "Put decisions first to make minutes actionable.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),

    // Lesson 4 — Follow-up emails
    LessonDef(
      title: "Follow-up emails",
      scenarios: [
        ScenarioDef(
          title: "Draft thank-you + recap email",
          situation:
              "You met with a client; you want to send a brief thank-you with key points and next steps.",
          prompt:
              "Write a thank-you email with recap (3 bullets) and next steps (owners/dates).",
          output:
              "Subject: Thank you and next steps\nThanks for the time. Recap: three bullets. Next steps: owners and dates. Attachments/links as needed.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Short email: thanks; 3-bullet recap; next steps with owners/dates; links."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Professional email with brief thanks, three-point recap, and next steps including owners and dates."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Warm note: quick thanks, 3-bullet recap in plain language, and who is doing what by when."),
          ],
          proTip: "Keep subject clear and bullets tight.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: draft a client follow-up email",
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: subject, brief body, recap(3), next steps(owners/dates)",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: professional tone; concise",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: meeting notes and links", isCorrect: true),
              PromptPieceDef(
                  text: "Add unrelated marketing content", isCorrect: false),
              PromptPieceDef(text: "Write a long narrative", isCorrect: false),
            ],
            coachingNote: "Clear structure and brevity increase reply rates.",
            assembledPromptExample:
                "Draft a client follow-up email: subject, brief body, recap (3 bullets), and next steps with owners/dates. Input: <notes/links>.",
          ),
          takeaway: "Clear subjects and bullets get read.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Draft task assignment email",
          situation:
              "You need to assign tasks after a meeting and make ownership explicit.",
          prompt:
              "Write an email assigning tasks with owners, due dates, and dependencies.",
          output:
              "Subject: Action items and owners\nList tasks with owner and date; note dependencies; link to tracker.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Subject line; tasks with owner/date; dependencies; tracker link."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Professional assignment email listing tasks with owners, due dates, dependencies, and a tracker link."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Plain-language email: who is doing what by when, what must happen first, and where to track it."),
          ],
          proTip: "Lead with the subject and a clear list of tasks.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write a task assignment email", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: subject + task list with owner/date/dependency",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: link to tracker", isCorrect: true),
              PromptPieceDef(
                  text: "Input: tasks from minutes", isCorrect: true),
              PromptPieceDef(
                  text: "Use vague wording for tasks", isCorrect: false),
              PromptPieceDef(
                  text: "Omit due dates to stay flexible", isCorrect: false),
            ],
            coachingNote:
                "Explicit lists reduce back-and-forth and missed tasks.",
            assembledPromptExample:
                "Write a task assignment email with subject and a list of tasks including owner, due date, and dependency. Link to tracker. Input: <minutes>.",
          ),
          takeaway: "Explicit owners and dates drive action.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Draft missed-meeting summary email",
          situation:
              "A stakeholder missed the meeting; you need a short summary and what they need to do.",
          prompt:
              "Write a missed-meeting email: recap (3 bullets), decisions, and asks for the recipient.",
          output:
              "Subject: Summary of today's meeting\nRecap: three bullets\nDecisions: list\nAsks: what we need from you with dates",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Subject; 3-bullet recap; decisions; asks with dates."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Professional summary email with three-bullet recap, decisions, and explicit asks with dates."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Quick catch-up: three bullets on what happened, what we decided, and what we need from you by when."),
          ],
          proTip: "State asks clearly so the recipient can help fast.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write a missed-meeting summary",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Format: subject, recap(3), decisions, asks",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include dates on asks", isCorrect: true),
              PromptPieceDef(text: "Input: minutes or notes", isCorrect: true),
              PromptPieceDef(text: "Attach full transcript", isCorrect: false),
              PromptPieceDef(text: "Avoid asks to be polite", isCorrect: false),
            ],
            coachingNote: "Polite and clear asks turn summaries into progress.",
            assembledPromptExample:
                "Write a missed-meeting email with subject, 3-bullet recap, decisions, and asks with dates. Input: <minutes>.",
          ),
          takeaway: "Always include a clear ask when catching someone up.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),

    // Lesson 5 — Weekly rollups
    LessonDef(
      title: "Weekly rollups",
      scenarios: [
        ScenarioDef(
          title: "Summarize weekly team highlights",
          situation:
              "You compile weekly highlights across teams; readers want quick wins and notable outcomes.",
          prompt:
              "Summarize weekly highlights: 5 bullets, one win per team with a metric.",
          output:
              "- Team A: shipped feature X (+12% adoption)\n- Team B: reduced churn -0.4 pts\n- Team C: cut cycle time 15%\n- Team D: signed first EU reseller\n- Team E: NPS +6 vs last week",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "5 bullets: one win per team with a number."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide five bullets, each noting a team's win with a quantitative metric."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Wins with numbers: adoption +12%, churn -0.4 pts, cycle -15%, reseller signed, NPS +6."),
          ],
          proTip: "Require a number per bullet to keep highlights real.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: compile weekly highlights", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 5 bullets, one per team", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include a quantitative metric",
                  isCorrect: true),
              PromptPieceDef(text: "Input: team updates", isCorrect: true),
              PromptPieceDef(
                  text: "Replace metrics with adjectives", isCorrect: false),
              PromptPieceDef(
                  text: "Combine two teams to save space", isCorrect: false),
            ],
            coachingNote: "Numbers anchor highlights and avoid fluff.",
            assembledPromptExample:
                "Return 5 highlight bullets (one per team) with a quantitative metric. Input: <team updates>.",
          ),
          takeaway: "Metrics make highlights credible.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Summarize blockers and risks",
          situation:
              "Leads need a quick view of what's in the way and what might slip.",
          prompt: "Summarize blockers and risks with owner and mitigation.",
          output:
              "Blockers: owner, impact, mitigation ask\nRisks: probability/impact, owner, mitigation\nDates at risk: list",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Blockers (owner/impact/ask); Risks (P/I, owner, mitigation); Dates at risk."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide blockers with owners, impacts, and mitigation asks; risks with probability/impact, owner, mitigation; and dates at risk."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "What's blocking who, how bad it is, what help is needed, and which dates might slip."),
          ],
          proTip: "Always attach an owner and mitigation to risks.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: compile blockers and risks", isCorrect: true),
              PromptPieceDef(
                  text: "Format: blockers, risks, dates at risk",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include owner and mitigation",
                  isCorrect: true),
              PromptPieceDef(text: "Input: weekly updates", isCorrect: true),
              PromptPieceDef(
                  text: "List risks without owners", isCorrect: false),
              PromptPieceDef(
                  text: "Avoid asking for mitigation", isCorrect: false),
            ],
            coachingNote: "Owner + mitigation turns risk lists into action.",
            assembledPromptExample:
                "Summarize blockers and risks with owners and mitigations; include dates at risk. Input: <weekly updates>.",
          ),
          takeaway: "Risks need owners and mitigations.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
        ScenarioDef(
          title: "Summarize weekly progress for exec",
          situation:
              "Executives want a compact view: outcomes, risks, and where help is needed.",
          prompt:
              "Create a weekly exec summary: outcomes (5), top risks (3), help needed (3).",
          output:
              "Outcomes (5): metrics-first bullets\nTop risks (3): owner + mitigation\nHelp needed (3): clear asks with dates",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Outcomes(5) with metrics; Risks(3) with owner/mitigation; Help(3) with dates."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide five outcome bullets with metrics, three risks with owners and mitigations, and three help-needed asks with dates."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "What moved (with numbers), what could slip (with owners), and where we need help (with dates)."),
          ],
          proTip: "Start with outcomes so wins and momentum are visible.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write a weekly executive summary",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Format: outcomes(5), risks(3), help needed(3)",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: metrics-first outcomes", isCorrect: true),
              PromptPieceDef(
                  text: "Input: team updates and metrics", isCorrect: true),
              PromptPieceDef(
                  text: "Hide risks to keep it positive", isCorrect: false),
              PromptPieceDef(
                  text: "Ask for help without dates", isCorrect: false),
            ],
            coachingNote:
                "Metrics and clear asks make exec summaries actionable.",
            assembledPromptExample:
                "Write a weekly exec summary with outcomes (metrics-first), top risks (owner/mitigation), and help-needed asks with dates. Input: <updates/metrics>.",
          ),
          takeaway:
              "Lead with outcomes; pair risks and asks with owners/dates.",
          refinements: ["Shorter", "More formal", "Add examples"],
        ),
      ],
    ),
  ],
);
