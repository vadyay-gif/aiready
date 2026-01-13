import '../app_catalog.dart';

/// Track 2 – Productivity & Workflow (lessons 1–5)
List<LessonDef> buildTrack2Lessons() {
  return [
    LessonDef(
      title: 'Summarise Quickly and Clearly',
      scenarios: const [
        ScenarioDef(
          title: 'Summarise Meeting Notes Into Key Points',
          situation:
              'You have messy meeting notes: long paragraphs, side comments, and repeated points. You need a clean summary with only the essential decisions and next steps.',
          prompt:
              'Summarise these meeting notes into 3–5 clear bullet points focusing only on decisions made and next steps. Remove side comments and repeated information.',
          output:
              '**Summary**\n- The team will finalise the updated project timeline by Friday.\n- The vendor review session is scheduled for next Wednesday.\n- Marketing will prepare a short brief once the new timeline is confirmed.\n- No additional actions are required until the next check-in.',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '- Final timeline by Friday\n- Vendor review next Wednesday\n- Marketing brief after timeline',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '- The updated timeline will be completed by Friday.\n- A vendor review meeting is confirmed for next Wednesday.\n- Upon approval of the revised timeline, Marketing will prepare a brief.\n- No further actions are required at this time.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '- We’ll wrap the new timeline by Friday.\n- Vendor review happens next Wednesday.\n- Marketing will put together a brief once timing is set.\n- Nothing else needed before our next sync.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- The team will complete the updated project timeline by Friday after reviewing outstanding items.\n- A vendor review session is confirmed for next Wednesday to validate progress.\n- Marketing will draft a project brief once the revised dates are locked.\n- No extra steps are needed until the next scheduled check-in.',
            ),
          ],
          proTip:
              'Tell the AI what to focus on (decisions + next steps) and what to ignore (side comments), so the summary stays aligned with your goal.',
          takeaway: 'Clear scope + clear structure = cleaner AI summaries.',
          task: TaskDef(
            goal: 'Turn messy meeting notes into a clean, structured summary.',
            pieces: [
              PromptPieceDef(text: 'Produce 3–5 bullet points', isCorrect: true),
              PromptPieceDef(text: 'Focus on decisions', isCorrect: true),
              PromptPieceDef(text: 'Include next steps', isCorrect: true),
              PromptPieceDef(text: 'Remove side comments', isCorrect: true),
              PromptPieceDef(
                  text: 'Base content strictly on provided notes', isCorrect: true),
              PromptPieceDef(text: 'Add new decisions', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
              PromptPieceDef(text: 'Include opinions', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Give AI a clear extraction target (decisions + next steps) and a structure so it knows exactly how to condense the notes.',
            assembledPromptExample:
                'Summarise these notes into 3–5 bullet points focusing only on decisions and next steps.',
          ),
        ),
        ScenarioDef(
          title: 'Summarise a Long Email for a Quick Internal Update',
          situation:
              'You received a long, detailed email from a partner. Your team just needs a short update: the project is on track, one dependency is delayed, and the partner will send revised dates.',
          prompt:
              'Summarise this email into a one-sentence or two-sentence team update. Include only the project status, the delayed dependency, and the promise of revised dates.',
          output:
              'The partner confirmed the project is on track, but one dependency is delayed and they’ll send revised dates shortly. No immediate action is required.',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Project on track; one dependency delayed; revised dates coming.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'The partner confirms the project remains on schedule, with the exception of one delayed dependency. Revised dates will be provided shortly.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Quick update — project’s on track overall, one dependency is running late, and they’ll share new dates soon.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The partner reports that the project is progressing as planned, though one dependency is behind schedule. They will send updated timing details soon; nothing is needed from us yet.',
            ),
          ],
          proTip:
              'Set the summary focus and sentence limit so the AI compresses the email without drifting into unneeded detail.',
          takeaway: 'AI summarises more reliably when your prompt defines both scope and length.',
          task: TaskDef(
            goal: 'Turn a long email into a concise internal update.',
            pieces: [
              PromptPieceDef(text: 'Keep it to one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'Include only the key status', isCorrect: true),
              PromptPieceDef(text: 'Mention the issue', isCorrect: true),
              PromptPieceDef(text: 'Note the next update expected', isCorrect: true),
              PromptPieceDef(text: 'Remove all extra detail', isCorrect: true),
              PromptPieceDef(text: 'Add action items', isCorrect: false),
              PromptPieceDef(text: 'Add background explanations', isCorrect: false),
              PromptPieceDef(text: 'Expand to multiple paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Add personal opinions', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the exact message boundary — what stays in and what stays out — to force a focused summary.',
            assembledPromptExample:
                'Summarise this into one or two sentences including only status, issue, and expected next update.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Dense Paragraph Into a Simple Summary',
          situation:
              'You need to summarise a dense paragraph explaining new workflow requirements. You want a short, plain-language explanation your team can understand quickly.',
          prompt:
              'Rewrite this dense paragraph into a simple two-sentence summary in plain language. Include only what the team must do and when.',
          output:
              'The team needs to follow the updated workflow steps starting next Monday. Only the listed steps are required, and no additional documentation is needed.',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Updated workflow starts Monday; follow listed steps only.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'The updated workflow must be followed beginning next Monday. Only the specified steps are required; no additional documentation is necessary.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Starting Monday, we’ll follow the updated workflow steps. Nothing extra is needed — just the steps outlined.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The updated workflow will take effect on Monday, and the team should follow the steps provided. No extra documentation or additional tasks are required.',
            ),
          ],
          proTip:
              'Tell the AI the desired clarity level and exact length so it simplifies without losing essential meaning.',
          takeaway:
              'Precise constraints on tone and length help AI turn dense text into fast-to-read summaries.',
          task: TaskDef(
            goal: 'Turn a dense explanation into a short, plain-language summary.',
            pieces: [
              PromptPieceDef(text: 'Produce two sentences', isCorrect: true),
              PromptPieceDef(text: 'Keep language simple', isCorrect: true),
              PromptPieceDef(text: 'Include required actions', isCorrect: true),
              PromptPieceDef(text: 'Include timing', isCorrect: true),
              PromptPieceDef(text: 'Limit to essential information', isCorrect: true),
              PromptPieceDef(text: 'Add extra tasks', isCorrect: false),
              PromptPieceDef(text: 'Add technical jargon', isCorrect: false),
              PromptPieceDef(text: 'Expand length', isCorrect: false),
              PromptPieceDef(text: 'Add commentary', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI exactly what the team needs to understand — the required actions and timing — so the summary stays focused.',
            assembledPromptExample:
                'Rewrite this into two simple sentences explaining only what must be done and when.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Create Structure from Messy Input',
      scenarios: const [
        ScenarioDef(
          title: 'Turn Scattered Notes Into a Clear Checklist',
          situation:
              'You have a scattered set of notes for a small project handover. They include reminders, half-sentences, and loose thoughts. You need a clean, structured checklist.',
          prompt:
              'Turn these scattered handover notes into a clear, structured checklist of 4–6 items. Keep each item actionable and remove any unrelated or repeated content.',
          output:
              '**Handover Checklist**\n- Finalise the project timeline and share it with the team.\n- Confirm vendor availability for next week’s review session.\n- Upload the updated documents to the shared folder.\n- Notify the team once all materials are available.\n- Flag any open issues that require follow-up.',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '- Finalise timeline\n- Confirm vendor\n- Upload documents\n- Notify team',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '- Finalise and distribute the updated project timeline.\n- Verify vendor availability for the upcoming review session.\n- Upload all revised documents to the designated repository.\n- Notify the team once all materials have been uploaded.\n- Document and escalate any outstanding issues.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '- Wrap up the project timeline and share it.\n- Check in with the vendor about next week’s review.\n- Upload the updated files to the shared folder.\n- Let the team know once everything is ready.\n- Highlight anything that still needs attention.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Complete and circulate the updated timeline to align everyone.\n- Confirm vendor timing for next week’s review session.\n- Upload all current project documents to the shared workspace.\n- Notify the full team once the materials are available.\n- List any open items so follow-up can begin.',
            ),
          ],
          proTip:
              'Telling AI the structure (e.g., “4–6 items”) forces it to organise scattered inputs into clear, actionable steps.',
          takeaway:
              'Define the structure and boundaries, and AI will convert messy notes into a usable checklist.',
          task: TaskDef(
            goal: 'Turn messy notes into a structured, actionable checklist.',
            pieces: [
              PromptPieceDef(text: 'Produce 4–6 items', isCorrect: true),
              PromptPieceDef(text: 'Make each step actionable', isCorrect: true),
              PromptPieceDef(text: 'Remove unrelated notes', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Use only provided content', isCorrect: true),
              PromptPieceDef(text: 'Add extra tasks', isCorrect: false),
              PromptPieceDef(text: 'Insert humour', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Add commentary', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Specify how many items you want and the action-focused style so the AI organises fragments into a clear structure.',
            assembledPromptExample:
                'Turn these fragments into a 4–6-item actionable checklist using only the provided content.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Long Paragraph Into an Action Plan',
          situation:
              'You have a long paragraph describing work that needs to be done this week, but it’s written as one block of text. You want a simple action plan your team can follow.',
          prompt:
              'Rewrite this long paragraph into a clear action plan with 3–5 bullet points. Include only the required actions and remove any descriptive wording.',
          output:
              '**Action Plan**\n- Finalise the updated draft by Thursday.\n- Meet with the vendor to confirm remaining timelines.\n- Prepare the presentation for Friday’s leadership review.\n- Share the revised materials with the team once complete.',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: '- Finalise draft\n- Meet vendor\n- Prepare presentation\n- Share materials',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '- Finalise the updated draft by Thursday.\n- Conduct a meeting with the vendor to confirm outstanding timelines.\n- Prepare the presentation for the scheduled leadership review on Friday.\n- Distribute revised materials to the team upon completion.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '- Finish the draft by Thursday.\n- Catch up with the vendor to confirm timelines.\n- Get Friday’s presentation ready.\n- Share updated materials with the team.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Complete the updated draft by Thursday and ensure all revisions are included.\n- Meet with the vendor to confirm outstanding dates and next steps.\n- Prepare the presentation for Friday’s leadership review, including the latest project updates.\n- Share the updated deck and materials with the team after finalising.',
            ),
          ],
          proTip:
              'When you define the structure you want (e.g., “3–5 bullet points”), AI reliably converts long paragraphs into clear action lists.',
          takeaway:
              'AI follows your structure when your prompt specifies exactly how the information should be organised.',
          task: TaskDef(
            goal: 'Convert a long paragraph into a simple action plan.',
            pieces: [
              PromptPieceDef(text: 'Produce 3–5 bullet points', isCorrect: true),
              PromptPieceDef(text: 'Focus on required actions', isCorrect: true),
              PromptPieceDef(text: 'Remove descriptive wording', isCorrect: true),
              PromptPieceDef(text: 'Keep the structure simple', isCorrect: true),
              PromptPieceDef(text: 'Use only the given text', isCorrect: true),
              PromptPieceDef(text: 'Add deadlines not mentioned', isCorrect: false),
              PromptPieceDef(text: 'Add extra recommendations', isCorrect: false),
              PromptPieceDef(text: 'Insert opinions', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Specify bullet count, scope, and focus so the AI extracts the actionable parts and drops everything else.',
            assembledPromptExample:
                'Rewrite this as 3–5 bullet points listing only the required actions.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Disorganised To-Dos Into a Prioritised List',
          situation:
              'You have a scattered list of to-dos, some important and some minor. You want a prioritised list your team can follow, starting with what matters most.',
          prompt:
              'Turn these scattered tasks into a prioritised list of 4–6 items. Put the most important tasks first and keep the phrasing simple and actionable.',
          output:
              '**Prioritised Task List**\n1. Finalise the budget for next quarter.\n2. Confirm vendor timelines for open items.\n3. Update the shared project plan with new dates.\n4. Prepare slides for next week’s review.\n5. Notify the team about timeline changes.',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '1. Finalise budget\n2. Confirm vendor\n3. Update plan\n4. Prepare slides\n5. Notify team',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '1. Finalise the upcoming quarter’s budget.\n2. Confirm outstanding vendor timelines.\n3. Update the shared project plan accordingly.\n4. Prepare the slide deck for next week’s leadership review.\n5. Notify the team of any adjusted deadlines.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '1. Wrap up the budget for next quarter.\n2. Check in with the vendor on remaining timelines.\n3. Update the project plan with new dates.\n4. Get the slides ready for next week’s review.\n5. Let the team know about the changes.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '1. Finalise and confirm the next-quarter budget.\n2. Follow up with the vendor to lock in timelines.\n3. Update the project plan with any revised milestones.\n4. Prepare the slide deck for next week’s review.\n5. Communicate timeline changes to the team so everyone stays aligned.',
            ),
          ],
          proTip:
              'Tell AI the exact ordering logic (e.g., “most important first”) so it knows how to sort your tasks.',
          takeaway:
              'Clear sorting rules + clear structure = AI-generated lists that match your priorities.',
          task: TaskDef(
            goal: 'Organise disorganised tasks into a prioritised list.',
            pieces: [
              PromptPieceDef(text: 'Produce 4–6 items', isCorrect: true),
              PromptPieceDef(text: 'Sort items by importance', isCorrect: true),
              PromptPieceDef(text: 'Make tasks actionable', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Base items only on provided text', isCorrect: true),
              PromptPieceDef(text: 'Add new tasks', isCorrect: false),
              PromptPieceDef(text: 'Change priorities', isCorrect: false),
              PromptPieceDef(text: 'Add deadlines', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Define the ordering logic and length so the AI reorganises the tasks instead of rewriting or expanding them.',
            assembledPromptExample:
                'Turn these tasks into a 4–6-item prioritised list, most important first, using only the provided text.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Turn Information Into Schedules & Timelines',
      scenarios: const [
        ScenarioDef(
          title: 'Turn Notes Into a Simple Daily Schedule',
          situation:
              'You have scattered notes about what must happen today: a vendor call at 10:00, prep work before lunch, a draft review at 2:00 pm, and sending the final summary by end of day. You want a clean, chronological schedule.',
          prompt:
              'Turn these notes into a clear daily schedule in chronological order. Keep the schedule simple and include only the required activities and times.',
          output:
              '**Daily Schedule**\n- 10:00 — Vendor call\n- Before lunch — Complete prep work\n- 2:00 pm — Review the draft\n- End of day — Send the final summary',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '- 10:00 vendor call\n- Prep before lunch\n- 2:00 review\n- EOD summary',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Daily Schedule**\n- 10:00 — Conduct vendor call\n- Before lunch — Finalise preparatory work\n- 14:00 — Review the updated draft\n- End of day — Submit final summary',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '**Today’s Plan**\n- 10:00 — Vendor call\n- Before lunch — Wrap up prep work\n- 2:00 pm — Draft review\n- End of day — Send summary',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Daily Schedule**\n- 10:00 — Vendor call to confirm timelines\n- Before lunch — Complete prep tasks and organise materials\n- 2:00 pm — Review the updated draft\n- End of day — Send final summary and notify the team',
            ),
          ],
          proTip:
              'Tell AI the structure you want (“chronological schedule”) so it reorganises scattered notes instead of simply rewriting them.',
          takeaway:
              'Clear structure + clear ordering instructions = reliable AI-generated schedules.',
          task: TaskDef(
            goal: 'Turn scattered notes into a simple chronological daily schedule.',
            pieces: [
              PromptPieceDef(text: 'Organise items chronologically', isCorrect: true),
              PromptPieceDef(text: 'Use only the provided tasks', isCorrect: true),
              PromptPieceDef(text: 'Keep the structure simple', isCorrect: true),
              PromptPieceDef(text: 'Keep each item short', isCorrect: true),
              PromptPieceDef(text: 'Focus on required details only', isCorrect: true),
              PromptPieceDef(text: 'Add tasks', isCorrect: false),
              PromptPieceDef(text: 'Add reasons or explanations', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Change the timing', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Define the ordering logic (“chronological”) and structure (“simple schedule”) so the AI knows how to organise the information.',
            assembledPromptExample:
                'Turn these notes into a simple chronological schedule using only the provided tasks.',
          ),
        ),
        ScenarioDef(
          title: 'Convert Project Notes Into a Weekly Plan',
          situation:
              'You have project notes describing work that must be completed this week: finish the analysis, meet the vendor by Wednesday, prepare a draft by Thursday, and send it to leadership on Friday. You want a structured weekly plan.',
          prompt:
              'Turn these project notes into a clear weekly plan for Monday to Friday. Include what must be completed each day and keep the plan concise.',
          output:
              '**Weekly Plan**\n- **Monday:** Begin analysis and outline remaining work.\n- **Tuesday:** Complete analysis tasks.\n- **Wednesday:** Meet the vendor to confirm timelines.\n- **Thursday:** Prepare and refine the draft.\n- **Friday:** Send the draft to leadership and confirm receipt.',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '- Mon: Start analysis\n- Tue: Complete analysis\n- Wed: Vendor meeting\n- Thu: Draft\n- Fri: Send draft',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Weekly Work Plan**\n- **Monday:** Initiate analysis and define outstanding components.\n- **Tuesday:** Finalise all analysis activities.\n- **Wednesday:** Conduct vendor alignment meeting.\n- **Thursday:** Draft and refine materials for leadership review.\n- **Friday:** Submit draft to leadership and confirm delivery.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '**This Week’s Plan**\n- **Mon:** Kick off analysis\n- **Tue:** Wrap up analysis\n- **Wed:** Vendor check-in\n- **Thu:** Draft and polish\n- **Fri:** Send draft to leadership',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Weekly Plan**\n- **Monday:** Start analysis and list remaining tasks.\n- **Tuesday:** Complete analysis and review findings.\n- **Wednesday:** Meet vendor to align on remaining items.\n- **Thursday:** Draft and revise materials.\n- **Friday:** Share the final draft with leadership and provide confirmation.',
            ),
          ],
          proTip:
              'Specify the structure (“Monday–Friday plan”) so AI automatically distributes the tasks instead of grouping them.',
          takeaway:
              'AI plans more accurately when your prompt defines the timeline and required sections.',
          task: TaskDef(
            goal: 'Turn unordered project tasks into a structured weekly plan.',
            pieces: [
              PromptPieceDef(text: 'Use days of the week', isCorrect: true),
              PromptPieceDef(text: 'Assign tasks to the correct day', isCorrect: true),
              PromptPieceDef(text: 'Keep each line concise', isCorrect: true),
              PromptPieceDef(text: 'Base tasks only on provided notes', isCorrect: true),
              PromptPieceDef(text: 'Keep the structure simple', isCorrect: true),
              PromptPieceDef(text: 'Add new tasks', isCorrect: false),
              PromptPieceDef(text: 'Change the order', isCorrect: false),
              PromptPieceDef(text: 'Add commentary', isCorrect: false),
              PromptPieceDef(text: 'Expand with explanations', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the structure (“Monday to Friday”) so it distributes the tasks rather than rewriting them as a paragraph.',
            assembledPromptExample:
                'Turn these project notes into a simple Monday–Friday plan using only the provided tasks.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Requirements Into a Simple Timeline',
          situation:
              'You have notes describing when different parts of a workflow must be completed: outline on Tuesday, draft on Wednesday, review Thursday morning, and final sign-off Friday. You want a short timeline for your team.',
          prompt:
              'Turn these requirements into a simple timeline of 3–5 bullet points. Keep each point short and list the items in chronological order.',
          output:
              '**Timeline**\n- Tuesday — Complete outline\n- Wednesday — Prepare draft\n- Thursday morning — Review draft\n- Friday — Final sign-off',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: '- Tue outline\n- Wed draft\n- Thu review\n- Fri sign-off',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '- Tuesday — Complete the project outline.\n- Wednesday — Prepare and refine the draft.\n- Thursday morning — Conduct the review session.\n- Friday — Obtain final sign-off.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '- Tue — Outline\n- Wed — Draft\n- Thu am — Review\n- Fri — Sign-off',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Tuesday — Finalise the outline for workflow handoff.\n- Wednesday — Draft and refine the document.\n- Thursday morning — Hold the review session and make quick updates.\n- Friday — Complete final sign-off and confirm with the team.',
            ),
          ],
          proTip:
              'Define the structure (“3–5 bullet timeline”) and ordering (“chronological”) so AI formats the information correctly.',
          takeaway:
              'AI creates clear timelines when your prompt sets both the format and sorting rules.',
          task: TaskDef(
            goal: 'Turn workflow requirements into a short, chronological timeline.',
            pieces: [
              PromptPieceDef(text: 'Produce 3–5 bullet points', isCorrect: true),
              PromptPieceDef(text: 'List items chronologically', isCorrect: true),
              PromptPieceDef(text: 'Keep each point short', isCorrect: true),
              PromptPieceDef(text: 'Base content only on provided notes', isCorrect: true),
              PromptPieceDef(text: 'Maintain a clear structure', isCorrect: true),
              PromptPieceDef(text: 'Add new tasks', isCorrect: false),
              PromptPieceDef(text: 'Change the timings', isCorrect: false),
              PromptPieceDef(text: 'Insert explanations', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Give the AI ordering rules and length limits so it transforms notes into a clean, chronological timeline.',
            assembledPromptExample:
                'Turn these requirements into a 3–5 bullet chronological timeline using only the provided information.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Turn Information Into Structured Formats',
      scenarios: const [
        ScenarioDef(
          title: 'Turn Scattered Notes Into a Clean Table',
          situation:
              'You have scattered notes about three ongoing workstreams, including owners and deadlines. You want a clean two-column table your team can quickly scan.',
          prompt:
              'Turn these notes into a two-column table with “Workstream” and “Owner & Deadline.” Include only the essential information and keep the table concise.',
          output:
              '**Workstream Overview**\n| Workstream | Owner & Deadline |\n|------------|------------------|\n| Timeline update | Sarah — Friday |\n| Vendor alignment | Marcus — Wednesday |\n| Draft review | Priya — Thursday |',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '| Workstream | Owner |\n|------------|--------|\n| Timeline | Sarah |\n| Vendor | Marcus |\n| Draft | Priya |',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '| Workstream | Responsible Party & Deadline |\n|------------|--------------------------------|\n| Timeline update | Sarah — completion by Friday |\n| Vendor alignment | Marcus — meeting Wednesday |\n| Draft review | Priya — review by Thursday |',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '| Workstream | Who & When |\n|------------|--------------|\n| Timeline update | Sarah — Fri |\n| Vendor check-in | Marcus — Wed |\n| Draft review | Priya — Thu |',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '| Workstream | Owner & Timing |\n|------------|----------------|\n| Timeline update | Sarah — reviewing items, ready Friday |\n| Vendor alignment | Marcus — scheduling discussion by Wednesday |\n| Draft review | Priya — finalising review by Thursday |',
            ),
          ],
          proTip:
              'Give the AI the target structure and column names so it knows exactly how to arrange your information.',
          takeaway: 'AI creates cleaner tables when you specify both layout and scope clearly.',
          task: TaskDef(
            goal: 'Convert scattered notes into a simple structured table.',
            pieces: [
              PromptPieceDef(text: 'Use a two-column table', isCorrect: true),
              PromptPieceDef(text: 'Include only the provided items', isCorrect: true),
              PromptPieceDef(text: 'Keep labels simple', isCorrect: true),
              PromptPieceDef(text: 'Keep content concise', isCorrect: true),
              PromptPieceDef(text: 'Organise items cleanly', isCorrect: true),
              PromptPieceDef(text: 'Add extra rows', isCorrect: false),
              PromptPieceDef(text: 'Change deadlines', isCorrect: false),
              PromptPieceDef(text: 'Add descriptive commentary', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the structure and column names so it knows how to transform loose notes into a clear table.',
            assembledPromptExample:
                'Turn these notes into a two-column table with the given items only.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Feedback Fragments Into a Thematic List',
          situation:
              'You have several pieces of feedback from different colleagues. They overlap and repeat. You want a clean list grouped into themes.',
          prompt:
              'Turn this feedback into a grouped list of 3–5 themes. Combine similar points and keep phrasing simple.',
          output:
              '**Feedback Themes**\n- **Clarity:** Several people found sections unclear and suggested tightening the wording.\n- **Timing:** The timeline feels too tight, and more buffer may be needed.\n- **Collaboration:** Team members want more opportunities to give input earlier in the process.\n- **Resources:** Some colleagues requested additional examples or reference documents.',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: '- Clarity\n- Timing\n- Collaboration\n- Resources',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '- **Clarity:** Multiple reviewers reported unclear sections requiring refinement.\n- **Timeline:** Reviewers indicated the schedule may need additional buffer.\n- **Collaboration:** Increased opportunities for early team input were recommended.\n- **Resources:** Request for supplementary reference materials.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '- **Clarity:** A few parts could be clearer.\n- **Timing:** Timeline feels tight.\n- **Collaboration:** People want earlier involvement.\n- **Resources:** More examples would help.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- **Clarity:** Several sections need clearer explanations or simplified phrasing.\n- **Timing:** The timeline may require extra buffer based on team workload.\n- **Collaboration:** Reviewers want more structured points for early input.\n- **Resources:** Additional examples and reference docs were requested.',
            ),
          ],
          proTip:
              'Tell AI the grouping rule (“themes”) so it merges similar comments instead of listing them separately.',
          takeaway:
              'Clear grouping instructions help AI organise fragmented input more effectively.',
          task: TaskDef(
            goal: 'Organise feedback fragments into themes.',
            pieces: [
              PromptPieceDef(text: 'Produce 3–5 themes', isCorrect: true),
              PromptPieceDef(text: 'Group similar feedback', isCorrect: true),
              PromptPieceDef(text: 'Keep language simple', isCorrect: true),
              PromptPieceDef(text: 'Base content only on provided points', isCorrect: true),
              PromptPieceDef(text: 'Avoid adding new themes', isCorrect: true),
              PromptPieceDef(text: 'Invent new feedback', isCorrect: false),
              PromptPieceDef(text: 'Add emotional commentary', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Rename themes inaccurately', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the grouping method so it merges overlapping points into themes instead of rewriting each line.',
            assembledPromptExample:
                'Turn this feedback into a 3–5-theme grouped list using only the provided points.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Instructions Into a Workflow Diagram Outline',
          situation:
              'You have a set of unordered instructions. You want AI to convert them into a workflow outline with steps and sub-steps.',
          prompt:
              'Turn these instructions into a simple workflow outline with 3–5 main steps and optional sub-steps. Keep the structure clean and avoid adding new actions.',
          output:
              '**Workflow Outline**\n1. **Prepare Materials**\n   - Gather documents\n   - Confirm latest versions\n2. **Review With Team**\n   - Share materials\n   - Collect quick input\n3. **Finalise Package**\n   - Apply feedback\n   - Send final version',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: '1. Prepare\n2. Review\n3. Finalise',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '1. **Preparation Phase**\n   - Compile all required documentation\n   - Verify accuracy and versioning\n2. **Review Phase**\n   - Distribute materials to stakeholders\n   - Capture targeted feedback\n3. **Finalisation Phase**\n   - Implement revisions\n   - Issue final output',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '1. **Get Ready**\n   - Gather docs\n   - Make sure they’re updated\n2. **Check-In**\n   - Share with team\n   - Grab quick feedback\n3. **Wrap Up**\n   - Apply changes\n   - Send final version',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '1. **Prepare Materials**\n   - Collect all current documents\n   - Confirm versions are up to date\n2. **Team Review**\n   - Share materials for quick review\n   - Gather high-level feedback\n3. **Finalise Package**\n   - Apply updates\n   - Send final package to recipients',
            ),
          ],
          proTip:
              'Define the structure (steps + optional sub-steps) so AI converts unordered instructions into an organised workflow.',
          takeaway:
              'AI produces clearer workflows when your prompt specifies the framework and limits.',
          task: TaskDef(
            goal: 'Turn unordered instructions into a structured workflow outline.',
            pieces: [
              PromptPieceDef(text: 'Produce 3–5 steps', isCorrect: true),
              PromptPieceDef(text: 'Include optional sub-steps', isCorrect: true),
              PromptPieceDef(text: 'Use only provided instructions', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Make steps actionable', isCorrect: true),
              PromptPieceDef(text: 'Add new tasks', isCorrect: false),
              PromptPieceDef(text: 'Change sequence', isCorrect: false),
              PromptPieceDef(text: 'Add explanations', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Give AI the exact structure — steps + optional sub-steps — so it organises instructions cleanly without inventing content.',
            assembledPromptExample:
                'Turn these instructions into a structured 3–5-step workflow with optional sub-steps, using only the provided content.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Create Reusable Prompts for Daily Work',
      scenarios: const [
        ScenarioDef(
          title: 'Create a Reusable Prompt for Daily Summaries',
          situation:
              'You often need to summarise your workday for your manager. Instead of rewriting instructions every time, you want a reusable prompt that will generate a concise daily summary based on your notes.',
          prompt:
              'Create a reusable daily-summary prompt that asks AI to turn my bullet notes into a short paragraph covering key progress, issues, and next steps. Keep the template clear and easy to reuse.',
          output:
              '**Reusable Prompt – Daily Summary**\nTurn the bullet notes below into a short daily summary covering three elements:\n- Key progress made today\n- Any issues or delays\n- Next steps planned for tomorrow\n\nKeep the summary concise and in one short paragraph.\nNotes: [paste bullet notes here]',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  'Turn these notes into a one-paragraph daily summary of progress, issues, and next steps.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Convert the notes below into a concise one-paragraph daily summary capturing key progress, issues affecting timelines, and next steps for tomorrow. Maintain a professional tone and include only essential points.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Turn these notes into a short, friendly daily update with what got done, anything that slowed things down, and what’s planned for tomorrow. Keep it to one paragraph.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Convert these notes into a clear daily summary in one paragraph. Include today’s key progress, any blockers or delays, and the next steps for tomorrow. Keep wording concise and avoid adding content not in the notes.',
            ),
          ],
          proTip:
              'Tell AI exactly what the prompt should generate and what elements it must include — this turns your request into a reusable pattern.',
          takeaway: 'Reusable prompts work best when you specify structure, scope, and placeholders.',
          task: TaskDef(
            goal: 'Create a reusable daily-summary prompt.',
            pieces: [
              PromptPieceDef(text: 'Include clear instructions', isCorrect: true),
              PromptPieceDef(text: 'Keep to one paragraph', isCorrect: true),
              PromptPieceDef(text: 'Use placeholders', isCorrect: true),
              PromptPieceDef(text: 'Specify required elements', isCorrect: true),
              PromptPieceDef(text: 'Keep wording simple', isCorrect: true),
              PromptPieceDef(text: 'Add extra fields', isCorrect: false),
              PromptPieceDef(text: 'Add emotional commentary', isCorrect: false),
              PromptPieceDef(text: 'Expand into long instructions', isCorrect: false),
              PromptPieceDef(text: 'Add humour', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Give the AI a clear structure and placeholders so the prompt becomes a reusable workflow tool.',
            assembledPromptExample:
                'Create a reusable one-paragraph daily-summary prompt with placeholders for notes, progress, issues, and next steps.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Template Prompt for Turning Notes Into Emails',
          situation:
              'You often write emails based on meeting notes or rough drafts. You want a reusable template prompt that reliably turns your notes into a short, professional email.',
          prompt:
              'Create a reusable email-writing prompt that turns rough notes into a short, professional email. Include placeholders for greeting, purpose, key details, and next steps. Keep it to two or three short paragraphs.',
          output:
              '**Reusable Email Prompt**\nTurn the notes below into a short, professional email in two or three brief paragraphs.\nInclude:\n- A clear greeting\n- A short introduction explaining the purpose\n- The key details from the notes\n- Any next steps or actions\n- A polite closing\n\nNotes: [paste notes here]',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  'Turn these notes into a short, professional email with greeting, purpose, details, and closing.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Convert the notes below into a concise, professional email consisting of two or three paragraphs. Include a formal greeting, a clear purpose statement, key details, next steps, and a suitable closing.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Turn these notes into a friendly, professional email in two or three short paragraphs, with greeting, purpose, key details, next steps, and closing.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Turn the notes below into a clear, structured email in two or three paragraphs. Include greeting, purpose, key information, next steps, and a courteous closing, using only the provided notes.',
            ),
          ],
          proTip:
              'When you tell AI the structure and list the components it must include, you create a prompt you can reuse across different situations.',
          takeaway:
              'Reusable email prompts work best when your instructions define the exact building blocks.',
          task: TaskDef(
            goal: 'Create a reusable prompt for turning notes into emails.',
            pieces: [
              PromptPieceDef(text: 'Include placeholders', isCorrect: true),
              PromptPieceDef(text: 'Require two or three paragraphs', isCorrect: true),
              PromptPieceDef(text: 'List required components', isCorrect: true),
              PromptPieceDef(text: 'Keep tone professional', isCorrect: true),
              PromptPieceDef(
                  text: 'Base structure only on given instructions', isCorrect: true),
              PromptPieceDef(text: 'Add content not in notes', isCorrect: false),
              PromptPieceDef(text: 'Remove key elements', isCorrect: false),
              PromptPieceDef(text: 'Suggest sending attachments', isCorrect: false),
              PromptPieceDef(text: 'Add a signature format', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the required sections and tone so the prompt consistently produces well-structured emails.',
            assembledPromptExample:
                'Create a reusable prompt that turns notes into a two- or three-paragraph professional email with placeholders and required sections.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Template for Quick Task Summaries',
          situation:
              'You often summarise tasks for colleagues and want a short template with placeholders for task, status, and next step.',
          prompt:
              'Create a one- or two-sentence template for summarising tasks, including placeholders for the task name, current status, and next step.',
          output:
              '**Task Summary Template**\n[Task name] — Current status: [status]. Next step: [next action].',
          refinements: ['Shorter', 'More formal', 'Friendlier', 'Additional detail'],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: '[Task] — [status]. Next: [action].',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '[Task name] — Status: [status]. The next step is [next action], and further updates will follow as required.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Quick update on [task name] — it’s currently [status]. Next up: [next action].',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Here’s a quick summary of [task name] — current status is [status], and the next step is [next action]. Further updates will follow once progress continues.',
            ),
          ],
          proTip:
              'Specify the placeholders and sentence limit so AI keeps the template reusable and prevents unnecessary expansion.',
          takeaway:
              'AI builds stronger templates when your prompt defines both the format and the required fields.',
          task: TaskDef(
            goal: 'Create a short task-summary template.',
            pieces: [
              PromptPieceDef(text: 'Use one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'Include placeholders', isCorrect: true),
              PromptPieceDef(text: 'Keep language neutral', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Base content only on requirements', isCorrect: true),
              PromptPieceDef(text: 'Add examples', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated fields', isCorrect: false),
              PromptPieceDef(text: 'Use humour', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the exact placeholders and sentence limit so it generates a reusable summary template.',
            assembledPromptExample:
                'Create a one- or two-sentence task-summary template with placeholders for task, status, and next step.',
          ),
        ),
      ],
    ),
  ];
}

