import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/scenario.dart';
import 'tracks/track1_everyday_communication.dart';
import 'tracks/track2_productivity_workflow.dart';
import 'tracks/track3_spreadsheets_data.dart';
import 'tracks/track4_presentations.dart';
import 'tracks/track5_communication.dart';
import 'tracks/track6_content_creation.dart';
import 'tracks/track7_problem_solving_analysis.dart';
import 'tracks/track8_decision_support.dart';
import 'tracks/track9_brainstorming_strategy.dart';

export 'app_catalog.dart'
    show kTracks, TrackDef, LessonDef, ScenarioDef, kScenariosPerTrack;

class PromptPieceDef {
  final String text;
  final bool isCorrect;
  const PromptPieceDef({required this.text, required this.isCorrect});
}

class TaskDef {
  final String goal;
  final List<PromptPieceDef> pieces;
  final String coachingNote;
  final String assembledPromptExample;
  const TaskDef({
    required this.goal,
    required this.pieces,
    required this.coachingNote,
    required this.assembledPromptExample,
  });
}

class ResponseVariant {
  final String label;
  final String response;
  const ResponseVariant({required this.label, required this.response});
}

class ScenarioDef {
  final String title;
  final String situation;
  final String prompt;
  final String output;
  final List<String> refinements;
  final String takeaway; // Key Takeaway
  final String? proTip; // Optional Pro Tip sentence for scenario page
  final TaskDef? task; // Optional task metadata
  final List<ResponseVariant>? variants; // Optional precise response variants
  const ScenarioDef({
    required this.title,
    required this.situation,
    required this.prompt,
    required this.output,
    required this.refinements,
    required this.takeaway,
    this.proTip,
    this.task,
    this.variants,
  });
}

class LessonDef {
  final String title;
  final List<ScenarioDef> scenarios;
  final String? subtitle;
  final List<String>? objectives;
  const LessonDef(
      {required this.title,
      required this.scenarios,
      this.subtitle,
      this.objectives});
}

class TrackDef {
  final String title;
  final IconData icon;
  final List<LessonDef> lessons;
  final bool isDisabled;
  const TrackDef(
      {required this.title,
      required this.icon,
      required this.lessons,
      this.isDisabled = false});
}


/// ===== 9 TRACKS =====
/// (Names & 5 lessons per track come from your spec)
final List<TrackDef> kTracks = [
  TrackDef(
    title: 'Everyday Communication',
    icon: Icons.email_outlined,
    lessons: buildTrack1Lessons(),
  ),
  TrackDef(
    title: 'Productivity & Workflow',
    icon: Icons.task_alt_outlined,
    lessons: buildTrack2Lessons(),
  ),
  TrackDef(
    title: 'Spreadsheets & Data',
    icon: Icons.table_chart_outlined,
    lessons: buildTrack3Lessons(),
  ), // Track 3
  TrackDef(
    title: 'Presentations',
    icon: Icons.slideshow_outlined,
    lessons: buildTrack4Lessons(),
  ), // Track 4
  TrackDef(
    title: 'Communication',
    icon: Icons.message_outlined,
    lessons: buildTrack5Lessons(),
  ), // Track 5
  TrackDef(
    title: 'Content Creation',
    icon: Icons.edit_outlined,
    lessons: buildTrack6Lessons(),
  ), // Track 6
  TrackDef(
    title: 'Problem-Solving & Analysis',
    icon: Icons.psychology_outlined,
    lessons: buildTrack7Lessons(),
  ), // Track 7
  TrackDef(
    title: 'Decision Support',
    icon: Icons.help_outline,
    lessons: buildTrack8Lessons(),
  ), // Track 8
  TrackDef(
    title: 'Brainstorming & Strategy',
    icon: Icons.auto_awesome_outlined,
    lessons: buildTrack9Lessons(),
  ), // Track 9
];

/// Convenience totals
const int kLessonsPerTrack = 5;
const int kScenariosPerLesson = 3;
const int kScenariosPerTrack = kLessonsPerTrack * kScenariosPerLesson; // 15

/// Helper functions to convert between old and new systems
String getTrackId(int trackIndex) => 't${trackIndex + 1}';
String getLessonId(int trackIndex, int lessonIndex) =>
    't${trackIndex + 1}_l${lessonIndex + 1}';
