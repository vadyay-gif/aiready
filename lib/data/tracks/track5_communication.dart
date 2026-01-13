import '../app_catalog.dart';

/// Track 5 – Communication (lessons 1–5)
List<LessonDef> buildTrack5Lessons() {
  return [
    LessonDef(
      title: 'Write Better Short Messages',
      scenarios: const [
        ScenarioDef(
          title: 'Turn a Rough Note Into a Clear Short Message',
          situation:
              'You have a rough internal note that is too long and unclear. You want AI to rewrite it into a short, direct message you can send on Slack or email.',
          prompt:
              'Rewrite this rough note into a short, clear message that keeps only the essential information. Maintain a professional but concise tone.',
          output:
              "**Short Message**\n- The review is almost complete.\n- We'll finalise the updates tomorrow.\n- I'll share the revised version once it's ready.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "**Short Message**\n- Review nearly done.\n- Updates final tomorrow.\n- I'll share the new version then.",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Short Message**\n- The review is nearing completion.\n- We expect to finalise the updates tomorrow.\n- I will share the revised version once it is ready.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Short Message**\n- Quick update: the review's nearly done.\n- We'll wrap up the updates tomorrow.\n- I'll send the revised version as soon as it's ready.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Short Message**\n- The review is close to completion, with only minor checks remaining.\n- We plan to finalise all updates tomorrow.\n- I will send the revised version as soon as it is ready.',
            ),
          ],
          proTip:
              'Control length by specifying "short, essential information only, max 2–3 lines" in your prompt.',
          takeaway: 'Clear constraints lead to predictable, concise messages.',
          task: TaskDef(
            goal: 'Rewrite rough notes into a short, professional message.',
            pieces: [
              PromptPieceDef(text: 'Keep the message short', isCorrect: true),
              PromptPieceDef(
                  text: 'Confirm key timing or status', isCorrect: true),
              PromptPieceDef(
                  text: 'Maintain a professional tone', isCorrect: true),
              PromptPieceDef(
                  text: 'Keep only essential information', isCorrect: true),
              PromptPieceDef(
                  text: 'Follow a 2–3 line structure if requested',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add explanations not requested', isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for unrelated information', isCorrect: false),
              PromptPieceDef(
                  text: 'Add informal or casual language', isCorrect: false),
              PromptPieceDef(text: 'Expand beyond a few lines', isCorrect: false),
              PromptPieceDef(
                  text: 'Change the meaning of the original update',
                  isCorrect: false),
            ],
            coachingNote:
                'Use prompts like "Rewrite as a short message with X lines and no added details" to enforce brevity.',
            assembledPromptExample:
                'Rewrite this into a 2–3 line message confirming delivery by Friday, keeping only essential information.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Long Update Into a Brief Status Message',
          situation:
              'You have a long update that is hard for colleagues to scan. You want AI to condense it into a brief status message you can post in a channel.',
          prompt:
              'Condense this long update into a brief status message with 3 bullets: progress, current focus, and anything blocking the work. Keep it quick to read.',
          output:
              '**Status Message**\n- Progress: Testing phase completed.\n- Current focus: Final content review.\n- Blockers: Waiting for vendor approval on two items.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '**Status Message**\n- Testing done.\n- Reviewing content now.\n- Waiting on vendor approval.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Status Message**\n- Progress: The testing phase has been completed.\n- Current focus: We are conducting the final content review.\n- Blockers: We await vendor approval on two outstanding items.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Status Message**\n- Quick update: testing's done.\n- We're reviewing the content now.\n- Just waiting on vendor approval for two items.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Status Message**\n- Progress: The testing phase is complete, with all major issues resolved.\n- Current focus: We're finishing the final content review before signoff.\n- Blockers: Two items still require vendor approval before we proceed.",
            ),
          ],
          proTip: 'List required bullet categories in your prompt to force structure.',
          takeaway:
              'Bullet-category prompts prevent the model from adding or skipping information.',
          task: TaskDef(
            goal: 'Condense a long update into a short, structured status message.',
            pieces: [
              PromptPieceDef(text: 'Include progress', isCorrect: true),
              PromptPieceDef(text: 'Include a blocker', isCorrect: true),
              PromptPieceDef(
                  text: 'Include current focus or next steps', isCorrect: true),
              PromptPieceDef(
                  text: 'Use the requested bullet labels', isCorrect: true),
              PromptPieceDef(text: 'Keep the message brief', isCorrect: true),
              PromptPieceDef(text: 'Add new issues', isCorrect: false),
              PromptPieceDef(
                  text: 'Rewrite as a long paragraph', isCorrect: false),
              PromptPieceDef(text: 'Change the status details', isCorrect: false),
              PromptPieceDef(text: 'Add emotional language', isCorrect: false),
              PromptPieceDef(
                  text: 'Insert recommendations not requested',
                  isCorrect: false),
            ],
            coachingNote:
                'Use: "Use exactly these bullet labels: Progress, Focus, Blockers."',
            assembledPromptExample:
                'Condense this into 3 bullets — Progress, Focus, Blockers — without adding or removing information.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Message Into a Polite, Professional Request',
          situation:
              'You need to ask a colleague for something, but your draft sounds too blunt. You want AI to rewrite it into a short, polite message that still gets to the point.',
          prompt:
              'Rewrite this as a short, polite request. Keep it direct, use no more than three lines, and maintain a professional tone.',
          output:
              "**Polite Request**\n- Could you share the updated file when you have a moment?\n- We need it for today's review session.\n- Thanks for your help.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "**Polite Request**\n- Could you send the updated file?\n- We need it for today's review.\n- Thanks.",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  "**Polite Request**\n- Could you please provide the updated file at your earliest convenience?\n- It is required for today's review session.\n- Thank you for your assistance.",
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Polite Request**\n- Quick favour — could you share the updated file?\n- We'll use it in today's review.\n- Really appreciate it!",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Polite Request**\n- When you have a moment, could you please share the updated file?\n- We'll be using it for the review session scheduled for today.\n- Thank you in advance for your help.",
            ),
          ],
          proTip:
              'Tone-shaping prompts should include constraints like "polite but direct" and "no added details."',
          takeaway:
              'Explicit tone instructions help the model soften or tighten wording without drifting.',
          task: TaskDef(
            goal: 'Rewrite a blunt request into a short, polite, professional message.',
            pieces: [
              PromptPieceDef(text: 'Make the tone polite', isCorrect: true),
              PromptPieceDef(text: 'Keep the message short', isCorrect: true),
              PromptPieceDef(text: 'Keep the request direct', isCorrect: true),
              PromptPieceDef(text: 'Stay within three lines', isCorrect: true),
              PromptPieceDef(
                  text: 'Preserve the original intent of the request',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add apologies or emotional language', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated questions', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(
                  text: 'Rewrite the request into something new',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add justification not included in the original',
                  isCorrect: false),
            ],
            coachingNote:
                'Use: "Rewrite politely in max 3 lines without adding justification" to tightly control tone and length.',
            assembledPromptExample:
                'Rewrite this into a short, polite request confirming the meeting time, max 3 lines.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Write Clear Professional Requests',
      scenarios: const [
        ScenarioDef(
          title: 'Turn a Vague Request Into a Clear, Professional One',
          situation:
              "Your draft message asks someone for information, but it's vague and incomplete. You want AI to turn it into a clear professional request that states exactly what you need and when you need it.",
          prompt:
              "Rewrite this vague request into a clear, professional message that states: (1) what information is needed, (2) why it's needed, and (3) when it is required. Keep it concise.",
          output:
              "**Professional Request**\n- Could you share the final budget figures?\n- We need them to prepare tomorrow's report.\n- Please send them by the end of today.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "**Professional Request**\n- Please send the final budget figures today.\n- They're needed for tomorrow's report.\n- Thanks in advance.",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  "**Professional Request**\n- Kindly provide the final budget figures at your earliest convenience.\n- They are required to complete tomorrow's report.\n- Please submit them by end of day.",
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Professional Request**\n- Could you share the final budget figures when you get a chance?\n- We need them for tomorrow's report.\n- Thanks so much for your help!",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Professional Request**\n- Could you please send the final budget figures when you have a moment?\n- We'll use them to complete tomorrow's report and ensure the numbers are accurate.\n- If possible, please share them by the end of today.",
            ),
          ],
          proTip:
              'Tell the model exactly which elements the request must contain so the rewrite stays complete.',
          takeaway:
              'Prompts that specify the required components ("what, why, when") produce clearer professional requests.',
          task: TaskDef(
            goal:
                'Rewrite vague or incomplete requests into clear, structured professional messages.',
            pieces: [
              PromptPieceDef(text: 'State clearly what is needed', isCorrect: true),
              PromptPieceDef(text: "Explain why it's needed", isCorrect: true),
              PromptPieceDef(text: "Mention when it's needed", isCorrect: true),
              PromptPieceDef(text: 'Keep the message concise', isCorrect: true),
              PromptPieceDef(
                  text: 'Maintain a professional tone', isCorrect: true),
              PromptPieceDef(text: 'Add extra context', isCorrect: false),
              PromptPieceDef(text: 'Change the type of request', isCorrect: false),
              PromptPieceDef(text: 'Add emotional language', isCorrect: false),
              PromptPieceDef(text: 'Expand into long paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated details', isCorrect: false),
            ],
            coachingNote:
                'Use: "Rewrite using what/why/when structure in 2–3 lines" to guide the model.',
            assembledPromptExample:
                'Rewrite this as a 3-line message stating what you need, why you need it, and when.',
          ),
        ),
        ScenarioDef(
          title: 'Turn an Overly Long Request Into a Short, Direct One',
          situation:
              "Your draft message contains too much explanation before making the actual request. You want AI to shorten it into a clear, direct ask that respects the recipient's time.",
          prompt:
              'Rewrite this long request into a short, direct message that includes: (1) the request, (2) the deadline, and (3) any required attachments or details. Keep it efficient and polite.',
          output:
              '**Direct Request**\n- Could you review the attached draft?\n- Please share comments by Thursday.\n- Let me know if anything needs clarification.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '**Direct Request**\n- Please review the attached draft.\n- Send comments by Thursday.\n- Happy to clarify if needed.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Direct Request**\n- Kindly review the attached draft at your earliest convenience.\n- Please provide any comments by Thursday.\n- Do inform me if further clarification is required.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Direct Request**\n- Would you mind reviewing the attached draft?\n- If you can, send comments by Thursday.\n- Let me know if anything's unclear!",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Direct Request**\n- Could you review the attached draft when convenient?\n- We're aiming to collect all comments by Thursday to stay on schedule.\n- Feel free to reach out with any questions.",
            ),
          ],
          proTip: 'If you want brevity, include constraints like "short, direct, max 3 lines."',
          takeaway: 'Tight structure instructions reduce verbosity.',
          task: TaskDef(
            goal: 'Condense long, over-explained requests into short, direct messages.',
            pieces: [
              PromptPieceDef(text: 'State the request clearly', isCorrect: true),
              PromptPieceDef(text: 'Include the deadline', isCorrect: true),
              PromptPieceDef(
                  text: 'Mention attachments if relevant', isCorrect: true),
              PromptPieceDef(text: 'Keep the message short', isCorrect: true),
              PromptPieceDef(text: 'Maintain a polite tone', isCorrect: true),
              PromptPieceDef(text: 'Add new tasks', isCorrect: false),
              PromptPieceDef(text: 'Add project background', isCorrect: false),
              PromptPieceDef(text: 'Change the meaning', isCorrect: false),
              PromptPieceDef(text: 'Rewrite as a full paragraph', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
            ],
            coachingNote:
                'Use: "Rewrite into 3 direct lines: request, deadline, attachments."',
            assembledPromptExample:
                'Rewrite this into a short 3-line request with the ask, the deadline, and attachment reference.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Complex Multi-Part Ask Into a Clean, Organised Request',
          situation:
              'You need to request several items at once, but your draft message is messy and confusing. You want AI to rewrite it into a clean list with each request clearly separated.',
          prompt:
              'Rewrite this message into a clear list of three separate requests, each on its own line, with a short statement of why each item is needed.',
          output:
              "**Organised Request**\n- Please send the updated timeline — we need it to plan next week's work.\n- Please confirm the resource availability — this will help us finalise assignments.\n- Please share the revised designs — we must review them before signoff.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '**Organised Request**\n- Send updated timeline — needed for next week.\n- Confirm resource availability — needed for assignments.\n- Share revised designs — needed for signoff.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  "**Organised Request**\n- Kindly provide the updated timeline, which is required for next week's planning.\n- Please confirm resource availability so we may finalise assignments.\n- Please share the revised designs, as they must be reviewed prior to signoff.",
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '**Organised Request**\n- Could you send the updated timeline? We need it for next week.\n- And could you confirm resource availability? Helps us plan assignments.\n- Also, please share the revised designs so we can review them before signoff!',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Organised Request**\n- When possible, please send the updated project timeline; we'll use it to plan tasks for next week.\n- Please confirm resource availability for the upcoming sprint so we can allocate work appropriately.\n- Kindly share the revised design files, as we must review them before final approval.",
            ),
          ],
          proTip:
              'Tell the model exactly how many items you want and what structure each should follow.',
          takeaway:
              'Clear structural rules prevent the model from merging items or adding unnecessary detail.',
          task: TaskDef(
            goal: 'Rewrite multi-item requests into clean, organised lists.',
            pieces: [
              PromptPieceDef(text: 'Request three separate items', isCorrect: true),
              PromptPieceDef(text: 'Provide a short reason for each', isCorrect: true),
              PromptPieceDef(text: 'Use one line per item', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone professional', isCorrect: true),
              PromptPieceDef(
                  text: 'Maintain the requested structure', isCorrect: true),
              PromptPieceDef(
                  text: 'Combine items into one sentence', isCorrect: false),
              PromptPieceDef(text: 'Add items not requested', isCorrect: false),
              PromptPieceDef(
                  text: 'Change the meaning of the requests', isCorrect: false),
              PromptPieceDef(text: 'Expand with excessive detail', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated instructions', isCorrect: false),
            ],
            coachingNote: 'Use: "3 items, each with a reason, one per line."',
            assembledPromptExample:
                "Rewrite into three separate one-line requests, each explaining briefly why it's needed.",
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Write Messages With the Right Tone',
      scenarios: const [
        ScenarioDef(
          title: 'Rewrite a Message to Sound More Polite',
          situation:
              'Your message is technically correct but sounds too direct. You want AI to rewrite it into a polite, professional tone without adding unnecessary wording.',
          prompt:
              'Rewrite this message in a polite, professional tone while keeping it short and direct.',
          output:
              '**Rewritten Message**\n- Could you please review the draft when you have a moment?\n- Let me know if anything needs clarification.\n- Thank you for your help.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '**Rewritten Message**\n- Please review the draft when you can.\n- Let me know if you have questions.\n- Thanks.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Rewritten Message**\n- Kindly review the draft at your earliest convenience.\n- Please advise if any areas require clarification.\n- Thank you for your assistance.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '**Rewritten Message**\n- Could you take a quick look at the draft when you get a moment?\n- Happy to clarify anything.\n- Thanks so much!',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Rewritten Message**\n- When you have a moment, could you kindly review the draft?\n- Feel free to reach out if anything requires clarification.\n- Thank you in advance for your assistance.',
            ),
          ],
          proTip:
              'If you want the AI to adjust tone without changing content, specify "keep structure, change tone only."',
          takeaway: 'Tone control works best when change boundaries are explicitly defined.',
          task: TaskDef(
            goal: 'Rewrite a direct or blunt message into a polite, professional one.',
            pieces: [
              PromptPieceDef(text: 'Rewrite in a polite tone', isCorrect: true),
              PromptPieceDef(text: 'Maintain professionalism', isCorrect: true),
              PromptPieceDef(text: 'Keep the meaning unchanged', isCorrect: true),
              PromptPieceDef(text: 'Keep the message short', isCorrect: true),
              PromptPieceDef(
                  text: 'Preserve the structure if requested', isCorrect: true),
              PromptPieceDef(
                  text: 'Add apologies or emotional language', isCorrect: false),
              PromptPieceDef(
                  text: 'Add details not in the original', isCorrect: false),
              PromptPieceDef(text: 'Change the request', isCorrect: false),
              PromptPieceDef(text: 'Expand into long paragraphs', isCorrect: false),
              PromptPieceDef(
                  text: 'Turn it into a different type of message', isCorrect: false),
            ],
            coachingNote:
                'Use prompts like "Rewrite politely in 2–3 lines without adding details."',
            assembledPromptExample:
                'Rewrite this into a polite 2–3 line request without changing the meaning.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite a Message to Sound More Formal',
          situation:
              'You need to send a message to leadership, but your original draft is too casual. You want AI to rewrite it in a more formal tone while preserving key information.',
          prompt:
              'Rewrite this message in a more formal tone while keeping the meaning and structure the same.',
          output:
              '**Formal Message**\n- The report has been completed and is ready for review.\n- Please let me know if any adjustments are required.\n- I appreciate your time.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '**Formal Message**\n- The report is ready for review.\n- Please advise if changes are needed.\n- Thank you.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Formal Message**\n- The report has been finalised and is now ready for your review.\n- Kindly inform me if any revisions are required.\n- Thank you for your time and consideration.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Formal Message**\n- The report is ready for you to review.\n- Let me know if you'd like any changes.\n- Thanks for taking a look!",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Formal Message**\n- The report has now been finalised and is ready for your review at your convenience.\n- Kindly inform me if any revisions are necessary.\n- Thank you for your time and consideration.',
            ),
          ],
          proTip:
              'Pair tone instructions with clarity constraints ("keep structure, keep meaning") to prevent drift.',
          takeaway:
              'Explicitly separating tone-change instructions from content-preservation instructions improves results.',
          task: TaskDef(
            goal: 'Rewrite a casual message into a more formal one.',
            pieces: [
              PromptPieceDef(text: 'Rewrite the message formally', isCorrect: true),
              PromptPieceDef(text: 'Preserve the meaning', isCorrect: true),
              PromptPieceDef(text: 'Preserve the structure', isCorrect: true),
              PromptPieceDef(text: 'Keep the message concise', isCorrect: true),
              PromptPieceDef(
                  text: 'Maintain a professional tone', isCorrect: true),
              PromptPieceDef(text: 'Add new content', isCorrect: false),
              PromptPieceDef(text: 'Remove key information', isCorrect: false),
              PromptPieceDef(text: 'Add personal commentary', isCorrect: false),
              PromptPieceDef(text: 'Expand into long paragraphs', isCorrect: false),
              PromptPieceDef(
                  text: 'Change the intent of the message', isCorrect: false),
            ],
            coachingNote:
                'Use: "Rewrite formally while keeping the meaning and structure identical."',
            assembledPromptExample:
                'Rewrite this message in a more formal tone while keeping the same structure and meaning.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite a Message to Sound More Friendly and Approachable',
          situation:
              "Your message is correct but feels too stiff for the colleague you're writing to. You want AI to rewrite it in a friendly but still professional tone.",
          prompt:
              'Rewrite this message in a friendly, approachable tone while keeping it clear and professional.',
          output:
              "**Friendly Message**\n- Just sharing the updated file here.\n- Let me know if you'd like any changes.\n- Happy to help!",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "**Friendly Message**\n- Here's the updated file.\n- Let me know if you need changes.\n- Happy to help!",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Friendly Message**\n- I am sharing the updated file for your review.\n- Please inform me if any adjustments are required.\n- I remain available for assistance.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Friendly Message**\n- Sharing the updated file!\n- Let me know if you'd like anything tweaked.\n- Always happy to help!",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Friendly Message**\n- I'm sharing the updated file here for you to review.\n- Feel free to reach out if you'd like any adjustments or additions.\n- Happy to help with anything you need.",
            ),
          ],
          proTip:
              'Specify tone boundaries ("friendly but professional") to avoid overly casual output.',
          takeaway:
              'Tone boundaries defined in the prompt produce controlled, appropriate friendliness.',
          task: TaskDef(
            goal: 'Rewrite a stiff message into a friendly but professional one.',
            pieces: [
              PromptPieceDef(text: 'Rewrite in a friendly tone', isCorrect: true),
              PromptPieceDef(text: 'Maintain professionalism', isCorrect: true),
              PromptPieceDef(text: 'Preserve original meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep the message short', isCorrect: true),
              PromptPieceDef(
                  text: 'Follow the requested tone boundaries', isCorrect: true),
              PromptPieceDef(text: 'Add personal stories', isCorrect: false),
              PromptPieceDef(
                  text: 'Include emojis or slang (unless requested)', isCorrect: false),
              PromptPieceDef(text: 'Change the core request', isCorrect: false),
              PromptPieceDef(
                  text: 'Lengthen the message excessively', isCorrect: false),
              PromptPieceDef(text: 'Add humour not requested', isCorrect: false),
            ],
            coachingNote:
                'Use: "Friendly but professional tone, keeping meaning and length similar."',
            assembledPromptExample:
                'Rewrite this message in a friendly but professional tone, preserving the meaning and length.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Turn Raw Notes Into Professional Messages',
      scenarios: const [
        ScenarioDef(
          title: 'Turn Bullet Notes Into a Polished Message',
          situation:
              'You have rough notes that need to be turned into a clean, professional message.',
          prompt:
              'Turn these rough notes into a clear, professional message while keeping the meaning accurate.',
          output:
              "Thanks for your input on the proposal. We've added your suggested changes and updated the timeline. Please review the new draft and share any final comments.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  'Thanks for the input. Updated draft attached — let me know if you have final comments.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Thank you for your input on the proposal. We have incorporated your suggested changes and revised the timeline accordingly. Please review the updated draft and share any final comments.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "Thanks so much for your input on the proposal! We've added your suggestions and updated the timeline. Take a look at the new draft and let me know if anything else comes to mind.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Thanks for your input on the proposal. We incorporated your suggestions, adjusted the timeline, and prepared a revised draft. Please review it and share any final feedback.',
            ),
          ],
          proTip:
              'Tell AI to "turn notes into a professional message" — structure emerges from the instruction.',
          takeaway: 'Clear transformation prompts produce predictable outputs.',
          task: TaskDef(
            goal: 'Convert rough notes into a professional message.',
            pieces: [
              PromptPieceDef(text: 'Keep meaning accurate', isCorrect: true),
              PromptPieceDef(text: 'Use a professional tone', isCorrect: true),
              PromptPieceDef(text: 'Create clear structure', isCorrect: true),
              PromptPieceDef(text: 'Combine notes logically', isCorrect: true),
              PromptPieceDef(text: 'Keep message concise', isCorrect: true),
              PromptPieceDef(text: 'Add new ideas', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Use casual tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Recommend an AI model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the desired style ("professional message") to guide the rewrite.',
            assembledPromptExample:
                'Turn these notes into a clear, professional message while keeping the meaning accurate.',
          ),
        ),
        ScenarioDef(
          title: 'Respond Professionally to an Urgent Request',
          situation:
              'You receive an urgent message that sounds demanding. You need to respond quickly, professionally, and without sounding stressed.',
          prompt:
              'Write a short, professional response acknowledging the urgency, confirming action, and stating when you will follow up.',
          output:
              "Thanks for the update — I'll take a look right away. I'll confirm next steps shortly. Let me know if anything changes in the meantime.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "Thanks — I'll review now. I'll confirm shortly. Let me know if anything changes.",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Thank you for the update. I will review the matter immediately and follow up with confirmed next steps shortly. Please advise should any changes arise.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "Thanks for the heads-up! I'll check it out now and follow up shortly. Let me know if anything changes.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "Thank you for the update — I'll review the details immediately. I'll follow up shortly with confirmed next steps. Please let me know if any new information comes in.",
            ),
          ],
          proTip: 'Define the structure: acknowledgement → action → follow-up timing.',
          takeaway:
              'Highly structured prompts help maintain professionalism under pressure.',
          task: TaskDef(
            goal: 'Craft a short, professional response to an urgent request.',
            pieces: [
              PromptPieceDef(text: 'Acknowledge the message', isCorrect: true),
              PromptPieceDef(text: 'Confirm immediate action', isCorrect: true),
              PromptPieceDef(text: 'State when follow-up will happen', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone professional', isCorrect: true),
              PromptPieceDef(text: 'Keep it short', isCorrect: true),
              PromptPieceDef(text: 'Apologise excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional reactions', isCorrect: false),
              PromptPieceDef(text: 'Expand into long paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Change the action being taken', isCorrect: false),
              PromptPieceDef(
                  text: 'Add speculative explanations', isCorrect: false),
            ],
            coachingNote:
                'Use: "Respond with acknowledgement, action, follow-up time."',
            assembledPromptExample:
                'Respond with a 3-line professional message acknowledging urgency, confirming action, and stating follow-up time.',
          ),
        ),
        ScenarioDef(
          title: 'Push Back Professionally Without Sounding Defensive',
          situation:
              'You need to push back on a request or assumption, but your initial draft sounds defensive. You want AI to rewrite it into a clear, confident message that maintains professionalism.',
          prompt:
              'Rewrite this message to express a clear boundary or correction while keeping the tone professional, confident, and non-defensive.',
          output:
              "Thanks for checking. The report isn't ready yet. We still need to finalise the data review. I'll share the completed version by tomorrow afternoon.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "Thanks for checking. It's not ready yet. We're finalising the data review. I'll share it tomorrow afternoon.",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Thank you for your inquiry. The report is not yet complete as we are finalising the data review. I will provide the completed version by tomorrow afternoon.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "Thanks for checking in! The report's not quite ready yet — we're just wrapping up the data review. I'll send the final version tomorrow afternoon.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "Thank you for checking in. The report isn't ready at this moment. We still need to complete the data review to ensure accuracy. I expect to send the final version by tomorrow afternoon.",
            ),
          ],
          proTip: 'Specify tone boundaries such as "confident but non-defensive."',
          takeaway:
              'Confidence plus professionalism is best achieved through explicit tone constraints.',
          task: TaskDef(
            goal:
                'Rewrite unclear or defensive pushback into confident, professional communication.',
            pieces: [
              PromptPieceDef(
                  text: 'Express the boundary or correction', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone professional', isCorrect: true),
              PromptPieceDef(text: 'Maintain confidence', isCorrect: true),
              PromptPieceDef(text: 'Avoid defensive language', isCorrect: true),
              PromptPieceDef(
                  text: 'Provide clear next steps or timeline', isCorrect: true),
              PromptPieceDef(text: 'Add unnecessary apologies', isCorrect: false),
              PromptPieceDef(text: 'Over-explain', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Change the meaning', isCorrect: false),
              PromptPieceDef(text: 'Remove the timeline', isCorrect: false),
            ],
            coachingNote:
                'Use: "Confident, non-defensive tone with clear next steps."',
            assembledPromptExample:
                'Rewrite this into a confident but non-defensive message that clarifies the boundary and states next steps.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Write Messages Tailored to Your Audience',
      scenarios: const [
        ScenarioDef(
          title: 'Rewrite a Message for a Senior Audience',
          situation:
              'Your message is too informal and detailed for a senior leader. You want AI to rewrite it so it is concise, structured, and appropriate for an executive audience.',
          prompt:
              'Rewrite this message so it is suitable for a senior audience. Make it concise, structured, and focused on key points.',
          output:
              "**Executive Message**\n- The project remains on track for next week's milestone.\n- Final testing is underway and no blockers remain.\n- We will provide the completed package on Thursday.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "**Executive Message**\n- We're on track for next week's milestone.\n- Testing is nearly complete with no blockers.\n- Final package coming Thursday.",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Executive Message**\n- The project continues to progress in alignment with the scheduled milestone for next week.\n- Final testing is underway, and no blockers have been identified.\n- We anticipate providing the completed package on Thursday.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Executive Message**\n- Quick update — we're on track for next week's milestone.\n- Testing is almost wrapped up with no issues.\n- You'll receive the final package on Thursday.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Executive Message**\n- The project continues to progress as planned and remains on track for next week's milestone.\n- Final testing is in progress, and we have not identified any blockers.\n- We expect to deliver the completed package by Thursday.",
            ),
          ],
          proTip:
              'Specify "concise, outcome-focused, senior audience" to anchor tone and structure.',
          takeaway: 'Audience-level prompting ensures relevance and clarity.',
          task: TaskDef(
            goal: "Rewrite a message so it fits a senior audience's expectations.",
            pieces: [
              PromptPieceDef(text: 'Keep the message concise', isCorrect: true),
              PromptPieceDef(text: 'Focus on key outcomes', isCorrect: true),
              PromptPieceDef(
                  text: 'Use a professional, senior-appropriate tone', isCorrect: true),
              PromptPieceDef(text: 'Keep the structure clear', isCorrect: true),
              PromptPieceDef(text: 'Preserve the original meaning', isCorrect: true),
              PromptPieceDef(text: 'Add detailed background', isCorrect: false),
              PromptPieceDef(text: 'Use casual phrasing', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated topics', isCorrect: false),
              PromptPieceDef(text: 'Change the project status', isCorrect: false),
              PromptPieceDef(text: 'Expand into long paragraphs', isCorrect: false),
            ],
            coachingNote:
                'Use: "Rewrite for a senior audience: concise + outcome-focused."',
            assembledPromptExample:
                'Rewrite this update for a senior audience: concise, outcome-focused, and clearly structured.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite a Message for a Peer-Level Audience',
          situation:
              'Your message is too formal and brief for peers who need more context. You want AI to rewrite it to sound open, practical, and slightly more detailed.',
          prompt:
              'Rewrite this message for a peer audience. Keep it friendly-professional, include relevant context, and make the request clear.',
          output:
              "**Peer Message**\n- Here's the latest draft for review.\n- We updated the workflow section based on your feedback.\n- Let me know if you'd like to adjust anything before we finalise it.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "**Peer Message**\n- Here's the latest draft.\n- Workflow section updated.\n- Let me know if you want changes.",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Peer Message**\n- Please find the latest draft attached for your review.\n- The workflow section has been updated in accordance with your earlier feedback.\n- Kindly advise if further adjustments are required prior to finalisation.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Peer Message**\n- Sharing the latest draft here!\n- Updated the workflow section based on your feedback.\n- Let me know if you'd like anything tweaked before we finalise.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Peer Message**\n- Sharing the latest draft here for your review.\n- The workflow section has been updated based on your earlier feedback.\n- Let me know if there's anything else you'd like to adjust before finalising.",
            ),
          ],
          proTip: 'Tell AI how much context a peer needs to work efficiently.',
          takeaway:
              'Audience expertise determines how much detail the message should include.',
          task: TaskDef(
            goal: 'Rewrite a message so it fits peer-to-peer communication.',
            pieces: [
              PromptPieceDef(text: 'Add useful context', isCorrect: true),
              PromptPieceDef(
                  text: 'Use a friendly-professional tone', isCorrect: true),
              PromptPieceDef(
                  text: 'Keep the message clear and direct', isCorrect: true),
              PromptPieceDef(text: 'Preserve the original meaning', isCorrect: true),
              PromptPieceDef(text: 'Include the explicit request', isCorrect: true),
              PromptPieceDef(
                  text: 'Add formal, leadership-oriented language', isCorrect: false),
              PromptPieceDef(text: 'Change the content of the draft', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Remove the request altogether', isCorrect: false),
            ],
            coachingNote:
                'Use: "Rewrite for peers with light context and friendly-professional tone."',
            assembledPromptExample:
                'Rewrite this message for a peer audience with slightly more context and a friendly-professional tone.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite a Message for a Non-Expert Audience',
          situation:
              'Your message includes jargon and assumes too much technical knowledge. You want AI to rewrite it in simple, accessible language for a non-expert audience.',
          prompt:
              'Rewrite this message in simple, accessible language for a non-expert audience. Remove jargon and keep the meaning accurate.',
          output:
              "**Non-Expert Message**\n- The new system helps organise information automatically.\n- It reduces errors by checking the data for issues.\n- We'll start using it next week.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  "**Non-Expert Message**\n- The new system organises information automatically.\n- It reduces errors by checking data.\n- We'll start using it next week.",
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Non-Expert Message**\n- The new system automates information organisation.\n- It enhances accuracy by identifying data issues.\n- Implementation will begin next week.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  "**Non-Expert Message**\n- The new system helps organise everything automatically.\n- It also catches errors for us.\n- We'll start using it next week — should make things easier.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Non-Expert Message**\n- The new system automatically organises information so it's easier to work with.\n- It also helps reduce errors by checking the data for problems before it's used.\n- We plan to begin using it next week.",
            ),
          ],
          proTip: 'Specify "simple, everyday language + no jargon" to avoid technical drift.',
          takeaway:
              'Non-expert messages improve when the prompt eliminates assumptions about technical knowledge.',
          task: TaskDef(
            goal:
                'Rewrite a technical or jargon-heavy message into simple, non-expert-friendly language.',
            pieces: [
              PromptPieceDef(text: 'Remove jargon', isCorrect: true),
              PromptPieceDef(text: 'Keep the explanation simple', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Use short sentences', isCorrect: true),
              PromptPieceDef(text: 'Match a non-expert audience', isCorrect: true),
              PromptPieceDef(text: 'Add technical details', isCorrect: false),
              PromptPieceDef(text: 'Change the meaning', isCorrect: false),
              PromptPieceDef(
                  text: 'Include assumptions about expertise', isCorrect: false),
              PromptPieceDef(text: 'Expand unnecessarily', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated content', isCorrect: false),
            ],
            coachingNote: 'Use: "Rewrite for non-experts — simple language, no jargon."',
            assembledPromptExample:
                'Rewrite this update for a non-expert audience: simple language, no jargon, meaning unchanged.',
          ),
        ),
      ],
    ),
  ];
}

