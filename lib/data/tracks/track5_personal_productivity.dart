import 'package:flutter/material.dart';
import '../app_catalog.dart';

const TrackDef track5PersonalProductivity = TrackDef(
  title: "Personal Productivity",
  icon: Icons.schedule_outlined,
  lessons: [
    LessonDef(
      title: "Daily To-Do Assistant",
      scenarios: [
        ScenarioDef(
          title: "Prioritize Daily Tasks",
          situation:
              "You have 8 tasks on your list. You need AI to help prioritize them by urgency and importance.",
          prompt:
              "Sort these 8 tasks by priority: urgent/important, important/not urgent, urgent/not important, neither.",
          output:
              "High Priority: client deadline (urgent/important), team meeting prep (important/not urgent)\nMedium Priority: email backlog (urgent/not important)\nLow Priority: organize desk, update LinkedIn, research tools, plan vacation",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "High: client deadline, meeting prep. Medium: emails. Low: desk, LinkedIn, research, vacation."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Critical: client deadline (urgent/important), team meeting preparation (important/not urgent). Moderate: email backlog (urgent/not important). Low: desk organization, LinkedIn update, tool research, vacation planning."),
            ResponseVariant(
                label: "Add times",
                response:
                    "High: client deadline (2pm), meeting prep (4pm). Medium: emails (1hr). Low: desk (30min), LinkedIn (15min), research (1hr), vacation (flexible)."),
          ],
          takeaway:
              "Use urgency/importance matrix to focus on what matters most.",
          proTip:
              "Ask AI to categorize by urgency and importance for better prioritization.",
          task: TaskDef(
            goal:
                "Sort daily tasks by priority using urgency/importance matrix.",
            pieces: [
              PromptPieceDef(text: "Identify urgent tasks", isCorrect: true),
              PromptPieceDef(text: "Identify important tasks", isCorrect: true),
              PromptPieceDef(
                  text: "Categorize by urgency/importance", isCorrect: true),
              PromptPieceDef(text: "Ignore deadlines", isCorrect: false),
              PromptPieceDef(text: "Group similar tasks", isCorrect: true),
            ],
            coachingNote:
                "Urgency/importance matrix helps focus on high-impact work.",
            assembledPromptExample:
                "Sort tasks by urgency and importance: urgent/important, important/not urgent, urgent/not important, neither.",
          ),
        ),
        ScenarioDef(
          title: "Break Down Large Projects",
          situation:
              "You have a big project due in 2 weeks. You need to break it into manageable daily tasks.",
          prompt:
              "Break this 2-week project into daily tasks with specific deliverables and time estimates.",
          output:
              "Week 1: Research (2 days), outline (1 day), draft sections 1-2 (2 days)\nWeek 2: Draft sections 3-4 (2 days), review/edit (2 days), final polish (1 day)\nDaily: 2-3 hours focused work, 30min review",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Week 1: research, outline, draft. Week 2: finish draft, edit, polish. Daily: 2-3hrs."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Week 1: Research (Mon-Tue), outline (Wed), draft intro/body (Thu-Fri). Week 2: draft conclusion (Mon-Tue), peer review (Wed-Thu), final edits (Fri). Daily: 2-3hrs focused, 30min review."),
            ResponseVariant(
                label: "Add milestones",
                response:
                    "Week 1: Research complete (Tue), outline approved (Wed), draft 50% (Fri). Week 2: draft 100% (Tue), review complete (Thu), final delivery (Fri)."),
          ],
          takeaway:
              "Break large projects into daily chunks with clear deliverables.",
          proTip: "Ask for specific time estimates and daily deliverables.",
          task: TaskDef(
            goal:
                "Break a 2-week project into daily tasks with time estimates.",
            pieces: [
              PromptPieceDef(text: "Identify major phases", isCorrect: true),
              PromptPieceDef(text: "Set daily deliverables", isCorrect: true),
              PromptPieceDef(text: "Estimate time per task", isCorrect: true),
              PromptPieceDef(text: "Leave no buffer time", isCorrect: false),
              PromptPieceDef(text: "Include review time", isCorrect: true),
            ],
            coachingNote:
                "Daily tasks with time estimates make big projects manageable.",
            assembledPromptExample:
                "Break 2-week project into daily tasks with specific deliverables and time estimates.",
          ),
        ),
        ScenarioDef(
          title: "Create Focus Blocks",
          situation:
              "You have 4 hours of focused work time. You need to schedule deep work blocks for your most important tasks.",
          prompt:
              "Schedule 4 hours of focused work with 90-minute blocks, including breaks and buffer time.",
          output:
              "9:00-10:30: Deep work on client project (90min)\n10:30-10:45: Break (15min)\n10:45-12:15: Deep work on presentation (90min)\n12:15-12:30: Break (15min)\n12:30-1:30: Email and quick tasks (60min)",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "9-10:30: client work. 10:45-12:15: presentation. 12:30-1:30: emails. 15min breaks."),
            ResponseVariant(
                label: "More flexible",
                response:
                    "Morning: 90min client work, 15min break, 90min presentation prep. Afternoon: 60min emails/quick tasks. Adjust times as needed."),
            ResponseVariant(
                label: "Add priorities",
                response:
                    "High priority: 9-10:30 client project, 10:45-12:15 presentation. Medium: 12:30-1:30 emails. Breaks: 10:30-10:45, 12:15-12:30."),
          ],
          takeaway: "90-minute focus blocks with breaks maximize productivity.",
          proTip: "Schedule your most important work during peak energy hours.",
          task: TaskDef(
            goal:
                "Schedule 4 hours of focused work with 90-minute blocks and breaks.",
            pieces: [
              PromptPieceDef(text: "Use 90-minute blocks", isCorrect: true),
              PromptPieceDef(text: "Include 15-minute breaks", isCorrect: true),
              PromptPieceDef(
                  text: "Schedule high-priority tasks first", isCorrect: true),
              PromptPieceDef(text: "Skip breaks", isCorrect: false),
              PromptPieceDef(text: "Leave buffer time", isCorrect: true),
            ],
            coachingNote:
                "90-minute blocks with breaks optimize focus and energy.",
            assembledPromptExample:
                "Schedule 4 hours with 90-minute focus blocks, 15-minute breaks, and buffer time.",
          ),
        ),
      ],
    ),
    LessonDef(
      title: "Agendas & Checklists",
      scenarios: [
        ScenarioDef(
          title: "Create Meeting Agendas",
          situation:
              "You're leading a 1-hour team meeting. You need a structured agenda that keeps everyone focused.",
          prompt:
              "Create a 1-hour team meeting agenda with time allocations and clear objectives.",
          output:
              "1. Check-ins (10min): wins, blockers, updates\n2. Project review (20min): status, risks, decisions needed\n3. Planning (20min): next week priorities, resource needs\n4. Action items (10min): owners, deadlines, follow-up",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Check-ins (10), project review (20), planning (20), actions (10). Total: 60min."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Opening: 10min check-ins (wins, blockers, updates). Main: 20min project review (status, risks, decisions). Planning: 20min next week (priorities, resources). Close: 10min action items (owners, deadlines)."),
            ResponseVariant(
                label: "Add prep",
                response:
                    "Prep: send agenda 24hrs ahead. Meeting: check-ins (10), review (20), planning (20), actions (10). Follow-up: send notes within 2hrs."),
          ],
          takeaway: "Time-boxed agendas keep meetings focused and productive.",
          proTip: "Always include check-ins and action items in team meetings.",
          task: TaskDef(
            goal: "Create a 1-hour team meeting agenda with time allocations.",
            pieces: [
              PromptPieceDef(
                  text: "Allocate time per section", isCorrect: true),
              PromptPieceDef(text: "Include check-ins", isCorrect: true),
              PromptPieceDef(text: "Add action items", isCorrect: true),
              PromptPieceDef(text: "Skip time limits", isCorrect: false),
              PromptPieceDef(text: "Set clear objectives", isCorrect: true),
            ],
            coachingNote:
                "Time-boxed agendas prevent meetings from running over.",
            assembledPromptExample:
                "Create 1-hour team meeting agenda with time allocations and clear objectives.",
          ),
        ),
        ScenarioDef(
          title: "Build Project Checklists",
          situation:
              "You're starting a new project. You need a comprehensive checklist to ensure nothing is missed.",
          prompt:
              "Create a project kickoff checklist with pre-work, launch, and post-launch phases.",
          output:
              "Pre-work: define scope, set timeline, assign roles, gather resources\nLaunch: kickoff meeting, set up tools, create communication plan, establish milestones\nPost-launch: monitor progress, adjust timeline, communicate updates, celebrate wins",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Pre: scope, timeline, roles, resources. Launch: meeting, tools, comms, milestones. Post: monitor, adjust, update, celebrate."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Pre-work: scope document, timeline with buffer, RACI matrix, resource inventory. Launch: kickoff meeting, tool setup, communication cadence, milestone tracking. Post-launch: weekly check-ins, timeline adjustments, stakeholder updates, team recognition."),
            ResponseVariant(
                label: "Add owners",
                response:
                    "Pre: scope (PM), timeline (PM), roles (PM), resources (PM). Launch: meeting (PM), tools (Tech), comms (PM), milestones (PM). Post: monitor (PM), adjust (PM), update (PM), celebrate (PM)."),
          ],
          takeaway: "Comprehensive checklists prevent project oversights.",
          proTip:
              "Include pre-work, launch, and post-launch phases in project checklists.",
          task: TaskDef(
            goal: "Create a project kickoff checklist with all phases.",
            pieces: [
              PromptPieceDef(text: "Include pre-work phase", isCorrect: true),
              PromptPieceDef(text: "Add launch phase", isCorrect: true),
              PromptPieceDef(
                  text: "Include post-launch phase", isCorrect: true),
              PromptPieceDef(text: "Skip timeline planning", isCorrect: false),
              PromptPieceDef(text: "Assign clear owners", isCorrect: true),
            ],
            coachingNote:
                "Three-phase checklists ensure complete project coverage.",
            assembledPromptExample:
                "Create project kickoff checklist with pre-work, launch, and post-launch phases.",
          ),
        ),
        ScenarioDef(
          title: "Daily Routine Checklist",
          situation:
              "You want to establish a consistent daily routine. You need a checklist to track your morning and evening habits.",
          prompt:
              "Create a daily routine checklist for morning and evening with specific tasks and time estimates.",
          output:
              "Morning (30min): wake up, make bed, drink water, exercise (15min), shower, breakfast, review daily goals\nEvening (20min): review day, plan tomorrow, prepare clothes, wind down, sleep",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Morning: wake, bed, water, exercise, shower, breakfast, goals. Evening: review, plan, prep, wind down, sleep."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Morning (30min): wake 6am, make bed, 16oz water, 15min exercise, shower, healthy breakfast, review 3 daily goals. Evening (20min): review accomplishments, plan tomorrow's top 3, lay out clothes, 10min meditation, lights out 10pm."),
            ResponseVariant(
                label: "Add flexibility",
                response:
                    "Morning: core routine (wake, bed, water, exercise, shower, breakfast, goals). Evening: review, plan, prep, wind down, sleep. Adjust times based on schedule."),
          ],
          takeaway:
              "Consistent daily routines build momentum and reduce decision fatigue.",
          proTip: "Start with 2-3 key habits and build from there.",
          task: TaskDef(
            goal: "Create a daily routine checklist for morning and evening.",
            pieces: [
              PromptPieceDef(text: "Include morning routine", isCorrect: true),
              PromptPieceDef(text: "Add evening routine", isCorrect: true),
              PromptPieceDef(text: "Set time estimates", isCorrect: true),
              PromptPieceDef(text: "Skip exercise", isCorrect: false),
              PromptPieceDef(text: "Include goal review", isCorrect: true),
            ],
            coachingNote: "Morning and evening routines anchor your day.",
            assembledPromptExample:
                "Create daily routine checklist with morning and evening tasks, time estimates.",
          ),
        ),
      ],
    ),
    LessonDef(
      title: "Reminders & Nudges",
      scenarios: [
        ScenarioDef(
          title: "Set Smart Reminders",
          situation:
              "You have 5 important deadlines coming up. You need to set up reminders that give you enough time to prepare.",
          prompt:
              "Create a reminder schedule for 5 deadlines with appropriate lead times and preparation tasks.",
          output:
              "2 weeks before: start research and planning\n1 week before: complete first draft\n3 days before: review and edit\n1 day before: final polish and submission\nDay of: submit and confirm receipt",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "2 weeks: start. 1 week: draft. 3 days: edit. 1 day: polish. Day of: submit."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "2 weeks: research, outline, gather resources. 1 week: complete first draft, initial review. 3 days: peer review, major edits. 1 day: final polish, proofread. Day of: submit, confirm receipt, follow up if needed."),
            ResponseVariant(
                label: "Add buffer",
                response:
                    "2 weeks: start (with 2-day buffer). 1 week: draft (with 1-day buffer). 3 days: edit (with 1-day buffer). 1 day: polish. Day of: submit early."),
          ],
          takeaway: "Staggered reminders prevent last-minute rushes.",
          proTip:
              "Set reminders 2 weeks, 1 week, 3 days, and 1 day before deadlines.",
          task: TaskDef(
            goal: "Create a reminder schedule for 5 deadlines with lead times.",
            pieces: [
              PromptPieceDef(text: "Set 2-week reminder", isCorrect: true),
              PromptPieceDef(text: "Include 1-week reminder", isCorrect: true),
              PromptPieceDef(text: "Add 3-day reminder", isCorrect: true),
              PromptPieceDef(text: "Set day-before reminder", isCorrect: true),
              PromptPieceDef(text: "Skip preparation tasks", isCorrect: false),
            ],
            coachingNote:
                "Multiple reminders with preparation tasks prevent deadline stress.",
            assembledPromptExample:
                "Create reminder schedule for 5 deadlines with 2-week, 1-week, 3-day, and 1-day lead times.",
          ),
        ),
        ScenarioDef(
          title: "Create Habit Nudges",
          situation:
              "You want to build 3 new habits. You need gentle reminders and tracking to stay consistent.",
          prompt:
              "Create a habit tracking system for 3 new habits with daily reminders and weekly reviews.",
          output:
              "Habit 1: Drink 8 glasses of water (reminder every 2 hours, track in app)\nHabit 2: Read 30 minutes (evening reminder, mark calendar)\nHabit 3: Exercise 20 minutes (morning reminder, log in fitness app)\nWeekly: Review progress, adjust reminders, celebrate wins",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Water: 2hr reminders, app tracking. Reading: evening reminder, calendar. Exercise: morning reminder, fitness app. Weekly review."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Water: 8 glasses, 2hr reminders, hydration app tracking, daily goal check. Reading: 30min, evening reminder, book progress tracking, weekly page count. Exercise: 20min, morning reminder, fitness app logging, weekly intensity review."),
            ResponseVariant(
                label: "Add rewards",
                response:
                    "Water: 2hr reminders, app tracking, weekly reward if 100%. Reading: evening reminder, calendar, weekly reward if 7/7 days. Exercise: morning reminder, fitness app, weekly reward if 5/7 days."),
          ],
          takeaway: "Consistent reminders and tracking build lasting habits.",
          proTip:
              "Use apps and calendars to track habit progress automatically.",
          task: TaskDef(
            goal:
                "Create a habit tracking system for 3 new habits with reminders.",
            pieces: [
              PromptPieceDef(text: "Set daily reminders", isCorrect: true),
              PromptPieceDef(text: "Include tracking method", isCorrect: true),
              PromptPieceDef(text: "Add weekly review", isCorrect: true),
              PromptPieceDef(text: "Skip progress tracking", isCorrect: false),
              PromptPieceDef(text: "Make habits specific", isCorrect: true),
            ],
            coachingNote:
                "Reminders + tracking + weekly review = habit success.",
            assembledPromptExample:
                "Create habit tracking system for 3 habits with daily reminders and weekly reviews.",
          ),
        ),
        ScenarioDef(
          title: "Follow-up Reminders",
          situation:
              "You have 5 pending items that need follow-up. You need a system to track and remind you to check on them.",
          prompt:
              "Create a follow-up tracking system for 5 pending items with appropriate check-in intervals.",
          output:
              "Item 1: Client proposal (follow up in 3 days, 1 week, 2 weeks)\nItem 2: Job application (follow up in 1 week, 2 weeks)\nItem 3: Vendor quote (follow up in 2 days, 1 week)\nItem 4: Meeting request (follow up in 1 day, 3 days)\nItem 5: Project status (follow up in 1 week, 2 weeks)",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Proposal: 3d, 1w, 2w. Job: 1w, 2w. Quote: 2d, 1w. Meeting: 1d, 3d. Project: 1w, 2w."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Client proposal: follow up 3 days (check interest), 1 week (answer questions), 2 weeks (final decision). Job application: 1 week (acknowledge receipt), 2 weeks (interview timeline). Vendor quote: 2 days (clarify details), 1 week (final pricing). Meeting request: 1 day (confirm attendance), 3 days (send agenda). Project status: 1 week (progress update), 2 weeks (milestone review)."),
            ResponseVariant(
                label: "Add actions",
                response:
                    "Proposal: 3d (email check-in), 1w (call), 2w (final email). Job: 1w (email), 2w (call). Quote: 2d (email), 1w (call). Meeting: 1d (email), 3d (call). Project: 1w (email), 2w (meeting)."),
          ],
          takeaway:
              "Structured follow-up intervals keep important items moving forward.",
          proTip:
              "Vary follow-up intervals based on urgency and typical response times.",
          task: TaskDef(
            goal: "Create a follow-up tracking system for 5 pending items.",
            pieces: [
              PromptPieceDef(
                  text: "Set multiple follow-up intervals", isCorrect: true),
              PromptPieceDef(
                  text: "Vary intervals by urgency", isCorrect: true),
              PromptPieceDef(text: "Include specific actions", isCorrect: true),
              PromptPieceDef(
                  text: "Use same interval for all", isCorrect: false),
              PromptPieceDef(text: "Track response status", isCorrect: true),
            ],
            coachingNote:
                "Multiple follow-up intervals with specific actions keep items moving.",
            assembledPromptExample:
                "Create follow-up tracking system for 5 items with varied intervals and specific actions.",
          ),
        ),
      ],
    ),
    LessonDef(
      title: "Time-Saver Templates",
      scenarios: [
        ScenarioDef(
          title: "Email Response Templates",
          situation:
              "You send similar emails frequently. You need templates for common responses to save time.",
          prompt:
              "Create 5 email templates for common responses: meeting decline, task approval, status update, follow-up, and thank you.",
          output:
              "Meeting Decline: 'Thanks for the invite. I have a conflict then. Could we meet [alternative times]?'\nTask Approval: 'Approved. Please proceed and check in [timeline].'\nStatus Update: 'Quick update: [progress], [next steps], [timeline].'\nFollow-up: 'Following up on [item]. Status update needed by [date].'\nThank You: 'Thanks for [specific help]. It [impact/outcome].'",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Decline: conflict, alternatives. Approve: go ahead, timeline. Update: progress, next, timeline. Follow-up: status by date. Thanks: specific help, impact."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Meeting Decline: 'Thank you for the invitation. I have a scheduling conflict at that time. Would [alternative times] work for you?' Task Approval: 'Approved. Please proceed with the task and provide a status update by [timeline].' Status Update: 'Status update: [progress], next steps: [actions], timeline: [dates].' Follow-up: 'Following up on [item]. Please provide a status update by [date].' Thank You: 'Thank you for [specific help]. Your assistance [impact/outcome].'"),
            ResponseVariant(
                label: "Add personalization",
                response:
                    "Meeting Decline: 'Hi [Name], thanks for the invite. Conflict then. [Alternative times] work?' Task Approval: 'Hi [Name], approved. Proceed and check in [timeline].' Status Update: 'Hi [Name], update: [progress], next: [steps], timeline: [dates].' Follow-up: 'Hi [Name], following up on [item]. Status by [date]? Thanks.' Thank You: 'Hi [Name], thanks for [help]. It [impact].'"),
          ],
          takeaway:
              "Email templates save time while maintaining personal touch.",
          proTip:
              "Keep templates flexible with placeholders for personalization.",
          task: TaskDef(
            goal: "Create 5 email templates for common responses.",
            pieces: [
              PromptPieceDef(
                  text: "Include meeting decline template", isCorrect: true),
              PromptPieceDef(
                  text: "Add task approval template", isCorrect: true),
              PromptPieceDef(
                  text: "Create status update template", isCorrect: true),
              PromptPieceDef(text: "Add follow-up template", isCorrect: true),
              PromptPieceDef(
                  text: "Include thank you template", isCorrect: true),
            ],
            coachingNote:
                "Templates for common responses save time and maintain consistency.",
            assembledPromptExample:
                "Create 5 email templates: meeting decline, task approval, status update, follow-up, thank you.",
          ),
        ),
        ScenarioDef(
          title: "Meeting Note Templates",
          situation:
              "You attend many meetings. You need a consistent template for taking and organizing meeting notes.",
          prompt:
              "Create a meeting notes template with sections for attendees, agenda, decisions, action items, and next steps.",
          output:
              "Meeting: [Title]\nDate: [Date]\nAttendees: [Names]\nAgenda: [Items discussed]\nDecisions: [Key decisions made]\nAction Items: [Task] - [Owner] - [Due Date]\nNext Steps: [Follow-up actions]\nNext Meeting: [Date/Time]",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Meeting, date, attendees, agenda, decisions, actions (owner/due), next steps, next meeting."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Meeting: [Title] - [Purpose]\nDate: [Date] - [Time]\nAttendees: [Names] - [Roles]\nAgenda: [Items] - [Time spent]\nDecisions: [Key decisions] - [Rationale]\nAction Items: [Task] - [Owner] - [Due Date] - [Priority]\nNext Steps: [Follow-up actions] - [Owners] - [Timeline]\nNext Meeting: [Date/Time] - [Agenda items]"),
            ResponseVariant(
                label: "Add context",
                response:
                    "Meeting: [Title] - [Context/Background]\nDate: [Date] - [Duration]\nAttendees: [Names] - [Roles] - [Availability]\nAgenda: [Items] - [Outcomes]\nDecisions: [Key decisions] - [Impact]\nAction Items: [Task] - [Owner] - [Due Date] - [Dependencies]\nNext Steps: [Follow-up actions] - [Owners] - [Timeline] - [Risks]\nNext Meeting: [Date/Time] - [Agenda items] - [Prep needed]"),
          ],
          takeaway: "Consistent meeting note templates improve follow-through.",
          proTip:
              "Include action items with owners and due dates for accountability.",
          task: TaskDef(
            goal:
                "Create a meeting notes template with all essential sections.",
            pieces: [
              PromptPieceDef(text: "Include meeting details", isCorrect: true),
              PromptPieceDef(text: "Add attendees list", isCorrect: true),
              PromptPieceDef(text: "Include agenda items", isCorrect: true),
              PromptPieceDef(text: "Add decisions section", isCorrect: true),
              PromptPieceDef(
                  text: "Include action items with owners", isCorrect: true),
            ],
            coachingNote:
                "Complete meeting templates ensure nothing is missed.",
            assembledPromptExample:
                "Create meeting notes template with attendees, agenda, decisions, action items, and next steps.",
          ),
        ),
        ScenarioDef(
          title: "Project Status Templates",
          situation:
              "You manage multiple projects. You need a standard template for weekly status updates.",
          prompt:
              "Create a weekly project status template with progress, risks, blockers, and next week's priorities.",
          output:
              "Project: [Name]\nWeek of: [Date]\nProgress: [Completed tasks, milestones reached]\nRisks: [Potential issues, mitigation plans]\nBlockers: [Current obstacles, resolution status]\nNext Week: [Priority tasks, key milestones]\nTeam: [Updates, concerns, needs]",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Project, week, progress, risks, blockers, next week, team updates."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Project: [Name] - [Phase]\nWeek of: [Date] - [Week X of Y]\nProgress: [Completed tasks] - [Milestones reached] - [% complete]\nRisks: [Issue] - [Impact] - [Mitigation] - [Owner]\nBlockers: [Obstacle] - [Impact] - [Resolution] - [ETA]\nNext Week: [Priority tasks] - [Key milestones] - [Dependencies]\nTeam: [Updates] - [Concerns] - [Resource needs] - [Recognition]"),
            ResponseVariant(
                label: "Add metrics",
                response:
                    "Project: [Name] - [Budget: \$X, Timeline: Y weeks]\nWeek of: [Date] - [Progress: Z%]\nProgress: [Tasks completed] - [Milestones] - [Budget spent]\nRisks: [Issue] - [Probability] - [Impact] - [Mitigation]\nBlockers: [Obstacle] - [Days delayed] - [Resolution] - [Owner]\nNext Week: [Priority tasks] - [Milestones] - [Budget needs]\nTeam: [Updates] - [Hours logged] - [Concerns] - [Needs]"),
          ],
          takeaway: "Standardized status templates improve project visibility.",
          proTip: "Include progress percentages and risk mitigation plans.",
          task: TaskDef(
            goal:
                "Create a weekly project status template with all key sections.",
            pieces: [
              PromptPieceDef(text: "Include project details", isCorrect: true),
              PromptPieceDef(text: "Add progress section", isCorrect: true),
              PromptPieceDef(
                  text: "Include risks and blockers", isCorrect: true),
              PromptPieceDef(text: "Add next week priorities", isCorrect: true),
              PromptPieceDef(text: "Include team updates", isCorrect: true),
            ],
            coachingNote:
                "Complete status templates keep stakeholders informed.",
            assembledPromptExample:
                "Create weekly project status template with progress, risks, blockers, next week priorities, and team updates.",
          ),
        ),
      ],
    ),
    LessonDef(
      title: "Reflection & Journaling",
      scenarios: [
        ScenarioDef(
          title: "Daily Reflection Prompts",
          situation:
              "You want to build a daily reflection habit. You need structured prompts to guide your thinking.",
          prompt:
              "Create 5 daily reflection prompts for work productivity and personal growth.",
          output:
              "1. What was my biggest win today and why?\n2. What challenge did I face and how did I handle it?\n3. What did I learn today that I can apply tomorrow?\n4. What would I do differently if I could repeat today?\n5. What am I grateful for today?",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "1. Biggest win? 2. Challenge faced? 3. What learned? 4. Do differently? 5. Grateful for?"),
            ResponseVariant(
                label: "More detailed",
                response:
                    "1. What was my biggest professional win today and what made it successful? 2. What was the most challenging situation I faced and what strategies did I use? 3. What new skill, insight, or knowledge did I gain today? 4. If I could redo today, what would I change and why? 5. What am I most grateful for today and how did it impact me?"),
            ResponseVariant(
                label: "Add action",
                response:
                    "1. Biggest win + why? 2. Challenge + how handled? 3. What learned + how apply? 4. Do differently + why? 5. Grateful for + impact. 6. One action for tomorrow?"),
          ],
          takeaway:
              "Structured reflection prompts deepen self-awareness and growth.",
          proTip:
              "Keep reflection prompts consistent but allow for personal interpretation.",
          task: TaskDef(
            goal:
                "Create 5 daily reflection prompts for productivity and growth.",
            pieces: [
              PromptPieceDef(
                  text: "Include win/achievement prompt", isCorrect: true),
              PromptPieceDef(
                  text: "Add challenge/learning prompt", isCorrect: true),
              PromptPieceDef(
                  text: "Include improvement prompt", isCorrect: true),
              PromptPieceDef(text: "Add gratitude prompt", isCorrect: true),
              PromptPieceDef(text: "Make prompts actionable", isCorrect: true),
            ],
            coachingNote:
                "Balanced reflection prompts cover wins, challenges, learning, and gratitude.",
            assembledPromptExample:
                "Create 5 daily reflection prompts covering wins, challenges, learning, improvement, and gratitude.",
          ),
        ),
        ScenarioDef(
          title: "Weekly Review Template",
          situation:
              "You want to do weekly reviews to assess progress and plan ahead. You need a structured template.",
          prompt:
              "Create a weekly review template with accomplishments, challenges, lessons learned, and next week's focus.",
          output:
              "Week of: [Date]\nAccomplishments: [Key wins, completed tasks, milestones]\nChallenges: [Obstacles faced, how handled, outcomes]\nLessons Learned: [Insights gained, skills developed, patterns noticed]\nNext Week Focus: [Top 3 priorities, goals, preparation needed]\nGratitude: [3 things I'm grateful for this week]",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Week, accomplishments, challenges, lessons, next week focus, gratitude."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Week of: [Date] - [Week X of Y]\nAccomplishments: [Key wins] - [Completed tasks] - [Milestones reached] - [Impact created]\nChallenges: [Obstacles] - [How handled] - [Outcomes] - [What worked/didn't]\nLessons Learned: [Insights] - [Skills developed] - [Patterns noticed] - [Aha moments]\nNext Week Focus: [Top 3 priorities] - [Goals] - [Preparation needed] - [Potential obstacles]\nGratitude: [3 things grateful for] - [Why they mattered] - [How they impacted me]"),
            ResponseVariant(
                label: "Add metrics",
                response:
                    "Week of: [Date] - [Hours worked: X, Tasks completed: Y]\nAccomplishments: [Wins] - [Tasks] - [Milestones] - [Metrics improved]\nChallenges: [Obstacles] - [Time lost] - [How resolved] - [Cost/impact]\nLessons: [Insights] - [Skills] - [Patterns] - [ROI of learning]\nNext Week: [Priorities] - [Goals] - [Prep time needed] - [Success metrics]\nGratitude: [3 things] - [Impact] - [Value created]"),
          ],
          takeaway:
              "Weekly reviews help identify patterns and improve planning.",
          proTip:
              "Include both accomplishments and challenges for balanced reflection.",
          task: TaskDef(
            goal: "Create a weekly review template with all key sections.",
            pieces: [
              PromptPieceDef(
                  text: "Include accomplishments section", isCorrect: true),
              PromptPieceDef(text: "Add challenges section", isCorrect: true),
              PromptPieceDef(text: "Include lessons learned", isCorrect: true),
              PromptPieceDef(text: "Add next week focus", isCorrect: true),
              PromptPieceDef(
                  text: "Include gratitude section", isCorrect: true),
            ],
            coachingNote:
                "Complete weekly reviews balance reflection and forward planning.",
            assembledPromptExample:
                "Create weekly review template with accomplishments, challenges, lessons learned, next week focus, and gratitude.",
          ),
        ),
        ScenarioDef(
          title: "Goal Progress Tracking",
          situation:
              "You have 3 major goals for the quarter. You need a system to track progress and adjust as needed.",
          prompt:
              "Create a goal tracking template for 3 quarterly goals with progress metrics, milestones, and adjustment plans.",
          output:
              "Goal 1: [Description] - Progress: [X%] - Milestone: [Next target] - Action: [This week's focus]\nGoal 2: [Description] - Progress: [X%] - Milestone: [Next target] - Action: [This week's focus]\nGoal 3: [Description] - Progress: [X%] - Milestone: [Next target] - Action: [This week's focus]\nOverall: [Quarter progress] - [Key wins] - [Adjustments needed] - [Next quarter prep]",
          refinements: [],
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Goal 1: description, progress %, milestone, action. Goal 2: same. Goal 3: same. Overall: progress, wins, adjustments, prep."),
            ResponseVariant(
                label: "More detailed",
                response:
                    "Goal 1: [Description] - [Why important] - Progress: [X%] - [Milestone reached] - Next: [Target] - Action: [This week] - [Blockers] - [Support needed]\nGoal 2: [Description] - [Why important] - Progress: [X%] - [Milestone reached] - Next: [Target] - Action: [This week] - [Blockers] - [Support needed]\nGoal 3: [Description] - [Why important] - Progress: [X%] - [Milestone reached] - Next: [Target] - Action: [This week] - [Blockers] - [Support needed]\nOverall: [Quarter progress] - [Key wins] - [Challenges] - [Adjustments] - [Next quarter goals]"),
            ResponseVariant(
                label: "Add timeline",
                response:
                    "Goal 1: [Description] - Progress: [X%] - Milestone: [Target] by [Date] - Action: [This week] - [Timeline risk]\nGoal 2: [Description] - Progress: [X%] - Milestone: [Target] by [Date] - Action: [This week] - [Timeline risk]\nGoal 3: [Description] - Progress: [X%] - Milestone: [Target] by [Date] - Action: [This week] - [Timeline risk]\nOverall: [Quarter progress] - [On track?] - [Timeline adjustments] - [Next quarter start]"),
          ],
          takeaway:
              "Regular goal tracking helps maintain momentum and make adjustments.",
          proTip:
              "Include both progress metrics and weekly actions for each goal.",
          task: TaskDef(
            goal: "Create a goal tracking template for 3 quarterly goals.",
            pieces: [
              PromptPieceDef(
                  text: "Include goal descriptions", isCorrect: true),
              PromptPieceDef(text: "Add progress percentages", isCorrect: true),
              PromptPieceDef(text: "Include milestones", isCorrect: true),
              PromptPieceDef(text: "Add weekly actions", isCorrect: true),
              PromptPieceDef(
                  text: "Include overall assessment", isCorrect: true),
            ],
            coachingNote:
                "Goal tracking templates combine progress metrics with actionable next steps.",
            assembledPromptExample:
                "Create goal tracking template for 3 quarterly goals with progress, milestones, actions, and overall assessment.",
          ),
        ),
      ],
    ),
  ],
);