String getScenarioId(int trackIndex, int lessonIndex, int scenarioIndex) =>
    't${trackIndex + 1}_l${lessonIndex + 1}_s${scenarioIndex + 1}';

/// Convert new catalog to old Scenario format for backward compatibility
List<Scenario> convertScenarioDefsToScenarios(
    List<ScenarioDef> scenarioDefs, String lessonId) {
  return scenarioDefs.asMap().entries.map((entry) {
    final index = entry.key;
    final scenarioDef = entry.value;
    return Scenario(
      id: '${lessonId}_s${index + 1}',
      situation: scenarioDef.situation,
      prompt: scenarioDef.prompt,
      baseOutput: scenarioDef.output,
      refinements: scenarioDef.refinements
          .map((label) => Refinement(label: label, output: ''))
          .toList(),
      takeaway: scenarioDef.takeaway,
    );
  }).toList();
}

/// Get all scenarios for a specific lesson using the new catalog
List<Scenario> getScenariosForLesson(String lessonId) {
  // Parse lessonId format: t1_l1, t2_l3, etc.
  final parts = lessonId.split('_');
  if (parts.length != 2) return [];

  final trackNum = int.tryParse(parts[0].substring(1)) ?? 0;
  final lessonNum = int.tryParse(parts[1].substring(1)) ?? 0;

  if (trackNum < 1 ||
      trackNum > kTracks.length ||
      lessonNum < 1 ||
      lessonNum > kLessonsPerTrack) {
    return [];
  }

  final trackIndex = trackNum - 1;
  final lessonIndex = lessonNum - 1;

  final lessonDef = kTracks[trackIndex].lessons[lessonIndex];
  return convertScenarioDefsToScenarios(lessonDef.scenarios, lessonId);
}

/// Get all scenarios from all tracks (replaces the old allScenariosByLesson map)
Map<String, List<Scenario>> getAllScenariosByLesson() {
  final Map<String, List<Scenario>> result = {};

  for (int trackIndex = 0; trackIndex < kTracks.length; trackIndex++) {
    for (int lessonIndex = 0;
        lessonIndex < kTracks[trackIndex].lessons.length;
        lessonIndex++) {
      final lessonId = getLessonId(trackIndex, lessonIndex);
      result[lessonId] = getScenariosForLesson(lessonId);
    }
  }

  return result;
}

