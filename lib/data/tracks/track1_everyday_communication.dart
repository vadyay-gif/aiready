import '../app_catalog.dart';

/// Track 1 – Everyday Communication (lessons 1–5)
List<LessonDef> buildTrack1Lessons() {
  return [
    const LessonDef(
      title: 'Write Clearly From Scratch',
      scenarios: [
        ScenarioDef(
          title: 'Write a Professional Email From Brief Notes',
          situation:
              'You need to write a clear, professional email to a colleague. The draft policy document they requested is ready for review, and you’d like to ask whether they can share any feedback by Thursday.',
          prompt:
              'Write a professional email explaining that the draft policy document is ready for review and asking if they can share feedback by Thursday. Keep it to two or three short paragraphs.',
          output:
              'Subject: Draft Policy Document Ready for Review\nHi [Name],\n\nI’m writing to let you know that the draft policy document you requested is now ready for review. Please feel free to take a look whenever it suits your schedule.\n\nIf possible, could you share any feedback by Thursday? This will help us finalise the updates and keep our review timeline on track. Let me know if you have any questions as you go through it.\n\nThanks in advance,\n[Your Name]',
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
                  'Hi [Name], the draft policy document is ready for review. Could you share feedback by Thursday? Thanks, [Your Name].',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Subject: Draft Policy Document Ready\nDear [Name],\nThe draft policy document is now ready for your review. Please feel free to look through it at your convenience.\nI would appreciate receiving any feedback by Thursday so we can progress to the next stage. Should you require clarification on any section, please feel free to let me know.\nKind regards,\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Subject: Draft Policy Document — Ready for Your Review\nHi [Name],\nHope you’re doing well. Just a quick note to share that the draft policy document is ready for review. I’ve included all the latest updates and would love your thoughts.\nIf you have time to share any feedback by Thursday, that would be really helpful. Let me know if you\'d like to talk through anything.\nThanks so much,\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Subject: Draft Policy Document — Feedback Request\nHi [Name],\nI’m reaching out to confirm that the updated draft policy document is ready for review. It includes all changes discussed in our last meeting and has been reorganised for easier reading.\nIf possible, could you share your feedback by Thursday? This will help us complete the final editing round and stay aligned with the project timeline. Please let me know if you want to clarify any section during your review.\nThanks again,\n[Your Name]',
            ),
          ],
          proTip:
              'Clear prompts state the context, the goal, the tone, and the length so the AI can follow the intended structure.',
          takeaway:
              'Define purpose and boundaries in your prompt and the AI will match the structure you need.',
          task: TaskDef(
            goal:
                'Write a short, professional email sharing an update and requesting a response.',
            pieces: [
              PromptPieceDef(text: 'Produce two short paragraphs', isCorrect: true),
              PromptPieceDef(text: 'Include the update and the request', isCorrect: true),
              PromptPieceDef(
                  text: 'Keep the tone polite and professional', isCorrect: true),
              PromptPieceDef(
                  text: 'Base the message only on provided details', isCorrect: true),
              PromptPieceDef(text: 'Keep the structure simple and clear', isCorrect: true),
              PromptPieceDef(text: 'Add reasons for possible delays', isCorrect: false),
              PromptPieceDef(text: 'Include unrelated project updates', isCorrect: false),
              PromptPieceDef(text: 'Insert humour', isCorrect: false),
              PromptPieceDef(text: 'Add motivational commentary', isCorrect: false),
              PromptPieceDef(text: 'Recommend which AI model to use', isCorrect: false),
            ],
            coachingNote:
                'Strong prompts define the context, the goal, the tone, and the length so the model knows exactly how to shape the email.',
            assembledPromptExample:
                'Write a short, professional email in two paragraphs explaining the report is ready for review and asking if they can share comments by Wednesday.',
          ),
        ),
        ScenarioDef(
          title: 'Write a Quick Message to Update Your Team',
          situation:
              'You need to send a short internal update. A regular check-in meeting planned for this afternoon has been moved to tomorrow morning, and the agenda remains the same.',
          prompt:
              'Write a short Teams/Slack update explaining the check-in meeting moved to tomorrow morning and the agenda is unchanged. Keep it to one or two practical sentences.',
          output:
              'The check-in meeting has moved to tomorrow morning, and the agenda is unchanged. I’ll share the updated link once it’s ready.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Check-in moved to tomorrow morning. Same agenda.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Please note that the check-in meeting is now scheduled for tomorrow morning. The agenda remains unchanged, and updated details will follow.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Quick heads-up — our check-in has shifted to tomorrow morning. The agenda stays the same, and I’ll post the updated link soon.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The check-in meeting has been rescheduled to tomorrow morning, and the agenda is unchanged. A new meeting link will be posted once available.',
            ),
          ],
          proTip:
              'Prompts that clearly state the key change, tone, and length help the AI produce focused updates.',
          takeaway:
              'When you define the message scope and size, AI keeps internal updates short and clear.',
          task: TaskDef(
            goal:
                'Write a clear, concise internal update announcing one key schedule change.',
            pieces: [
              PromptPieceDef(text: 'Keep to one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'State the schedule change', isCorrect: true),
              PromptPieceDef(text: 'Mention what remains the same', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone practical', isCorrect: true),
              PromptPieceDef(
                  text: 'Base content only on provided details', isCorrect: true),
              PromptPieceDef(
                  text: 'Add speculation about the reason', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated reminders', isCorrect: false),
              PromptPieceDef(text: 'Rewrite as a poem', isCorrect: false),
              PromptPieceDef(text: 'Make the tone overly casual', isCorrect: false),
              PromptPieceDef(text: 'Recommend which model to use', isCorrect: false),
            ],
            coachingNote:
                'Guide the AI by stating the key change, the tone, and the exact length so it can compress your notes effectively.',
            assembledPromptExample:
                'Write a short internal update in one or two sentences explaining the site visit has moved to Thursday morning and confirming the checklist is still valid.',
          ),
        ),
        ScenarioDef(
          title: 'Write a Polite Request for Information',
          situation:
              'You need to request a small piece of missing information from a colleague. They haven’t confirmed the location for Thursday’s planning session, and you want to send a concise, polite email asking for the final details.',
          prompt:
              'Write a short, polite email asking them to confirm the location for Thursday’s planning session. Keep it to two or three short paragraphs in a courteous tone.',
          output:
              'Subject: Planning Session Location\nHi [Name],\n\nCould you please confirm the location for Thursday’s planning session? We’re finalising the schedule and want to make sure everyone knows where to meet.\n\nOnce we have the confirmed location, we’ll share it with the rest of the team so everything is clear. Thanks in advance for your help — much appreciated.\n\nKind regards,\n[Your Name]',
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
                  'Hi [Name], could you confirm Thursday’s planning session location? Thanks, [Your Name].',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Subject: Confirmation Requested\nDear [Name],\nCould you please confirm the final location for Thursday’s planning session? We would like to complete our preparations accordingly.\nThank you in advance for your assistance.\nKind regards,\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Subject: Quick Check — Meeting Location\nHi [Name],\nHope you’re doing well! Quick question — where are we meeting for Thursday’s planning session?\nThanks so much for confirming — really appreciate it.\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Subject: Location for Thursday’s Planning Session\nHi [Name],\nCould you confirm the location for Thursday’s planning session? We’re coordinating the day’s activities, and having the final details will help us share accurate information with the team.\nThanks again for your help — much appreciated.\n[Your Name]',
            ),
          ],
          proTip:
              'Prompts work best when they specify the context, the goal, the tone, and the length — giving AI clear structural boundaries.',
          takeaway:
              'State exactly what the prompt must achieve and the AI will follow your structure.',
          task: TaskDef(
            goal:
                'Write a polite request email asking for confirmation of a missing detail.',
            pieces: [
              PromptPieceDef(text: 'Produce two short paragraphs', isCorrect: true),
              PromptPieceDef(text: 'Include the request clearly', isCorrect: true),
              PromptPieceDef(
                  text: 'Keep the tone courteous and professional', isCorrect: true),
              PromptPieceDef(
                  text: 'Base message only on provided details', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Add urgency not mentioned', isCorrect: false),
              PromptPieceDef(text: 'Add additional details', isCorrect: false),
              PromptPieceDef(text: 'Use humour', isCorrect: false),
              PromptPieceDef(text: 'Add motivational commentary', isCorrect: false),
              PromptPieceDef(text: 'Recommend which AI model to use', isCorrect: false),
            ],
            coachingNote:
                'Give the model the exact context, tone, and length so it can generate a focused, courteous request.',
            assembledPromptExample:
                'Write a short, polite email in two paragraphs asking the colleague to confirm the room for Monday’s workshop.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Rewrite for Clarity',
      scenarios: [
        ScenarioDef(
          title: 'Fix a Confusing Email So It’s Clear and Concise',
          situation:
              'You’ve received an email draft from a colleague, but it’s vague, repetitive, and hard to follow. The essential message is that the training schedule won’t be ready today and will instead be sent tomorrow afternoon.',
          prompt:
              'Rewrite this email so it is clear and concise. Keep the update direct, stating the training schedule will now be sent tomorrow afternoon. Keep it to two short paragraphs in a professional tone.',
          output:
              'Subject: Training Schedule Update\nHi [Name],\n\nI wanted to share a quick update that the training schedule isn’t ready yet and will now be sent tomorrow afternoon. We’re finalising a few details to make sure everything is accurate.\n\nThanks for your patience. Please let me know if you need anything in the meantime.\n[Your Name]',
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
                  'Subject: Schedule Update\nHi [Name], the training schedule will be sent tomorrow afternoon. Thanks for your patience.\n[Your Name]',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Subject: Revised Delivery Time – Training Schedule\nDear [Name],\nPlease note that the training schedule will now be delivered tomorrow afternoon as we complete final accuracy checks.\nThank you for your understanding.\nKind regards,\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Subject: Quick Update\nHi [Name],\nJust a heads-up — the training schedule will be ready tomorrow afternoon. We’re polishing the last details.\nThanks for bearing with us!\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Subject: Training Schedule – Tomorrow Afternoon\nHi [Name],\nA quick update: the training schedule isn’t ready yet and will be shared tomorrow afternoon. We’re reviewing a few final sections to make sure everything is complete.\nThanks for your patience — please reach out if you need clarity on anything before then.\n[Your Name]',
            ),
          ],
          proTip:
              'Prompt clarity improves output clarity — specify the core message, tone, and length so the AI removes noise instead of rewriting it.',
          takeaway:
              'When you define the essential message and boundaries, AI rewrites stay focused and structured.',
          task: TaskDef(
            goal:
                'Rewrite a messy email into a clear, concise message with one key update.',
            pieces: [
              PromptPieceDef(text: 'Produce two short paragraphs', isCorrect: true),
              PromptPieceDef(text: 'State the key update clearly', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone professional', isCorrect: true),
              PromptPieceDef(text: 'Remove repetition', isCorrect: true),
              PromptPieceDef(
                  text: 'Base content only on provided details', isCorrect: true),
              PromptPieceDef(text: 'Add new reasons for the delay', isCorrect: false),
              PromptPieceDef(text: 'Guess what the team prefers', isCorrect: false),
              PromptPieceDef(text: 'Insert humour', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated reminders', isCorrect: false),
              PromptPieceDef(text: 'Recommend which AI model to use', isCorrect: false),
            ],
            coachingNote:
                'Give AI the core message, tone, and length — the model uses these constraints to filter out unnecessary details.',
            assembledPromptExample:
                'Rewrite this draft into two short paragraphs stating the materials will be sent tomorrow morning, keeping the tone professional and removing repetition.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite a Messy Chat Message Into a Clean Update',
          situation:
              'A colleague sent you a scattered chat message explaining that a vendor will deliver materials today by 4 pm, but the note jumps around and mixes unrelated comments. You want to turn it into a clean team-ready update.',
          prompt:
              'Rewrite this into a clear, concise update for a team chat. Keep the message to one or two practical sentences stating the vendor will deliver materials today by 4 pm and that no action is required.',
          output:
              'The vendor will deliver the materials today by 4 pm, and no action is needed. I’ll confirm once everything arrives.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Materials arriving by 4 pm today — no action needed.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'The vendor has confirmed delivery of materials by 4 pm today. No team action is required at this time; an update will follow upon arrival.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Heads-up — materials are coming in by 4 pm today. No action needed for now; I’ll update once they’re here.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Materials are scheduled for delivery by 4 pm today, and no action is required from the team. I’ll confirm receipt and share a status update as soon as they arrive.',
            ),
          ],
          proTip:
              'Specify the final structure of the rewrite — when your prompt defines the core message and length, the AI won’t drift into extra details.',
          takeaway:
              'Clear constraints help AI compress scattered messages into clean chat-ready updates.',
          task: TaskDef(
            goal: 'Rewrite a scattered internal note into a clean team update.',
            pieces: [
              PromptPieceDef(text: 'Keep it to one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'State the maintenance time', isCorrect: true),
              PromptPieceDef(
                  text: 'Mention that no attendance is required', isCorrect: true),
              PromptPieceDef(text: 'Use a practical tone', isCorrect: true),
              PromptPieceDef(text: 'Base content only on provided notes', isCorrect: true),
              PromptPieceDef(text: 'Add urgency', isCorrect: false),
              PromptPieceDef(
                  text: 'Add commentary about past delays', isCorrect: false),
              PromptPieceDef(text: 'Include personal opinions', isCorrect: false),
              PromptPieceDef(text: 'Expand into a full email', isCorrect: false),
              PromptPieceDef(text: 'Recommend a specific model', isCorrect: false),
            ],
            coachingNote:
                'Define the message shape — what must be included and how short it should be — so the AI condenses your notes correctly.',
            assembledPromptExample:
                'Rewrite this into a one- or two-sentence update stating the maintenance check is at 9 am tomorrow and no attendance is required.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Vague Instructions Into Clear Steps',
          situation:
              'You receive vague instructions such as “Just prepare the onboarding stuff and send it later today.” You want to turn this into a clean, actionable set of steps.',
          prompt:
              'Rewrite these vague instructions into a clear list of three to five practical steps for preparing and sending the onboarding materials today. Keep the tone straightforward.',
          output:
              '1. Gather all onboarding materials for the new team member.\n2. Check that all required documents are included and up to date.\n3. Send the full package today and confirm once it’s been sent.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: '1. Collect materials.\n2. Check completeness.\n3. Send and confirm.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '1. Compile all required onboarding documents for the new hire.\n2. Verify completeness and accuracy.\n3. Send the package today and provide confirmation once completed.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '1. Pull together the onboarding materials.\n2. Make sure everything’s included.\n3. Send today and give a quick confirmation.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '1. Gather the onboarding documents and templates.\n2. Confirm all items are current and included.\n3. Send the package today and notify once it’s complete so the workflow stays on track.',
            ),
          ],
          proTip:
              'Tell the AI the exact structure — number of steps and tone — so it transforms vague text into usable, action-ready instructions.',
          takeaway:
              'Prompting works best when you define the structure and limit the scope of the rewrite.',
          task: TaskDef(
            goal:
                'Turn unclear instructions into a clean, structured list of actionable steps.',
            pieces: [
              PromptPieceDef(text: 'Produce 3–5 steps', isCorrect: true),
              PromptPieceDef(text: 'Keep tone practical', isCorrect: true),
              PromptPieceDef(text: 'Make each step actionable', isCorrect: true),
              PromptPieceDef(text: 'Base steps only on provided guidance', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Add extra tasks not mentioned', isCorrect: false),
              PromptPieceDef(text: 'Add strict deadlines', isCorrect: false),
              PromptPieceDef(text: 'Use humour', isCorrect: false),
              PromptPieceDef(text: 'Expand into a long process document', isCorrect: false),
              PromptPieceDef(text: 'Recommend an AI model', isCorrect: false),
            ],
            coachingNote:
                'Define the structure and required scope so the AI reshapes vague instructions into clear, actionable steps.',
            assembledPromptExample:
                'Rewrite this vague instruction into 3–5 clear, practical steps focused only on preparing the workshop materials today.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Adjust Tone for Any Situation',
      scenarios: [
        ScenarioDef(
          title: 'Make a Message More Professional',
          situation:
              'You drafted a message that is too casual for the context. You need to send an update saying you will share the updated document later today and that no action is required yet.',
          prompt:
              'Rewrite this message to sound more professional while keeping the meaning the same: I’ll share the updated document later today, and no action is required until then. Keep it to two short sentences.',
          output:
              'I will share the updated document later today. No action is required on your side until then.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Updated document coming later today; no action needed.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'I will provide the updated document later today. No further action is required at this stage; I will notify you once it is available.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'I’ll share the updated document later today — nothing you need to do for now. I’ll keep you posted.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'I will send the updated document later today and let you know once it is available. No action is needed in the meantime.',
            ),
          ],
          proTip:
              'Define the context, tone, and meaning in your prompt so the AI adjusts the tone without altering the message.',
          takeaway:
              'When prompts specify tone and protect meaning, AI rewrites stay accurate and aligned with your intent.',
          task: TaskDef(
            goal:
                'Rewrite a message to make it sound more professional without changing its meaning.',
            pieces: [
              PromptPieceDef(text: 'Keep meaning exactly the same', isCorrect: true),
              PromptPieceDef(text: 'Make tone more professional', isCorrect: true),
              PromptPieceDef(text: 'Keep it short', isCorrect: true),
              PromptPieceDef(text: 'Base rewrite only on provided text', isCorrect: true),
              PromptPieceDef(text: 'Use clear, businesslike phrasing', isCorrect: true),
              PromptPieceDef(text: 'Add new information', isCorrect: false),
              PromptPieceDef(text: 'Add urgency', isCorrect: false),
              PromptPieceDef(text: 'Insert humour', isCorrect: false),
              PromptPieceDef(text: 'Add emotional commentary', isCorrect: false),
              PromptPieceDef(text: 'Recommend an AI model', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI which tone to shift toward and what must remain unchanged so it can transform the style without modifying meaning.',
            assembledPromptExample:
                'Rewrite this message to sound more professional while keeping the meaning the same and keeping it short.',
          ),
        ),
        ScenarioDef(
          title: 'Make a Message More Friendly',
          situation:
              'You wrote a message that feels too stiff for an internal team update. You want a friendlier tone while keeping the meaning the same: tomorrow’s team check-in will be a short 10-minute sync.',
          prompt:
              'Rewrite this message to sound friendly and approachable while keeping the meaning the same: tomorrow’s team check-in will be a short 10-minute sync. Keep it to one or two short sentences.',
          output:
              'Just a quick reminder that tomorrow’s team check-in will be a short 10-minute sync. Looking forward to seeing everyone there!',
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
                  'Reminder: tomorrow’s check-in is a quick 10-minute sync.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Please note that tomorrow’s team check-in will be a brief 10-minute meeting. Additional details will follow as needed.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Quick reminder — tomorrow’s check-in is a short 10-minute catch-up. See you all there!',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Reminder that tomorrow’s check-in will be a brief 10-minute sync to help everyone align before the day starts. Looking forward to it.',
            ),
          ],
          proTip:
              'Specify both the tone target and the required meaning so the AI adjusts style without rewriting the content.',
          takeaway:
              'AI produces better tone shifts when your prompt clarifies the tone direction and keeps the message boundaries clear.',
          task: TaskDef(
            goal:
                'Rewrite a message in a friendlier tone while keeping the meaning the same.',
            pieces: [
              PromptPieceDef(text: 'Keep meaning intact', isCorrect: true),
              PromptPieceDef(text: 'Make tone friendlier', isCorrect: true),
              PromptPieceDef(text: 'Keep it to one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'Use approachable wording', isCorrect: true),
              PromptPieceDef(text: 'Base rewrite only on provided details', isCorrect: true),
              PromptPieceDef(text: 'Change the timing', isCorrect: false),
              PromptPieceDef(text: 'Make tone overly casual', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated updates', isCorrect: false),
              PromptPieceDef(text: 'Suggest cancelling the meeting', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Give AI a clear tone direction and meaning boundary so it shifts style without adding or removing information.',
            assembledPromptExample:
                'Rewrite this message to sound friendlier while keeping the meaning the same and keeping it to one or two sentences.',
          ),
        ),
        ScenarioDef(
          title: 'Make a Message More Assertive Without Sounding Rude',
          situation:
              'You drafted a reminder that’s too soft: “Just checking if the form is ready — no rush at all.” But the team needs the form today to complete a workflow. You want a message that is assertive but still polite.',
          prompt:
              'Rewrite this message to sound assertive but still polite: we need the form today to complete our workflow. Keep it short and avoid sounding demanding.',
          output:
              'Could you please confirm whether the form will be ready today? We need it to complete our workflow and stay on schedule.',
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
                  'Will the form be ready today? We need it to stay on schedule.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Please confirm whether the form will be completed today, as it is required to finalise our workflow and maintain the schedule.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Quick check — will the form be ready today? It will help us stay on track with the workflow.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Could you confirm whether the form will be ready today? It’s the final item we need to complete the workflow and keep the timeline on track.',
            ),
          ],
          proTip:
              'Define the required tone and the key message — this keeps AI assertive but respectful without adding pressure.',
          takeaway:
              'Tone-controlled prompts work best when you specify what must stay clear (the need) and what must stay balanced (politeness).',
          task: TaskDef(
            goal:
                'Rewrite a message to make it more assertive while remaining polite and respectful.',
            pieces: [
              PromptPieceDef(text: 'Make the tone more assertive', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone polite', isCorrect: true),
              PromptPieceDef(text: 'State the need for the draft today', isCorrect: true),
              PromptPieceDef(text: 'Keep it short', isCorrect: true),
              PromptPieceDef(text: 'Base rewrite only on provided details', isCorrect: true),
              PromptPieceDef(text: 'Add pressure or threats', isCorrect: false),
              PromptPieceDef(text: 'Add emotional language', isCorrect: false),
              PromptPieceDef(text: 'Add urgency not mentioned', isCorrect: false),
              PromptPieceDef(text: 'Expand into a long explanation', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Specify both the assertive tone target and the non-demanding boundary so the AI can balance clarity and politeness.',
            assembledPromptExample:
                'Rewrite this message to sound more assertive while keeping it polite and stating clearly that the draft is needed today.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Expand or Shorten With Purpose',
      scenarios: [
        ScenarioDef(
          title: 'Shorten a Long Email to the Essentials',
          situation:
              'You received a long email draft about a schedule change. It contains unnecessary backstory and repeated explanations, but the essential message is that next week’s team briefing will now be on Wednesday instead of Tuesday.',
          prompt:
              'Rewrite this long message into a short, essential update stating that next week’s team briefing will now be on Wednesday instead of Tuesday. Keep it to one or two clear sentences in a practical tone.',
          output:
              'Subject: Team Briefing Update\nHi [Name],\nNext week’s team briefing has been moved from Tuesday to Wednesday. Please adjust your schedule accordingly.\nThanks,\n[Your Name]',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Next week’s team briefing is now on Wednesday.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Subject: Updated Briefing Schedule\nDear [Name],\nPlease note that next week’s team briefing has been rescheduled from Tuesday to Wednesday. Kindly adjust your calendar accordingly.\nSincerely,\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Subject: Quick Schedule Update\nHi [Name],\nQuick heads-up — next week’s team briefing will take place on Wednesday instead of Tuesday. Thanks for adjusting your schedule!\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Subject: Team Briefing – New Day\nHi [Name],\nA brief update: next week’s team briefing has shifted from Tuesday to Wednesday to accommodate planning timelines. Please adjust your calendar, and reach out if you have any questions.\nThanks,\n[Your Name]',
            ),
          ],
          proTip:
              'When shortening content, define the single core message and the length limit so AI knows exactly what to preserve.',
          takeaway:
              'Clear constraints help AI distill long messages into essential updates.',
          task: TaskDef(
            goal: 'Shorten a long message to its essential update.',
            pieces: [
              PromptPieceDef(text: 'Produce one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'State the essential schedule change', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone practical', isCorrect: true),
              PromptPieceDef(text: 'Remove unnecessary backstory', isCorrect: true),
              PromptPieceDef(
                  text: 'Base message only on provided details', isCorrect: true),
              PromptPieceDef(text: 'Add reasons for the change', isCorrect: false),
              PromptPieceDef(text: 'Include unrelated reminders', isCorrect: false),
              PromptPieceDef(text: 'Expand into a full email', isCorrect: false),
              PromptPieceDef(text: 'Add urgency', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the core message and the exact length so it strips away everything except what matters.',
            assembledPromptExample:
                'Rewrite this into a one- or two-sentence update stating only that the briefing is now on Wednesday.',
          ),
        ),
        ScenarioDef(
          title: 'Expand a Short Note Into a Full Explanation',
          situation:
              'You wrote a very brief note: “The report will be delayed.” The recipient needs more clarity: why it’s delayed, when it will be ready, and whether they need to take action.',
          prompt:
              'Expand this short note into a clear email explaining that the report is delayed because you are completing final checks, that it will be ready tomorrow morning, and that no action is required. Keep it to two or three short paragraphs.',
          output:
              'Subject: Report Timing Update\nHi [Name],\n\nI wanted to update you that the report will be delayed as we complete final accuracy checks. We want to ensure everything is correct before sharing the final version.\n\nThe report will be ready tomorrow morning, and there’s no action required on your side in the meantime. Thanks for your patience while we finalise the review.\n\nKind regards,\n[Your Name]',
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
                  'Subject: Report Update\nHi [Name], the report is delayed and will be ready tomorrow morning. No action needed.\n[Your Name]',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Subject: Revised Report Delivery\nDear [Name],\nPlease note the report has been delayed due to final verification procedures. It will be available tomorrow morning, and no action is required at this time.\nSincerely,\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Subject: Quick Report Update\nHi [Name],\nJust a quick update — we’re finishing a few last checks, so the report will be out tomorrow morning. Nothing you need to do for now.\nThanks for your patience!\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Subject: Report Delay – New Timing\nHi [Name],\nThe report is delayed as we are completing a final round of accuracy checks to ensure everything is correct. It will be ready tomorrow morning, and no action is required on your side until then.\nLet me know if you need anything in the meantime.\nThanks,\n[Your Name]',
            ),
          ],
          proTip:
              'When expanding content, specify exactly which details to add and the length limit so AI expands with control.',
          takeaway:
              'AI produces cleaner expansions when the prompt defines what to include and how long the output should be.',
          task: TaskDef(
            goal: 'Expand a short note into a clear explanation.',
            pieces: [
              PromptPieceDef(text: 'Produce two or three short paragraphs', isCorrect: true),
              PromptPieceDef(text: 'Include the key message', isCorrect: true),
              PromptPieceDef(text: 'Add the required details only', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone professional', isCorrect: true),
              PromptPieceDef(text: 'Base message only on the given note', isCorrect: true),
              PromptPieceDef(text: 'Add decisions not mentioned', isCorrect: false),
              PromptPieceDef(text: 'Use emotional language', isCorrect: false),
              PromptPieceDef(text: 'Expand into a long document', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated context', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Define the added details and the length so the AI expands the note without inventing extra context.',
            assembledPromptExample:
                'Expand this note into two or three short paragraphs including the reason, new timing, and reassurance that no action is needed.',
          ),
        ),
        ScenarioDef(
          title: 'Simplify Overly Technical Wording for a General Audience',
          situation:
              'You need to explain a technical update to colleagues who aren’t familiar with the terminology. The core message is that a system update caused a short outage, the issue is fixed, and everything is working normally again.',
          prompt:
              'Rewrite this technical update in simple, clear language. Explain in one or two sentences that there was a brief outage due to an update, the issue has been fixed, and everything is back to normal.',
          output:
              'We had a brief system outage earlier due to an update, but the issue has now been resolved. Everything is back to normal, and no action is needed.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Brief outage earlier — everything is fixed now.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Please note that a system update caused a brief outage earlier today. The issue has been fully resolved, and normal operations have resumed.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Quick update — we had a short outage earlier because of an update, but everything is fixed now and running normally.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Earlier today, a system update caused a short outage that has since been resolved. All functions are now back to normal, and no action is required.',
            ),
          ],
          proTip:
              'Specify the tone, audience, and length so AI simplifies the content without removing essential meaning.',
          takeaway:
              'AI delivers clearer summaries when your prompt defines who the message is for and how concise it must be.',
          task: TaskDef(
            goal: 'Turn a technical explanation into a short, plain-language update.',
            pieces: [
              PromptPieceDef(text: 'Produce one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'Keep the language simple', isCorrect: true),
              PromptPieceDef(text: 'Include the cause and resolution', isCorrect: true),
              PromptPieceDef(
                  text: 'Base message only on provided details', isCorrect: true),
              PromptPieceDef(text: 'Keep the tone reassuring', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated technical details', isCorrect: false),
              PromptPieceDef(text: 'Add emotional commentary', isCorrect: false),
              PromptPieceDef(text: 'Expand into an email', isCorrect: false),
              PromptPieceDef(text: 'Add speculation', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Guide the AI by defining audience, tone, and length so it knows how to simplify the message without removing key facts.',
            assembledPromptExample:
                'Rewrite this technical note into a one- or two-sentence plain-language update explaining the cause and resolution.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Create Useful Everyday Templates',
      scenarios: [
        ScenarioDef(
          title: 'Create a Reusable Email Template for Sharing Documents',
          situation:
              'You often send emails to colleagues when sharing new or updated documents. You want a reusable template that includes a brief introduction, what the document contains, and whether any action is needed.',
          prompt:
              'Create a reusable email template for sharing documents. Include a short introduction, a one-sentence description of the document, and a line explaining whether any action is required. Keep it to two or three short paragraphs.',
          output:
              'Subject: [Document Name]\nHi [Name],\n\nI’m sharing the attached [document name], which includes [brief description of contents].\n\nPlease take a moment to review it and let me know if any updates or questions arise. No other action is required unless noted.\n\nThanks,\n[Your Name]',
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
                  'Subject: [Document Name]\nHi [Name], here’s the [document name]. Let me know if you have questions.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'Subject: [Document Name] – Review Requested\nDear [Name],\nPlease find attached the [document name], which provides [brief description].\nKindly review it at your convenience and advise if any further action is required.\nSincerely,\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Subject: Sharing the [Document Name]\nHi [Name],\nHere’s the [document name] with [short description].\nFeel free to take a look and reach out if anything needs clarification.\nThanks!\n[Your Name]',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Subject: [Document Name] – Please Review\nHi [Name],\nI’m sharing the attached [document name], which includes [brief description of contents] and the latest updates from our team.\nWhen you have a moment, please review and let me know if anything needs adjusting. No urgent action required.\nThanks,\n[Your Name]',
            ),
          ],
          proTip:
              'Define the structure and placeholders in your prompt so AI builds a reusable format instead of a one-off email.',
          takeaway:
              'Templates improve when your prompt clearly states the sections, tone, and what should remain flexible.',
          task: TaskDef(
            goal: 'Create a clean, reusable email template for sharing documents.',
            pieces: [
              PromptPieceDef(text: 'Include placeholders', isCorrect: true),
              PromptPieceDef(text: 'Keep to two or three short paragraphs', isCorrect: true),
              PromptPieceDef(text: 'Add a brief description sentence', isCorrect: true),
              PromptPieceDef(text: 'Keep tone professional', isCorrect: true),
              PromptPieceDef(
                  text: 'Base template only on the provided requirements', isCorrect: true),
              PromptPieceDef(
                  text: 'Add detailed instructions for every document type',
                  isCorrect: false),
              PromptPieceDef(text: 'Use humour', isCorrect: false),
              PromptPieceDef(text: 'Ask for approvals', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated steps', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model to use', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the required structure and placeholder fields so it builds a template you can reuse with different content.',
            assembledPromptExample:
                'Create a reusable two- or three-paragraph email template with placeholders and a brief description line.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Weekly Update Template',
          situation:
              'You regularly send weekly updates to your team. You want a simple template that includes key highlights, upcoming tasks, and any blockers.',
          prompt:
              'Create a weekly update template with three sections: highlights from this week, upcoming tasks, and blockers. Keep it brief and easy to scan.',
          output:
              '**Weekly Update Template**\n**Highlights**\n- [List main achievements or progress]\n\n**Upcoming Tasks**\n- [List next steps or planned work]\n\n**Blockers**\n- [List issues or items requiring support]',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Highlights / Next Steps / Blockers – with bullet placeholders.',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  '**Weekly Status Report**\n**Completed Work**\n- [Items]\n**Planned Work**\n- [Items]\n**Issues/Dependencies**\n- [Items]',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  '**Team Weekly Update**\n**What We Got Done**\n- [Items]\n**What’s Coming Up**\n- [Items]\n**Anything in Our Way**\n- [Items]',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Weekly Update Template**\n**This Week’s Progress**\n- [Achievements / completed tasks]\n**What’s Next**\n- [Planned items for next week]\n**Risks / Blockers**\n- [Issues that may impact progress + needed support]',
            ),
          ],
          proTip:
              'State the exact sections and desired structure so the AI generates a template instead of a narrative.',
          takeaway:
              'AI builds better templates when your prompt defines the categories and layout.',
          task: TaskDef(
            goal: 'Create a weekly update template with clear sections.',
            pieces: [
              PromptPieceDef(text: 'Include three sections', isCorrect: true),
              PromptPieceDef(text: 'Use clear headings', isCorrect: true),
              PromptPieceDef(text: 'Provide placeholders', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Follow the requested structure', isCorrect: true),
              PromptPieceDef(text: 'Add commentary', isCorrect: false),
              PromptPieceDef(text: 'Add extra sections', isCorrect: false),
              PromptPieceDef(text: 'Add full examples', isCorrect: false),
              PromptPieceDef(text: 'Use humour', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Define the headings and structure so the AI uses them as fixed anchors in the template.',
            assembledPromptExample:
                'Create a weekly update template with three headings: highlights, next steps, and blockers.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Quick Customer Update Template',
          situation:
              'You sometimes need to send brief customer updates about progress or minor delays. You want a clean, reusable short message template.',
          prompt:
              'Create a short customer-update template that includes a brief progress note and a clear next step. Keep it to one or two sentences.',
          output:
              'Here’s a quick update on your project: [brief progress or delay]. The next step is [next action], and we’ll keep you posted.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Quick update: [progress]. Next step: [action].',
            ),
            ResponseVariant(
              label: 'More formal',
              response:
                  'This is a brief update on your project: [progress]. The next step is [action], and we will provide further updates as available.',
            ),
            ResponseVariant(
              label: 'Friendlier',
              response:
                  'Here’s a quick update — [progress]. Next up: [action]. We’ll keep you in the loop!',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'A quick project update: [brief progress or delay]. The next step is [action], and we will follow up with additional details as soon as they’re ready.',
            ),
          ],
          proTip:
              'Tell the AI the structure and tone you want so it fills in placeholders without expanding beyond the template.',
          takeaway:
              'Prompt templates work best when you define the purpose, fields, and length clearly.',
          task: TaskDef(
            goal: 'Create a short customer-update template.',
            pieces: [
              PromptPieceDef(text: 'Use one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'Include placeholders', isCorrect: true),
              PromptPieceDef(text: 'Keep tone clear and neutral', isCorrect: true),
              PromptPieceDef(text: 'Base text only on requirements', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Add detailed examples', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated context', isCorrect: false),
              PromptPieceDef(text: 'Use emotional language', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Give the AI clear placeholder positions and sentence limits so it produces a reusable template, not a full message.',
            assembledPromptExample:
                'Create a one- or two-sentence customer-update template with placeholders for progress and next steps.',
          ),
        ),
      ],
    ),
  ];
}


