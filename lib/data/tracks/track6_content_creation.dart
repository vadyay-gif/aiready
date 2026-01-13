import '../app_catalog.dart';

/// Track 6 – Content Creation (lessons 1–5)
List<LessonDef> buildTrack6Lessons() {
  return [
    LessonDef(
      title: 'Rewrite Content for Tone and Style',
      scenarios: const [
        ScenarioDef(
          title: 'Rewrite for a More Professional Tone',
          situation:
              'Your original message sounds too informal for a client or stakeholder. You want AI to adjust the tone without changing meaning or structure.',
          prompt:
              'Rewrite this message in a more professional tone while keeping the meaning and structure the same.',
          output:
              "Thank you for the update. I've reviewed the draft and will prepare the revisions by tomorrow. Please let me know if you have any additional input.",
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
                  "Thanks for the update — I'll prepare revisions by tomorrow. Let me know if you have more input.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "Thank you for the update. I've reviewed the draft thoroughly and will prepare the revisions by tomorrow. Please let me know if there are any extra points you'd like included.",
            ),
          ],
          proTip:
              'Clarify the tone you want and what must stay unchanged so the AI focuses on tonal adjustment rather than rewriting the content.',
          takeaway:
              'Tone-shift prompts are most effective when they specify the goal, the boundaries, and what should remain constant.',
          task: TaskDef(
            goal:
                'Rewrite content so it adopts a more professional tone without changing meaning.',
            pieces: [
              PromptPieceDef(text: 'Maintain original meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain similar length', isCorrect: true),
              PromptPieceDef(text: 'Adjust tone to professional', isCorrect: true),
              PromptPieceDef(text: 'Keep structure unchanged', isCorrect: true),
              PromptPieceDef(
                  text: 'Remove casual expressions', isCorrect: true),
              PromptPieceDef(text: 'Add new ideas', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand the message unnecessarily', isCorrect: false),
              PromptPieceDef(text: 'Insert emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Change the message content', isCorrect: false),
            ],
            coachingNote:
                'State clearly that the objective is a tone transformation and specify which elements (meaning, structure, length) the AI must keep intact.',
            assembledPromptExample:
                'Rewrite this message in a more professional tone while keeping the meaning, length, and structure the same.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite for a More Concise Style',
          situation:
              'Your content is too wordy and repetitive. You want a shorter version that preserves meaning.',
          prompt:
              'Rewrite this text so it is more concise while keeping all essential meaning.',
          output:
              "The meeting has been moved to Thursday. I'll share the updated agenda once it's ready.",
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
                  "The meeting is now on Thursday. I'll send the updated agenda soon.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "The meeting has been rescheduled to Thursday. I'll share the final agenda once revisions are completed.",
            ),
          ],
          proTip:
              'Tell the model exactly what to preserve and what to reduce to avoid accidental loss of essential meaning.',
          takeaway:
              'Concise rewriting works best when the prompt clearly separates essential meaning from removable filler.',
          task: TaskDef(
            goal: 'Rewrite content more concisely while keeping meaning intact.',
            pieces: [
              PromptPieceDef(text: 'Shorten the message', isCorrect: true),
              PromptPieceDef(text: 'Preserve key meaning', isCorrect: true),
              PromptPieceDef(text: 'Remove unnecessary words', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Add new content', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Introduce technical language', isCorrect: false),
              PromptPieceDef(text: 'Expand instead of compress', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote:
                'Specify which elements must remain and instruct the AI to reduce only redundant or filler language.',
            assembledPromptExample:
                'Rewrite this text so it is more concise while preserving all essential meaning.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite for a Friendlier Tone',
          situation:
              'Your message sounds stiff and needs a warmer tone without becoming informal.',
          prompt:
              'Rewrite this message in a friendlier tone without changing the meaning.',
          output:
              "Thanks for checking in. I'm reviewing the document now and will send the updated version shortly.",
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
                  'Thanks for checking — reviewing now and will share updates soon.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "Thanks for checking in. I'm reviewing the document now and will have the updated version ready shortly. Let me know if there's anything specific you'd like added.",
            ),
          ],
          proTip:
              'Be explicit about the tone target and the limits to prevent the model from drifting into overly casual language.',
          takeaway:
              'Tone adjustments work best when tone boundaries (friendlier but still professional) are clearly defined.',
          task: TaskDef(
            goal: 'Rewrite content into a friendlier tone while staying professional.',
            pieces: [
              PromptPieceDef(text: 'Make tone friendlier', isCorrect: true),
              PromptPieceDef(text: 'Keep tone professional', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep length similar', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Add slang', isCorrect: false),
              PromptPieceDef(text: 'Add emojis', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated commentary', isCorrect: false),
            ],
            coachingNote:
                'Clarify the tone goal ("friendlier but professional") so the AI stays within the intended tonal boundaries.',
            assembledPromptExample:
                'Rewrite this message in a friendlier but still professional tone while keeping the meaning the same.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Rewrite Content for Different Audiences',
      scenarios: const [
        ScenarioDef(
          title: 'Rewrite for a Senior Leadership Audience',
          situation:
              'Your message includes too much detail for senior leadership. You want AI to create a concise, high-level version.',
          prompt:
              'Rewrite this message so it is concise and focused on high-level outcomes for senior leadership.',
          output:
              "The project is on track for Friday's milestone. Final testing is underway, and we will share the completed package once validation is finished.",
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
                  'The project is on track for Friday. Testing is underway; package coming after validation.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "The project remains on track for Friday's milestone. Final testing is underway, and we will share the completed package once validation is finished later this week.",
            ),
          ],
          proTip:
              'If writing for senior leaders, always specify outcome-focused, concise, and high-level.',
          takeaway: 'Audience clarity leads to more accurate tone and structure.',
          task: TaskDef(
            goal: 'Rewrite a message to suit senior leadership.',
            pieces: [
              PromptPieceDef(text: 'Remove unnecessary detail', isCorrect: true),
              PromptPieceDef(text: 'Focus on outcomes', isCorrect: true),
              PromptPieceDef(text: 'Keep message concise', isCorrect: true),
              PromptPieceDef(text: 'Maintain professionalism', isCorrect: true),
              PromptPieceDef(text: 'Preserve core meaning', isCorrect: true),
              PromptPieceDef(text: 'Add additional risks', isCorrect: false),
              PromptPieceDef(text: 'Add project commentary', isCorrect: false),
              PromptPieceDef(text: 'Change message content', isCorrect: false),
              PromptPieceDef(text: 'Use casual tone', isCorrect: false),
              PromptPieceDef(text: 'Expand the update', isCorrect: false),
            ],
            coachingNote:
                'Specify "high-level summary, senior audience" to guide tone and depth.',
            assembledPromptExample:
                'Rewrite this message into a concise, high-level update suitable for senior leadership.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite for a Customer Audience',
          situation:
              'You need to provide an update to a customer, but the original text sounds like an internal note. You want AI to rewrite it in a courteous, customer-friendly tone.',
          prompt:
              'Rewrite this message so it is clear, courteous, and appropriate for a customer audience.',
          output:
              'Your integration is progressing as planned. Our team has completed initial testing, and we will share the activation instructions on Thursday.',
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
                  'Your integration is on track. Activation instructions coming Thursday.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Your integration is progressing as planned. Our team has completed initial testing and confirmed system compatibility. We will share the activation instructions on Thursday.',
            ),
          ],
          proTip: 'Tell AI to rewrite for "customer audience: clear, warm, and courteous."',
          takeaway: 'Audience-specific tone creates more effective communication.',
          task: TaskDef(
            goal: 'Rewrite internal-style messages into customer-friendly updates.',
            pieces: [
              PromptPieceDef(text: 'Use courteous tone', isCorrect: true),
              PromptPieceDef(text: 'Keep structure clear', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Remove internal jargon', isCorrect: true),
              PromptPieceDef(
                  text: 'Use customer-friendly phrasing', isCorrect: true),
              PromptPieceDef(text: 'Add extra commitments', isCorrect: false),
              PromptPieceDef(text: 'Add personal commentary', isCorrect: false),
              PromptPieceDef(text: 'Change the timeline', isCorrect: false),
              PromptPieceDef(text: 'Add technical details', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
            ],
            coachingNote: 'Specify "customer-friendly tone, no internal jargon."',
            assembledPromptExample:
                'Rewrite this update in clear, courteous language for a customer audience.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite for a Non-Expert Audience',
          situation:
              "Your message includes jargon that non-experts won't understand. You want AI to rewrite it in accessible language.",
          prompt:
              'Rewrite this text in simple language for a non-expert audience while keeping the meaning the same.',
          output:
              'The new system helps organise data automatically and reduces errors. We expect to begin using it next week.',
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
                  'The new system organises data automatically and reduces errors.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The new system automatically organises data and reduces errors by checking for issues before information is used. We expect to begin using it next week.',
            ),
          ],
          proTip: 'Always tell AI: "no jargon, simple everyday language."',
          takeaway:
              'Audience knowledge level determines how AI rewrites technical concepts.',
          task: TaskDef(
            goal: 'Rewrite technical messages for a non-expert audience.',
            pieces: [
              PromptPieceDef(text: 'Remove jargon', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning', isCorrect: true),
              PromptPieceDef(text: 'Use simple language', isCorrect: true),
              PromptPieceDef(text: 'Keep sentences short', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Add technical details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Use slang', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand concepts not in original', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote: 'Tell AI to "use everyday language, no jargon."',
            assembledPromptExample:
                'Rewrite this message in simple, everyday language so non-experts can understand it.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Summarise Content Effectively',
      scenarios: const [
        ScenarioDef(
          title: 'Summarise an Email Into Key Points',
          situation: 'You need to extract only the essential points from a long email.',
          prompt: 'Summarise this email into three to five clear key points.',
          output:
              '- The delivery will be completed by Wednesday.\n- Final checks are underway.\n- A confirmation message will be sent once everything is verified.',
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
                  '- Delivery by Wednesday\n- Final checks underway\n- Confirmation to follow',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Delivery is scheduled for Wednesday\n- Final checks are being completed\n- A confirmation message will be sent after verification',
            ),
          ],
          proTip:
              'Specify the number of bullet points and instruct the model to capture only essential information.',
          takeaway: 'Summaries improve when structure and scope are clearly defined.',
          task: TaskDef(
            goal: 'Summarise long content into essential key points.',
            pieces: [
              PromptPieceDef(text: 'Use bullet points', isCorrect: true),
              PromptPieceDef(text: 'Capture essential meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets brief', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(
                  text: 'Follow requested bullet count', isCorrect: true),
              PromptPieceDef(text: 'Add interpretation', isCorrect: false),
              PromptPieceDef(text: 'Add new information', isCorrect: false),
              PromptPieceDef(text: 'Expand content', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
            ],
            coachingNote:
                'Define the number of points and limit the summary scope to just essentials.',
            assembledPromptExample:
                'Summarise this email into 3–5 brief bullet points capturing only the essential meaning.',
          ),
        ),
        ScenarioDef(
          title: 'Summarise Meeting Notes into Actionable Steps',
          situation: 'Your meeting notes are messy and need clearer structure.',
          prompt:
              'Rewrite these meeting notes into a clear list of 3–6 actionable next steps.',
          output:
              '1. Finalise the updated proposal.\n2. Confirm budget approval.\n3. Schedule a follow-up meeting for Friday.',
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
                  '1. Finalise proposal\n2. Confirm budget\n3. Schedule follow-up',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '1. Finalise and distribute the updated proposal.\n2. Confirm budget approval with the finance team.\n3. Schedule a follow-up meeting for Friday to review progress.',
            ),
          ],
          proTip:
              'Tell the AI explicitly to extract *action items* rather than provide a general summary.',
          takeaway:
              'When the objective is action, prompts must emphasize tasks and structure.',
          task: TaskDef(
            goal: 'Turn meeting notes into clear action steps.',
            pieces: [
              PromptPieceDef(text: 'Identify action items', isCorrect: true),
              PromptPieceDef(text: 'Keep steps concise', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain logical order', isCorrect: true),
              PromptPieceDef(text: 'Use numbered list', isCorrect: true),
              PromptPieceDef(text: 'Add tasks not mentioned', isCorrect: false),
              PromptPieceDef(text: 'Add explanations', isCorrect: false),
              PromptPieceDef(text: 'Change order arbitrarily', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Add commentary', isCorrect: false),
            ],
            coachingNote:
                'Clarify that only actionable steps should be extracted, not side discussions.',
            assembledPromptExample:
                'Rewrite these meeting notes into 3–6 concise action steps in logical order.',
          ),
        ),
        ScenarioDef(
          title: 'Summarise a Document into One Sentence',
          situation:
              'You need a highly condensed summary that captures the core meaning.',
          prompt: 'Summarise this content in one clear sentence.',
          output:
              'The project is progressing on schedule, with testing nearly complete and final approval expected later this week.',
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
                  'The project is on schedule with testing nearly complete.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The project is progressing on schedule, testing is nearly complete, and final approval is expected later this week.',
            ),
          ],
          proTip:
              'Specify "one sentence only" to enforce strict summarisation constraints.',
          takeaway: 'Sentence-length limits help the AI avoid unnecessary elaboration.',
          task: TaskDef(
            goal: 'Produce a one-sentence summary from larger content.',
            pieces: [
              PromptPieceDef(text: 'Use one sentence', isCorrect: true),
              PromptPieceDef(text: 'Preserve core meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Avoid added detail', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add interpretations', isCorrect: false),
              PromptPieceDef(text: 'Use multiple sentences', isCorrect: false),
              PromptPieceDef(text: 'Expand content', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Remove key meaning', isCorrect: false),
            ],
            coachingNote:
                'Specify the one-sentence constraint and instruct the AI to retain only essential meaning.',
            assembledPromptExample:
                'Summarise this content into one clear sentence while preserving the core meaning.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Expand Content When Needed',
      scenarios: const [
        ScenarioDef(
          title: 'Expand a Short Note Into a Full Paragraph',
          situation:
              'Your original note lacks context and needs expansion.',
          prompt:
              'Expand this short note into a clear paragraph with helpful context.',
          output:
              "I've started reviewing the document and will complete the full analysis by tomorrow. Once finished, I'll share a detailed summary and outline the next steps for the team.",
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
                  "I've started reviewing the document and will finish the analysis by tomorrow. Summary to follow.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "I've begun reviewing the document and expect to complete the full analysis by tomorrow. Once done, I'll share a detailed summary, highlight key findings, and outline next steps for the team.",
            ),
          ],
          proTip:
              'Tell the AI the desired length and scope so it expands content without inventing new ideas.',
          takeaway:
              'Expansion prompts work best with size and relevance constraints.',
          task: TaskDef(
            goal: 'Expand short content into fuller, clearer paragraphs.',
            pieces: [
              PromptPieceDef(text: 'Add relevant context', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Maintain tone', isCorrect: true),
              PromptPieceDef(text: 'Add only necessary detail', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated ideas', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote:
                'Set a clear size target (one paragraph) and instruct the AI to expand only with relevant information.',
            assembledPromptExample:
                'Expand this short note into one clear paragraph by adding only relevant context while keeping the meaning the same.',
          ),
        ),
        ScenarioDef(
          title: 'Expand Bullet Points Into a Short Explanation',
          situation: 'Your bullet points need to be turned into a more readable paragraph.',
          prompt:
              'Expand these bullet points into a clear 2–3 sentence explanation.',
          output:
              'The team completed initial testing, and the results look strong. We will now prepare the final report and share it with stakeholders by Thursday.',
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
                  'Initial testing is complete with strong results. Final report coming Thursday.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The team has completed initial testing, and the results appear strong across all reviewed components. We will now prepare the final report and plan to share it with stakeholders by Thursday.',
            ),
          ],
          proTip:
              'Specify the number of sentences to prevent the AI from writing more than needed.',
          takeaway: 'Sentence-count constraints keep expansions focused.',
          task: TaskDef(
            goal: 'Expand bullets into clearer explanations.',
            pieces: [
              PromptPieceDef(text: 'Expand to 2–3 sentences', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Add relevant context', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Keep tone professional', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Over-expand', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI exactly how many sentences to use so it expands appropriately.',
            assembledPromptExample:
                'Expand these bullet points into 2–3 clear sentences that preserve meaning and add only relevant context.',
          ),
        ),
        ScenarioDef(
          title: 'Expand a Brief Update Into a Multi-Sentence Summary',
          situation: 'Your update is too short to be useful.',
          prompt:
              'Expand this brief update into 3–4 clear sentences while keeping the meaning the same.',
          output:
              "The team is making steady progress on the project. Testing is nearly complete, and we haven't encountered any major issues. We expect to move into the final review phase later this week. I will share a more detailed update once the review is complete.",
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
                  'The team is progressing well. Testing is nearly complete with no major issues. Final review later this week.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "The team is making consistent progress on the project. Testing is nearly finished, and no major issues have emerged so far. We anticipate beginning the final review phase later this week. I'll share a more detailed update once the review has been completed.",
            ),
          ],
          proTip:
              'Use explicit sentence-count limits so the AI expands without drifting into new content.',
          takeaway: 'Clear constraints keep expansions accurate and clean.',
          task: TaskDef(
            goal: 'Expand brief content into fuller updates.',
            pieces: [
              PromptPieceDef(text: 'Expand to 3–4 sentences', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain professional tone', isCorrect: true),
              PromptPieceDef(text: 'Add only relevant context', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Add new information', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Over-expand', isCorrect: false),
              PromptPieceDef(text: 'Add technical details', isCorrect: false),
            ],
            coachingNote:
                'Specify the number of sentences and restrict additions so the AI expands without inventing information.',
            assembledPromptExample:
                'Expand this brief update into 3–4 clear sentences while preserving the meaning and adding only relevant context.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Repurpose Content for New Formats',
      scenarios: const [
        ScenarioDef(
          title: 'Turn an Email Into a Short Announcement',
          situation:
              'Your email is too long for announcement format and needs to be condensed.',
          prompt:
              'Rewrite this email as a short announcement with only the essential points.',
          output:
              'The new onboarding materials are ready. Please review them before Friday so we can finalise the rollout next week.',
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
                  'Onboarding materials are ready — please review before Friday.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The new onboarding materials are ready for review. Please take a moment to go through them before Friday so we can finalise the rollout next week.',
            ),
          ],
          proTip:
              'Specify both the format ("announcement") and the length ("2–3 lines") so the AI restructures correctly.',
          takeaway: 'Format + length constraints create clean transformations.',
          task: TaskDef(
            goal: 'Turn long content into short announcements.',
            pieces: [
              PromptPieceDef(text: 'Keep only essentials', isCorrect: true),
              PromptPieceDef(text: 'Keep message short', isCorrect: true),
              PromptPieceDef(text: 'Use announcement style', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Add commentary', isCorrect: false),
              PromptPieceDef(text: 'Add new details', isCorrect: false),
              PromptPieceDef(text: 'Expand message', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
            ],
            coachingNote:
                "State the desired format and length to guide the AI's restructuring.",
            assembledPromptExample:
                'Rewrite this email as a short announcement containing only the essential points.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Status Update Into a One-Sentence Summary',
          situation: 'Your update is too long for quick reporting.',
          prompt: 'Rewrite this status update as one clear, concise sentence.',
          output:
              "Testing is nearly complete, and we remain on track for Thursday's release.",
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Testing nearly complete; release still on track.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "Testing is nearly complete, and the project remains on schedule for Thursday's release. Further details will follow once validation is finished.",
            ),
          ],
          proTip:
              'Use sentence-count constraints ("one sentence only") to keep the summary compact.',
          takeaway: 'Strict structural limits help produce accurate compression.',
          task: TaskDef(
            goal: 'Condense long updates into short summaries.',
            pieces: [
              PromptPieceDef(text: 'Use one sentence', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Add interpretation', isCorrect: false),
              PromptPieceDef(text: 'Add new information', isCorrect: false),
              PromptPieceDef(text: 'Expand instead of condense', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Use informal language', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI explicitly that the output must be one sentence so it compresses meaning correctly.',
            assembledPromptExample:
                'Rewrite this status update into one clear, concise sentence while keeping the meaning the same.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a List of Points Into a Short Script',
          situation: 'You need a spoken-style script rather than bullet points.',
          prompt:
              'Rewrite these points as a short script of 2–4 sentences in a clear, natural tone.',
          output:
              "We've completed initial testing, and everything looks stable. The team is now preparing the final changes for review. We'll share an updated package on Thursday.",
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
                  'Initial testing is done and everything looks stable. Final changes coming Thursday.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "We've completed initial testing, and the results look stable across all major components. The team is preparing the final changes for review, and we'll share the updated package on Thursday.",
            ),
          ],
          proTip:
              'Define structure and tone ("script," "2–4 sentences," "natural tone") so the AI reshapes content without inventing details.',
          takeaway:
              'Execution constraints guide the AI toward the correct output format.',
          task: TaskDef(
            goal: 'Turn bullet lists into short spoken-style scripts.',
            pieces: [
              PromptPieceDef(text: 'Use 2–4 sentences', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain natural tone', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Use script-like phrasing', isCorrect: true),
              PromptPieceDef(text: 'Add new points', isCorrect: false),
              PromptPieceDef(text: 'Change content', isCorrect: false),
              PromptPieceDef(text: 'Over-expand', isCorrect: false),
              PromptPieceDef(text: 'Use slang', isCorrect: false),
              PromptPieceDef(text: 'Convert back to bullet points', isCorrect: false),
            ],
            coachingNote:
                'Give clear structural instructions and tone boundaries to shape the script accurately.',
            assembledPromptExample:
                'Rewrite these bullet points as a short, natural-sounding script of 2–4 sentences while keeping the meaning the same.',
          ),
        ),
      ],
    ),
  ];
}