/// ===== Authored content for Track 1: Everyday Communication =====
// ignore: unused_element
List<LessonDef> _buildEverydayCommunicationLessons() {
  return [
    // Lesson 1: The 5-Minute Email Superpower
    const LessonDef(title: 'The 5-Minute Email Superpower', scenarios: [
      ScenarioDef(
        title: 'Decline a Meeting Invite',
        situation:
            'You have a meeting invite that conflicts with a client deadline. You want to decline politely while offering alternatives.',
        prompt:
            'Write a polite decline to a meeting invite. Include the reason (conflicting deadline) and propose two alternatives.',
        output:
            'Hi [Name], thanks for the invite. I\'m focused on a deadline then — could we meet Tue 10–10:30 or Wed 3–3:30?',
        refinements: [
          'More formal',
          'Shorter',
          'Friendlier',
        ],
        variants: [
          ResponseVariant(
              label: "More formal",
              response:
                  "Hello [Name], thank you for the invitation. I have a conflicting deadline at that time. Could we meet Tue 10:00-10:30 or Wed 3:00-3:30 instead?"),
          ResponseVariant(
              label: "Shorter",
              response:
                  "Thanks for the invite. Deadline conflict then. Could we do Tue 10-10:30 or Wed 3-3:30?"),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Thanks for the invite, [Name]! I'm on a deadline then. Would Tue 10-10:30 or Wed 3-3:30 work?"),
        ],
        takeaway:
            'Combine brevity with alternatives for smoother rescheduling.',
        proTip:
            'Give AI tone instructions (polite, concise) to avoid over-explaining.',
        task: TaskDef(
          goal:
              'Write a decline email for a conflicting invite that offers alternatives.',
          pieces: [
            PromptPieceDef(text: 'Thank the sender', isCorrect: true),
            PromptPieceDef(text: 'Ignore the conflict', isCorrect: false),
            PromptPieceDef(text: 'State the conflict briefly', isCorrect: true),
            PromptPieceDef(text: 'Suggest two specific slots', isCorrect: true),
            PromptPieceDef(text: 'Be vague about timing', isCorrect: false),
            PromptPieceDef(text: 'Close with polite sign-off', isCorrect: true),
          ],
          coachingNote:
              'Balance brevity with respect — thank, explain, suggest.',
          assembledPromptExample:
              'Write a polite meeting decline that thanks the sender, states a conflict, suggests two slots, and closes respectfully.',
        ),
      ),
      ScenarioDef(
        title: 'Congratulate a Colleague',
        situation:
            'Your colleague earned a promotion. You want a short, upbeat note.',
        prompt:
            'Write a short congratulatory note for a promotion, tone: upbeat and professional.',
        output:
            'Congrats on your promotion! Well deserved — excited to see your next chapter.',
        refinements: [
          'More formal',
          'Shorter',
          'Add examples',
        ],
        variants: [
          ResponseVariant(
              label: "More formal",
              response:
                  "Hello [Name], congratulations on your promotion. Your leadership on [project] has been outstanding. Well deserved."),
          ResponseVariant(
              label: "Shorter",
              response: "Congrats on the promotion, [Name] — well deserved."),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Big congrats, [Name]! Your work on [project] really stood out. Enjoy the moment!"),
          ResponseVariant(
              label: "Add examples",
              response:
                  "Congrats, [Name]! Your call on the Q3 rollout and the customer playbook made a real difference. Well deserved promotion."),
        ],
        takeaway:
            'Anchor congratulations with details, not just generic praise.',
        proTip: 'Adding a specific detail makes congrats more meaningful.',
        task: TaskDef(
          goal: 'Write a congrats message for a colleague winning an award.',
          pieces: [
            PromptPieceDef(
                text: 'Acknowledge the achievement', isCorrect: true),
            PromptPieceDef(text: 'Mention nothing', isCorrect: false),
            PromptPieceDef(text: 'Include a specific example', isCorrect: true),
            PromptPieceDef(text: 'Use sarcastic humor', isCorrect: false),
            PromptPieceDef(text: 'Show excitement', isCorrect: true),
          ],
          coachingNote: 'Highlighting specifics increases sincerity.',
          assembledPromptExample:
              'Write an upbeat congratulations note that names the award, includes a project detail, and shows excitement.',
        ),
      ),
      ScenarioDef(
        title: 'Chase a Late Task',
        situation:
            'A teammate hasn\'t delivered their report. You need a polite reminder.',
        prompt:
            'Draft a polite reminder email for a late report; include deadline, friendly tone.',
        output:
            'Hi [Name], just checking in on the report due yesterday. Could you share an update?',
        refinements: [
          'More formal',
          'Shorter',
          'Add examples',
        ],
        variants: [
          ResponseVariant(
              label: "Firmer",
              response:
                  "Hi [Name], checking on the [report/task] due yesterday. Please send the update by 4 pm today so we can finalize the handoff."),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Hey [Name], quick nudge on the [report/task] from yesterday. Can you send an update by 4 pm today?"),
          ResponseVariant(
              label: "Shorter",
              response:
                  "[Name], status on the [report/task] due yesterday? Need it by 4 pm today."),
          ResponseVariant(
              label: "Add details",
              response:
                  "Hi [Name], we are waiting on the [report/task] (scope: [brief scope]). Please share the draft or a blocker update by 4 pm so we can keep the client timeline."),
        ],
        takeaway:
            'Clear reminders mention task, deadline, and reason — not threats.',
        proTip: 'Tell AI the tone (friendly vs. firm) to get the right voice.',
        task: TaskDef(
          goal: 'Write a reminder email for overdue design files.',
          pieces: [
            PromptPieceDef(
                text: 'Reference the missing deliverable', isCorrect: true),
            PromptPieceDef(text: 'Skip the deadline', isCorrect: false),
            PromptPieceDef(text: 'State deadline', isCorrect: true),
            PromptPieceDef(text: 'Mention consequences', isCorrect: true),
            PromptPieceDef(text: 'Threaten harshly', isCorrect: false),
          ],
          coachingNote: 'Include the task + deadline for clarity.',
          assembledPromptExample:
              'Draft a friendly reminder email mentioning the overdue design files, deadline, and impact.',
        ),
      ),
    ]),

    // Lesson 2: Messy Notes → Updates
    const LessonDef(title: 'Messy Notes → Updates', scenarios: [
      ScenarioDef(
        title: 'Meeting Notes → Manager Update',
        situation:
            'You ran a brainstorming session. Your manager needs a clean update.',
        prompt: 'Summarize brainstorm notes into clear action items.',
        output:
            '1) Collect competitor ads, 2) Draft 5 slogans, 3) Test top 2 with customers.',
        refinements: [
          'Shorter',
          'More formal',
          'Add examples',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response:
                  "Update: 3 actions with owners; timelines confirmed; risks noted."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Management update: three action items with named owners and target dates; risks documented."),
          ResponseVariant(
              label: "Add owners",
              response:
                  "Actions: 1) Finalize scope — Nina; 2) Validate data — Sandeep; 3) Draft comms — Luis. Each with due dates."),
          ResponseVariant(
              label: "Add deadlines",
              response:
                  "Actions with dates: Nina — scope (Wed), Sandeep — data (Thu), Luis — comms draft (Fri)."),
        ],
        takeaway: 'Bullet point summaries keep updates usable.',
        proTip: 'Ask for bullet points to increase clarity.',
        task: TaskDef(
          goal: 'Turn messy project notes into clear client-ready updates.',
          pieces: [
            PromptPieceDef(text: 'Identify next steps', isCorrect: true),
            PromptPieceDef(
                text: 'Keep raw brainstorm language', isCorrect: false),
            PromptPieceDef(text: 'Use numbered bullets', isCorrect: true),
            PromptPieceDef(text: 'Exclude context', isCorrect: false),
            PromptPieceDef(text: 'Reframe as action items', isCorrect: true),
          ],
          coachingNote: 'Structure + clarity = manager-ready notes.',
          assembledPromptExample:
              'Summarize project notes into 3 numbered action items for client update.',
        ),
      ),
      ScenarioDef(
        title: 'Brainstorm Notes → Team Summary',
        situation:
            'Your brainstorm generated scattered ideas. The team needs clarity.',
        prompt: 'Turn brainstorm notes into a team summary with action items.',
        output:
            'The team should test new slogan options, gather competitor ads, and survey customers.',
        refinements: [
          'More formal',
          'Shorter',
          'Friendlier',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response:
                  "Summary for Slack: top 3 ideas and next steps with due dates."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Team summary: three prioritized ideas with assigned owners and deadlines for follow-up."),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Quick recap for Slack: here are our top 3 ideas and who owns what by when!"),
          ResponseVariant(
              label: "Add dates",
              response:
                  "Next steps: Idea A — Ana (Tue), Idea B — Paul (Thu), Idea C — Mira (Fri)."),
        ],
        takeaway: 'Frame brainstorms as next steps for momentum.',
        proTip: 'Tell AI who the audience is (team, manager, client).',
        task: TaskDef(
          goal:
              'Write a summary email turning raw brainstorm notes into next steps.',
          pieces: [
            PromptPieceDef(text: 'List clear next steps', isCorrect: true),
            PromptPieceDef(text: 'Keep raw fragments', isCorrect: false),
            PromptPieceDef(text: 'Match tone to audience', isCorrect: true),
            PromptPieceDef(text: 'Overcomplicate language', isCorrect: false),
            PromptPieceDef(text: 'Highlight deadlines', isCorrect: true),
          ],
          coachingNote: 'Adapt summaries to your audience.',
          assembledPromptExample:
              'Write a team summary with 3 next steps and clear deadlines.',
        ),
      ),
      ScenarioDef(
        title: 'Personal Notes → Client Email',
        situation:
            'You have messy notes from a call. You must send a polished client summary.',
        prompt:
            'Turn these notes into a concise client update with action items.',
        output:
            'Thank you for the call. Next: finalize design, schedule user test, deliver report by Friday.',
        refinements: [
          'More formal',
          'Shorter',
          'Friendlier',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response:
                  "Thanks for the call. Recap in one line + 3 actions with dates below."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Thank you for your time today. Below is a brief recap and three client-facing action items with due dates."),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Thanks again for the chat! Quick recap + 3 actions with dates so we can keep things moving."),
          ResponseVariant(
              label: "Add confirmations",
              response:
                  "Recap: we aligned on scope and timeline; actions: pricing sheet, draft SOW, kickoff hold — each with dates."),
        ],
        takeaway: 'Specify "client-ready" to adjust tone automatically.',
        proTip: 'Provide context like "client-facing" to set tone.',
        task: TaskDef(
          goal: 'Draft a client email from raw meeting notes.',
          pieces: [
            PromptPieceDef(text: 'Include greeting', isCorrect: true),
            PromptPieceDef(text: 'List action items', isCorrect: true),
            PromptPieceDef(text: 'State deadlines', isCorrect: true),
            PromptPieceDef(text: 'Add irrelevant jokes', isCorrect: false),
            PromptPieceDef(text: 'Keep typos', isCorrect: false),
          ],
          coachingNote: 'Context + clean format makes notes client-ready.',
          assembledPromptExample:
              'Draft a client email with greeting, 3 action items, and deadline.',
        ),
      ),
    ]),

    // Lesson 3: Inbox Tamer
    const LessonDef(title: 'Inbox Tamer', scenarios: [
      ScenarioDef(
        title: 'Sort Priority Emails',
        situation:
            'Your inbox is overloaded. You want AI to prioritize urgent items.',
        prompt: 'Sort these emails into urgent vs. later reading.',
        output:
            'Urgent: client deadline, finance report. Later: newsletter, HR tips.',
        refinements: [
          'Shorter',
          'More formal',
          'Add examples',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response:
                  "Two lists: Answer today vs Park for later, each with one-line reason."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Categorize emails into 'Answer today' and 'Park for later,' providing a succinct rationale for each item."),
          ResponseVariant(
              label: "Add deadlines",
              response:
                  "Answer today: items with today/tomorrow deadlines or blockers; Park: items with no time pressure."),
          ResponseVariant(
              label: "Add impact",
              response:
                  "Sort by urgency and impact: urgent/high-impact → 'Answer today'; low-impact/no deadline → 'Park for later'."),
        ],
        takeaway: 'Clear categories reduce inbox stress.',
        proTip: 'Ask AI to categorize by urgency and deadlines.',
        task: TaskDef(
          goal: 'Triage emails into urgent and non-urgent.',
          pieces: [
            PromptPieceDef(text: 'Sort by urgency', isCorrect: true),
            PromptPieceDef(text: 'Random order', isCorrect: false),
            PromptPieceDef(text: 'Mention deadlines', isCorrect: true),
            PromptPieceDef(text: 'Ignore context', isCorrect: false),
            PromptPieceDef(text: 'Group into categories', isCorrect: true),
          ],
          coachingNote: 'Add "urgent vs. later" for clarity.',
          assembledPromptExample:
              'Sort inbox into urgent and non-urgent with reasons.',
        ),
      ),
      ScenarioDef(
        title: 'Draft Quick Replies',
        situation: 'You need to reply fast to 5 small emails.',
        prompt: 'Draft 1-sentence polite replies for each of 5 emails.',
        output: 'Sure, thanks, will do, noted, sounds good.',
        refinements: [
          'More formal',
          'Friendlier',
          'Add examples',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response:
                  "Five 1-liners: acknowledge receipt + when you will review."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Provide five concise acknowledgments confirming receipt and a review timeline."),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Five quick thank-yous that confirm we got it and when we will take a look."),
          ResponseVariant(
              label: "Add ETA",
              response:
                  "Five one-sentence replies with clear 'I will review by <date/time>' commitments."),
        ],
        takeaway: 'Constraints make AI output concise.',
        proTip:
            'Batch replies with instructions like "polite, 1-sentence each."',
        task: TaskDef(
          goal: 'Create short replies for routine emails.',
          pieces: [
            PromptPieceDef(text: 'Reply briefly', isCorrect: true),
            PromptPieceDef(text: 'Add irrelevant details', isCorrect: false),
            PromptPieceDef(text: 'Match tone', isCorrect: true),
            PromptPieceDef(text: 'Overwrite full essays', isCorrect: false),
            PromptPieceDef(text: 'Keep under 1–2 sentences', isCorrect: true),
          ],
          coachingNote: 'Give constraints: length + tone.',
          assembledPromptExample:
              'Draft 5 polite 1-sentence replies to routine emails.',
        ),
      ),
      ScenarioDef(
        title: 'Summarize Inbox Threads',
        situation: 'You have 10-reply email threads. You want the core points.',
        prompt: 'Summarize this 10-reply thread into 3 key points.',
        output:
            'Decision made on design, budget approved, launch date confirmed.',
        refinements: [
          'Shorter',
          'More formal',
          'Add examples',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response: "Three bullets: decisions, owner, next date."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Provide an executive summary in three bullets: final decisions, accountable owner, and the next deadline."),
          ResponseVariant(
              label: "Add owners",
              response:
                  "Bullets specify: decision made, owner for follow-up, and date."),
          ResponseVariant(
              label: "Add context",
              response:
                  "Three bullets capturing final decision, owner, date; omit back-and-forth."),
        ],
        takeaway: 'Number constraints make summaries sharper.',
        proTip: 'Specify number of summary bullets.',
        task: TaskDef(
          goal: 'Summarize long threads into 3 bullets.',
          pieces: [
            PromptPieceDef(text: 'Capture key decisions', isCorrect: true),
            PromptPieceDef(text: 'Include every detail', isCorrect: false),
            PromptPieceDef(text: 'Use bullets', isCorrect: true),
            PromptPieceDef(text: 'Note participants', isCorrect: false),
            PromptPieceDef(text: 'Limit to 3 points', isCorrect: true),
          ],
          coachingNote: 'Limit scope by number of bullets.',
          assembledPromptExample:
              'Summarize long thread into 3 bullet points with decisions only.',
        ),
      ),
    ]),

    // Lesson 4: Master of Tone
    const LessonDef(title: 'Master of Tone', scenarios: [
      ScenarioDef(
        title: 'Rewrite for Formal Tone',
        situation:
            'Your draft email is too casual for a client. You need formal style.',
        prompt: 'Rewrite this email in a formal, professional tone.',
        output:
            'Dear [Client], thank you for your email. I will review the document and respond by Friday.',
        refinements: [
          'Shorter',
          'More formal',
          'Friendlier',
        ],
        variants: [
          ResponseVariant(
              label: "More formal",
              response:
                  "Dear [Name], I hope you are well. I am writing to request [request] by [date]. Please let me know if you require any additional information."),
          ResponseVariant(
              label: "Shorter",
              response:
                  "Hello [Name], requesting [request] by [date]. Please confirm. Thank you."),
          ResponseVariant(
              label: "Polite and concise",
              response:
                  "Hello [Name], could you please complete [request] by [date]? Thank you in advance."),
          ResponseVariant(
              label: "Add structure",
              response:
                  "Subject: Request by [date]. Greeting, one line for the request, and a courteous sign-off."),
        ],
        takeaway: 'Always state desired tone.',
        proTip:
            'Add "formal, professional" or "friendly" explicitly to shape tone.',
        task: TaskDef(
          goal: 'Rewrite email draft for formal client tone.',
          pieces: [
            PromptPieceDef(text: 'Include polite greeting', isCorrect: true),
            PromptPieceDef(text: 'Keep casual slang', isCorrect: false),
            PromptPieceDef(text: 'Add clear deadline', isCorrect: true),
            PromptPieceDef(text: 'Use professional phrasing', isCorrect: true),
            PromptPieceDef(
                text: 'Over-explain unnecessarily', isCorrect: false),
          ],
          coachingNote: 'Tone instructions transform output instantly.',
          assembledPromptExample:
              'Rewrite email with polite greeting, deadline, and formal tone.',
        ),
      ),
      ScenarioDef(
        title: 'Make Feedback Friendlier',
        situation: 'Your feedback draft sounds harsh. You need a softer tone.',
        prompt: 'Rewrite this feedback to sound constructive and supportive.',
        output:
            'Thanks for your work. A few areas need improvement, but overall good progress.',
        refinements: [
          'Shorter',
          'More formal',
          'Add examples',
        ],
        variants: [
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Nice work on the structure! One fix: extract the helper to reduce duplication. Happy to pair if useful."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Good progress on the structure. One recommendation: extract the helper function to avoid duplication. I am available to assist."),
          ResponseVariant(
              label: "Shorter",
              response:
                  "Strong start. Suggest extracting a helper to remove duplication. Happy to help."),
          ResponseVariant(
              label: "Add examples",
              response:
                  "Positive: tests are clear. Suggestion: extract 'parseItem()' so both paths reuse it. I can pair later today."),
        ],
        takeaway: 'Structure feedback as "praise + suggestion."',
        proTip: 'Add "constructive" to feedback prompts.',
        task: TaskDef(
          goal: 'Rewrite draft feedback for supportive tone.',
          pieces: [
            PromptPieceDef(text: 'Start with praise', isCorrect: true),
            PromptPieceDef(text: 'Only criticism', isCorrect: false),
            PromptPieceDef(text: 'Suggest improvement', isCorrect: true),
            PromptPieceDef(text: 'Stay vague', isCorrect: false),
            PromptPieceDef(text: 'Keep supportive tone', isCorrect: true),
          ],
          coachingNote: 'Feedback = praise + suggestion.',
          assembledPromptExample:
              'Write supportive feedback with praise, specific suggestion, and positive close.',
        ),
      ),
      ScenarioDef(
        title: 'Tone-Shift for Global Audience',
        situation: 'Your email may sound too blunt internationally.',
        prompt: 'Rewrite email to be polite, global-English suitable.',
        output:
            'Dear team, I appreciate your input. Let us review options and reconnect Friday.',
        refinements: [
          'Shorter',
          'More formal',
          'Friendlier',
        ],
        variants: [
          ResponseVariant(
              label: "Plain English",
              response:
                  "Update: we finished phase 1, phase 2 starts Monday, next review is on May 10. No idioms; clear dates."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Status update: phase 1 is complete; phase 2 begins on Monday; the next review is scheduled for May 10."),
          ResponseVariant(
              label: "Shorter",
              response: "Phase 1 done; phase 2 Monday; next review May 10."),
          ResponseVariant(
              label: "Add next step",
              response:
                  "Plain-English status: phase 1 done; phase 2 starts Monday; next review May 10; owner: Priya."),
        ],
        takeaway: '"Global English" ensures worldwide clarity.',
        proTip: 'Ask for "global English" to avoid slang.',
        task: TaskDef(
          goal: 'Adapt email tone for international colleagues.',
          pieces: [
            PromptPieceDef(text: 'Avoid slang', isCorrect: true),
            PromptPieceDef(text: 'Include greeting', isCorrect: true),
            PromptPieceDef(text: 'Show respect', isCorrect: true),
            PromptPieceDef(text: 'Keep blunt phrases', isCorrect: false),
            PromptPieceDef(text: 'Confirm next step', isCorrect: true),
          ],
          coachingNote: '"Global English" reduces misinterpretation.',
          assembledPromptExample:
              'Rewrite email with polite tone, no slang, and clear next step.',
        ),
      ),
    ]),

    // Lesson 5: Smart Quick Replies
    const LessonDef(title: 'Smart Quick Replies', scenarios: [
      ScenarioDef(
        title: 'Decline Politely in One Line',
        situation:
            'You get constant invites you can\'t attend. Need fast declines.',
        prompt: 'Write 1-sentence polite declines for 3 meeting invites.',
        output:
            'Thank you for the invites, but I cannot attend — please keep me updated.',
        refinements: [
          'Shorter',
          'More formal',
          'Friendlier',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response:
                  "Thanks for the invite — I have a conflict; please share notes/recording."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Thank you for the invitation; I have a conflict at that time. Please share notes or the recording."),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Thanks for looping me in — I am double-booked, but would you share notes or the recording?"),
          ResponseVariant(
              label: "Add timing",
              response:
                  "Thanks for the hold — conflict at that time; please share notes/recording and I will review by tomorrow."),
        ],
        takeaway: 'Length constraints deliver instant brevity.',
        proTip: 'Tell AI "1 sentence only" for speed.',
        task: TaskDef(
          goal: 'Draft quick 1-line declines for multiple invites.',
          pieces: [
            PromptPieceDef(text: 'Be polite', isCorrect: true),
            PromptPieceDef(text: 'Write essays', isCorrect: false),
            PromptPieceDef(text: 'Keep to 1 sentence', isCorrect: true),
            PromptPieceDef(text: 'Request updates', isCorrect: true),
            PromptPieceDef(text: 'Use rude tone', isCorrect: false),
          ],
          coachingNote: 'Constraints enforce brevity.',
          assembledPromptExample:
              'Draft 3 polite 1-sentence meeting declines that request updates.',
        ),
      ),
      ScenarioDef(
        title: 'Approve Quickly',
        situation: 'You get requests needing short approval replies.',
        prompt: 'Write 3 short approval replies, polite and clear.',
        output:
            'Approved, thanks. — Looks good, proceed. — Fine by me, go ahead.',
        refinements: [
          'Shorter',
          'More formal',
          'Friendlier',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response: "Approved — please proceed and check in Friday."),
          ResponseVariant(
              label: "More formal",
              response:
                  "Approved. Please proceed and provide a status update on Friday."),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Looks good — approved. Please proceed and ping me Friday with a quick update."),
          ResponseVariant(
              label: "Add milestone",
              response:
                  "Approved to proceed. Let us sync at the design freeze on Friday."),
        ],
        takeaway: 'Short approvals keep flow moving.',
        proTip: 'Specify "short approvals" to cut fluff.',
        task: TaskDef(
          goal: 'Draft 3 short approvals.',
          pieces: [
            PromptPieceDef(text: 'Confirm approval', isCorrect: true),
            PromptPieceDef(text: 'Be vague', isCorrect: false),
            PromptPieceDef(text: 'Add clear "go ahead"', isCorrect: true),
            PromptPieceDef(text: 'Ignore politeness', isCorrect: false),
            PromptPieceDef(text: 'Keep replies short', isCorrect: true),
          ],
          coachingNote: 'Make approvals polite but brief.',
          assembledPromptExample:
              'Write 3 polite, clear, short approval replies.',
        ),
      ),
      ScenarioDef(
        title: 'Quick Thank-Yous',
        situation:
            'You receive many small favors/help at work. Need short thanks.',
        prompt: 'Write 3 quick, polite thank-you notes for colleagues.',
        output: 'Thanks a lot! — Appreciate your help. — Many thanks.',
        refinements: [
          'Shorter',
          'More formal',
          'Friendlier',
        ],
        variants: [
          ResponseVariant(
              label: "Shorter",
              response: "Thanks, [Name] — that unblocked me."),
          ResponseVariant(
              label: "More formal",
              response: "Thank you, [Name]; your note was very helpful."),
          ResponseVariant(
              label: "Friendlier",
              response:
                  "Really appreciate the quick help, [Name] — that did the trick!"),
          ResponseVariant(
              label: "Add detail",
              response:
                  "Thanks, [Name] — your example on the API params unblocked me."),
        ],
        takeaway: 'Audience context shapes thank-you tone.',
        proTip: 'Context (colleague, client) changes formality.',
        task: TaskDef(
          goal: 'Draft 3 short thank-yous for colleagues.',
          pieces: [
            PromptPieceDef(text: 'Express thanks', isCorrect: true),
            PromptPieceDef(text: 'Add context', isCorrect: true),
            PromptPieceDef(text: 'Over-elaborate', isCorrect: false),
            PromptPieceDef(text: 'Keep under 1 sentence', isCorrect: true),
            PromptPieceDef(text: 'Be rude', isCorrect: false),
          ],
          coachingNote: 'Specify audience to adjust tone.',
          assembledPromptExample:
              'Draft 3 short colleague thank-you notes, polite and under 1 sentence.',
        ),
      ),
    ]),
  ];
}

/// Export list for all track content
final List<TrackDef> allTracks = kTracks;


void logLoadedTracks() {
  if (kDebugMode) {
    debugPrint("[CATALOG] Loaded ${allTracks.length} tracks:");
    for (final t in allTracks) {
      debugPrint(" - ${t.title} (${t.lessons.length} lessons)");
    }
  }
}


