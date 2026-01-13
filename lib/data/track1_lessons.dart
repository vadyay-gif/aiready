import '../models/scenario.dart';

final Map<String, List<Scenario>> scenariosByLessonT1 = {
  // LESSON 1 — The 5-Minute Email Superpower
  't1_l1': [
    // Decline a Meeting Invite
    const Scenario(
      id: 't1_l1_s1_decline',
      situation:
          'A meeting invite conflicts with a prior commitment. You need to decline without harming momentum, propose alternatives, and keep the tone constructive.',
      prompt:
          'Draft a polite decline for a meeting I can\'t attend. Offer two alternate slots and keep a positive, collaborative tone.',
      baseOutput: '''Hi Alex,

Thanks for the invite. I can't make the scheduled time due to a prior commitment. Could we meet Thu 3 PM or Fri 9–11 AM? Happy to review materials in advance so we can decide quickly.

Best,
Jordan''',
      refinements: [
        Refinement(label: 'More Formal', output: '''Dear Alex,

Thank you for the invitation. Unfortunately I am unavailable at the proposed time. May I suggest Thu 3:00 PM or Fri 9:00–11:00 AM? I can review any materials beforehand.

Kind regards,
Jordan Patel'''),
        Refinement(
            label: 'Warmer / Friendly',
            output:
                '''Hey Alex—appreciate the invite! I can't make that slot. Thu 3 PM or Fri morning works—send docs and I'll prep.

Thanks!
Jordan'''),
        Refinement(
            label: 'Short & Direct',
            output:
                '''Hi Alex—can't make that time. Free Thu 3 PM or Fri 9–11 AM. Happy to prep if you send docs.

Jordan'''),
      ],
      takeaway:
          'AI helps you structure a respectful "no": acknowledge, decline briefly, propose alternatives, and keep momentum. This scales to any scheduling conflict—internal reviews, client calls, and vendor meetings.',
    ),

    // Congratulate a Colleague
    const Scenario(
      id: 't1_l1_s2_congrats',
      situation:
          'A teammate you work with closely just got promoted. You want a short, sincere note that fits email or chat and reinforces a positive working relationship.',
      prompt:
          'Write a warm, professional congratulations email to a colleague who was promoted. Keep it sincere and supportive.',
      baseOutput: '''Hi Priya,

Congratulations on your promotion—so well deserved. Your leadership on the last two releases made a real difference. Excited to keep working together and support however I can.

Best,
Jordan''',
      refinements: [
        Refinement(
            label: 'More Enthusiastic',
            output:
                '''Priya—huge congrats on the promotion! Your leadership has been outstanding. Can't wait to see what you do next—count me in if I can help.

Cheers,
Jordan'''),
        Refinement(label: 'More Formal', output: '''Dear Priya,

Please accept my sincere congratulations on your promotion. Your leadership and delivery have been exemplary. I look forward to supporting your success in the new role.

Kind regards,
Jordan Patel'''),
        Refinement(
            label: 'Slack-Ready',
            output:
                'Congrats on the promotion, Priya—so deserved! 🎉 Happy to help with anything you need.'),
      ],
      takeaway:
          'AI generates on-tone congratulations quickly and lets you tune warmth/formality for email vs. chat. Use the same approach for welcomes, thanks, and milestone notes.',
    ),

    // Chase a Late Task/Report
    const Scenario(
      id: 't1_l1_s3_followup',
      situation:
          'You\'re finalizing a leadership deck today. The Q2 report due yesterday hasn\'t arrived. You need a firm but respectful nudge, with deadline and offer to help.',
      prompt:
          'Draft a polite follow-up for the Q2 report due yesterday. Explain why it\'s needed, propose a 4 PM today deadline, and offer help if blocked.',
      baseOutput: '''Hi Sam,

Quick follow-up on the Q2 report from yesterday. We're locking tomorrow's leadership deck this afternoon and your report is the last piece.

Could you send a version by 4 PM today? If anything is blocking, tell me and I'll help or adjust. A quick ETA would also help planning.

Thanks,
Jordan''',
      refinements: [
        Refinement(label: 'More Formal', output: '''Dear Sam,

I am following up on the Q2 performance report due yesterday. We are finalizing the leadership presentation this afternoon and require your report to complete it. Would you be able to send it by 4:00 PM today? If there are obstacles, please advise and I will assist accordingly.

Thank you,
Jordan Patel'''),
        Refinement(
            label: 'Warmer / Supportive',
            output:
                '''Hey Sam—nudge on the Q2 report. We're wrapping the deck and yours is the final piece. If you can send by 4 PM that'd be amazing. Stuck on anything? I can jump in. Even a quick "I'll have it by X" helps me schedule.

Thanks!
Jordan'''),
        Refinement(
            label: 'Short & Crisp',
            output:
                '''Hi Sam—checking on the Q2 report (due yesterday). Need it to finalize the deck. Please send by 4 PM; if blocked, reply with ETA and what's needed.

Jordan'''),
      ],
      takeaway:
          'AI demonstrates tone shifts (formal, friendly, direct) so you can balance clarity, empathy, and urgency in any follow-up—from overdue deliverables to status checks.',
    ),
  ],

  // LESSON 2 — Messy Notes → Professional Update
  't1_l2': [
    const Scenario(
      id: 't1_l2_s1_mgr_update',
      situation:
          'You have rough meeting notes and must brief your manager clearly. The update should list decisions, owners, and next steps.',
      prompt:
          'Turn these rough notes into a concise manager update with bullets for decisions, owners, and next steps: [notes].',
      baseOutput: '''• Budget review complete; adding +\$15k to ads
• Weekly Monday syncs agreed
• Launch confirmed for Oct 15
Next steps: Jordan—finalize budget; Priya—draft campaign; Alex—confirm vendor dates''',
      refinements: [
        Refinement(
            label: 'Shorter',
            output:
                'Budget +\$15k; weekly Monday syncs; launch Oct 15. Next: Jordan budget; Priya campaign; Alex vendor.'),
        Refinement(
            label: 'More Detailed',
            output:
                '''Budget increased +\$15k for Q4 ads; weekly Monday syncs 10:00; launch Oct 15 with phased rollout.
Next: Jordan finalize budget by Fri; Priya campaign brief by Wed; Alex vendor confirmation by Wed.'''),
        Refinement(
            label: 'Exec-Style',
            output:
                'Budget +\$15k (approved); cadence set; launch Oct 15 on track. Owners assigned; risks minimal; next deliverables this week.'),
      ],
      takeaway:
          'AI turns messy notes into structured, scannable updates you can reuse for any audience—manager, team, or client.',
    ),
    const Scenario(
      id: 't1_l2_s2_brainstorm_summary',
      situation:
          'You led a brainstorm and need to convert ideas into clear actions with creative options.',
      prompt:
          'Summarize these brainstorm notes into action items with owners and creative directions: [notes].',
      baseOutput:
          '''Actions: collect competitor ads (Jordan, Mon); draft 5 slogans (Priya, Wed); test top 2 with customers (Team, Fri). Creative: humor-driven concepts; influencer-style; 1 wild-card session.''',
      refinements: [
        Refinement(
            label: 'More Creative',
            output:
                'Explore humor angles, try influencer narratives, and schedule a wild-card ideation sprint.'),
        Refinement(
            label: 'More Action-Focused',
            output:
                'Assign owners and due dates for each item; add test plan and success metrics.'),
        Refinement(
            label: 'Add Deadlines',
            output:
                'Competitor ads by Mon 5pm; slogans by Wed 2pm; test results by Fri 4pm.'),
      ],
      takeaway:
          'AI converts brainstorming chaos into an actionable plan while preserving creative breadth—useful for campaigns, product ideas, or roadmap shaping.',
    ),
    const Scenario(
      id: 't1_l2_s3_voice_to_email',
      situation:
          'You dictated a messy voice note after a meeting. You want a structured recap email.',
      prompt:
          'Rewrite this messy voice note into a structured email recap with bullets and clear next steps: [transcript].',
      baseOutput:
          '''Hi team—recap from today: launch date confirmed Oct 15; marketing budget pending approval; weekly syncs start Monday. Next: Jordan—budget doc Fri; Priya—marketing plan Mon; Alex—vendor confirm Wed.''',
      refinements: [
        Refinement(
            label: 'Polish Tone',
            output:
                '''Dear team, thank you for today's discussion. Key outcomes: launch Oct 15; budget pending; weekly syncs begin Monday. Next steps as assigned; please confirm by EOD.'''),
        Refinement(
            label: 'Shorten',
            output:
                'Launch Oct 15; budget pending; weekly syncs Monday. Next: Jordan budget Fri; Priya plan Mon; Alex vendor Wed.'),
        Refinement(label: 'Bullet Points', output: '''• Launch: Oct 15
• Budget: pending approval
• Syncs: start Monday
Next: Jordan Fri; Priya Mon; Alex Wed.'''),
      ],
      takeaway:
          'AI cleans dictation into clean prose you can ship—great for post-meeting emails, memos, or chat summaries.',
    ),
  ],

  // LESSON 3 — Inbox Tamer — Summaries in Seconds
  't1_l3': [
    const Scenario(
      id: 't1_l3_s1_long_email',
      situation:
          'You received a 500-word client email with multiple requests, concerns, and questions. You need to extract the key points quickly for your manager.',
      prompt:
          'Summarize this long client email into 3 clear bullet points highlighting the main issues and requests.',
      baseOutput: '''• Client approved new pricing structure (+5% increase)
• Delivery timeline confirmed for Sept 10 with documentation
• Support hours need clarification—client wants weekend coverage''',
      refinements: [
        Refinement(
            label: 'More Detailed',
            output:
                '''• Pricing approved with 5% increase; contract terms accepted
• Delivery Sept 10 with full documentation and training materials
• Support hours unclear—client requesting 24/7 coverage including weekends'''),
        Refinement(
            label: 'Shorter',
            output:
                'Pricing ok (+5%); deliver Sept 10; confirm support hours.'),
        Refinement(label: 'Action-Only', output: '''• Deliver project by Sept 10
• Clarify support hours and coverage
• Prepare documentation package'''),
      ],
      takeaway:
          'AI makes long emails instantly digestible by extracting key decisions, deadlines, and action items. Perfect for busy managers who need the essence quickly.',
    ),
    const Scenario(
      id: 't1_l3_s2_project_update',
      situation:
          'You need to summarize a detailed project update into concise bullets for your boss. Focus on progress, risks, and next steps.',
      prompt:
          'Summarize this project update into 3-4 bullets for my manager: [project details].',
      baseOutput:
          '''• Website redesign 80% complete; design phase ahead of schedule
• Vendor delivery delayed 2 days; impact minimal
• Launch confirmed for Oct 15; QA testing begins next week''',
      refinements: [
        Refinement(
            label: 'Highlight Risks',
            output: '''• Design 80% done; vendor delay risks timeline by 2 days
• QA team resource gap identified; need additional tester
• Launch Oct 15 at risk if vendor delay extends'''),
        Refinement(
            label: 'Highlight Wins',
            output: '''• Design phase completed 3 days early
• Great feedback from stakeholder review
• Budget tracking under target by 5%'''),
        Refinement(
            label: 'Neutral Tone', output: '''• Redesign progress: 80% complete
• Vendor delivery: 2-day delay
• Launch date: Oct 15 confirmed'''),
      ],
      takeaway:
          'AI tailors project updates to what bosses care about—progress, risks, and timeline—while filtering out unnecessary detail.',
    ),
    const Scenario(
      id: 't1_l3_s3_thread_summary',
      situation:
          'You have a messy 20-message email thread with multiple people. You need to extract decisions made and action items assigned.',
      prompt:
          'Summarize this email thread into 3 decisions and 3 action items with owners.',
      baseOutput:
          '''Decisions: Launch date set Oct 15; budget increased +\$15k; weekly syncs on Mondays.
Actions: Jordan—finalize budget by Fri; Priya—campaign plan by Mon; Alex—vendor confirmation by Wed.''',
      refinements: [
        Refinement(
            label: 'Concise',
            output:
                'Decisions: Launch Oct 15; Budget +\$15k; Weekly syncs Monday.\nActions: Jordan Fri; Priya Mon; Alex Wed.'),
        Refinement(
            label: 'Add Deadlines',
            output:
                'Jordan: budget by Fri 5pm; Priya: plan by Mon 2pm; Alex: vendor by Wed 3pm.'),
        Refinement(
            label: 'Assign People',
            output:
                'Jordan owns budget finalization; Priya leads campaign planning; Alex handles vendor coordination.'),
      ],
      takeaway:
          'AI transforms chaotic email threads into clear decisions and actions in minutes—essential for keeping projects moving and teams aligned.',
    ),
  ],

  // LESSON 4 — Master of Tone
  't1_l4': [
    const Scenario(
      id: 't1_l4_s1_exec_formal',
      situation:
          'You drafted an email for an executive audience. You need to make it more formal, concise, and professional while maintaining clarity.',
      prompt:
          'Rewrite this email in a formal, executive-appropriate tone with concise language.',
      baseOutput: '''Dear Ms. Lee,

I confirm the Q4 performance report will be delivered by Thursday as agreed. The analysis includes all requested metrics and recommendations.

Please let me know if you need any adjustments.

Sincerely,
Jordan Patel''',
      refinements: [
        Refinement(label: 'More Polite', output: '''Dear Ms. Lee,

I am pleased to confirm delivery of the Q4 performance report by Thursday. The analysis incorporates all requested metrics and strategic recommendations.

Thank you for your patience.

Sincerely,
Jordan Patel'''),
        Refinement(label: 'More Assertive', output: '''Dear Ms. Lee,

The Q4 performance report will be ready Thursday without issue. Analysis complete with all metrics and recommendations included.

Regards,
Jordan Patel'''),
        Refinement(label: 'Add Context', output: '''Dear Ms. Lee,

Per our discussion, the Q4 performance report will be delivered Thursday. The analysis covers revenue, customer metrics, and strategic recommendations as requested.

Sincerely,
Jordan Patel'''),
      ],
      takeaway:
          'AI adjusts your voice for senior audiences by making language more formal, concise, and professional while maintaining clarity and impact.',
    ),
    const Scenario(
      id: 't1_l4_s2_client_warm',
      situation:
          'You\'re responding to a client\'s feedback. You want to make the tone warmer and more approachable while maintaining professionalism.',
      prompt:
          'Rewrite this email in a warm, approachable tone that builds rapport with the client.',
      baseOutput: '''Hi Sam,

Thank you for your thoughtful feedback on the proposal. I really appreciate you taking the time to share your insights.

I'll incorporate your suggestions and share the updated version by Friday. Your input will definitely make this stronger.

Looking forward to our continued collaboration!

Best regards,
Jordan''',
      refinements: [
        Refinement(label: 'More Enthusiastic', output: '''Hi Sam,

Your feedback is fantastic—thank you! I love how you're thinking about this and your suggestions will make a huge difference.

Updated version coming Friday. Can't wait to show you the improvements!

Thanks again,
Jordan'''),
        Refinement(label: 'Softer', output: '''Hi Sam,

Thanks for the helpful feedback. I appreciate your perspective and will make those adjustments.

I'll send the updated version by Friday.

Best,
Jordan'''),
        Refinement(label: 'Add Gratitude', output: '''Hi Sam,

Your feedback was incredibly valuable—thank you for sharing your insights. I'm excited to incorporate your suggestions.

Updated version Friday. Your partnership means a lot to us.

Best regards,
Jordan'''),
      ],
      takeaway:
          'AI helps maintain positive client relationships by adjusting warmth and enthusiasm while keeping the professional foundation strong.',
    ),
    const Scenario(
      id: 't1_l4_s3_slack_professional',
      situation:
          'You\'re replying in Slack/Teams but want to maintain professionalism while being brief and appropriate for the chat environment.',
      prompt:
          'Rewrite this Slack message to sound professional but brief and chat-appropriate.',
      baseOutput:
          'Report draft is ready for review. Please let me know if you need any changes.',
      refinements: [
        Refinement(
            label: 'More Formal',
            output:
                'The draft report is now available for your review. Please advise if any modifications are required.'),
        Refinement(
            label: 'More Friendly',
            output:
                'Hey team, draft report is up! Would love your feedback when you have a chance.'),
        Refinement(
            label: 'Add Positivity',
            output:
                'Draft report is ready! Excited to hear your thoughts and get this finalized.'),
      ],
      takeaway:
          'AI adapts tone to chat environments while maintaining professionalism—perfect for Slack, Teams, or other workplace messaging platforms.',
    ),
  ],

  // LESSON 5 — Smart Quick Replies
  't1_l5': [
    const Scenario(
      id: 't1_l5_s1_report_status',
      situation:
          'Someone asks "Is the report ready?" You need to provide a quick, professional response that gives them the information they need.',
      prompt: 'Suggest 3 short professional replies to: "Is the report ready?"',
      baseOutput: '''1. Yes, finalized and shared in the shared drive.
2. Working on final edits, will send in 30 minutes.
3. Almost done, uploading now.''',
      refinements: [
        Refinement(
            label: 'Polite',
            output:
                'Yes, finalized and shared. Let me know if you need any adjustments or have questions.'),
        Refinement(
            label: 'Direct',
            output: 'Final version is done and uploaded to the shared folder.'),
        Refinement(
            label: 'With Timeline',
            output: 'Report is 90% done, will send by 2pm today.'),
      ],
      takeaway:
          'AI speeds up repetitive responses by providing quick, professional options that give clear status updates without unnecessary detail.',
    ),
    const Scenario(
      id: 't1_l5_s2_meeting_reschedule',
      situation:
          'A colleague asks to reschedule a meeting. You need to respond professionally with flexibility or firmness as appropriate.',
      prompt: 'Suggest 3 professional responses to: "Can we move the meeting?"',
      baseOutput: '''1. Of course, what time works best for you?
2. I'm free tomorrow at 2pm if that works.
3. How about Thursday instead?''',
      refinements: [
        Refinement(
            label: 'Flexible',
            output:
                'Of course, let me know what works for you and I\'ll adjust my schedule.'),
        Refinement(
            label: 'Suggest Alt Time',
            output:
                'Tomorrow at 11am works for me—shall I send a calendar invite?'),
        Refinement(
            label: 'Decline Politely',
            output:
                'Sorry, I can\'t move it this week due to other commitments. Could we keep the original time?'),
      ],
      takeaway:
          'AI makes rescheduling smooth by providing appropriate responses based on your availability and the meeting\'s importance.',
    ),
    const Scenario(
      id: 't1_l5_s3_task_assignment',
      situation:
          'Someone asks "Can you take this on?" You need to respond assertively and clearly about your capacity and willingness.',
      prompt: 'Suggest 3 professional replies to: "Can you take this on?"',
      baseOutput: '''1. Yes, I'll handle it and add it to my priorities.
2. I'm at capacity right now, can we reassign or adjust timeline?
3. I can take it, but it will push my other deadline back—is that okay?''',
      refinements: [
        Refinement(
            label: 'Accept',
            output:
                'Happy to take this on—adding it to my priorities and will keep you updated on progress.'),
        Refinement(
            label: 'Decline',
            output:
                'I\'d like to help, but I\'m at capacity this week. Could we assign this elsewhere or adjust the timeline?'),
        Refinement(
            label: 'Negotiate',
            output:
                'I can take this, but it will push my report deadline back by 2 days—is that acceptable?'),
      ],
      takeaway:
          'AI helps you respond assertively and clearly about your capacity, whether accepting, declining, or negotiating workload.',
    ),
  ],
};
