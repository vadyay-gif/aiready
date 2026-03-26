## AI Ready ? Tracks 1?9 (verbatim source export)

### `lib\data\tracks\track1_everyday_communication.dart`
```
import '../app_catalog.dart';

/// Track 1 – Everyday Communication (lessons 1–5)
List<LessonDef> buildTrack1Lessons() {
  return [
    const LessonDef(
      title: 'Write Clearly From Scratch',
      scenarios: [
        ScenarioDef(
          title: 'Write a Professional Email',
          situation:
              'You need to write a professional email to a colleague.\n\nThe draft policy document is ready, and you want to ask for feedback by Thursday.\n\nBut when you give AI a vague instruction, the result is usually:\n- too generic\n- missing the actual request\n- not ready to send\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people would type “write an email about the policy”—then wonder why the reply feels generic.\n\nTo get a usable result, your prompt must define:\n- Context - what is happening\n- Objective - what the email should achieve\n- Requirements - tone and structure\n- Expectations - what the final output should include',
          prompt:
              'Write a professional email explaining that the draft policy document is ready for review and asking if they can share feedback by Thursday. Keep it to two or three short paragraphs.',
          output:
              'Subject: Draft Policy Document Ready for Review\n\nHi [Name],\n\nI\'m writing to let you know that the draft policy document is now ready for review. Please feel free to take a look at your convenience.\n\nIf possible, could you share your feedback by Thursday? This will help us stay on track with the timeline. Let me know if you have any questions.\n\nThanks,\n[Your Name]\n\nNotice how the deadline and the ask stay explicit—that is your Objective and Expectations, not the model improvising “professional.”',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: the model is following your structure, not polishing your writing.\n- Context pins who this is for\n- Objective pins the deadline ask\n- Requirements cap length and tone\n- Expectations demand send-ready text',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite an email about a document\n\nStrong prompt:\nWrite a professional email explaining that the draft policy document is ready for review and asking if they can share feedback by Thursday. Keep it to two or three short paragraphs.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nColleague email; draft policy document is ready for review\n\nO - Objective\nRequest feedback by Thursday\n\nR - Requirements\nProfessional tone; two to three short paragraphs\n\nE - Expectations\nThe email should be clear and ready to send',
            ),
          ],
          proTip:
              'People skip C.O.R.E. because one line feels faster—then they lose the evening fixing mush. The real mistake is treating structure as optional.',
          takeaway:
              'AI mirrors the frame you give it. Name the situation, the outcome, the format, and what “done” looks like—and you pull ahead of anyone still typing “make this sound good.”',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for a colleague email—report ready for review and comments by Wednesday.',
            pieces: [
              PromptPieceDef(
                  text: 'The email should clearly state that the report is ready for review',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The email should ask for comments by Wednesday',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The tone should be polite and professional',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The email should be written in two short paragraphs',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The final output should be clear and ready to send',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add extra background details to make the email longer',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the AI decide what the email should focus on',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Include unrelated project updates', isCorrect: false),
              PromptPieceDef(
                  text: 'Add creative phrasing to make it more interesting',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Choose the best AI model before writing',
                  isCorrect: false),
            ],
            coachingNote:
                'A premium prompt names Context, Objective, Requirements, and Expectations—what the output should include—so the model can deliver something you can send.',
            assembledPromptExample:
                'Write a professional email to a colleague explaining that the report is ready for review. The objective is to clearly request comments by Wednesday. Write the email in two short paragraphs using a polite and professional tone. The final output should be clear, concise, and ready to send.',
            feedbackWhenCorrect:
                'That score is the gap between “sounds fine” and send-ready: miss one C.O.R.E. slot and the model fills it with guesswork.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite a Messy Message Into a Clear Update',
          situation:
              'You need to send a clear project update to your team.\n\nBut instead of a clean brief, you only have scattered notes:\n- timeline slipped slightly\n- design team still finalising assets\n- dev work is mostly done\n- waiting on one dependency\n- next steps unclear\n\nWhen you give this kind of input to AI, the result is usually:\n- disorganized\n- missing key points\n- unclear about what happens next\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMessy input is where most people lose control—they stop telling the model what not to do.\n\nTo get a usable result, your prompt must define:\n- Context - messy internal update\n- Objective - inform and align the team\n- Requirements - structured, readable format\n- Expectations - clear status and next steps',
          prompt:
              'Rewrite the following notes into a clear team update message.\n\nThe goal is to explain the current project status and make the next steps clear.\n\nStructure the message with short sections or bullet points. Use a professional but simple tone.\n\nThe final output should clearly show what is done, what is pending, and what happens next.',
          output:
              'Hi team,\n\nHere\'s a quick update on the project:\n\nCurrent status:\n- Development work is mostly complete\n- Timeline has shifted slightly due to ongoing design work\n\nPending items:\n- Final design assets from the design team\n- One remaining dependency before full completion\n\nNext steps:\n- Finalise design assets\n- Resolve the remaining dependency\n- Prepare for final review\n\nLet me know if anything needs clarification.\n\nNotice how status, pending work, and next steps stay separated—that is Requirements and Expectations locking the shape so the model cannot bury the lead.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: messy notes do not get “fixed” by magic—they get routed by your format rules.\n- Objective forces the one job: align the team\n- Requirements force sections or bullets\n- Expectations force done / pending / next without narrative drift',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise these notes\n\nStrong prompt:\nRewrite the following notes into a clear team update message.\n\nThe goal is to explain the current project status and make the next steps clear.\n\nStructure the message with short sections or bullet points. Use a professional but simple tone.\n\nThe final output should clearly show what is done, what is pending, and what happens next.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMessy meeting notes that need to be turned into a clear update\n\nO - Objective\nInform the team and align them on current status\n\nR - Requirements\nStructured format using sections or bullet points\n\nE - Expectations\nThe output should clearly show status, pending work, and next steps',
            ),
          ],
          proTip:
              '“Summarise this” is a trap: it invites the model to freestyle. The mistake is skipping Requirements—then you get a wall of text with no next step.',
          takeaway:
              'Messy inputs punish vague prompts first. Lock Objective and format, and you stay in control while everyone else gets mush.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning rough notes into a structured team update with clear next steps.',
            pieces: [
              PromptPieceDef(
                  text: 'The update should clearly explain the current status of the project',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The output should organize information into sections or bullet points',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The update should highlight what is completed and what is still pending',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The message should clearly state the next steps',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The final output should be structured, easy to read, and ready to send',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add extra details to make the update more comprehensive',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the AI decide how to structure the message',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Include all notes exactly as written', isCorrect: false),
              PromptPieceDef(
                  text: 'Add creative language to make the update more engaging',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Focus only on completed work', isCorrect: false),
            ],
            coachingNote:
                'When input is messy, C.O.R.E. is what keeps the model aligned: context, objective, format requirements, and explicit expectations for the final message.',
            assembledPromptExample:
                'Rewrite the following meeting notes into a clear team update. The objective is to explain the current project status and align the team on next steps. Structure the message using clear sections or bullet points. The output should clearly show what is completed, what is pending, and what happens next, and should be ready to send.',
            feedbackWhenCorrect:
                'Full marks here means you see the rails: without format + expectations, messy notes collapse into noise—this is where most AI users lose control.',
          ),
        ),
        ScenarioDef(
          title: 'Handle a Sensitive Update with the Right Tone',
          situation:
              'You need to send an update to a client.\n\nThere is a delay.\n\nBut the situation is not simple:\n- the delay is caused by internal issues\n- the work is still progressing\n- you need to maintain trust\n- you also need to reset expectations\n\nIf you prompt AI without structure, the output usually becomes:\n- too vague\n- too blunt\n- too wordy\n\nThis is why your prompt fails:\n- unclear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for “professional” and hope tone handles itself—that is how trust leaks out of the email.\n\nTo get a usable result, your prompt must define:\n- Context - client update with a delay\n- Objective - inform, maintain confidence, and reset timeline\n- Requirements - controlled tone and structure\n- Expectations - clear, honest, and reassuring message',
          prompt:
              'Write a professional email to a client explaining that the project is slightly delayed due to internal adjustments.\n\nThe objective is to clearly communicate the delay while maintaining trust and keeping the relationship positive.\n\nUse a calm, confident, and professional tone.\n\nThe email should briefly explain the situation, reassure progress, and provide a revised expectation.\n\nThe final output should be clear, honest, and ready to send.',
          output:
              'Subject: Project Update\n\nHi [Name],\n\nI wanted to share a quick update on the project. We\'ve made strong progress, but a few internal adjustments have slightly impacted the timeline.\n\nThat said, work is continuing steadily, and we are focused on delivering everything to the expected standard. We now expect to complete the next milestone shortly and will keep you updated as we move forward.\n\nThanks for your understanding, and please feel free to reach out if you would like to discuss any details.\n\nBest regards,\n[Your Name]\n\nNotice how the delay is stated without panic and the next milestone still appears—that is Objective plus Requirements holding tone and honesty at once.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: delay emails blow up when Objective is fuzzy—you need one prompt to do three jobs at once.\n- Objective balances bad news + relationship\n- Requirements pin the tone so it cannot slide into panic or coldness\n- Expectations force a forward path, not just an apology',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite an email saying the project is delayed\n\nStrong prompt:\nWrite a professional email to a client explaining that the project is slightly delayed due to internal adjustments.\n\nThe objective is to clearly communicate the delay while maintaining trust and keeping the relationship positive.\n\nUse a calm, confident, and professional tone.\n\nThe email should briefly explain the situation, reassure progress, and provide a revised expectation.\n\nThe final output should be clear, honest, and ready to send.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nClient communication about a project delay\n\nO - Objective\nCommunicate the delay while maintaining trust and confidence\n\nR - Requirements\nControlled tone: calm, professional, reassuring\n\nE - Expectations\nThe output should clearly explain the delay, show progress, and provide next steps',
            ),
          ],
          proTip:
              'The common mistake is softening the delay until it disappears—then the client feels misled. Name the trade-offs in the prompt, or the model will guess wrong.',
          takeaway:
              'Hard news needs competing objectives spelled out. C.O.R.E. is how you keep honesty, warmth, and a clear next step in the same message—most users pick only one.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong client email about a delay—clear, calm, and trust-building.',
            pieces: [
              PromptPieceDef(
                  text: 'The email should clearly explain that there is a delay in the project',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The message should maintain a calm, confident, and professional tone',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The email should reassure the client that progress is still being made',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The message should provide a revised expectation or next step',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The final output should be clear, honest, and ready to send',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Minimise mention of the delay to keep the message positive',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the AI decide how to communicate the situation',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add extra technical details to justify the delay',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Make the message more casual to sound friendly',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Focus only on positive updates', isCorrect: false),
            ],
            coachingNote:
                'Sensitive updates need every element of C.O.R.E.: situation, competing objectives, tone requirements, and a concrete picture of the message the client should receive.',
            assembledPromptExample:
                'Write a professional email to a client explaining that the project is slightly delayed due to internal adjustments. The objective is to clearly communicate the delay while maintaining trust and keeping the relationship positive. Use a calm, confident, and professional tone. The email should briefly explain the situation, reassure that progress is ongoing, and provide a revised expectation or next step. The final output should be clear, honest, and ready to send.',
            feedbackWhenCorrect:
                'You nailed the tension: delay copy fails when Objective or tone is implicit—this is the edge over one-line “be professional” prompts.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Rewrite for Clarity',
      scenarios: [
        ScenarioDef(
          title: 'Fix a Confusing Email So It\'s Clear and Concise',
          situation:
              'You have a colleague\'s draft about the training schedule. It repeats itself, hides the real update, and runs long.\n\nReaders only need one fact: the schedule is not ready today and will be sent tomorrow afternoon.\n\nWhen you tell AI only to "clean this up," the result is usually:\n- still fluffy\n- the wrong tone\n- missing the single takeaway\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask AI to "make it better" and never name the one fact—so the model keeps the noise.\n\nTo get a usable result, your prompt must define:\n- Context - internal email; colleague draft about the training schedule\n- Objective - state clearly that the schedule is not ready today and will arrive tomorrow afternoon\n- Requirements - professional tone; two short paragraphs; remove repetition\n- Expectations - include a subject line; ready to send',
          prompt:
              'Rewrite my colleague\'s draft into a clear internal email about the training schedule. State plainly that the schedule is not ready today and will be sent tomorrow afternoon, without changing any facts. Use a professional tone in exactly two short paragraphs, cut repetition, and add a subject line so the message is ready to send.',
          output:
              'Subject: Training schedule — delivery tomorrow afternoon\n\nHi [Name],\n\nQuick update: the training schedule is not ready to share today. It will be sent tomorrow afternoon once a few final checks are complete.\n\nThanks for your patience. Let me know if you need anything in the meantime.\n\nBest,\n[Your Name]\n\nNotice how nothing new appears except clarity—the Objective and Requirements told the model what to delete, not what to invent.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: rewrites go wrong when Objective is missing—the model decorates instead of deleting.\n- Context anchors the messy draft\n- Objective locks the single takeaway\n- Requirements force paragraph count and repetition cuts\n- Expectations demand subject line + send-ready',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this email better\n\nStrong prompt:\nRewrite my colleague\'s draft into a clear internal email about the training schedule. State plainly that the schedule is not ready today and will be sent tomorrow afternoon, without changing any facts. Use a professional tone in exactly two short paragraphs, cut repetition, and add a subject line so the message is ready to send.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nInternal email; colleague draft about the training schedule\n\nO - Objective\nCommunicate the reschedule: not today; tomorrow afternoon\n\nR - Requirements\nProfessional tone; two short paragraphs; strip repetition\n\nE - Expectations\nSubject line included; reads as polished and ready to send',
            ),
          ],
          proTip:
              '“Better” is not a spec. The mistake is skipping Requirements—then the model keeps fluff because you never told it what to delete.',
          takeaway:
              'Anchor the draft, name the one outcome, then cage structure—noise dies when Expectations say what “done” looks like.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for telling the team the client roadmap review moved to Thursday at 10:00 a.m.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The message should clearly state the new meeting time (Thursday, 10:00 a.m.)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be to inform attendees and avoid confusion about the old time',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The tone should stay professional and direct for a team channel or email',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The output should briefly note that the calendar invite will be updated (or equivalent next step)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The final output should be short, accurate, and ready to post or send',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add a joke to keep the update light', isCorrect: false),
              PromptPieceDef(
                  text: 'Include unrelated project gossip for context',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model pick whichever time sounds reasonable',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Pad the message so it feels more important',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask the model to choose the best AI tool first',
                  isCorrect: false),
            ],
            coachingNote:
                'Strong rewrite prompts still need full C.O.R.E.: audience and channel, the factual change, tone and length, and what "done" looks like.',
            assembledPromptExample:
                'Write a short team update for email or chat explaining that the client roadmap review has moved to Thursday at 10:00 a.m., so nobody relies on the old time. Use a professional, direct tone in two or three sentences, note that the calendar invite will be updated, and keep the message accurate and ready to send.',
            feedbackWhenCorrect:
                'Perfect: this is the rewrite edge—Objective + Expectations stop the model from “improving” you into new facts.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite Fragmented Notes Into One Clean Update',
          situation:
              'You need one post in the leadership Slack channel, but your inbox is only fragments:\n- "Q3 freeze — maybe Wed call??"\n- Legal still reviewing one vendor clause\n- "we should say something today"\n- no agreed headline or owner\n\nWhen you tell AI only to "summarise this," the result is usually:\n- still chaotic\n- invented dates or owners\n- tone that feels too casual or too alarmist\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nThis is where most AI users lose control: they never ban invention, so the model fills gaps with confident fiction.\n\nTo get a usable result, your prompt must define:\n- Context - leadership channel; partial notes on Q3 budget and Legal\n- Objective - one factual status update; no implied decision\n- Requirements - neutral executive tone; one short paragraph or up to three tight bullets; do not invent owners, percentages, or dates\n- Expectations - concise, factual, ready to paste',
          prompt:
              'Rewrite the following fragmented notes into one leadership-channel update for Slack. The Q3 budget discussion is active, Legal is still reviewing a vendor contract clause, and leadership wants a same-day line in channel. Communicate current status only—do not imply a final decision or a new deadline. Use a neutral executive tone in either one short paragraph or up to three bullet lines. Do not invent owners, percentages, or dates that the notes do not support, and do not add tasks unless the notes explicitly include them. Keep it factual and ready to paste.',
          output:
              'Headline: Q3 budget — vendor legal review in progress\n\nLegal is still reviewing one clause on the vendor contract tied to the Q3 budget discussion. No final decision yet; we will share the next checkpoint once review clears. Ping me if you need detail for your function.\n\nNotice how nothing is invented—Requirements and Expectations explicitly blocked dates, owners, and drama the notes did not support.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: leadership fragments need anti-hallucination rules in the prompt, not after the fact.\n- Objective is “status only, no implied decision”\n- Requirements lock tone and bullet budget\n- Expectations demand paste-ready without invented facts',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise these chats\n\nStrong prompt:\nRewrite the following fragmented notes into one leadership-channel update for Slack. The Q3 budget discussion is active, Legal is still reviewing a vendor contract clause, and leadership wants a same-day line in channel. Communicate current status only—do not imply a final decision or a new deadline. Use a neutral executive tone in either one short paragraph or up to three bullet lines. Do not invent owners, percentages, or dates that the notes do not support, and do not add tasks unless the notes explicitly include them. Keep it factual and ready to paste.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLeadership Slack channel; scattered notes on Q3 budget and Legal review\n\nO - Objective\nShare status without deciding or dramatising\n\nR - Requirements\nExecutive-neutral tone; tight structure; no fabricated facts\n\nE - Expectations\nOne paste-ready update with a clear headline',
            ),
          ],
          proTip:
              'Messy input is not the problem—missing “do not invent” is. The model will guess dates and owners unless Requirements forbid it.',
          takeaway:
              'Fragmented sources need a contract: audience, intent, anti-hallucination lines, and the shape of the final post—skip one and you look reckless in channel.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning rough handoff notes into a structured handoff message for the incoming owner.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should state that the notes are messy handoff bullets from the departing owner',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be to give the incoming owner a clear snapshot of status and blockers',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should force a structured format (for example labeled sections or bullets)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should forbid inventing deadlines, approvals, or tool names not in the notes',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be a message the new owner can act on without follow-up clarification',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Encourage creative storytelling to make it memorable',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model assume the project is already finished',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add emotional language about how stressful the week was',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Paste the raw notes twice so the model "notices" them more',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask which large language model to use before rewriting',
                  isCorrect: false),
            ],
            coachingNote:
              'Handoffs need the same structure as messy chat: name the mess, define the job, require a schema, ban guesses, and describe the finished artifact.',
            assembledPromptExample:
                'Rewrite these rough handoff notes into a structured handoff message for the incoming project owner. Summarise current status, owners, and blockers using clear section labels or bullets. Keep a neutral professional tone, do not invent dates, budgets, or tool names that are not in the notes, and deliver something the new owner can act on without follow-up questions.',
            feedbackWhenCorrect:
                'Strong: you spotted the guardrails—this is where prompts break when leadership visibility meets half-finished facts.',
          ),
        ),
        ScenarioDef(
          title: 'Handle a Vague Ask With the Right Tone',
          situation:
              'Your manager DMs: "Just circle back on the onboarding stuff later today — keep it tight."\n\nYou do not know which onboarding bundle they mean, what "later" means, or how formal to sound—and you cannot sound annoyed.\n\nIf you prompt AI without structure, the output usually becomes:\n- too vague\n- too blunt\n- too wordy\n\nThis is why your prompt fails:\n- unclear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people would ask AI to “sound polite” and get a reply that dodges the real question.\n\nTo get a usable result, your prompt must define:\n- Context - manager DM; vague onboarding request\n- Objective - acknowledge, clarify scope and timing, propose a bounded next step\n- Requirements - respectful, calm, professional tone; about ninety words or fewer; no sarcasm; do not invent deliverables\n- Expectations - one message, ready to send',
          prompt:
              'Draft a reply to my manager\'s DM: "Just circle back on the onboarding stuff later today — keep it tight." I am unsure which onboarding package they mean and what time "later" implies, and the tone should stay positive. Acknowledge the note, ask one focused question about scope and timing, and suggest a concrete next step without over-committing. Keep a respectful, calm, professional voice in about ninety words or fewer, with no sarcasm or passive aggression and no invented deliverables. Give me a single message that is ready to send.',
          output:
              'Thanks for the nudge — happy to tighten this up. When you say onboarding stuff, do you mean the new-hire checklist pack, the LMS module, or both? If you can point me to the version you want circled back on, I will send a short status and ETA later today. If you had a specific time in mind for "later," let me know and I will align.\n\nNotice how one question unlocks scope without snark—that is Objective plus Requirements holding tone while you force clarity.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: the model cannot read your manager\'s mind—you have to script the trade-off between rapport and clarity.\n- Objective forces acknowledge + clarify + next step without stalling\n- Requirements cap length and ban sarcasm so tone cannot drift\n- Expectations demand one send-ready message, not a thread',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHelp me reply to my boss\n\nStrong prompt:\nDraft a reply to my manager\'s DM: "Just circle back on the onboarding stuff later today — keep it tight." I am unsure which onboarding package they mean and what time "later" implies, and the tone should stay positive. Acknowledge the note, ask one focused question about scope and timing, and suggest a concrete next step without over-committing. Keep a respectful, calm, professional voice in about ninety words or fewer, with no sarcasm or passive aggression and no invented deliverables. Give me a single message that is ready to send.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nManager DM; vague onboarding request; need to protect rapport\n\nO - Objective\nAcknowledge, clarify scope/timing, propose a bounded next step\n\nR - Requirements\nCalm professional tone; word cap; no invented promises\n\nE - Expectations\nOne polished reply ready to send immediately',
            ),
          ],
          proTip:
              'Vague asks break when you forget “no invented deliverables”—the model will happily promise work you did not mean to offer.',
          takeaway:
              'Fuzzy inbound messages are still a spec problem. C.O.R.E. defines what “good” looks like before the model improvises rapport or dodge.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for asking a product lead for a short extension on a Friday deadline without sounding negative.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should state the existing Friday deadline and the channel (email or Slack)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be to request a brief extension with a specific new target time',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should keep the tone constructive, respectful, and non-defensive',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should mention one factual reason for the slip without blame or drama',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be a concise message ready to send in one pass',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Suggest exaggerating the risk to force a yes',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell the model to guess why the deadline was unrealistic',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add humour about working weekends',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for a long essay explaining team history',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Instruct the model to compare AI vendors first',
                  isCorrect: false),
            ],
            coachingNote:
              'Sensitive timing asks need context, a crisp objective, tone rules, and a defined artifact — otherwise the model swings between apologetic novels and blunt demands.',
            assembledPromptExample:
                'Draft a short Slack message to the product lead asking for a small extension on the Friday 5 p.m. deliverable because one dependency landed late. Propose Monday 10 a.m. with a brief outline of what ships when. Keep a constructive, respectful tone, avoid blame, stay under ninety words, do not invent metrics, and make the message ready to send without editing.',
            feedbackWhenCorrect:
                'That is the difference between “polite” and in control: you picked the C.O.R.E. levers that stop the model from over-promising or under-clarifying.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Adjust Tone for Any Situation',
      scenarios: [
        ScenarioDef(
          title: 'Polish a Casual Update for a Formal Audience',
          situation:
              'You wrote a quick Slack-style line for a leadership email: you will share the revised budget memo later today and people do not need to reply yet.\n\nThe audience expects a calm, professional register—not chatty shorthand.\n\nWhen you only say "make this professional," AI often:\n- adds filler\n- shifts the meaning\n- sounds stiff or generic\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost users say “make it professional” and get a new promise or a new tone—because they never locked the facts.\n\nTo get a usable result, your prompt must define:\n- Context - leadership email; memo still being revised\n- Objective - communicate timing and no action required\n- Requirements - professional tone; keep the same facts; two short sentences\n- Expectations - ready to send; no new commitments',
          prompt:
              'Rewrite this line for a leadership email without changing facts: I\'ll drop the revised budget memo later today—no need to reply yet. Keep the meaning identical, use a professional tone, and limit the output to two short sentences.',
          output:
              'Subject: Revised budget memo\n\nDear [Name],\n\nI will share the revised budget memo later today. No response is required at this stage.\n\nKind regards,\n[Your Name]\n\nNotice how meaning stayed frozen—Requirements + Expectations told the model what not to change, not just how to sound.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: tone prompts fail when “professional” is the only instruction—the model will rewrite meaning.\n- Context names leadership email so register shifts correctly\n- Objective keeps timing + no-reply as the only job\n- Requirements lock facts and sentence count\n- Expectations demand send-ready lines, not a new pitch',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this sound professional\n\nStrong prompt:\nRewrite this line for a leadership email without changing facts: I\'ll drop the revised budget memo later today—no need to reply yet. Keep the meaning identical, use a professional tone, and limit the output to two short sentences.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLeadership email; budget memo revision timing\n\nO - Objective\nShare timing; state no reply needed\n\nR - Requirements\nProfessional tone; same facts; two short sentences\n\nE - Expectations\nPolished lines ready to send',
            ),
          ],
          proTip:
              'If you do not say “same facts,” the model will “improve” you into commitments you did not make—then you are editing on defense.',
          takeaway:
              'Tone is a constraint problem: lock audience, facts, and length first—style follows, and you stay ahead of generic “rewrite” output.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning a casual client chat into a polite email that confirms a Tuesday wire transfer without adding new promises.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should name the audience (client) and channel (email)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be to confirm the Tuesday transfer without creating new obligations',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should keep a courteous, professional tone in two or three sentences',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should forbid inventing amounts, dates, or bank details',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be a message the user can send immediately',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Tell the model to sound more excited than professional',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model choose the payment day',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add a joke to relax the client',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Paste unrelated invoice numbers for realism',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask which AI model to use before drafting',
                  isCorrect: false),
            ],
            coachingNote:
                'When tone is the job, C.O.R.E. still matters: audience, outcome, tone and length rules, and a defined send-ready artifact.',
            assembledPromptExample:
                'Turn this casual client chat into a short polite email confirming the wire transfer is scheduled for Tuesday. Name the audience and email format, keep a courteous professional tone in two or three sentences, do not invent amounts or bank details, and deliver text ready to send.',
            feedbackWhenCorrect:
                'Full marks is the advantage: most people lose here because “tone” without fact-lock drifts—your picks keep meaning and register under control.',
            resultPolishedPrompt:
                'Draft a brief client email confirming the wire transfer is on track for Tuesday. Keep a courteous professional tone in two or three sentences, do not invent amounts or banking details, and leave the message ready to send.',
          ),
        ),
        ScenarioDef(
          title: 'Shape Mixed Snippets Into One Consistent Tone',
          situation:
              'People sent you fragments about the same customer escalation:\n- "make it sound less harsh"\n- "still say we missed the SLA"\n- "legal wants it shorter"\n- "maybe add empathy?"\n\nYou must produce one email that is firm on facts but not aggressive.\n\nIf you say "combine these," AI often:\n- drops the SLA point\n- over-softens accountability\n- drifts into a long lecture\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nConflicting notes are where average prompts collapse—the model picks one opinion and runs.\n\nTo get a usable result, your prompt must define:\n- Context - customer escalation after a missed SLA; Legal review\n- Objective - acknowledge miss, show corrective action, keep relationship workable\n- Requirements - firm but respectful tone; short; include SLA fact without blame language\n- Expectations - one email; ready to send',
          prompt:
              'Draft a customer email responding to a missed SLA. The message must acknowledge the miss, reference that Legal reviewed the wording, and describe the corrective step already taken. Use a firm but respectful tone, keep it under one hundred and twenty words, and avoid blame-shifting or emotional padding.',
          output:
              'Subject: Update on your recent service experience\n\nHi [Name],\n\nWe missed the SLA on your request, and that is not the standard we aim for. Legal has reviewed our response to ensure it is accurate and fair.\n\nWe have already implemented a corrective step to prevent a repeat, and we remain focused on delivering reliably for you. If you would like to discuss details, reply to this email and we will connect you with the right owner.\n\nThank you for your patience,\n[Your Name]\n\nNotice how the SLA stays visible but the tone stays controlled—that is Requirements setting the band, not “empathy” as a vibe.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: conflicting snippets need a single narrative contract—otherwise the model averages opinions.\n- Objective forces miss + fix + relationship in one arc\n- Requirements cap tone and length so empathy cannot bloat\n- Expectations demand one email, not a committee draft',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCombine these notes\n\nStrong prompt:\nDraft a customer email responding to a missed SLA. The message must acknowledge the miss, reference that Legal reviewed the wording, and describe the corrective step already taken. Use a firm but respectful tone, keep it under one hundred and twenty words, and avoid blame-shifting or emotional padding.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCustomer escalation; missed SLA; Legal input\n\nO - Objective\nAcknowledge failure; show fix; preserve relationship\n\nR - Requirements\nFirm-respectful tone; word cap; no blame-shifting\n\nE - Expectations\nSingle send-ready email',
            ),
          ],
          proTip:
              '“Combine these” is how accountability disappears. The mistake is skipping Objective—then the model softens the SLA line to keep the peace.',
          takeaway:
              'Conflicting feedback is a spec: name the non-negotiable facts, then cage tone—everything else is decoration.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning conflicting bullet feedback into one internal memo about a delayed product launch.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should state that the input bullets conflict and must be reconciled',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be to inform internal stakeholders of the new launch window',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should enforce neutral executive tone and a fixed length',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should forbid inventing causes, owners, or dates not in the notes',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be a memo ready to circulate without edits',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Let each bullet become its own paragraph',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add dramatic language to show urgency',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Include a paragraph apologising for the company culture',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Guess which team caused the delay',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Recommend a favourite AI assistant',
                  isCorrect: false),
            ],
            coachingNote:
                'Fragmented input needs guardrails: reconcile conflicts in the prompt, define the output type, and ban guessed facts.',
            assembledPromptExample:
                'Reconcile these conflicting bullets into one internal memo announcing the delayed product launch and the new target window. Use neutral executive tone, keep under two hundred words, do not invent causes or owners, and deliver a memo ready to circulate.',
            feedbackWhenCorrect:
                'Solid: mixed notes break prompts that lack a spine—your picks show you know how to lock one story before the model “smooths” facts away.',
            resultPolishedPrompt:
                'Turn these conflicting notes into a single internal memo that announces the delayed launch and the revised window. Keep an executive-neutral voice, stay under two hundred words, do not invent causes or owners, and make it ready to circulate.',
          ),
        ),
        ScenarioDef(
          title: 'Hold a Boundary on Timing Without Sounding Dismissive',
          situation:
              'A stakeholder asks for your team\'s deep-dive analysis "by 9 a.m. tomorrow"—but your team needs at least until Thursday for anything reviewable.\n\nYou must decline the 9 a.m. deadline without damaging the relationship.\n\nA vague prompt produces:\n- over-apologising\n- fake certainty\n- or an aggressive "no"\n\nThis is why your prompt fails:\n- unclear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask AI to “say no nicely” and get either groveling or a fight-pick—because boundaries were never defined.\n\nTo get a usable result, your prompt must define:\n- Context - stakeholder request; unrealistic 9 a.m. deadline\n- Objective - decline 9 a.m. push; propose Thursday deliverable; keep trust\n- Requirements - respectful, confident tone; short; no invented approvals\n- Expectations - email ready to send',
          prompt:
              'Write a short email to a stakeholder who asked for a full analysis by 9 a.m. tomorrow. Explain that a reviewable draft needs until Thursday morning, offer a concise interim summary tomorrow if helpful, and keep the tone respectful and confident. Do not promise legal sign-off or resources you cannot guarantee. Limit to about ninety words.',
          output:
              'Subject: Timing for the analysis\n\nHi [Name],\n\nThanks for the request. A reviewable version of the full analysis needs until Thursday morning to meet our quality bar.\n\nIf helpful, I can share a brief interim summary tomorrow so you have directional visibility sooner. Let me know what level of detail would be most useful.\n\nBest,\n[Your Name]\n\nNotice how the no is paired with a smaller yes—the Objective trades timing without inventing leverage you do not have.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: boundary emails need competing objectives named up front—otherwise the model picks apology or aggression.\n- Objective pairs decline with an alternate path\n- Requirements cap promises so you cannot “helpfully” lie\n- Expectations force send-ready structure with a next step',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSay no politely\n\nStrong prompt:\nWrite a short email to a stakeholder who asked for a full analysis by 9 a.m. tomorrow. Explain that a reviewable draft needs until Thursday morning, offer a concise interim summary tomorrow if helpful, and keep the tone respectful and confident. Do not promise legal sign-off or resources you cannot guarantee. Limit to about ninety words.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nStakeholder email; unrealistic morning deadline\n\nO - Objective\nDecline unsafe timing; propose viable date; preserve trust\n\nR - Requirements\nRespectful confident tone; word cap; no false promises\n\nE - Expectations\nSend-ready email with clear next step',
            ),
          ],
          proTip:
              'If you do not forbid false promises, the model will “close” the deal for you—then you own commitments you never approved.',
          takeaway:
              'Timing conflicts are negotiation prompts: say what ships, what does not, and what is off-limits—most users only ask for politeness.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for asking a vendor for a one-week extension on a contract review while keeping the partnership positive.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should name the current review deadline and the channel (email)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should request one additional week with a clear new date',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should keep tone collaborative and avoid blame',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should give one factual reason without exaggerating risk',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be a concise email ready to send',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Threaten to switch vendors in the opening line',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model invent legal citations',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for humour to soften the ask',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a ten-page appendix',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell the model to compare LLM providers',
                  isCorrect: false),
            ],
            coachingNote:
                'Boundary-setting emails need context, a crisp ask, tone rules, and a no-fabrication line—otherwise the model swings between groveling and blunt refusals.',
            assembledPromptExample:
                'Email the vendor asking for a one-week extension on the contract review, propose a new return date, cite one factual scheduling constraint without drama, keep the tone collaborative, and keep the message under a hundred words.',
            feedbackWhenCorrect:
                'That is high-signal: boundary prompts fail when Objective is mush—your answers show you can trade time without trading away credibility.',
            resultPolishedPrompt:
                'Write a concise vendor email requesting one more week for the contract review, propose a specific new date, reference one factual scheduling constraint without blame, stay collaborative, and keep it ready to send at under a hundred words.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Expand or Shorten With Purpose',
      scenarios: [
        ScenarioDef(
          title: 'Strip a Long Email Down to the Essential Fact',
          situation:
              'You have a three-paragraph email full of background about meetings and history. The only operational fact is that the design review moves from Tuesday at 2 p.m. to Wednesday at 2 p.m.\n\nIf you say "shorten this," AI often:\n- keeps the wrong details\n- drops the date change\n- adds new interpretation\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for “shorter” and keep the drama—because they never named the one fact to preserve.\n\nTo get a usable result, your prompt must define:\n- Context - internal schedule change; design review\n- Objective - communicate the new day and time\n- Requirements - one or two sentences; practical tone; remove backstory\n- Expectations - accurate, ready to send',
          prompt:
              'Condense the message so it states only that the design review moves from Tuesday at 2 p.m. to Wednesday at 2 p.m. Use one or two clear sentences in a practical tone. Do not include meeting history or reasons unless provided in the source text.',
          output:
              'Subject: Design review time update\n\nHi team — the design review has moved from Tuesday 2 p.m. to Wednesday 2 p.m. Please update your calendars.\n\nNotice how everything else vanished—Objective plus “do not include history” told the model what to delete.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: shortening is not summarising—it is deletion with a target.\n- Objective names the only fact that may survive\n- Requirements cap sentences and tone\n- Expectations ban backstory so the model cannot “help” with context',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nShorten this email\n\nStrong prompt:\nCondense the message so it states only that the design review moves from Tuesday at 2 p.m. to Wednesday at 2 p.m. Use one or two clear sentences in a practical tone. Do not include meeting history or reasons unless provided in the source text.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nInternal note; design review reschedule\n\nO - Objective\nCommunicate new day and time\n\nR - Requirements\nOne or two sentences; strip backstory\n\nE - Expectations\nAccurate, send-ready update',
            ),
          ],
          proTip:
              '“Shorten” without a preserved fact is roulette—the model keeps what sounds important, not what is operationally true.',
          takeaway:
              'Compression is C.O.R.E. with scissors: name the fact, ban the rest—then you beat everyone still “summarising.”',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for shrinking a long status thread into one sentence about a budget approval delay to next Monday.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should state the single fact to preserve (approval moved to Monday)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be to replace noise with that fact only',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should cap length (one or two sentences)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should forbid inventing reasons or new dates',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be language ready to paste into chat',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Keep every stakeholder name for politeness',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model summarise "the vibe" of the thread',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add a motivational closing quote',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Expand with a paragraph of context',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask the reader to pick a model first',
                  isCorrect: false),
            ],
            coachingNote:
                'Shortening prompts still need C.O.R.E.: name the fact, ban extra content, and describe the finished line.',
            assembledPromptExample:
                'Compress this thread into one or two sentences stating only that budget approval now lands next Monday; drop history; do not invent reasons; keep a practical tone.',
            feedbackWhenCorrect:
                'Exactly: this is where prompts break under noise—your picks show you know the one fact to keep and what to forbid.',
            resultPolishedPrompt:
                'Provide one or two sentences for chat stating only that budget approval is now expected next Monday—no backstory, no invented causes, practical tone, ready to paste.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Chaotic Bullets Into a Tight Status Brief',
          situation:
              'Your notes are a mess:\n- "API still flaky??"\n- "vendor ticket #??"\n- "tell leadership something today"\n- "don\'t panic anyone"\n\nYou need a single short brief for leadership.\n\nIf you prompt "clean this up," AI often:\n- invents ticket numbers\n- promises a fix time\n- sounds alarmist or vague\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nLeadership visibility plus messy notes is a credibility trap—most users let the model sound confident with invented precision.\n\nTo get a usable result, your prompt must define:\n- Context - internal leadership brief; API instability notes\n- Objective - factual status without panic\n- Requirements - three bullet lines max; neutral tone; no invented metrics\n- Expectations - ready to paste',
          prompt:
              'Turn these bullets into a leadership brief of at most three bullet lines. Report only what the notes support: intermittent API errors, vendor ticket open, next diagnostic checkpoint end of day. Do not invent ticket numbers, customer impact percentages, or fix times. Keep a neutral, steady tone.',
          output:
              '- Intermittent API errors observed; engineering is actively monitoring.\n- Vendor support ticket is open; we are waiting on their next update.\n- Next internal checkpoint: end of day for status consolidation.\n\nNotice how numbers stay out—Requirements blocked fake precision, so the brief stays defensible.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: incident chaos needs negative constraints—tell the model what it is not allowed to sound sure about.\n- Objective is steady status, not heroics\n- Requirements cap bullets and tone\n- Expectations forbid invented metrics so leadership cannot quote fiction',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nFix these notes\n\nStrong prompt:\nTurn these bullets into a leadership brief of at most three bullet lines. Report only what the notes support: intermittent API errors, vendor ticket open, next diagnostic checkpoint end of day. Do not invent ticket numbers, customer impact percentages, or fix times. Keep a neutral, steady tone.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLeadership brief; messy incident notes\n\nO - Objective\nInform without panic or false certainty\n\nR - Requirements\nThree bullets max; neutral tone; no fabricated metrics\n\nE - Expectations\nPaste-ready brief',
            ),
          ],
          proTip:
              'If you do not ban metrics, the model will invent them to look competent—then you are defending a number nobody gave you.',
          takeaway:
              'High-stakes brevity is guardrails first: cap lines, neutral tone, explicit “do not invent”—then you look calmer than the room.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for converting messy workshop feedback into a three-bullet executive summary.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should say feedback is messy and must be consolidated',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be a three-bullet executive summary of themes',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should ban quoting individuals by name',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should forbid inventing scores or attendance numbers',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be slides-ready phrasing',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Include every attendee complaint verbatim',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add a humorous anecdote to lighten the tone',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model infer strategic priorities',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Turn bullets into a five-page essay',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Recommend an AI writing suite',
                  isCorrect: false),
            ],
            coachingNote:
                'Chaotic notes need consolidation rules: what to merge, what to forbid, and the executive shape of the output.',
            assembledPromptExample:
                'Consolidate messy workshop feedback into three executive bullets summarising themes, anonymise individuals, do not invent scores, and make the lines ready for slides.',
            feedbackWhenCorrect:
                'Nailed it: this scenario punishes lazy “clean this up” prompts—your picks show you know structure beats panic.',
            resultPolishedPrompt:
                'Distil messy workshop comments into three executive bullets—themes only, no names, no invented metrics—worded for a slide deck.',
          ),
        ),
        ScenarioDef(
          title: 'Explain a Setback in Plain Language for Executives',
          situation:
              'Leadership wants a short explanation of why a pilot slipped by two weeks. Engineering gave you dense jargon about dependencies.\n\nYou must sound honest and steady—not defensive, not alarmist.\n\nWeak prompts produce:\n- buzzword soup\n- blame\n- or vague reassurance\n\nThis is why your prompt fails:\n- unclear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people “translate jargon” and smuggle blame in—because plain language was never defined as a constraint.\n\nTo get a usable result, your prompt must define:\n- Context - executive update; pilot slipped two weeks\n- Objective - explain cause at high level; show mitigation; no blame\n- Requirements - plain language; two sentences; confident calm tone\n- Expectations - ready for email or slide speaker notes',
          prompt:
              'Write two sentences in plain language for executives explaining that the pilot slipped by two weeks because an upstream dependency delivered late, and that mitigation work is underway with a revised checkpoint next Friday. Keep the tone confident and calm, avoid jargon, and do not name individuals.',
          output:
              'The pilot slipped two weeks because an upstream dependency delivered later than planned, which pushed our integration work. Mitigation is underway, and we will report progress at next Friday\'s checkpoint.\n\nNotice how blame stays off individuals—Requirements named tone and “no names,” so the story stays executive-safe.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: executive explanations fail when Objective is “sound smart.” You need cause + mitigation + next checkpoint in plain English.\n- Requirements kill jargon and name-counting\n- Expectations force lines you can actually read aloud',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nExplain the delay\n\nStrong prompt:\nWrite two sentences in plain language for executives explaining that the pilot slipped by two weeks because an upstream dependency delivered late, and that mitigation work is underway with a revised checkpoint next Friday. Keep the tone confident and calm, avoid jargon, and do not name individuals.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nExecutive update; pilot delay\n\nO - Objective\nExplain cause; show mitigation path\n\nR - Requirements\nPlain language; two sentences; calm tone; no names\n\nE - Expectations\nSpeaker-ready lines',
            ),
          ],
          proTip:
              'Jargon is a hiding place. If you do not forbid names and blame, the model will serve both—then you look like you are throwing people under the bus.',
          takeaway:
              'Executive-safe updates are engineered: audience, calm tone, two sentences, no villains—most prompts skip at least one.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for a two-sentence customer email about a service outage that emphasises restoration without overpromising future uptime.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should name the audience (customers) and channel',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be to confirm service restoration and next monitoring step',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should keep tone calm and avoid blaming teams',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should forbid guaranteeing future uptime percentages',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be two short sentences ready to send',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add a coupon code not approved by legal',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Name the engineer who caused the outage',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Promise a full postmortem in two hours',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use sarcasm to sound human',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask which chatbot to use',
                  isCorrect: false),
            ],
            coachingNote:
                'Sensitive plain-language updates need explicit tone, honesty limits, and a hard cap on promises.',
            assembledPromptExample:
                'Draft two customer-facing sentences confirming the outage is resolved, note active monitoring, do not guarantee uptime figures, stay calm, and avoid blame.',
            feedbackWhenCorrect:
                'Sharp: this is where trust breaks—your picks show you can cap promises and tone before the model writes a speech.',
            resultPolishedPrompt:
                'Write two calm customer sentences: service is restored, monitoring continues, no uptime guarantees, no blame, ready to send.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Create Useful Everyday Templates',
      scenarios: [
        ScenarioDef(
          title: 'Build a Reusable Document Handoff Email',
          situation:
              'You send the same kind of email whenever you share a policy draft: greeting, what the file is, what you need back, and by when.\n\nIf you say "make a template," AI often:\n- writes a one-off essay\n- forgets placeholders\n- hides the ask\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people get a pretty paragraph—not a skeleton—because they never demanded placeholders and reuse.\n\nTo get a usable result, your prompt must define:\n- Context - internal email; policy draft handoff\n- Objective - share file; request review feedback\n- Requirements - placeholders for names and dates; two or three short paragraphs; professional tone\n- Expectations - reusable whenever a new draft ships',
          prompt:
              'Create a reusable email template for sharing a policy draft internally. Include placeholders for recipient name, document title, version date, and feedback deadline. Use two or three short paragraphs with a professional tone, state what review you need, and keep optional lines for attaching links versus files.',
          output:
              'Subject: [Document title] — review requested (v[version date])\n\nHi [Name],\n\nI am sharing the [document title] for your review. The draft reflects [one-line purpose or scope].\n\nPlease send comments by [feedback deadline]. If you prefer, I can walk through questions on a short call.\n\nThank you,\n[Your Name]\n\nNotice how the slots are visible—Requirements forced placeholders, so the output stays reusable instead of bespoke.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: templates are not “nice copy”—they are slot machines.\n- Objective is reuse, not one send\n- Requirements force bracketed fields so you cannot accidentally ship fake names\n- Expectations demand the ask stays visible',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nGive me an email template\n\nStrong prompt:\nCreate a reusable email template for sharing a policy draft internally. Include placeholders for recipient name, document title, version date, and feedback deadline. Use two or three short paragraphs with a professional tone, state what review you need, and keep optional lines for attaching links versus files.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nInternal email; policy draft circulation\n\nO - Objective\nShare draft; request structured feedback\n\nR - Requirements\nPlaceholders; paragraph count; professional tone\n\nE - Expectations\nReusable skeleton',
            ),
          ],
          proTip:
              'If your template does not embarrass you with brackets, it is probably a one-off dressed up as process.',
          takeaway:
              'Reusable beats clever: slots, tone, and a reuse goal—then you ship faster than people rewriting from scratch every week.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for a reusable meeting recap template with decisions, owners, and due dates.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should name the template purpose (meeting recap)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should capture decisions, owners, and due dates',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should include placeholders, not fake names',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should limit length so the template stays scannable',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be something reusable every week',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Embed a full sample meeting transcript',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add jokes in each section header',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model invent attendee personalities',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Require a poem at the top',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask which AI vendor built the template',
                  isCorrect: false),
            ],
            coachingNote:
                'Template prompts must declare sections, placeholders, tone, and reuse—otherwise you get a one-off paragraph.',
            assembledPromptExample:
                'Build a weekly meeting recap template with sections for decisions, owners, and due dates; use bracket placeholders; keep it under half a page; professional tone.',
            feedbackWhenCorrect:
                'Yes: this is leverage—most users cannot name what must be a slot versus what is prose; your picks show that skill.',
            resultPolishedPrompt:
                'Produce a weekly meeting recap template: Decisions, Owners, Due dates—bracket placeholders only, professional tone, scannable half page, reusable every week.',
          ),
        ),
        ScenarioDef(
          title: 'Merge Rough Ideas Into One Scannable Template',
          situation:
              'People dumped ideas into a doc:\n- "needs KPI section"\n- "maybe risks?"\n- "not too long"\n- "finance wants numbers"\n\nYou need one weekly project template everyone can reuse.\n\nIf you prompt "combine," AI often:\n- adds random sections\n- writes example numbers\n- loses the length cap\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\n“Combine” is how you get fake KPIs—because nobody banned sample data.\n\nTo get a usable result, your prompt must define:\n- Context - weekly project snapshot for cross-functional readers\n- Objective - progress, KPI focus, risks, asks\n- Requirements - max four sections; bracket placeholders only; no sample figures\n- Expectations - paste-ready template',
          prompt:
              'Design a weekly project snapshot template with at most four labeled sections covering progress, KPI focus, risks, and asks. Use bracket placeholders only, keep instructions under the headings minimal, and do not insert numeric examples. Make it easy to scan in under thirty seconds.',
          output:
              '**[Project name] — Week of [date]**\n\n**Progress**\n- [3 bullets max]\n\n**KPI focus**\n- [Metric name] — [status vs target] — [note]\n\n**Risks**\n- [Risk] — [impact] — [mitigation owner]\n\n**Asks**\n- [What you need] — [from whom] — [by when]\n\nNotice how numbers never appear—Expectations banned examples, so finance gets slots, not fiction.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: merged ideas need architecture, not enthusiasm.\n- Objective is a repeatable weekly shape\n- Requirements cap sections and ban numeric examples\n- Expectations demand scan speed, not essay density',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMerge these ideas\n\nStrong prompt:\nDesign a weekly project snapshot template with at most four labeled sections covering progress, KPI focus, risks, and asks. Use bracket placeholders only, keep instructions under the headings minimal, and do not insert numeric examples. Make it easy to scan in under thirty seconds.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nWeekly snapshot for busy readers\n\nO - Objective\nStandardize reporting structure\n\nR - Requirements\nFour sections max; placeholders; no fake numbers\n\nE - Expectations\nScannable template',
            ),
          ],
          proTip:
              'Templates balloon when section limits are missing—the model adds sections because it thinks more looks thorough.',
          takeaway:
              'Scannable beats complete: cap sections, ban sample numbers, force placeholders—then you own the template, not the model’s filler.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for a customer onboarding checklist template with ordered steps and owner placeholders.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should define onboarding checklist purpose and audience',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should produce ordered steps with owner placeholders',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should ban filling in real company data',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should cap the number of steps for usability',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be a reusable checklist skeleton',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Embed lorem ipsum filler paragraphs',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add a section for favourite emojis',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model invent customer personas',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Turn the checklist into a narrative essay',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Recommend software brands by name',
                  isCorrect: false),
            ],
            coachingNote:
                'Checklist templates need ordered steps, owner slots, and rules against invented data.',
            assembledPromptExample:
                'Create a numbered onboarding checklist template with owner placeholders, no fake customer data, at most eight steps, and reusable for every new account.',
            feedbackWhenCorrect:
                'Clean win: template prompts fail when “merge” replaces limits—your picks show you know how to cap structure and data.',
            resultPolishedPrompt:
                'Build an eight-step onboarding checklist template—numbered, owner placeholders in brackets, no sample data, reusable for every new account.',
          ),
        ),
        ScenarioDef(
          title: 'Design a Neutral Escalation Template for Stakeholders',
          situation:
              'You need a short template for when individual contributors escalate blockers to directors—without sounding emotional or accusatory.\n\nStakeholders disagree on what "neutral" means.\n\nWeak prompts yield:\n- accusatory tone\n- vague asks\n- missing facts\n\nThis is why your prompt fails:\n- unclear Objective\n- weak Requirements\n- no defined Expectations\n\nEscalations are where tone goes toxic fast—most users let the model vent because “neutral” was never operationalized.\n\nTo get a usable result, your prompt must define:\n- Context - escalation from IC to director; blocker on dependency\n- Objective - request decision or resource in neutral voice\n- Requirements - placeholders for impact, timeline, help needed; max ninety words of guidance text; no names of blame targets\n- Expectations - ready to paste into email',
          prompt:
              'Create a concise escalation template individual contributors can send to a director when blocked by a dependency. Include placeholders for blocker summary, business impact, timeline risk, and the specific decision or resource needed. Keep guidance text neutral, avoid blame language, and limit boilerplate to ninety words total.',
          output:
              'Subject: Escalation — [Blocker summary]\n\nHi [Director name],\n\nI am blocked on [workstream] because [dependency summary].\n\nImpact: [customer or business impact]. Timeline risk: [date or window].\n\nI need [specific decision or resource] to proceed. If another owner is better, please redirect me.\n\nThank you,\n[Your Name]\n\nNotice how blame has nowhere to land—Requirements forced facts, impact, and the ask instead of a villain.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is what changes the output: escalations are not “tone”—they are structured asks with risk shown cleanly.\n- Objective is a decision or resource, not a feelings report\n- Requirements ban blame language and cap boilerplate\n- Expectations force paste-ready fields so nothing inflammatory sneaks in',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite an escalation email\n\nStrong prompt:\nCreate a concise escalation template individual contributors can send to a director when blocked by a dependency. Include placeholders for blocker summary, business impact, timeline risk, and the specific decision or resource needed. Keep guidance text neutral, avoid blame language, and limit boilerplate to ninety words total.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nIC-to-director escalation; dependency blocker\n\nO - Objective\nSecure decision or resource calmly\n\nR - Requirements\nNeutral tone; placeholders; word budget; no blame\n\nE - Expectations\nPaste-ready template',
            ),
          ],
          proTip:
              'If you do not ban blame, the model will name a person—then you are in HR territory instead of unblocking work.',
          takeaway:
              'Neutral escalations win on slots: impact, time risk, explicit ask—everything else is noise that costs you credibility.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for a polite follow-up template when a cross-team request has gone unanswered for five business days.',
            pieces: [
              PromptPieceDef(
                  text:
                      'The prompt should state the scenario (unanswered request, five business days)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The objective should be to nudge for a response without accusing anyone',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The requirements should include placeholders for ticket ID and needed action',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The prompt should forbid emotional language and blame',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'The expectation should be a short template reusable on any thread',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Encourage ALL CAPS for urgency',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Name the colleague you think is lazy',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Offer unrelated project updates',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Turn the template into a legal threat',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask which LLM wrote the template',
                  isCorrect: false),
            ],
            coachingNote:
                'Follow-up templates need neutral tone rules, explicit placeholders, and a ban on accusatory language.',
            assembledPromptExample:
                'Draft a short follow-up template for cross-team requests unanswered after five business days—placeholders for ticket ID and ask, polite tone, no blame, reusable.',
            feedbackWhenCorrect:
                'Strong: tone problems here are really missing asks—your picks show you can separate facts, impact, and the decision you need.',
            resultPolishedPrompt:
                'Create a concise follow-up template for requests idle five business days: ticket placeholder, clear ask, polite neutral tone, no blame, ready to paste on any thread.',
          ),
        ),
      ],
    ),
  ];
}


```

### `lib\data\tracks\track2_productivity_workflow.dart`
```
import '../app_catalog.dart';

/// Track 2 – Productivity & Workflow (lessons 1–5)
List<LessonDef> buildTrack2Lessons() {
  return [
    const LessonDef(
      title: 'Summarise Quickly and Clearly',
      scenarios: [
        ScenarioDef(
          title: 'Summarise a Tense Alignment Meeting for Leadership',
          situation:
              'You must post a same-day leadership update after a cross-functional meeting.\n\nYour raw notes include repeated debate, one high-risk dependency, and two decisions hidden in noise.\n\nIf this is unclear, leadership will make decisions on the wrong signal.\n\nIf you prompt AI weakly, it usually:\n- overstates certainty\n- buries the real decisions\n- sounds generic instead of decision-ready\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people would just say "summarise this meeting" and ship a status blob.\n\nTo get a usable result, your prompt must define:\n- Context - leadership update from a tense alignment meeting\n- Objective - extract decisions, risk, and immediate actions\n- Requirements - exactly four bullets; executive-neutral tone; no invented certainty\n- Expectations - paste-ready update with ownership clarity',
          prompt:
              'Summarise these notes into exactly four leadership-ready bullet points. Include only confirmed decisions, one high-risk dependency, and immediate next actions with owners where stated. Remove side debates, do not imply consensus where disagreement remains, and keep output ready to paste into a leadership channel.',
          output:
              '- Decision: Launch-readiness review remains on Thursday and scope freeze holds.\n- Risk: One vendor API dependency is still unstable and may affect handoff timing.\n- Next action: Engineering and Vendor Ops confirm mitigation path by 4 p.m. tomorrow.\n- Next action: Program lead posts revised checkpoint note after mitigation is confirmed.\n\nNotice how the update stayed decision-ready under pressure - Requirements blocked false certainty.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is extraction discipline: the model follows your rules, not meeting noise.\n- Objective locks signal selection\n- Requirements lock format and truth boundaries\n- Expectations lock leadership-ready quality',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise this meeting\n\nStrong prompt:\nSummarise these notes into exactly four leadership-ready bullet points. Include only confirmed decisions, one high-risk dependency, and immediate next actions with owners where stated. Remove side debates, do not imply consensus where disagreement remains, and keep output ready to paste into a leadership channel.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLeadership update from a tense alignment meeting\n\nO - Objective\nExtract decisions, risk, and immediate actions\n\nR - Requirements\nExactly four bullets; executive-neutral; no invented certainty\n\nE - Expectations\nPaste-ready update with ownership clarity',
            ),
          ],
          proTip:
              'Most people lose control by asking for a summary instead of decision extraction. If you do not ban certainty inflation, AI will over-commit for you.',
          takeaway:
              'If a leadership update hides the decision signal, it is the wrong update - even if it is concise.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for a leadership meeting summary under pressure.',
            pieces: [
              PromptPieceDef(
                  text: 'Require only confirmed decisions from the notes',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Include one explicit high-risk dependency',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Cap output to a fixed bullet count',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Forbid implied agreement when disagreement exists',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Expect a paste-ready leadership update',
                  isCorrect: true),
              PromptPieceDef(text: 'Add confidence percentages', isCorrect: false),
              PromptPieceDef(text: 'Include side debates for nuance', isCorrect: false),
              PromptPieceDef(text: 'Infer owners when missing', isCorrect: false),
              PromptPieceDef(text: 'Soften risk language by default', isCorrect: false),
              PromptPieceDef(text: 'Expand into narrative recap', isCorrect: false),
            ],
            coachingNote:
                'Meeting summaries fail when truth boundaries are vague. Define extraction scope and certainty rules before output format.',
            assembledPromptExample:
                'Summarise these notes into four leadership-ready bullets covering confirmed decisions, one active high-risk dependency, and immediate next actions with stated owners only.',
            feedbackWhenCorrect:
                'You now control leadership signal extraction - most people ship noise and call it an update.',
            resultPolishedPrompt:
                'Create four leadership-ready bullets from these notes with confirmed decisions, one active high-risk dependency, and immediate next actions. Do not imply consensus where disagreement remains.',
          ),
        ),
        ScenarioDef(
          title: 'Compress a Long Partner Email Without Losing Risk',
          situation:
              'A partner email is long and mixed: progress is mostly on track, but one dependency slipped and confidence is lower.\n\nYour team needs a short update now, and leadership may read it later.\n\nIf you get this wrong, leadership makes decisions on the optimistic version.\n\nIf you prompt AI weakly, it usually:\n- drops the risk caveat\n- overstates confidence\n- adds context nobody asked for\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for "two lines" and cut the one sentence that protects decision quality.\n\nTo get a usable result, your prompt must define:\n- Context - internal update from a mixed-signal partner email\n- Objective - preserve status, risk caveat, and timing signal\n- Requirements - one or two sentences; factual tone; no invented mitigation\n- Expectations - ready to forward unchanged',
          prompt:
              'Rewrite this partner email into one or two internal-update sentences. Preserve only overall status, delayed dependency, and revised-date timing. Keep wording factual, do not add mitigation claims not in source text, and keep output safe to forward to leadership unchanged.',
          output:
              'The partner reports overall execution remains on track, but one dependency is delayed and could affect near-term sequencing. Revised dates are expected in their next update this week.\n\nThe difference is the caveat: Requirements prevented certainty drift while compressing.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'What matters here is survival rules: compression works only when what must stay is explicit.\n- Objective protects critical facts\n- Requirements protect caveats and length\n- Expectations protect forward-ready quality',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise this in two lines\n\nStrong prompt:\nRewrite this partner email into one or two internal-update sentences. Preserve only overall status, delayed dependency, and revised-date timing. Keep wording factual, do not add mitigation claims not in source text, and keep output safe to forward to leadership unchanged.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nInternal update from mixed-signal partner email\n\nO - Objective\nPreserve status, delay caveat, and revised-date timing\n\nR - Requirements\nOne or two sentences; factual; no invented mitigation\n\nE - Expectations\nForward-safe update without edits',
            ),
          ],
          proTip:
              'This is where most AI users fail: they shorten first and only later notice the risk sentence vanished.',
          takeaway:
              'If brevity deletes the risk caveat, the output is wrong - no matter how clean it reads.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for compressing a mixed-signal partner email.',
            pieces: [
              PromptPieceDef(text: 'Cap output to one or two sentences', isCorrect: true),
              PromptPieceDef(text: 'Preserve status plus delay caveat', isCorrect: true),
              PromptPieceDef(text: 'Include revised-date timing signal', isCorrect: true),
              PromptPieceDef(
                  text: 'Forbid mitigation claims not in source text',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Expect forward-safe wording for leadership',
                  isCorrect: true),
              PromptPieceDef(text: 'Replace caveats with optimism', isCorrect: false),
              PromptPieceDef(text: 'Add probable causes', isCorrect: false),
              PromptPieceDef(text: 'Expand into full background', isCorrect: false),
              PromptPieceDef(text: 'Insert extra action items', isCorrect: false),
              PromptPieceDef(text: 'Infer timeline confidence', isCorrect: false),
            ],
            coachingNote:
                'Compression breaks when source boundaries are loose. Define what must survive and what cannot be invented.',
            assembledPromptExample:
                'Rewrite this partner email into one or two internal-update sentences preserving overall status, delayed dependency caveat, and revised-date timing only.',
            feedbackWhenCorrect:
                'You kept the decision-critical caveat intact - this is where most short summaries quietly fail.',
            resultPolishedPrompt:
                'Compress this partner email into one or two forward-safe sentences preserving status, delay caveat, and revised-date timing. Do not invent mitigation.',
          ),
        ),
        ScenarioDef(
          title: 'Translate Policy Guidance Into Plain-Language Execution',
          situation:
              'You received dense policy guidance. Compliance is strict, but frontline teams need instructions they can execute quickly.\n\nIf this is unclear, teams will execute the wrong version and you will own the rework.\n\nIf you prompt AI weakly, output usually:\n- keeps legal jargon\n- drops required actions\n- sounds certain where exceptions exist\n\nThis is why your prompt fails:\n- unclear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people simplify tone and accidentally change policy boundaries.\n\nTo get a usable result, your prompt must define:\n- Context - policy-heavy guidance for frontline execution\n- Objective - preserve mandatory action and timing in plain language\n- Requirements - exactly two sentences; no jargon; no invented exceptions\n- Expectations - announcement-ready text without policy drift',
          prompt:
              'Rewrite this policy paragraph into exactly two plain-language sentences for frontline teams. Include what must be done, when it takes effect, and any explicit boundary condition from source text. Avoid legal jargon, do not invent exceptions, and keep wording announcement-ready.',
          output:
              'Starting next Monday, teams must follow the updated workflow steps exactly as listed. No additional steps apply unless the source policy explicitly states an exception.\n\nControl shows up in the boundary line - plain language stayed clear without policy drift.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The difference is fidelity rules: plain language only works if legal intent stays intact.\n- Objective locks obligations and timing\n- Requirements remove jargon and block invented exceptions\n- Expectations lock announcement-ready fidelity',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSimplify this paragraph\n\nStrong prompt:\nRewrite this policy paragraph into exactly two plain-language sentences for frontline teams. Include what must be done, when it takes effect, and any explicit boundary condition from source text. Avoid legal jargon, do not invent exceptions, and keep wording announcement-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nPolicy-heavy guidance for frontline communication\n\nO - Objective\nPreserve mandatory action and timing in plain language\n\nR - Requirements\nExactly two sentences; no jargon; no invented exceptions\n\nE - Expectations\nAnnouncement-ready and policy-faithful',
            ),
          ],
          proTip:
              'The common mistake is "make it simple" without fidelity rules. That is how compliance drift enters through good intentions.',
          takeaway:
              'Plain language without boundary controls is how compliance drift starts - C.O.R.E. keeps the line.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for policy-to-execution translation.',
            pieces: [
              PromptPieceDef(text: 'Enforce exactly two sentences', isCorrect: true),
              PromptPieceDef(
                  text: 'Include mandatory action and effective timing',
                  isCorrect: true),
              PromptPieceDef(text: 'Remove legal jargon', isCorrect: true),
              PromptPieceDef(
                  text: 'Preserve explicit boundary conditions from source',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Expect announcement-ready wording without drift',
                  isCorrect: true),
              PromptPieceDef(text: 'Add illustrative examples', isCorrect: false),
              PromptPieceDef(text: 'Infer likely exceptions', isCorrect: false),
              PromptPieceDef(text: 'Expand into legal prose', isCorrect: false),
              PromptPieceDef(text: 'Add optional recommendations', isCorrect: false),
              PromptPieceDef(text: 'Reinterpret policy intent', isCorrect: false),
            ],
            coachingNote:
                'Policy translation fails when fidelity constraints are missing. Pair plain-language requirements with boundary preservation.',
            assembledPromptExample:
                'Rewrite this policy paragraph into exactly two plain-language announcement sentences preserving mandatory action, effective timing, and explicit boundary conditions only.',
            feedbackWhenCorrect:
                'You now control simplification without policy drift - that is the compliance advantage.',
            resultPolishedPrompt:
                'Create exactly two plain-language execution sentences from this policy text, preserving mandatory action, timing, and explicit boundaries only.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Create Structure from Messy Input',
      scenarios: [
        ScenarioDef(
          title: 'Convert Fragmented Handoff Notes Into an Ownership Checklist',
          situation:
              'A handoff is moving fast. Notes are fragmented: partial tasks, mixed urgency, missing owners, and one blocker.\n\nIf you hide ownership gaps, the next team executes the wrong work first.\n\nIf you ask AI to "organize this," output usually:\n- invents ownership\n- hides unresolved blockers\n- mixes critical and minor tasks\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nThis is where most AI users fail: they optimize neatness over accountability.\n\nTo get a usable result, your prompt must define:\n- Context - urgent handoff with mixed-urgency fragmented notes\n- Objective - produce ownership checklist with blocker visibility\n- Requirements - up to five action items; [Owner TBD] for missing owners; no invented tasks\n- Expectations - handoff-ready checklist that surfaces risk',
          prompt:
              'Turn these fragmented handoff notes into a checklist of up to five critical action items. Keep action-first phrasing, attach stated owners, use [Owner TBD] when ownership is missing, preserve unresolved blockers explicitly, and remove duplicates. Output should be ready for a direct handoff message.',
          output:
              '- Finalize launch timeline and post to handoff channel (Owner: Program Lead).\n- Confirm vendor dependency timing for next checkpoint (Owner: Vendor Ops).\n- Upload latest approved documents to shared workspace (Owner: PMO).\n- Resolve open integration blocker before handoff close (Owner: [Owner TBD]).\n- Notify receiving team when blocker status changes (Owner: Program Lead).\n\nPay attention to how unresolved ownership stayed visible - that is control, not cosmetic cleanup.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is accountability rules: handoff quality depends on what stays visible.\n- Objective targets ownership and blocker clarity\n- Requirements force [Owner TBD] and action format\n- Expectations keep risk visible for next team',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nOrganize these handoff notes\n\nStrong prompt:\nTurn these fragmented handoff notes into a checklist of up to five critical action items. Keep action-first phrasing, attach stated owners, use [Owner TBD] when ownership is missing, preserve unresolved blockers explicitly, and remove duplicates. Output should be ready for a direct handoff message.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nUrgent handoff with fragmented notes and missing ownership\n\nO - Objective\nCreate accountable checklist and surface blockers\n\nR - Requirements\nUp to five actions; owner tags; [Owner TBD] for gaps\n\nE - Expectations\nHandoff-ready output with risk visibility',
            ),
          ],
          proTip:
              'Most people hide [Owner TBD] to look organized. That is exactly how handoffs fail the next day.',
          takeaway:
              'If a handoff hides [Owner TBD], it is not organized - it is dangerous.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong handoff checklist prompt.',
            pieces: [
              PromptPieceDef(text: 'Cap output to five critical actions', isCorrect: true),
              PromptPieceDef(text: 'Use action-first phrasing', isCorrect: true),
              PromptPieceDef(
                  text: 'Use [Owner TBD] when owner is missing',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Keep unresolved blockers explicit',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Expect direct handoff-message readiness',
                  isCorrect: true),
              PromptPieceDef(text: 'Infer likely owners', isCorrect: false),
              PromptPieceDef(text: 'Include nice-to-have tasks', isCorrect: false),
              PromptPieceDef(text: 'Hide blocker language', isCorrect: false),
              PromptPieceDef(text: 'Expand each line with rationale', isCorrect: false),
              PromptPieceDef(text: 'Average urgency labels', isCorrect: false),
            ],
            coachingNote:
                'Handoffs fail on hidden ownership and blockers. Define accountability and visibility rules directly.',
            assembledPromptExample:
                'Convert these fragmented handoff notes into up to five critical action items with stated owners, using [Owner TBD] for gaps and preserving unresolved blockers explicitly.',
            feedbackWhenCorrect:
                'You now control handoff accountability - most teams polish the list and lose the blockers.',
            resultPolishedPrompt:
                'Build a five-item handoff checklist from these notes with action-first phrasing, owner tags, [Owner TBD] for gaps, and explicit blocker visibility.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Conflicting Project Narrative Into One Weekly Action Plan',
          situation:
              'A project narrative combines multiple stakeholder inputs with overlap and contradiction.\n\nYou need one weekly action plan the team can execute.\n\nIf this is oversmoothed, the team will execute a plan that assumes agreement that does not exist.\n\nIf you prompt loosely, AI tends to:\n- merge conflicts into fake agreement\n- invent dependencies\n- output broad actions with no ownership\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for bullets and miss the contradiction handling that matters.\n\nTo get a usable result, your prompt must define:\n- Context - conflicting stakeholder narrative for weekly execution\n- Objective - produce executable actions while preserving one unresolved trade-off\n- Requirements - up to four bullets; owner role + deadline when stated; no invented dependencies\n- Expectations - standup-ready plan without false closure',
          prompt:
              'Convert this narrative into up to four weekly action bullets. Keep only executable actions, include owner role and deadline when explicitly stated, preserve one unresolved trade-off as a flagged line, and avoid invented dependencies. Output must be ready for standup planning.',
          output:
              '- Finalize revised draft package by Thursday (Owner: Content Lead).\n- Confirm vendor timeline constraints by Wednesday (Owner: Vendor Ops).\n- Prepare Friday leadership deck with updated risk status (Owner: PM).\n- Flag unresolved trade-off: launch-date pressure vs QA buffer remains open.\n\nNotice how unresolved conflict remained explicit - Requirements prevented false closure.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'What matters here is conflict rules: plans from contradictory input need tension to stay visible.\n- Objective includes action plus trade-off visibility\n- Requirements enforce specificity and anti-invention\n- Expectations avoid clean-looking but unsafe closure',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this into an action plan\n\nStrong prompt:\nConvert this narrative into up to four weekly action bullets. Keep only executable actions, include owner role and deadline when explicitly stated, preserve one unresolved trade-off as a flagged line, and avoid invented dependencies. Output must be ready for standup planning.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nConflicting stakeholder narrative for weekly execution\n\nO - Objective\nCreate executable actions while preserving one unresolved trade-off\n\nR - Requirements\nUp to four bullets; owner role + stated deadline; no invented dependencies\n\nE - Expectations\nStandup-ready plan without false closure',
            ),
          ],
          proTip:
              'If you optimize for neatness over truth, the plan looks good and fails in execution.',
          takeaway:
              'If the plan hides the unresolved trade-off, it is lying about execution reality.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong weekly plan prompt under conflicting input.',
            pieces: [
              PromptPieceDef(text: 'Cap output to four executable actions', isCorrect: true),
              PromptPieceDef(text: 'Include owner role when stated', isCorrect: true),
              PromptPieceDef(text: 'Include deadline when stated', isCorrect: true),
              PromptPieceDef(text: 'Preserve one unresolved trade-off', isCorrect: true),
              PromptPieceDef(
                  text: 'Expect standup-ready output without invented dependencies',
                  isCorrect: true),
              PromptPieceDef(text: 'Resolve contradictions automatically', isCorrect: false),
              PromptPieceDef(text: 'Infer owners for missing roles', isCorrect: false),
              PromptPieceDef(text: 'Replace risk with positive framing', isCorrect: false),
              PromptPieceDef(text: 'Add strategy recommendations', isCorrect: false),
              PromptPieceDef(text: 'Rewrite as narrative prose', isCorrect: false),
            ],
            coachingNote:
                'Plans fail when unresolved trade-offs are smoothed away. Define conflict carry-through and specificity together.',
            assembledPromptExample:
                'Convert this conflicting narrative into up to four executable weekly actions with owner role/deadline where stated, preserving one unresolved trade-off and avoiding invented dependencies.',
            feedbackWhenCorrect:
                'You kept the unresolved trade-off explicit - that is where you gain execution advantage.',
            resultPolishedPrompt:
                'Turn this narrative into four standup-ready actions with stated owner role and deadlines, plus one explicit unresolved trade-off line. No invented dependencies.',
          ),
        ),
        ScenarioDef(
          title: 'Prioritize Mixed-Urgency Tasks Before a Hard Friday Deadline',
          situation:
              'Your team has mixed-urgency tasks before a hard Friday checkpoint. Some tasks look urgent but are low impact; others are dependency-critical.\n\nIf you mis-prioritize, you will miss the checkpoint while busy on the wrong work.\n\nIf you prompt AI weakly, it often:\n- ranks by wording urgency instead of impact\n- buries dependencies\n- treats all tasks as equal effort\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for "priority order" without defining what priority means.\n\nTo get a usable result, your prompt must define:\n- Context - pre-deadline planning with mixed urgency\n- Objective - rank by schedule impact and unblock sequence\n- Requirements - up to five items; concise action lines; no added tasks\n- Expectations - standup-ready execution order',
          prompt:
              'Turn these mixed-urgency tasks into an ordered list of up to five items. Prioritize by schedule impact and unblock sequence, not wording intensity. Keep each line concise and actionable, do not add tasks, and make output immediately usable in standup.',
          output:
              '1. Confirm vendor constraints affecting Friday checkpoint.\n2. Lock revised internal sequence based on vendor constraints.\n3. Update project plan with revised dates and owners.\n4. Prepare checkpoint deck from updated sequence and risk.\n5. Send standup note with final execution order.\n\nPay attention to how ordering follows unblock sequence - Objective defined what "priority" means.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The difference is the ranking rule: prioritization depends on logic, not formatting.\n- Objective defines impact logic\n- Requirements enforce concise execution language\n- Expectations make order immediately usable',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nPrioritize these tasks\n\nStrong prompt:\nTurn these mixed-urgency tasks into an ordered list of up to five items. Prioritize by schedule impact and unblock sequence, not wording intensity. Keep each line concise and actionable, do not add tasks, and make output immediately usable in standup.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMixed-urgency tasks before hard Friday checkpoint\n\nO - Objective\nRank by schedule impact and unblock sequence\n\nR - Requirements\nUp to five concise actionable lines; no added tasks\n\nE - Expectations\nStandup-ready execution order',
            ),
          ],
          proTip:
              'Most teams fail here by prioritizing what sounds urgent. Define impact logic or AI mirrors noise.',
          takeaway:
              'Priority is a decision rule - without it, AI just sorts by how urgent a sentence sounds.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for high-pressure task prioritization.',
            pieces: [
              PromptPieceDef(
                  text: 'Define priority as schedule impact + unblock sequence',
                  isCorrect: true),
              PromptPieceDef(text: 'Cap output to five or fewer tasks', isCorrect: true),
              PromptPieceDef(text: 'Require concise actionable lines', isCorrect: true),
              PromptPieceDef(text: 'Forbid adding new tasks', isCorrect: true),
              PromptPieceDef(text: 'Expect standup-ready execution order', isCorrect: true),
              PromptPieceDef(text: 'Prioritize by emotional urgency words', isCorrect: false),
              PromptPieceDef(text: 'Add strategic options beyond scope', isCorrect: false),
              PromptPieceDef(text: 'Infer missing deadlines', isCorrect: false),
              PromptPieceDef(text: 'Average all priorities into buckets', isCorrect: false),
              PromptPieceDef(text: 'Expand into long rationale paragraphs', isCorrect: false),
            ],
            coachingNote:
                'Prioritization prompts need explicit ranking logic. Without it, AI sorts by language cues, not operational impact.',
            assembledPromptExample:
                'Order these tasks into up to five standup-ready actions prioritized by schedule impact and unblock sequence only, with concise actionable wording and no added tasks.',
            feedbackWhenCorrect:
                'You now control prioritization logic under pressure - that is an operational advantage.',
            resultPolishedPrompt:
                'Rank these tasks into five or fewer actionable standup items using schedule impact and unblock sequence as the ordering rule. Do not add tasks.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Turn Information Into Schedules & Timelines',
      scenarios: [
        ScenarioDef(
          title: 'Build a Chronological Day Plan With Dependency Timing',
          situation:
              'You need a same-day plan from scattered notes. Several activities depend on earlier outcomes, and one missed slot can cascade into end-of-day risk.\n\nIf this slips, you spend the afternoon reacting instead of executing.\n\nIf you ask AI for a simple schedule, it often:\n- lists items without dependency logic\n- ignores hard time anchors\n- puts low-risk tasks before blockers\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people request chronology only, then discover the plan is ordered but not executable.\n\nTo get a usable result, your prompt must define:\n- Context - same-day plan with dependency-sensitive timing\n- Objective - produce executable sequence with blockers first\n- Requirements - concise line items; preserve time anchors; no invented tasks\n- Expectations - ready-to-run day plan',
          prompt:
              'Turn these notes into a chronological day plan that is executable, not just ordered. Preserve stated time anchors, put dependency-blocking tasks before dependent tasks where timing allows, keep line items concise, and do not invent additional work.',
          output:
              '- 10:00 - Vendor call to confirm dependency status.\n- Before lunch - Complete prep work required for draft review.\n- 2:00 p.m. - Review draft using confirmed dependency inputs.\n- End of day - Send final summary with updated status.\n\nThe control point is blocker-first sequencing - Requirements prevented a cosmetic timeline.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'What matters here is execution logic: schedules need blocker sequencing, not timestamps alone.\n- Objective enforces blocker-first sequencing\n- Requirements preserve hard time anchors\n- Expectations target run-ready output',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCreate a daily schedule\n\nStrong prompt:\nTurn these notes into a chronological day plan that is executable, not just ordered. Preserve stated time anchors, put dependency-blocking tasks before dependent tasks where timing allows, keep line items concise, and do not invent additional work.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSame-day schedule with dependency-sensitive tasks\n\nO - Objective\nBuild executable chronology with blocker-first logic\n\nR - Requirements\nConcise lines; preserve time anchors; no invented tasks\n\nE - Expectations\nReady-to-run day plan',
            ),
          ],
          proTip:
              'Chronological is not enough. If blocker-first logic is missing, your schedule looks tidy and fails by lunch.',
          takeaway:
              'A schedule that ignores dependencies is wrong - even if the times are in order.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for dependency-aware day planning.',
            pieces: [
              PromptPieceDef(text: 'Preserve all stated time anchors', isCorrect: true),
              PromptPieceDef(text: 'Place blocker tasks before dependent tasks', isCorrect: true),
              PromptPieceDef(text: 'Keep lines concise and actionable', isCorrect: true),
              PromptPieceDef(text: 'Use only provided activities', isCorrect: true),
              PromptPieceDef(text: 'Expect immediate team execution readiness', isCorrect: true),
              PromptPieceDef(text: 'Re-sequence by writing style', isCorrect: false),
              PromptPieceDef(text: 'Add optional stretch tasks', isCorrect: false),
              PromptPieceDef(text: 'Replace times with broad windows', isCorrect: false),
              PromptPieceDef(text: 'Expand each line with explanation', isCorrect: false),
              PromptPieceDef(text: 'Infer missing tasks from context', isCorrect: false),
            ],
            coachingNote:
                'Daily plans fail when prompts optimize formatting over dependency logic. Define both explicitly.',
            assembledPromptExample:
                'Create a concise day plan from these notes preserving exact time anchors and sequencing blocker tasks before dependent work, with no invented tasks.',
            feedbackWhenCorrect:
                'You now build run-ready schedules - most people get a tidy timeline that breaks by midday.',
            resultPolishedPrompt:
                'Build a concise execution-ready day plan from these notes with exact time anchors and blocker-first ordering. Use only provided tasks.',
          ),
        ),
        ScenarioDef(
          title: 'Map Unordered Work Into a Weekly Plan With Deadline Risk',
          situation:
              'You need a Monday-Friday plan from unordered notes where one midweek dependency can compress Thursday and Friday work.\n\nIf this is presented as "evenly spread," the team will miss where the real pressure is.\n\nIf you prompt AI weakly, output often:\n- spreads tasks evenly but unrealistically\n- ignores late-week risk concentration\n- hides dependency pressure\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for a weekly plan and get calendar formatting without capacity realism.\n\nTo get a usable result, your prompt must define:\n- Context - dependency-sensitive weekly sequencing under deadline risk\n- Objective - map feasible order and surface pressure points\n- Requirements - Monday-Friday format; concise daily lines; no invented work\n- Expectations - leadership-visible plan that reflects risk concentration',
          prompt:
              'Convert these unordered notes into a Monday-Friday plan based on feasible sequence under stated constraints. Keep daily lines concise, do not add tasks or dates, and explicitly surface where risk concentration is highest.',
          output:
              '- Monday: Start analysis and isolate dependency-sensitive sections.\n- Tuesday: Complete baseline analysis not blocked by vendor input.\n- Wednesday: Confirm vendor constraints and finalize sequence assumptions.\n- Thursday: Prepare draft with dependency impact called out.\n- Friday: Send leadership draft and highlight Thursday-Friday risk concentration.\n\nLook at how pressure points stayed explicit - Expectations required risk visibility, not just day labels.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The difference is capacity realism: weekly plans need sequencing plus pressure-point signaling.\n- Objective enforces feasible order under constraints\n- Requirements prevent invented work and verbosity\n- Expectations force pressure-point visibility',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this into a weekly plan\n\nStrong prompt:\nConvert these unordered notes into a Monday-Friday plan based on feasible sequence under stated constraints. Keep daily lines concise, do not add tasks or dates, and explicitly surface where risk concentration is highest.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nUnordered weekly tasks with dependency pressure\n\nO - Objective\nCreate feasible sequence and reveal pressure points\n\nR - Requirements\nMonday-Friday concise lines; no invented tasks/dates\n\nE - Expectations\nLeadership-visible risk-aware plan',
            ),
          ],
          proTip:
              'Calendar format can hide execution risk. If pressure points are not required, they vanish.',
          takeaway:
              'A weekly plan that hides pressure points is wrong - even if it looks clean.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for risk-aware weekly planning.',
            pieces: [
              PromptPieceDef(text: 'Force Monday-Friday structure', isCorrect: true),
              PromptPieceDef(
                  text: 'Require sequencing based on stated constraints',
                  isCorrect: true),
              PromptPieceDef(text: 'Keep daily lines concise and factual', isCorrect: true),
              PromptPieceDef(text: 'Forbid invented tasks or dates', isCorrect: true),
              PromptPieceDef(
                  text: 'Require explicit pressure-point visibility',
                  isCorrect: true),
              PromptPieceDef(text: 'Distribute workload evenly for readability', isCorrect: false),
              PromptPieceDef(text: 'Add extra buffer days', isCorrect: false),
              PromptPieceDef(text: 'Shift dependencies to lower-stress days', isCorrect: false),
              PromptPieceDef(text: 'Add long explanations under each day', isCorrect: false),
              PromptPieceDef(text: 'Insert strategic options beyond scope', isCorrect: false),
            ],
            coachingNote:
                'Weekly planning prompts need realism constraints. Define sequence logic and risk visibility, not just calendar shape.',
            assembledPromptExample:
                'Turn these notes into a concise Monday-Friday plan using feasible sequence under stated constraints, surfacing pressure points, with no invented tasks or dates.',
            feedbackWhenCorrect:
                'You now force planning realism - this is where "pretty" weekly plans quietly fail.',
            resultPolishedPrompt:
                'Create a concise Monday-Friday plan from these notes using feasible sequencing under stated constraints, with explicit pressure-point visibility and no invented tasks or dates.',
          ),
        ),
        ScenarioDef(
          title: 'Convert Milestones Into a Decision-Safe Timeline',
          situation:
              'You need a milestone timeline for cross-team coordination. Dates are known, but one checkpoint is conditional on late input.\n\nIf this reads as certain, stakeholders will plan around a date that does not exist.\n\nIf you prompt loosely, AI often:\n- presents uncertainty as fixed\n- collapses dependencies\n- produces a clean timeline that misleads stakeholders\n\nThis is why your prompt fails:\n- unclear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people optimize for simplicity and erase uncertainty that decisions depend on.\n\nTo get a usable result, your prompt must define:\n- Context - milestone timeline with condition-sensitive checkpoint\n- Objective - provide chronology with confidence clarity\n- Requirements - four or five concise bullets; preserve conditionality\n- Expectations - coordination-safe timeline without false commitments',
          prompt:
              'Convert these milestone notes into a concise chronological timeline of four to five bullets. Preserve stated dates, mark conditional checkpoints explicitly, and keep each line short. Do not convert uncertainty into fixed commitments.',
          output:
              '- Tuesday - Complete outline.\n- Wednesday - Prepare draft.\n- Thursday morning - Review draft (conditional on late input).\n- Friday - Final sign-off after Thursday review clears.\n\nThis is where you can see judgment control - uncertainty stayed visible instead of being flattened.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is the trust lever: timeline quality depends on certainty controls.\n- Objective includes confidence clarity\n- Requirements prevent false commitment language\n- Expectations keep coordination safe',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCreate a timeline from these notes\n\nStrong prompt:\nConvert these milestone notes into a concise chronological timeline of four to five bullets. Preserve stated dates, mark conditional checkpoints explicitly, and keep each line short. Do not convert uncertainty into fixed commitments.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCross-team milestones with one conditional checkpoint\n\nO - Objective\nProvide chronology with confidence clarity\n\nR - Requirements\nFour to five concise bullets; preserve conditionality\n\nE - Expectations\nCoordination-safe timeline without false commitments',
            ),
          ],
          proTip:
              'Most timeline mistakes are confidence mistakes. If conditional dates are not protected, AI over-commits for you.',
          takeaway:
              'A timeline that flattens uncertainty is misinformation with nice formatting.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for coordination-safe milestone timelines.',
            pieces: [
              PromptPieceDef(text: 'Require chronological bullet timeline', isCorrect: true),
              PromptPieceDef(text: 'Preserve stated dates exactly', isCorrect: true),
              PromptPieceDef(text: 'Mark conditional checkpoints explicitly', isCorrect: true),
              PromptPieceDef(text: 'Keep lines concise', isCorrect: true),
              PromptPieceDef(
                  text: 'Expect coordination-safe output without false commitments',
                  isCorrect: true),
              PromptPieceDef(text: 'Convert uncertain dates to firm promises', isCorrect: false),
              PromptPieceDef(text: 'Insert extra milestones for completeness', isCorrect: false),
              PromptPieceDef(text: 'Reorder milestones for readability', isCorrect: false),
              PromptPieceDef(text: 'Expand each point into prose', isCorrect: false),
              PromptPieceDef(text: 'Add causal speculation', isCorrect: false),
            ],
            coachingNote:
                'Timeline prompts must control certainty, not just sequence. Preserve conditionality explicitly.',
            assembledPromptExample:
                'Turn these milestone notes into four or five concise chronological bullets preserving stated dates and explicit conditional checkpoints.',
            feedbackWhenCorrect:
                'You protected timeline trust by preserving uncertainty - that is the coordination advantage.',
            resultPolishedPrompt:
                'Produce a concise four-to-five-bullet chronology from these milestones, preserving stated dates and explicit conditionality only.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Turn Information Into Structured Formats',
      scenarios: [
        ScenarioDef(
          title: 'Convert Cross-Team Notes Into a Decision Table',
          situation:
              'You need a scan-fast table from cross-team notes. Leaders will use it to spot ownership and deadline risk quickly.\n\nIf the table hides unknowns, leadership sees false certainty and makes the wrong calls.\n\nIf you prompt AI generically, output often:\n- drops unknown ownership\n- normalizes risky dates\n- looks neat but hides decisions needed\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for "a table" and forget table design controls what leaders notice.\n\nTo get a usable result, your prompt must define:\n- Context - cross-team status notes for leadership scan\n- Objective - surface workstream, owner, deadline, and risk clarity\n- Requirements - concise rows; preserve unknowns; no invented owners/dates\n- Expectations - decision-support table ready to paste',
          prompt:
              'Turn these notes into a concise table with columns Workstream, Owner, Deadline, and Risk Flag. Use only stated information, keep unknown owner as [Owner TBD], and mark risk when timing is uncertain or tight. Do not invent owners, dates, or status.',
          output:
              '| Workstream | Owner | Deadline | Risk Flag |\n| --- | --- | --- | --- |\n| Timeline update | Sarah | Friday | Low |\n| Vendor alignment | Marcus | Wednesday | Medium |\n| Draft review | [Owner TBD] | Thursday | High |\n\nLook at how unknown ownership stayed explicit - that keeps the table decision-useful.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The difference is visibility design: table structure tells leaders what to notice.\n- Objective defines leadership-visible fields\n- Requirements preserve unknowns and ban invention\n- Expectations produce scan-ready decision support',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this a table\n\nStrong prompt:\nTurn these notes into a concise table with columns Workstream, Owner, Deadline, and Risk Flag. Use only stated information, keep unknown owner as [Owner TBD], and mark risk when timing is uncertain or tight. Do not invent owners, dates, or status.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCross-team notes for leadership scan\n\nO - Objective\nSurface owner/deadline/risk clarity by workstream\n\nR - Requirements\nConcise rows; preserve unknowns; no invented data\n\nE - Expectations\nPaste-ready decision-support table',
            ),
          ],
          proTip:
              'Neat tables can still be risky. If unknown owners disappear, accountability risk disappears too.',
          takeaway:
              'A table that hides unknown owners is a decision trap - force the hard truths to stay visible.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for leadership decision tables.',
            pieces: [
              PromptPieceDef(
                  text: 'Specify decision-relevant columns including risk',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Preserve owner and deadline clarity per workstream',
                  isCorrect: true),
              PromptPieceDef(text: 'Keep rows concise and factual', isCorrect: true),
              PromptPieceDef(
                  text: 'Use [Owner TBD] for unknown ownership',
                  isCorrect: true),
              PromptPieceDef(text: 'Expect leadership scan-ready output', isCorrect: true),
              PromptPieceDef(text: 'Infer missing owners from context', isCorrect: false),
              PromptPieceDef(text: 'Normalize all risk flags to Medium', isCorrect: false),
              PromptPieceDef(text: 'Add confidence percentages', isCorrect: false),
              PromptPieceDef(text: 'Append paragraph commentary', isCorrect: false),
              PromptPieceDef(text: 'Add suggested new workstreams', isCorrect: false),
            ],
            coachingNote:
                'Decision tables need field discipline. Define what must be visible and what must never be invented.',
            assembledPromptExample:
                'Convert these notes into a concise Workstream/Owner/Deadline/Risk table, preserving unknowns as [Owner TBD] and avoiding invented values.',
            feedbackWhenCorrect:
                'You now design for decision visibility - most tables look clean and hide the risk.',
            resultPolishedPrompt:
                'Create a concise decision table from these notes with Workstream, Owner, Deadline, and Risk Flag. Preserve unknown owner as [Owner TBD] and avoid invented data.',
          ),
        ),
        ScenarioDef(
          title: 'Synthesize Contradictory Feedback Into Actionable Themes',
          situation:
              'You collected feedback from stakeholders with conflicting priorities. Some comments overlap, others directly contradict.\n\nIf you erase the contradiction, you remove the decision the meeting exists to make.\n\nIf you prompt AI weakly, it tends to:\n- merge contradictions into fake agreement\n- over-generalize themes\n- lose actionable signal\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for "themes" and erase tension that decisions depend on.\n\nTo get a usable result, your prompt must define:\n- Context - contradictory stakeholder feedback requiring synthesis\n- Objective - group overlap while preserving key contradiction\n- Requirements - three to five themes; concise labels; no invented consensus\n- Expectations - decision-useful theme list',
          prompt:
              'Group this feedback into three to five themes for leadership discussion. Merge overlap, but preserve one explicit contradiction where stakeholder priorities conflict. Keep theme labels concise, avoid invented consensus language, and make output directly usable for decision review.',
          output:
              '- Clarity: Multiple stakeholders want tighter wording and fewer interpretation gaps.\n- Timeline pressure: Comments consistently flag current timing as compressed.\n- Input model conflict: One group wants broader early input, another wants narrow late review.\n- Enablement: Teams request more concrete examples and reference artifacts.\n\nThis is where you can see control over ambiguity - contradiction stayed visible instead of flattened.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is the control point: synthesis quality depends on contradiction handling.\n- Objective balances grouping and tension preservation\n- Requirements block invented consensus\n- Expectations keep decision utility',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nGroup this into themes\n\nStrong prompt:\nGroup this feedback into three to five themes for leadership discussion. Merge overlap, but preserve one explicit contradiction where stakeholder priorities conflict. Keep theme labels concise, avoid invented consensus language, and make output directly usable for decision review.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nContradictory stakeholder feedback requiring synthesis\n\nO - Objective\nGroup overlap while preserving key contradiction\n\nR - Requirements\nThree to five concise themes; no invented consensus\n\nE - Expectations\nDecision-useful output for leadership discussion',
            ),
          ],
          proTip:
              'Most AI users over-compress and erase disagreement. That makes meetings smoother and decisions worse.',
          takeaway:
              'If synthesis erases tension, it erases the decision - keep the contradiction where it matters.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for contradiction-aware feedback synthesis.',
            pieces: [
              PromptPieceDef(text: 'Cap output to three to five themes', isCorrect: true),
              PromptPieceDef(
                  text: 'Merge overlap while preserving one key contradiction',
                  isCorrect: true),
              PromptPieceDef(text: 'Use concise factual theme labels', isCorrect: true),
              PromptPieceDef(text: 'Forbid invented consensus language', isCorrect: true),
              PromptPieceDef(
                  text: 'Expect decision-discussion readiness',
                  isCorrect: true),
              PromptPieceDef(text: 'Remove all contradictions', isCorrect: false),
              PromptPieceDef(text: 'Add inferred themes', isCorrect: false),
              PromptPieceDef(text: 'Rewrite themes as long paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Blend conflicts into neutral average', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations outside source', isCorrect: false),
            ],
            coachingNote:
                'Theme synthesis should compress overlap, not conflict. Define contradiction handling or the model erases decision signal.',
            assembledPromptExample:
                'Synthesize this feedback into three to five concise themes, preserving one explicit contradiction and avoiding invented consensus language.',
            feedbackWhenCorrect:
                'You now preserve decision tension instead of smoothing it away - that is the advantage.',
            resultPolishedPrompt:
                'Group these comments into three to five concise themes while preserving one explicit contradiction and avoiding invented consensus language.',
          ),
        ),
        ScenarioDef(
          title: 'Transform Unordered Instructions Into an Auditable Workflow',
          situation:
              'You have unordered process instructions for a recurring cross-team workflow. Review and approval gates are implied, not explicit.\n\nIf checkpoints go missing, the workflow becomes un-auditable and approvals get bypassed by accident.\n\nIf you prompt AI casually, it often:\n- orders steps plausibly but unsafely\n- omits control checkpoints\n- invents transitions not in source text\n\nThis is why your prompt fails:\n- unclear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people ask for a workflow and get process theater instead of auditable flow.\n\nTo get a usable result, your prompt must define:\n- Context - cross-team process needing governance clarity\n- Objective - produce dependency-ordered workflow with explicit checkpoints\n- Requirements - up to four main steps; optional sub-steps; no invented transitions\n- Expectations - auditable outline for operating docs',
          prompt:
              'Convert these unordered instructions into an auditable workflow outline with up to four main steps and optional sub-steps. Order steps by execution dependency, include explicit checkpoint lines where source indicates review/approval, and do not invent transitions or actions.',
          output:
              '1. Prepare materials\n   - Gather required documents\n   - Confirm latest approved versions\n2. Review checkpoint\n   - Share materials with reviewers\n   - Capture required approval input\n3. Finalize package\n   - Apply approved changes only\n   - Prepare release-ready version\n4. Release checkpoint\n   - Confirm approval gate cleared before distribution\n\nPay attention to how checkpoints are explicit - this is what makes the workflow auditable.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The difference is governance visibility: workflow quality needs dependency order plus checkpoints.\n- Objective targets auditable sequence\n- Requirements block invented transitions\n- Expectations target operating-doc readiness',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this into a workflow\n\nStrong prompt:\nConvert these unordered instructions into an auditable workflow outline with up to four main steps and optional sub-steps. Order steps by execution dependency, include explicit checkpoint lines where source indicates review/approval, and do not invent transitions or actions.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCross-team process needing governance clarity\n\nO - Objective\nDependency-ordered workflow with explicit checkpoints\n\nR - Requirements\nUp to four steps; optional sub-steps; no invented transitions\n\nE - Expectations\nAuditable outline for operating docs',
            ),
          ],
          proTip:
              'Auditability is where most users lose control. If checkpoint logic is not explicit in the prompt, it disappears in output.',
          takeaway:
              'A workflow without checkpoints is process theater - keep governance signals explicit.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong prompt for auditable workflow conversion.',
            pieces: [
              PromptPieceDef(text: 'Cap workflow to a small step count', isCorrect: true),
              PromptPieceDef(text: 'Order by execution dependency', isCorrect: true),
              PromptPieceDef(text: 'Include explicit review/approval checkpoints', isCorrect: true),
              PromptPieceDef(text: 'Allow optional sub-steps for clarity', isCorrect: true),
              PromptPieceDef(
                  text: 'Expect operating-doc-ready auditable output',
                  isCorrect: true),
              PromptPieceDef(text: 'Insert likely transitions for flow', isCorrect: false),
              PromptPieceDef(text: 'Remove checkpoints to keep it short', isCorrect: false),
              PromptPieceDef(text: 'Reorder for readability only', isCorrect: false),
              PromptPieceDef(text: 'Add rationale paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Generalize into principles', isCorrect: false),
            ],
            coachingNote:
                'Workflow prompts need dependency order and checkpoint visibility together. Missing either one reduces audit safety.',
            assembledPromptExample:
                'Convert these unordered instructions into up to four dependency-ordered workflow steps with optional sub-steps and explicit review/approval checkpoints, with no invented transitions.',
            feedbackWhenCorrect:
                'You preserved auditability - this is where most workflow prompts quietly become unsafe.',
            resultPolishedPrompt:
                'Build an auditable workflow from these instructions using up to four dependency-ordered steps, optional sub-steps, and explicit checkpoints only.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Create Reusable Prompts for Daily Work',
      scenarios: [
        ScenarioDef(
          title: 'Design a Reusable Daily Update Prompt for Leadership Visibility',
          situation:
              'You send daily updates that may be read by leadership. You need a reusable prompt that stays concise, factual, and risk-aware across variable note quality.\n\nIf this drifts, leadership reads the wrong risk picture.\n\nIf your template prompt is weak, AI often:\n- drifts into generic status language\n- hides blockers\n- changes emphasis based on note style\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people build reusable prompts that only work when the day is easy.\n\nTo get a usable result, your prompt must define:\n- Context - daily leadership update from variable notes\n- Objective - consistently report progress, risk, and next-day actions\n- Requirements - one short paragraph; factual tone; no invented metrics\n- Expectations - copy/paste-ready output with stable structure',
          prompt:
              'Create a reusable prompt that converts bullet notes into a one-paragraph leadership update with fixed sections for progress, active risks, and next-day actions. Keep tone factual and concise, forbid invented metrics or confidence claims, and include a [Notes] placeholder for repeated use.',
          output:
              'Reusable Prompt - Daily Leadership Update\n\nTurn [Notes] into one concise paragraph covering:\n- Progress completed today\n- Active risks or blockers\n- Next-day actions\n\nUse controlled, professional tone. Do not invent metrics, causes, or confidence claims not present in [Notes]. Keep structure consistent across days and output ready to paste.\n\nThe difference is stability: constraints keep output consistent when note quality changes.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is stability controls: reusable prompts need more than placeholders.\n- Objective locks recurring signal categories\n- Requirements lock tone and anti-invention\n- Expectations lock daily consistency',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCreate a daily summary template\n\nStrong prompt:\nCreate a reusable prompt that converts bullet notes into a one-paragraph leadership update with fixed sections for progress, active risks, and next-day actions. Keep tone factual and concise, forbid invented metrics or confidence claims, and include a [Notes] placeholder for repeated use.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nReusable daily leadership update from variable notes\n\nO - Objective\nConsistent progress/risk/next-action reporting\n\nR - Requirements\nOne paragraph; factual tone; no invented metrics\n\nE - Expectations\nCopy/paste-ready output with stable structure',
            ),
          ],
          proTip:
              'Most reusable prompts fail on bad-input days. If constraints are weak, output quality swings with note quality.',
          takeaway:
              'Reusable prompts only matter on hard days - design for consistency under pressure.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong reusable daily update prompt.',
            pieces: [
              PromptPieceDef(
                  text: 'Define fixed sections for progress, risk, and next actions',
                  isCorrect: true),
              PromptPieceDef(text: 'Require one paragraph output', isCorrect: true),
              PromptPieceDef(text: 'Include reusable [Notes] placeholder', isCorrect: true),
              PromptPieceDef(
                  text: 'Forbid invented metrics or confidence claims',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Expect stable copy/paste-ready structure',
                  isCorrect: true),
              PromptPieceDef(text: 'Allow style shifts by note tone', isCorrect: false),
              PromptPieceDef(text: 'Add default motivational language', isCorrect: false),
              PromptPieceDef(text: 'Include optional strategy recommendations', isCorrect: false),
              PromptPieceDef(text: 'Expand on complex days by default', isCorrect: false),
              PromptPieceDef(text: 'Let model choose sections dynamically', isCorrect: false),
            ],
            coachingNote:
                'Reusable update prompts need consistency controls plus anti-invention rules, or quality drifts exactly when pressure rises.',
            assembledPromptExample:
                'Create a reusable one-paragraph leadership update prompt with [Notes] placeholder and fixed sections for progress, active risks, and next-day actions. Keep factual and ban invented metrics.',
            feedbackWhenCorrect:
                'You now have repeatable leadership-quality updates - not just a template that works on easy days.',
            resultPolishedPrompt:
                'Build a reusable one-paragraph leadership update prompt with [Notes], fixed progress/risk/next-action sections, factual tone, and no invented metrics.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Reusable Prompt for Risk-Sensitive Stakeholder Emails',
          situation:
              'You often draft stakeholder emails from rough notes where tone and commitments must stay controlled.\n\nIf this over-promises, you create a commitment you now have to unwind.\n\nIf your reusable prompt is too generic, AI often:\n- sounds polished but vague\n- over-promises next steps\n- varies quality by note quality\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people template structure but forget commitment constraints.\n\nTo get a usable result, your prompt must define:\n- Context - risk-sensitive stakeholder email from rough notes\n- Objective - produce concise professional email with controlled commitments\n- Requirements - two or three short paragraphs; no invented promises/dates\n- Expectations - send-ready output with stable quality',
          prompt:
              'Create a reusable prompt that turns rough notes into a stakeholder email in two or three short paragraphs. Include placeholders for audience, purpose, key facts, and next step, require professional tone, and explicitly forbid invented commitments, approvals, or dates not in the notes. Output must be send-ready.',
          output:
              'Reusable Prompt - Stakeholder Email\n\nTurn [Notes] into a professional email in 2-3 short paragraphs.\nInclude:\n- Greeting for [Audience]\n- Purpose in one clear line\n- Key facts only from [Notes]\n- One explicit next step\n- Polite close\n\nDo not invent commitments, approvals, or dates not present in [Notes]. Keep tone calm and send-ready.\n\nNotice how the template controls commitment risk, not just email structure.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is the control point: reusable email prompts need commitment guardrails.\n- Objective targets clarity plus commitment discipline\n- Requirements lock structure and anti-invention rules\n- Expectations lock stable send-ready quality',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCreate an email template from notes\n\nStrong prompt:\nCreate a reusable prompt that turns rough notes into a stakeholder email in two or three short paragraphs. Include placeholders for audience, purpose, key facts, and next step, require professional tone, and explicitly forbid invented commitments, approvals, or dates not in the notes. Output must be send-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nRisk-sensitive stakeholder email from rough notes\n\nO - Objective\nConsistent concise email with controlled commitments\n\nR - Requirements\n2-3 short paragraphs; placeholders; no invented promises/dates\n\nE - Expectations\nSend-ready output with stable quality',
            ),
          ],
          proTip:
              'This is where most AI users lose control: they template sections but not promise boundaries.',
          takeaway:
              'If the template does not control commitments, it is not leverage - it is risk.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong reusable prompt for risk-sensitive stakeholder emails.',
            pieces: [
              PromptPieceDef(
                  text:
                      'Include placeholders for audience, purpose, facts, and next step',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require two or three short paragraphs',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Forbid invented commitments, approvals, or dates',
                  isCorrect: true),
              PromptPieceDef(text: 'Require professional calm tone', isCorrect: true),
              PromptPieceDef(
                  text: 'Expect stable send-ready quality across inputs',
                  isCorrect: true),
              PromptPieceDef(text: 'Infer likely commitments for confidence', isCorrect: false),
              PromptPieceDef(text: 'Allow informal tone shifts', isCorrect: false),
              PromptPieceDef(text: 'Expand to four paragraphs when complex', isCorrect: false),
              PromptPieceDef(text: 'Insert strategic recommendations', isCorrect: false),
              PromptPieceDef(text: 'Add anticipated dates when missing', isCorrect: false),
            ],
            coachingNote:
                'Reusable stakeholder prompts need structure and commitment guardrails together. Without both, risk control varies by day.',
            assembledPromptExample:
                'Create a reusable stakeholder email prompt with placeholders for audience, purpose, key facts, and next step, 2-3 short paragraphs, and strict no-invented-commitment rules.',
            feedbackWhenCorrect:
                'You now control commitment boundaries in reusable form - that is real stakeholder leverage.',
            resultPolishedPrompt:
                'Build a reusable stakeholder email prompt with structured placeholders, 2-3 short paragraph limit, professional tone, and strict no-invented-commitment rules.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Reusable Task Update Prompt for Escalation Readiness',
          situation:
              'You send frequent task updates that may be forwarded upward when risk increases. You need a reusable template prompt that stays concise but escalation-ready.\n\nIf this is vague, the update escalates without the one line leadership needs to judge risk.\n\nIf the prompt is too simple, AI usually:\n- omits risk signal\n- uses casual language that does not travel well\n- varies structure across tasks\n\nThis is why your prompt fails:\n- no clear Objective\n- weak Requirements\n- no defined Expectations\n\nMost people template status but not escalation readiness.\n\nTo get a usable result, your prompt must define:\n- Context - concise task updates that may escalate\n- Objective - report status, risk level, and next step clearly\n- Requirements - one or two sentences; neutral tone; required placeholders\n- Expectations - reusable line safe for cross-level forwarding',
          prompt:
              'Create a reusable one- or two-sentence task update prompt with placeholders for task name, current status, risk level, and next action. Keep tone neutral and professional, forbid invented progress claims, and make output suitable for forwarding to leadership without reformatting.',
          output:
              'Task Update Template\n[Task name] - Status: [status]. Risk: [risk level]. Next action: [next action].\n\nWhat matters here is the risk field - it is what makes a short update escalation-ready.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The difference is escalation fields: short templates still need risk discipline.\n- Objective includes status plus risk signal\n- Requirements lock concise neutral format\n- Expectations keep forwarding safety',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCreate a quick task template\n\nStrong prompt:\nCreate a reusable one- or two-sentence task update prompt with placeholders for task name, current status, risk level, and next action. Keep tone neutral and professional, forbid invented progress claims, and make output suitable for forwarding to leadership without reformatting.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nConcise task updates that may escalate upward\n\nO - Objective\nReport status, risk, and next action clearly\n\nR - Requirements\nOne or two sentences; neutral tone; required placeholders\n\nE - Expectations\nForward-safe reusable update line',
            ),
          ],
          proTip:
              'Most AI users stay average here: they report status but hide risk, then escalation arrives with missing context.',
          takeaway:
              'If a status template cannot survive escalation, it is not a template - it is a draft.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a strong reusable prompt for escalation-ready task updates.',
            pieces: [
              PromptPieceDef(text: 'Cap output to one or two sentences', isCorrect: true),
              PromptPieceDef(
                  text: 'Require placeholders for task/status/risk/next action',
                  isCorrect: true),
              PromptPieceDef(text: 'Use neutral professional tone', isCorrect: true),
              PromptPieceDef(
                  text: 'Forbid invented progress or completion claims',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Expect forward-safe output for leadership visibility',
                  isCorrect: true),
              PromptPieceDef(text: 'Drop risk field to keep it lighter', isCorrect: false),
              PromptPieceDef(text: 'Add motivational language by default', isCorrect: false),
              PromptPieceDef(text: 'Include optional sentiment field', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraph format', isCorrect: false),
              PromptPieceDef(text: 'Infer next actions when missing', isCorrect: false),
            ],
            coachingNote:
                'Escalation-ready templates require risk field discipline and anti-invention constraints even when output is very short.',
            assembledPromptExample:
                'Create a reusable one- or two-sentence task update prompt with placeholders for task, status, risk, and next action; keep neutral and forbid invented progress claims.',
            feedbackWhenCorrect:
                'You now have a compact update that scales upward without cleanup - most templates break at escalation.',
            resultPolishedPrompt:
                'Build a reusable 1-2 sentence task update prompt with placeholders for task, status, risk, and next action. Keep neutral, concise, and forward-safe.',
          ),
        ),
      ],
    ),
  ];
}
```

### `lib\data\tracks\track3_spreadsheets_data.dart`
```
import '../app_catalog.dart';

/// Track 3 – Spreadsheets & Data (lessons 1–5)
List<LessonDef> buildTrack3Lessons() {
  return [
    const LessonDef(
      title: 'Control Spreadsheet Summaries (Decision-Ready)',
      scenarios: [
        ScenarioDef(
          title: 'Extract a Leadership-Ready Weekly Snapshot From a Raw Sheet',
          situation:
              'You have a raw sales sheet across regions, but the meeting is in 10 minutes and leadership will scan for signal, not detail.\n\nIf this summary is wrong or vague, the team will optimize the wrong region.\n\nIf you prompt AI weakly, it usually:\n- invents confidence\n- adds commentary you can\'t defend\n- hides missing data behind clean formatting\n\nThis is why your prompt fails:\n- no clear objective (what decision this summary supports)\n- weak requirements (what must be computed vs. preserved)\n- no expectation for auditability\n\nMost people ask for a "summary table" and get something that looks official but can\'t be verified.\n\nTo get a usable result, your prompt must define:\n- Context - leadership scan of regional performance from a raw sheet\n- Objective - compute totals and averages without interpretation\n- Requirements - exact columns, number formatting, and missing-data rules\n- Expectations - paste-ready output you can defend in a meeting',
          prompt:
              'Create a leadership-ready summary table from this sheet with exactly these columns: Region, Total Sales, Average Sale. Compute totals and averages from the provided values only. Do not add interpretation, do not invent missing values, and if any region data is incomplete, mark it as [Incomplete]. Keep formatting paste-ready for a leadership update.',
          output:
              '**Regional Sales Snapshot (computed from provided values)**\n| Region | Total Sales | Average Sale |\n|--------|-------------|--------------|\n| North | \$128,400 | \$8,560 |\n| South | \$113,900 | \$7,593 |\n| East | \$142,300 | \$9,486 |\n| West | \$121,700 | \$8,114 |\n\nNotice how the output is decision-ready without editorializing - the Requirements kept it auditable.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is auditability: you told the model what to compute and what not to infer.\n- Objective focuses on computation, not commentary\n- Requirements lock columns, formatting, and missing-data handling\n- Expectations force paste-ready output you can defend',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise this sheet by region\n\nStrong prompt:\nCreate a leadership-ready summary table from this sheet with exactly these columns: Region, Total Sales, Average Sale. Compute totals and averages from the provided values only. Do not add interpretation, do not invent missing values, and if any region data is incomplete, mark it as [Incomplete]. Keep formatting paste-ready for a leadership update.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLeadership scan of regional performance from a raw sheet\n\nO - Objective\nCompute totals and averages without interpretation\n\nR - Requirements\nExact columns and formatting; provided values only; missing stays missing\n\nE - Expectations\nPaste-ready output you can defend in a meeting',
            ),
          ],
          proTip:
              'Most people let AI "make it insightful" and end up with claims they can\'t trace back to the sheet. In data work, auditable beats eloquent.',
          takeaway:
              'If you can\'t audit it, don\'t ship it - control the calculations and the boundaries.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a decision-ready, auditable spreadsheet summary prompt.',
            pieces: [
              PromptPieceDef(
                  text: 'Specify exact output columns and order', isCorrect: true),
              PromptPieceDef(
                  text:
                      'Require totals and averages computed from provided values only',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Forbid interpretation or performance commentary',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Define how to handle missing or incomplete data',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Expect paste-ready formatting for a leadership update',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for insights and recommendations by default',
                  isCorrect: false),
              PromptPieceDef(
                  text:
                      'Allow the model to "fill gaps" to make the table complete',
                  isCorrect: false),
              PromptPieceDef(
                  text:
                      'Add a narrative paragraph explaining why regions performed',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Change region names for readability', isCorrect: false),
              PromptPieceDef(
                  text: 'Include confidence percentages for each region',
                  isCorrect: false),
            ],
            coachingNote:
                'Most data summaries fail because the prompt allows inference. Lock computation scope, missing-data rules, and output shape before asking for polish.',
            assembledPromptExample:
                'Create a paste-ready table with columns Region, Total Sales, Average Sale computed from provided values only. Do not add interpretation; mark incomplete regions as [Incomplete].',
            feedbackWhenCorrect:
                'You now control auditability - this is how you ship numbers leadership can trust.',
            resultPolishedPrompt:
                'Build a leadership-ready regional summary table with exactly: Region, Total Sales, Average Sale. Compute from provided values only; do not interpret; mark incomplete regions as [Incomplete]; keep formatting paste-ready.',
          ),
        ),
        ScenarioDef(
          title:
              'Reconcile Messy Inputs Into One Clean Summary Without Silent Assumptions',
          situation:
              'You receive a messy export: duplicate region labels, inconsistent currency symbols, and a few blank cells.\n\nIf you summarise this loosely, you will publish the wrong totals and nobody will notice until the next forecast review.\n\nIf you prompt AI weakly, it usually:\n- "normalizes" by guessing\n- silently drops rows\n- produces clean output with hidden data loss\n\nThis is why your prompt fails:\n- no definition of what counts as a valid row\n- no rules for duplicates\n- no expectation to report anomalies\n\nMost people ask for a summary and skip the step that protects trust: anomaly reporting.\n\nTo get a usable result, your prompt must define:\n- Context - messy export that needs safe summarisation\n- Objective - compute totals safely while surfacing anomalies\n- Requirements - dedupe rules, blank handling, and no silent drops\n- Expectations - summary table plus an anomalies list you can act on',
          prompt:
              'Create a regional summary table (Region, Total Sales, Average Sale) from this messy export using only provided values. Do not guess missing values or drop rows silently. If duplicates exist, combine them by exact region name match only. If blanks or mixed currency symbols appear, keep the row but mark it as [Needs review] in an Anomalies list after the table.',
          output:
              '**Regional Summary (safe aggregation)**\n| Region | Total Sales | Average Sale |\n|--------|-------------|--------------|\n| North | \$128,400 | \$8,560 |\n| South | \$113,900 | \$7,593 |\n| East | \$142,300 | \$9,486 |\n| West | \$121,700 | \$8,114 |\n\n**Anomalies (requires review)**\n- Mixed currency symbol detected in 2 rows → not merged across symbols\n- Blank sales value in 1 row → excluded from average; flagged for review\n\nLook at how the output stays clean without hiding risk - Expectations forced anomaly visibility.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is the difference between tidy and trustworthy: you required anomaly reporting and banned silent cleanup.\n- Objective targets safe aggregation\n- Requirements define dedupe and missing-data rules\n- Expectations force a review list so risk doesn\'t disappear',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise this export by region\n\nStrong prompt:\nCreate a regional summary table (Region, Total Sales, Average Sale) from this messy export using only provided values. Do not guess missing values or drop rows silently. If duplicates exist, combine them by exact region name match only. If blanks or mixed currency symbols appear, keep the row but mark it as [Needs review] in an Anomalies list after the table.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMessy export needing safe summarisation\n\nO - Objective\nAggregate by region while surfacing anomalies\n\nR - Requirements\nNo guessing; no silent drops; explicit dedupe and blank handling\n\nE - Expectations\nSummary table + anomalies list for review',
            ),
          ],
          proTip:
              'This is where most people lose trust: they ask AI to "clean it up" and it deletes the evidence. Always force an anomalies section when inputs are messy.',
          takeaway:
              'Messy inputs don\'t need perfection - they need visibility. Safe summaries surface what they couldn\'t compute.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a safe, anomaly-aware summary prompt for messy spreadsheet exports.',
            pieces: [
              PromptPieceDef(
                  text: 'Ban guessing or inventing missing values', isCorrect: true),
              PromptPieceDef(text: 'Require no silent row drops', isCorrect: true),
              PromptPieceDef(
                  text: 'Define duplicate-handling rules explicitly',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require an anomalies/review list after the summary',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Use only provided values for calculations', isCorrect: true),
              PromptPieceDef(
                  text: 'Auto-correct region labels to a standard naming scheme',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Merge across currencies to get one clean total',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Drop blank rows without mentioning them', isCorrect: false),
              PromptPieceDef(
                  text: 'Add explanations for why the data is messy',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Provide recommendations based on the numbers',
                  isCorrect: false),
            ],
            coachingNote:
                'In messy data, the win is not "clean output" - it\'s controlled cleanup with visible exceptions. Force anomaly reporting and ban silent drops.',
            assembledPromptExample:
                'Summarise by region into a table using provided values only. Do not guess missing values or drop rows silently; define dedupe rules; include an anomalies list after the table.',
            feedbackWhenCorrect:
                'You now control safe aggregation - the anomalies list is what keeps your summary credible.',
            resultPolishedPrompt:
                'Create a regional summary table (Region, Total Sales, Average Sale) from this export using provided values only. No guessing, no silent drops, explicit duplicate/blank handling, and an Anomalies list after the table.',
          ),
        ),
        ScenarioDef(
          title: 'Summarise Sensitive Performance Data Without Overstating Conclusions',
          situation:
              'You\'re summarising performance data that will be forwarded to leadership. The numbers suggest a trend, but the sample is small and context is incomplete.\n\nIf you overstate, you trigger the wrong intervention; if you undersell, you miss a real risk.\n\nIf you prompt AI weakly, it usually:\n- writes confident narratives from thin data\n- adds causes that aren\'t in the sheet\n- turns correlation into certainty\n\nThis is why your prompt fails:\n- no rules for claims vs. observations\n- no tone control\n- no expectation to separate facts from hypotheses\n\nMost people ask for "insights" and get a story. You need controlled, decision-safe language.\n\nTo get a usable result, your prompt must define:\n- Context - sensitive performance snapshot with incomplete context\n- Objective - extract factual observations and one cautious implication\n- Requirements - separate Observations vs. Open Questions; no invented causes\n- Expectations - forward-safe summary that signals risk without speculation',
          prompt:
              'Write a forward-safe performance snapshot from these numbers. Use two sections: Observations (facts only) and Open Questions (what we would need to confirm before acting). Keep tone controlled and professional. Do not invent causes, do not claim statistical significance, and keep it paste-ready for a leadership thread.',
          output:
              '**Performance Snapshot**\n**Observations**\n- The latest period shows lower volume than the prior period in the provided values.\n- Variability increased across the most recent entries compared to earlier entries.\n\n**Open Questions**\n- Is the input set complete for this period (same coverage as prior)?\n- Are there known operational changes that would explain the variance?\n\nThis is where you can see decision-safety: the model reports what\'s true without inventing why.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is claim discipline: you forced a split between facts and what needs confirmation.\n- Objective targets decision-safe signal\n- Requirements ban invented causes and enforce sectioning\n- Expectations make it forward-safe without overselling',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nGive me insights from this data\n\nStrong prompt:\nWrite a forward-safe performance snapshot from these numbers. Use two sections: Observations (facts only) and Open Questions (what we would need to confirm before acting). Keep tone controlled and professional. Do not invent causes, do not claim statistical significance, and keep it paste-ready for a leadership thread.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSensitive performance snapshot with incomplete context\n\nO - Objective\nExtract factual observations and signal uncertainty safely\n\nR - Requirements\nObservations vs Open Questions; no invented causes; no overclaiming\n\nE - Expectations\nForward-safe paste-ready summary with controlled tone',
            ),
          ],
          proTip:
              'Most people think "analysis" means "explain why." In leadership threads, "why" without evidence is how you lose trust fast.',
          takeaway:
              'Separate facts from hypotheses every time - decision-safe language is a competitive advantage.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this decision-safe, tone-controlled performance summary prompt.',
            pieces: [
              PromptPieceDef(
                  text: 'Require separate sections for facts vs. open questions',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Forbid invented causes or speculation', isCorrect: true),
              PromptPieceDef(text: 'Require controlled, professional tone', isCorrect: true),
              PromptPieceDef(
                  text: 'Expect forward-safe, paste-ready formatting',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Use only the provided numbers as evidence', isCorrect: true),
              PromptPieceDef(
                  text: 'Ask the model to explain root causes for the trend',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add confidence scores for each observation',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Assume missing context and fill it in',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use persuasive language to drive urgency', isCorrect: false),
              PromptPieceDef(
                  text: 'Recommend interventions based on limited data',
                  isCorrect: false),
            ],
            coachingNote:
                'Decision-safe summaries require claim discipline. Force structure (facts vs. questions), ban invented causes, and keep tone controlled.',
            assembledPromptExample:
                'Write a forward-safe snapshot with Observations (facts only) and Open Questions. Use only provided numbers, avoid invented causes, keep tone controlled, and format paste-ready.',
            feedbackWhenCorrect:
                'You now control claim discipline - this is how you communicate risk without losing credibility.',
            resultPolishedPrompt:
                'Create a paste-ready performance snapshot with Observations (facts only) and Open Questions. Use only provided values; no invented causes; controlled professional tone; decision-safe wording.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Find Exceptions and High-Leverage Rows',
      scenarios: [
        ScenarioDef(
          title: 'Extract the Top Values With a Tie-Break Rule',
          situation:
              'You need the top values from a column to prioritize attention, but ties and close values can change the story.\n\nIf you get this wrong, you escalate the wrong account to leadership.\n\nIf you prompt AI weakly, it usually:\n- returns an arbitrary order\n- ignores ties\n- hides the tie-break logic\n\nThis is why your prompt fails:\n- no tie rule\n- no output shape\n- no expectation to show only what matters\n\nMost people ask for "top 3" and assume the model will handle ties correctly.\n\nTo get a usable result, your prompt must define:\n- Context - prioritization based on top values\n- Objective - extract top values with explicit ordering rules\n- Requirements - tie-break rule; show values only; no commentary\n- Expectations - output you can paste into a priority list without editing',
          prompt:
              'From this list, return the top three values in descending order. If there is a tie, include both tied values and label them as a tie. Show values only, no commentary, and keep output paste-ready.',
          output:
              '**Top values (descending)**\n1. 1,320\n2. 1,210\n3. 1,180\n\nNotice how the output is unambiguous - Requirements defined what to do when ranking isn\'t clean.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is ordering rules: rankings fail when ties are undefined.\n- Objective targets extraction, not explanation\n- Requirements define order, tie behavior, and values-only output\n- Expectations make it paste-ready for prioritization',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhat are the top values?\n\nStrong prompt:\nFrom this list, return the top three values in descending order. If there is a tie, include both tied values and label them as a tie. Show values only, no commentary, and keep output paste-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nPrioritization based on top values\n\nO - Objective\nExtract top values with explicit ordering\n\nR - Requirements\nDescending order; tie rule; values only; no commentary\n\nE - Expectations\nPaste-ready output for a priority list',
            ),
          ],
          proTip:
              'If you don\'t define tie behavior, you don\'t have a ranking - you have a guess with formatting.',
          takeaway: 'Rankings require rules. No tie-break = no trust.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a reliable top-values extraction prompt.',
            pieces: [
              PromptPieceDef(text: 'Specify descending order', isCorrect: true),
              PromptPieceDef(text: 'Specify how to handle ties', isCorrect: true),
              PromptPieceDef(text: 'Require exactly the top three values', isCorrect: true),
              PromptPieceDef(text: 'Forbid extra commentary', isCorrect: true),
              PromptPieceDef(text: 'Expect paste-ready formatting', isCorrect: true),
              PromptPieceDef(text: 'Explain why the values are high', isCorrect: false),
              PromptPieceDef(text: 'Sort in a visually pleasing order', isCorrect: false),
              PromptPieceDef(text: 'Add predictions based on the top values', isCorrect: false),
              PromptPieceDef(text: 'Change the list to remove outliers', isCorrect: false),
              PromptPieceDef(text: 'Recommend tools to analyze further', isCorrect: false),
            ],
            coachingNote:
                'Extraction prompts fail when ranking rules are underspecified. Define ordering, tie behavior, and output scope.',
            assembledPromptExample:
                'Return the top three values in descending order with an explicit tie rule. Values only, paste-ready.',
            feedbackWhenCorrect:
                'You now control ranking reliability - this is how you avoid escalating the wrong item.',
            resultPolishedPrompt:
                'Extract the top three values from this list in descending order. If ties occur, include tied values and label as a tie. Output values only, paste-ready, no commentary.',
          ),
        ),
        ScenarioDef(
          title: 'Find Max/Min in Messy Data Without Smuggling In Extra Metrics',
          situation:
              'You\'re asked for max/min immediately, but the dataset includes blanks, text, and a few values that might be placeholders.\n\nIf you get this wrong, you publish a number that can\'t be defended.\n\nIf you prompt AI weakly, it usually:\n- includes non-numeric cells\n- treats placeholders as real values\n- adds extra metrics you didn\'t ask for\n\nThis is why your prompt fails:\n- no rules for what counts as numeric\n- no treatment for blanks/invalids\n- no expectation to show exclusions\n\nMost people ask for "min and max" and forget to require exclusion rules.\n\nTo get a usable result, your prompt must define:\n- Context - messy column with mixed cell types\n- Objective - compute max/min safely\n- Requirements - ignore non-numeric; list exclusions; no extra metrics\n- Expectations - two-line answer plus a one-line exclusions note',
          prompt:
              'From this column, return only the Maximum and Minimum numeric values. Ignore blanks and non-numeric cells. After the two-line summary, add one line listing how many cells were excluded and why. Do not compute any other metrics.',
          output:
              '**Summary**\n- Maximum: 1,320\n- Minimum: 670\nExcluded: 2 non-numeric cells; 1 blank cell\n\nPay attention to how exclusions are explicit - that\'s what makes max/min defensible.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is exclusion rules: max/min is easy until the column isn\'t clean.\n- Objective targets max/min only\n- Requirements define numeric-only and force exclusions visibility\n- Expectations keep output minimal and defensible',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhat are the max and min?\n\nStrong prompt:\nFrom this column, return only the Maximum and Minimum numeric values. Ignore blanks and non-numeric cells. After the two-line summary, add one line listing how many cells were excluded and why. Do not compute any other metrics.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMessy column with mixed cell types\n\nO - Objective\nCompute max/min safely\n\nR - Requirements\nIgnore blanks/non-numeric; show exclusions; no extra metrics\n\nE - Expectations\nTwo-line summary + one-line exclusions note',
            ),
          ],
          proTip:
              'If you don\'t force exclusion rules, AI will "help" by treating garbage like data. Then you own the number.',
          takeaway: 'Defensible metrics require explicit inclusion rules.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a safe max/min prompt for messy columns.',
            pieces: [
              PromptPieceDef(text: 'Specify numeric-only inclusion', isCorrect: true),
              PromptPieceDef(text: 'Ignore blanks and non-numeric cells', isCorrect: true),
              PromptPieceDef(text: 'Require an exclusions count/reason line', isCorrect: true),
              PromptPieceDef(text: 'Limit output to max/min only', isCorrect: true),
              PromptPieceDef(text: 'Keep output paste-ready', isCorrect: true),
              PromptPieceDef(text: 'Compute range and standard deviation', isCorrect: false),
              PromptPieceDef(text: 'Interpret why min/max occurred', isCorrect: false),
              PromptPieceDef(text: 'Fill blanks with averages', isCorrect: false),
              PromptPieceDef(text: 'Convert text to numbers without noting it', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations based on min/max', isCorrect: false),
            ],
            coachingNote:
                'In messy columns, max/min is only trustworthy if you define what counts as numeric and require exclusion visibility.',
            assembledPromptExample:
                'Return only Maximum and Minimum numeric values; ignore blanks/non-numeric; include an exclusions note; no other metrics.',
            feedbackWhenCorrect:
                'You now produce defensible max/min - the exclusions note is what keeps it credible.',
            resultPolishedPrompt:
                'Compute Maximum and Minimum numeric values from this column. Ignore blanks and non-numeric cells. Output two lines for max/min plus one exclusions line. No other metrics.',
          ),
        ),
        ScenarioDef(
          title: 'Return Top Values by Category Without Creating False Comparability',
          situation:
              'You need the top value per category for a leadership view, but categories have different sample sizes and missing coverage.\n\nIf you present it as cleanly comparable, leadership will draw the wrong conclusion.\n\nIf you prompt AI weakly, it usually:\n- outputs a tidy table with implied comparability\n- hides missing categories\n- invents a winner narrative\n\nThis is why your prompt fails:\n- no rules for missing categories\n- no expectation to surface coverage gaps\n- no tone control\n\nMost people ask for "highest per category" and forget to require a coverage note.\n\nTo get a usable result, your prompt must define:\n- Context - category maxima for a leadership scan\n- Objective - compute highest value per category without overclaiming\n- Requirements - two-column table; preserve categories; flag missing coverage\n- Expectations - table plus a one-line coverage caveat',
          prompt:
              'Create a two-column table (Category, Highest Value) with the maximum numeric value per category using only provided data. Preserve category names exactly. If any category has missing/blank values, still include it and mark Highest Value as [Insufficient data]. After the table, add one line noting whether coverage gaps exist.',
          output:
              '**Category Maximums**\n| Category | Highest Value |\n|----------|----------------|\n| A | 860 |\n| B | 1,210 |\n| C | 940 |\nCoverage note: values reflect provided rows only; categories with gaps should be treated as incomplete.\n\nThis is where you can see decision safety - the coverage note prevents clean table, wrong conclusion.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is coverage honesty: category tables mislead when missing data is hidden.\n- Objective targets per-category maxima only\n- Requirements preserve names and define missing coverage handling\n- Expectations add a caveat so leadership doesn\'t over-read the table',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nShow the highest value by category\n\nStrong prompt:\nCreate a two-column table (Category, Highest Value) with the maximum numeric value per category using only provided data. Preserve category names exactly. If any category has missing/blank values, still include it and mark Highest Value as [Insufficient data]. After the table, add one line noting whether coverage gaps exist.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCategory maxima for leadership scan\n\nO - Objective\nCompute highest value per category without overclaiming\n\nR - Requirements\nTwo-column table; preserve category names; explicit missing coverage rules\n\nE - Expectations\nTable + one-line coverage caveat',
            ),
          ],
          proTip:
              'A clean table can still be dishonest. If coverage gaps aren\'t forced into the output, they disappear - and you inherit the conclusion.',
          takeaway:
              'If categories aren\'t comparable, don\'t let formatting imply they are.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a decision-safe max-per-category prompt.',
            pieces: [
              PromptPieceDef(text: 'Require a two-column Category/Highest Value table', isCorrect: true),
              PromptPieceDef(text: 'Use only provided data', isCorrect: true),
              PromptPieceDef(text: 'Preserve category names exactly', isCorrect: true),
              PromptPieceDef(text: 'Define how to handle missing/blank category values', isCorrect: true),
              PromptPieceDef(text: 'Require a one-line coverage caveat after the table', isCorrect: true),
              PromptPieceDef(text: 'Rank categories by performance', isCorrect: false),
              PromptPieceDef(text: 'Add interpretations about why categories differ', isCorrect: false),
              PromptPieceDef(text: 'Drop categories with missing values', isCorrect: false),
              PromptPieceDef(text: 'Normalize values across categories automatically', isCorrect: false),
              PromptPieceDef(text: 'Recommend next steps based on the winners', isCorrect: false),
            ],
            coachingNote:
                'Category maxima are dangerous when coverage gaps are hidden. Force missing-data handling plus a coverage note to keep leadership from over-reading the table.',
            assembledPromptExample:
                'Make a Category/Highest Value table using only provided rows, preserve names, mark missing coverage as [Insufficient data], and add a one-line coverage note.',
            feedbackWhenCorrect:
                'You now control comparability risk - that coverage line is what keeps the table decision-safe.',
            resultPolishedPrompt:
                'Build a two-column table (Category, Highest Value) with maxima per category from provided data only. Preserve category names; handle missing coverage explicitly; add a one-line coverage caveat.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Analyze Data Without Making Things Up',
      scenarios: [
        ScenarioDef(
          title: 'Turn Monthly Numbers Into Observations You Can Defend',
          situation:
              'You\'re asked to summarize monthly performance quickly. The audience wants signal, but you can\'t afford invented causes.\n\nIf you get this wrong, you will repeat a claim in a meeting that the sheet can\'t support.\n\nIf you prompt AI weakly, it usually:\n- restates the dataset\n- invents explanations\n- blurs facts and implications\n\nThis is why your prompt fails:\n- no boundaries on what counts as evidence\n- no structure for trend vs. anomaly\n- no expectation for concise, defensible output\n\nMost people ask for insights and get storytelling.\n\nTo get a usable result, your prompt must define:\n- Context - monthly KPI values requiring a fast summary\n- Objective - extract trend, one anomaly, and one stability signal\n- Requirements - 3-5 bullets; facts only; no invented causes\n- Expectations - paste-ready observations for a leadership update',
          prompt:
              'From these monthly values, write 3-5 paste-ready bullets with: (1) the overall trend you can see, (2) one notable dip/spike, and (3) one stability signal if present. Use only the provided numbers as evidence. Do not invent causes, recommendations, or predictions.',
          output:
              '**Observations (numbers only)**\n- Overall trend is upward across the later months compared to early months.\n- Notable anomaly: February is the lowest point relative to surrounding months.\n- April is the highest observed value in the period.\n- Month-to-month movement is moderate aside from the February dip.\n\nNotice how the bullets are defensible: the prompt banned why and forced observable signal.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is evidence boundaries: you forced observation, not explanation.\n- Objective targets trend + anomaly + stability\n- Requirements lock format and ban causes/predictions\n- Expectations keep it paste-ready for leadership',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nGive me insights from these numbers\n\nStrong prompt:\nFrom these monthly values, write 3-5 paste-ready bullets with: (1) the overall trend you can see, (2) one notable dip/spike, and (3) one stability signal if present. Use only the provided numbers as evidence. Do not invent causes, recommendations, or predictions.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMonthly KPI values needing fast summary\n\nO - Objective\nExtract trend, anomaly, and stability signal\n\nR - Requirements\n3-5 bullets; evidence-only; no invented causes/predictions\n\nE - Expectations\nPaste-ready observations for leadership update',
            ),
          ],
          proTip:
              'If you don\'t explicitly ban causes, AI will add them because it sounds helpful. In data work, helpful is how misinformation sneaks in.',
          takeaway: 'Insights without evidence boundaries are just stories.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a defensible observations prompt.',
            pieces: [
              PromptPieceDef(text: 'Require a fixed bullet count (3-5)', isCorrect: true),
              PromptPieceDef(text: 'Require trend + one anomaly + one stability signal', isCorrect: true),
              PromptPieceDef(text: 'Use only provided numbers as evidence', isCorrect: true),
              PromptPieceDef(text: 'Forbid invented causes/predictions', isCorrect: true),
              PromptPieceDef(text: 'Expect paste-ready wording', isCorrect: true),
              PromptPieceDef(text: 'Explain why February dipped', isCorrect: false),
              PromptPieceDef(text: 'Recommend next actions', isCorrect: false),
              PromptPieceDef(text: 'Rewrite all numbers as a paragraph', isCorrect: false),
              PromptPieceDef(text: 'Add confidence ratings for each insight', isCorrect: false),
              PromptPieceDef(text: 'Make the tone persuasive and urgent', isCorrect: false),
            ],
            coachingNote:
                'The strongest analysis prompt is often a constraint prompt. Force what counts as evidence and ban invented explanations.',
            assembledPromptExample:
                'Write 3-5 evidence-only observation bullets covering trend, one anomaly, and one stability signal. No causes, no predictions.',
            feedbackWhenCorrect:
                'You now control evidence boundaries - that\'s how you produce insights you can defend.',
            resultPolishedPrompt:
                'Produce 3-5 paste-ready observation bullets from these monthly values covering the overall trend, one notable dip/spike, and one stability signal (if present). Use numbers only; no invented causes, recommendations, or predictions.',
          ),
        ),
        ScenarioDef(
          title: 'Compare Two Periods With Clear Wins/Losses (No Cause Guessing)',
          situation:
              'You need to compare two periods for a weekly review. The team wants wins and regressions, but leadership hates speculation.\n\nIf you invent a narrative, you will spend the meeting defending a guess instead of deciding.\n\nIf you prompt AI weakly, it usually:\n- averages away meaningful changes\n- adds implied causes\n- overstates improvement\n\nThis is why your prompt fails:\n- no structure for improved/declined/stable\n- no constraints on claims\n- no expectation to cite what changed\n\nMost people ask for a comparison and forget to require what-changed language.\n\nTo get a usable result, your prompt must define:\n- Context - two-period performance review\n- Objective - list improved/declined/stable signals\n- Requirements - 3-5 bullets; evidence-only; no causes\n- Expectations - paste-ready comparison for a review agenda',
          prompt:
              'Compare Period 1 vs Period 2 and return 3-5 paste-ready bullets grouped as Improved, Declined, Stable. Use only the provided numbers. Do not invent causes. Keep wording specific to what changed.',
          output:
              '**Period Comparison (evidence-only)**\n- Improved: Sales are higher in Period 2 than Period 1 in the provided values.\n- Declined: Ticket volume is lower in Period 2 than Period 1.\n- Stable: Engagement shows minimal change across the two periods.\n\nThis is where you can see control: the prompt forces change-language instead of story-language.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is comparison scaffolding: you forced Improved/Declined/Stable and banned causes.\n- Objective targets change detection\n- Requirements enforce evidence-only grouped output\n- Expectations make it agenda-ready',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCompare these two periods\n\nStrong prompt:\nCompare Period 1 vs Period 2 and return 3-5 paste-ready bullets grouped as Improved, Declined, Stable. Use only the provided numbers. Do not invent causes. Keep wording specific to what changed.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nTwo-period performance review\n\nO - Objective\nIdentify improved/declined/stable signals\n\nR - Requirements\n3-5 grouped bullets; evidence-only; no causes\n\nE - Expectations\nPaste-ready comparison for review agenda',
            ),
          ],
          proTip:
              'If you don\'t force what-changed language, AI will default to why-it-changed language. That\'s the moment it stops being analysis and starts being fiction.',
          takeaway:
              'Good comparisons are structured; great comparisons are claim-disciplined.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a clean, evidence-only period comparison prompt.',
            pieces: [
              PromptPieceDef(text: 'Require Improved/Declined/Stable grouping', isCorrect: true),
              PromptPieceDef(text: 'Use only provided numbers', isCorrect: true),
              PromptPieceDef(text: 'Forbid invented causes', isCorrect: true),
              PromptPieceDef(text: 'Keep output to 3-5 bullets', isCorrect: true),
              PromptPieceDef(text: 'Expect paste-ready phrasing for an agenda', isCorrect: true),
              PromptPieceDef(text: 'Predict next period performance', isCorrect: false),
              PromptPieceDef(text: 'Explain root causes for the declines', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations automatically', isCorrect: false),
              PromptPieceDef(text: 'Rewrite the numbers as a narrative', isCorrect: false),
              PromptPieceDef(text: 'Include emotional tone to motivate the team', isCorrect: false),
            ],
            coachingNote:
                'Comparisons get risky when prompts allow causes. Force grouped change signals and keep language anchored to what the numbers show.',
            assembledPromptExample:
                'Compare Period 1 vs Period 2 with 3-5 grouped bullets: Improved/Declined/Stable. Evidence-only; no causes; paste-ready.',
            feedbackWhenCorrect:
                'You now control comparison clarity - the grouping is what makes it decision-useful without speculation.',
            resultPolishedPrompt:
                'Produce 3-5 paste-ready bullets comparing Period 1 vs Period 2 grouped as Improved, Declined, Stable. Use only provided numbers; no invented causes; focus on what changed.',
          ),
        ),
        ScenarioDef(
          title: 'Summarize KPIs With Controlled Tone (No Shaming, No Spin)',
          situation:
              'You\'re writing a KPI summary that will be shared cross-team. Tone matters: too harsh creates defensiveness, too soft hides risk.\n\nIf the tone is wrong, trust erodes and the numbers become political.\n\nIf you prompt AI weakly, it usually:\n- spins weaknesses as positives\n- sounds judgmental\n- invents reasons for performance\n\nThis is why your prompt fails:\n- no tone constraints\n- no rule for facts-first structure\n- no expectation to separate strengths vs risks\n\nMost people ask for a summary and forget tone control.\n\nTo get a usable result, your prompt must define:\n- Context - cross-team KPI snapshot\n- Objective - state strengths and risks neutrally\n- Requirements - 3-5 bullets; controlled tone; no invented causes\n- Expectations - forward-safe summary that is honest without blame',
          prompt:
              'Write a cross-team KPI snapshot in 3-5 bullets. Include one strength, one risk/weakness, and one notable value. Keep tone controlled and professional (no blame, no spin). Use only the provided KPI values; do not invent causes or recommendations.',
          output:
              '**KPI Snapshot (controlled tone)**\n- Strength: Customer satisfaction is the highest KPI at 92%.\n- Risk: Ticket resolution time is the lowest KPI at 38%.\n- Notable: Engagement sits mid-range at 67%.\n\nNotice how the summary is honest without being emotional - tone control is part of Requirements.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is tone constraints plus scope: you forced honest structure without speculation.\n- Objective targets strength + risk + notable\n- Requirements lock bullet count, tone, and evidence-only language\n- Expectations keep it forward-safe across teams',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise these KPIs\n\nStrong prompt:\nWrite a cross-team KPI snapshot in 3-5 bullets. Include one strength, one risk/weakness, and one notable value. Keep tone controlled and professional (no blame, no spin). Use only the provided KPI values; do not invent causes or recommendations.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCross-team KPI snapshot where tone matters\n\nO - Objective\nCommunicate strengths and risks neutrally\n\nR - Requirements\n3-5 bullets; controlled tone; evidence-only; no invented causes\n\nE - Expectations\nForward-safe honesty without blame',
            ),
          ],
          proTip:
              'If you don\'t specify tone, AI will choose one for you. In cross-team reporting, tone is part of data accuracy because it changes how people act.',
          takeaway: 'Control the tone or the data becomes politics.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a controlled-tone, evidence-only KPI snapshot prompt.',
            pieces: [
              PromptPieceDef(text: 'Require 3-5 bullets', isCorrect: true),
              PromptPieceDef(text: 'Require one strength, one risk, and one notable value', isCorrect: true),
              PromptPieceDef(text: 'Specify controlled professional tone (no blame/spin)', isCorrect: true),
              PromptPieceDef(text: 'Use only provided KPI values', isCorrect: true),
              PromptPieceDef(text: 'Forbid invented causes or recommendations', isCorrect: true),
              PromptPieceDef(text: 'Use motivational language to inspire the team', isCorrect: false),
              PromptPieceDef(text: 'Explain why resolution time is low', isCorrect: false),
              PromptPieceDef(text: 'Add predictions for next quarter', isCorrect: false),
              PromptPieceDef(text: 'Turn it into a long narrative summary', isCorrect: false),
              PromptPieceDef(text: 'Make it persuasive and urgent', isCorrect: false),
            ],
            coachingNote:
                'Tone is a requirement, not a nice-to-have. Define structure (strength/risk/notable), keep bullets tight, and ban invented causes to avoid politicized reporting.',
            assembledPromptExample:
                'Write a 3-5 bullet KPI snapshot with one strength, one risk, one notable value. Controlled professional tone; use provided values only; no causes or recommendations.',
            feedbackWhenCorrect:
                'You now control cross-team tone and truth - that\'s how you communicate risk without creating defensiveness.',
            resultPolishedPrompt:
                'Create a 3-5 bullet cross-team KPI snapshot including one strength, one risk, and one notable value. Keep tone controlled and professional. Use only provided KPI values; no invented causes or recommendations.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Make Charts and Narratives Decision-Safe',
      scenarios: [
        ScenarioDef(
          title: 'Choose a Chart Type Based on the Decision, Not Preference',
          situation:
              'You need a chart recommendation for a slide. The wrong chart will make the audience see the wrong pattern.\n\nIf the chart choice is wrong, you get challenged in the meeting and lose time defending the slide.\n\nIf you prompt AI weakly, it usually:\n- recommends a generic chart\n- ignores what decision the chart supports\n- gives reasons that sound right but aren\'t aligned to the goal\n\nThis is why your prompt fails:\n- no decision context\n- no constraint on output shape\n- no expectation for trade-offs\n\nMost people ask best chart type without stating what the chart is meant to prove.\n\nTo get a usable result, your prompt must define:\n- Context - chart for a slide with a specific decision goal\n- Objective - pick the chart that best reveals the intended signal\n- Requirements - recommend one chart, one sentence rationale, and one caveat\n- Expectations - slide-ready guidance without design fluff',
          prompt:
              'Recommend one chart type to show the trend in these monthly values for a leadership slide. In one sentence, explain why it best supports a trend-reading decision. Add one short caveat about what the chart will not show well. Do not add design advice or extra chart options.',
          output:
              'Use a line chart: it makes month-to-month direction and inflection points easiest to read at a glance for trend decisions. Caveat: it won\'t show category composition or drivers without additional series.\n\nNotice how the answer is decision-aligned, not preference-aligned - the prompt required a caveat and banned fluff.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is decision framing: chart advice is only useful when it\'s tied to what someone must decide.\n- Objective targets trend reading\n- Requirements force one option, one rationale, one caveat\n- Expectations keep it slide-ready and non-fluffy',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhat chart should I use?\n\nStrong prompt:\nRecommend one chart type to show the trend in these monthly values for a leadership slide. In one sentence, explain why it best supports a trend-reading decision. Add one short caveat about what the chart will not show well. Do not add design advice or extra chart options.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nChart recommendation for leadership slide\n\nO - Objective\nChoose chart that best supports trend-reading decision\n\nR - Requirements\nOne chart; one-sentence rationale; one caveat; no extra options\n\nE - Expectations\nSlide-ready guidance without fluff',
            ),
          ],
          proTip:
              'If you don\'t force a caveat, you get fake certainty. Great chart recommendations include what the chart hides.',
          takeaway: 'A chart choice without a caveat is a confidence bug.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a decision-aligned chart recommendation prompt.',
            pieces: [
              PromptPieceDef(text: 'Provide decision context (trend-reading for leadership)', isCorrect: true),
              PromptPieceDef(text: 'Require exactly one chart recommendation', isCorrect: true),
              PromptPieceDef(text: 'Require a one-sentence rationale', isCorrect: true),
              PromptPieceDef(text: 'Require a short caveat', isCorrect: true),
              PromptPieceDef(text: 'Ban design advice and extra options', isCorrect: true),
              PromptPieceDef(text: 'Suggest three alternative charts to choose from', isCorrect: false),
              PromptPieceDef(text: 'Add colors and styling recommendations', isCorrect: false),
              PromptPieceDef(text: 'Explain the history of line charts', isCorrect: false),
              PromptPieceDef(text: 'Predict the next month based on the trend', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations for improving the numbers', isCorrect: false),
            ],
            coachingNote:
                'Chart prompts feel generic unless you anchor them to the decision and force a caveat. One option, one rationale, one limitation keeps it credible.',
            assembledPromptExample:
                'Recommend one chart type for a leadership trend slide with one-sentence rationale and one caveat. No design advice, no extra options.',
            feedbackWhenCorrect:
                'You now control chart advice quality - the caveat is what makes it credible in real meetings.',
            resultPolishedPrompt:
                'Choose one chart type to show the trend in these monthly values for a leadership slide. Give one-sentence rationale tied to the decision and one short caveat. No design tips, no extra chart options.',
          ),
        ),
        ScenarioDef(
          title: 'Produce Chart-Ready Labels and Series Without Reformatting Mistakes',
          situation:
              'You need to paste labels and values into a chart quickly, but the input list mixes labels, values, and stray punctuation.\n\nIf you paste this wrong, your chart is wrong - and the slide is wrong.\n\nIf you prompt AI weakly, it usually:\n- reorders values\n- "cleans" labels by changing names\n- mixes labels and values in one blob\n\nThis is why your prompt fails:\n- no rule to preserve order\n- no rule to keep labels exact\n- no expectation for two separate lists\n\nMost people ask for chart prep and forget to ban reordering.\n\nTo get a usable result, your prompt must define:\n- Context - messy list needing chart-ready extraction\n- Objective - extract labels and values in matching order\n- Requirements - preserve original order and exact labels\n- Expectations - two lists you can paste into a chart without fixing',
          prompt:
              'Extract chart-ready inputs from this list as two blocks: Labels and Values. Preserve the original row order and preserve label text exactly. Do not add commentary, do not reorder, and do not change numbers.',
          output:
              '**Labels**\n- North\n- South\n- East\n- West\n\n**Values**\n- 128,400\n- 113,900\n- 142,300\n- 121,700\n\nNotice how order preservation is the real control point - it prevents a clean-looking but incorrect chart.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is alignment: charts break when labels and series get out of sync.\n- Objective targets extraction, not cleanup\n- Requirements preserve order and exact labels\n- Expectations deliver paste-ready blocks',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this chart-ready\n\nStrong prompt:\nExtract chart-ready inputs from this list as two blocks: Labels and Values. Preserve the original row order and preserve label text exactly. Do not add commentary, do not reorder, and do not change numbers.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMessy list needing chart inputs\n\nO - Objective\nExtract labels and values in matching order\n\nR - Requirements\nPreserve order; preserve exact label text; no number changes\n\nE - Expectations\nTwo paste-ready blocks: Labels and Values',
            ),
          ],
          proTip:
              'Most people ask for clean chart data and accidentally invite reordering. In charts, order is truth.',
          takeaway: 'If labels and values aren\'t aligned, the chart is misinformation.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a reliable chart-prep extraction prompt.',
            pieces: [
              PromptPieceDef(text: 'Output separate Labels and Values blocks', isCorrect: true),
              PromptPieceDef(text: 'Preserve original row order', isCorrect: true),
              PromptPieceDef(text: 'Preserve label text exactly', isCorrect: true),
              PromptPieceDef(text: 'Do not change numbers', isCorrect: true),
              PromptPieceDef(text: 'Ban commentary and extra suggestions', isCorrect: true),
              PromptPieceDef(text: 'Alphabetize labels for readability', isCorrect: false),
              PromptPieceDef(text: 'Standardize labels to shorter names', isCorrect: false),
              PromptPieceDef(text: 'Add a suggested chart type', isCorrect: false),
              PromptPieceDef(text: 'Round values aggressively to simplify', isCorrect: false),
              PromptPieceDef(text: 'Reorder values from highest to lowest', isCorrect: false),
            ],
            coachingNote:
                'Chart prep is mostly about alignment discipline. Separate blocks, preserve order, preserve labels, and ban reformatting that changes meaning.',
            assembledPromptExample:
                'Extract Labels and Values blocks preserving original order and exact label text. No number changes, no commentary.',
            feedbackWhenCorrect:
                'You now control chart accuracy - alignment rules are what prevent silent chart errors.',
            resultPolishedPrompt:
                'Create two paste-ready blocks: Labels and Values. Preserve original row order and exact label text; do not change numbers; no commentary.',
          ),
        ),
        ScenarioDef(
          title: 'Write a Chart Caption That Signals Uncertainty Without Undermining Confidence',
          situation:
              'You need a short caption above a chart. The trend is real, but there\'s a caveat and you need to signal it without weakening the message.\n\nIf you get this wrong, the slide either overclaims or gets ignored.\n\nIf you prompt AI weakly, it usually:\n- writes generic trend language\n- adds causes\n- ignores uncertainty\n\nThis is why your prompt fails:\n- no constraint on length\n- no rule for what we know vs. what we don\'t\n- no tone control\n\nMost people ask for a caption and forget to require an uncertainty clause.\n\nTo get a usable result, your prompt must define:\n- Context - caption above a decision chart\n- Objective - state the visible pattern and one uncertainty caveat\n- Requirements - 1-2 sentences; numbers-only; no causes\n- Expectations - slide-ready caption that is confident and honest',
          prompt:
              'Write a 1-2 sentence caption for this chart. State the visible trend based on provided values only, and add one short caveat about what the chart does not confirm. Do not invent causes or recommendations.',
          output:
              'The values trend upward overall, ending at the highest point in the period. Caveat: the chart shows pattern, not cause or completeness of underlying drivers.\n\nThis is where you can see expert framing: a caption that is confident and honest at the same time.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is confident honesty: you required trend + caveat without inviting causes.\n- Objective targets pattern + limitation\n- Requirements lock 1-2 sentences and evidence-only language\n- Expectations keep it slide-ready and credible',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a caption for this chart\n\nStrong prompt:\nWrite a 1-2 sentence caption for this chart. State the visible trend based on provided values only, and add one short caveat about what the chart does not confirm. Do not invent causes or recommendations.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCaption above a decision chart\n\nO - Objective\nState pattern and one uncertainty caveat\n\nR - Requirements\n1-2 sentences; evidence-only; no causes/recommendations\n\nE - Expectations\nSlide-ready caption that is confident and honest',
            ),
          ],
          proTip:
              'Captions fail when they overclaim. One controlled caveat is what prevents your slide from becoming a debate.',
          takeaway: 'A good caption sells clarity; a great caption protects trust.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a slide-ready, decision-safe chart caption prompt.',
            pieces: [
              PromptPieceDef(text: 'Limit caption to 1-2 sentences', isCorrect: true),
              PromptPieceDef(text: 'Require trend statement based on provided values only', isCorrect: true),
              PromptPieceDef(text: 'Require one short caveat/limitation clause', isCorrect: true),
              PromptPieceDef(text: 'Forbid invented causes or recommendations', isCorrect: true),
              PromptPieceDef(text: 'Expect slide-ready wording', isCorrect: true),
              PromptPieceDef(text: 'Explain why the trend happened', isCorrect: false),
              PromptPieceDef(text: 'Add motivational language', isCorrect: false),
              PromptPieceDef(text: 'Include multiple caveats and disclaimers', isCorrect: false),
              PromptPieceDef(text: 'Add design tips for the chart', isCorrect: false),
              PromptPieceDef(text: 'Predict future values', isCorrect: false),
            ],
            coachingNote:
                'Decision-safe captions require two things: a visible pattern and a controlled limitation. Keep it short, evidence-only, and ban causes.',
            assembledPromptExample:
                'Write a 1-2 sentence caption stating the visible trend and one caveat. Evidence-only; no causes; slide-ready.',
            feedbackWhenCorrect:
                'You now write chart captions that hold up under scrutiny - that caveat is what keeps them credible.',
            resultPolishedPrompt:
                'Create a 1-2 sentence chart caption stating the visible trend from provided values and one short caveat about what is not confirmed. No invented causes or recommendations; slide-ready.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Create Reusable Data Prompts (Automation-Ready)',
      scenarios: [
        ScenarioDef(
          title: 'Design a Reusable Data Cleaning Prompt With Guardrails',
          situation:
              'You receive messy datasets regularly and you need consistent cleaning without rewriting instructions each time.\n\nIf the cleaning rules drift, your downstream analysis becomes inconsistent and nobody can reproduce the numbers.\n\nIf you prompt AI weakly, it usually:\n- fixes content instead of formatting\n- changes meaning while cleaning\n- hides what it changed\n\nThis is why your prompt fails:\n- no explicit do-not-change list\n- no output expectations\n- no audit note\n\nMost people ask for cleaning steps and forget to ban meaning changes.\n\nTo get a usable result, your prompt must define:\n- Context - reusable cleaning workflow for recurring datasets\n- Objective - normalize formatting while preserving meaning\n- Requirements - explicit cleaning rules plus strict non-edit boundaries\n- Expectations - reusable prompt with placeholders and an audit reminder',
          prompt:
              'Create a reusable prompt that cleans spreadsheet data with these rules: trim extra spaces in all text fields, normalize capitalization to Title Case (preserve acronyms), and replace missing/blank values with [Missing]. Do not change meaning or rewrite content. Include a [Data] placeholder and end with: "List any changes beyond formatting as [Needs review]."',
          output:
              '**Reusable Prompt - Safe Data Cleaning**\n\nClean [Data] using these rules:\n1) Trim leading/trailing and duplicate internal spaces in text fields.\n2) Normalize capitalization to Title Case (preserve acronyms).\n3) Replace blank/null cells with [Missing].\n\nGuardrails:\n- Do not rewrite content or infer missing information.\n- Do not change numeric values.\n\nAfter output, include: "List any changes beyond formatting as [Needs review]."\n\nNotice how guardrails are explicit - that\'s what keeps cleaning from becoming data editing.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is guardrails: reusable cleaning prompts fail when they allow meaning edits.\n- Objective targets normalization, not rewriting\n- Requirements specify rules + do-not-change boundaries\n- Expectations include a placeholder and audit reminder for repeatable use',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this data cleaner\n\nStrong prompt:\nCreate a reusable prompt that cleans spreadsheet data with these rules: trim extra spaces in all text fields, normalize capitalization to Title Case (preserve acronyms), and replace missing/blank values with [Missing]. Do not change meaning or rewrite content. Include a [Data] placeholder and end with: "List any changes beyond formatting as [Needs review]."',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nReusable cleaning workflow for recurring datasets\n\nO - Objective\nNormalize formatting while preserving meaning\n\nR - Requirements\nExplicit cleaning steps + strict do-not-change boundaries\n\nE - Expectations\nReusable prompt with [Data] placeholder and audit reminder',
            ),
          ],
          proTip:
              'Most people think cleaning is harmless. It isn\'t. If you don\'t ban meaning edits, AI will improve your dataset and you won\'t notice until something breaks.',
          takeaway: 'Cleaning without guardrails is silent data corruption.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a safe, reusable data-cleaning prompt.',
            pieces: [
              PromptPieceDef(text: 'Define exact cleaning rules (spaces/case/missing)', isCorrect: true),
              PromptPieceDef(text: 'Forbid meaning changes or rewriting', isCorrect: true),
              PromptPieceDef(text: 'Preserve numeric values explicitly', isCorrect: true),
              PromptPieceDef(text: 'Include a reusable [Data] placeholder', isCorrect: true),
              PromptPieceDef(text: 'Require an audit reminder or review flag', isCorrect: true),
              PromptPieceDef(text: 'Infer missing values when possible', isCorrect: false),
              PromptPieceDef(text: 'Standardize categories by renaming them', isCorrect: false),
              PromptPieceDef(text: 'Fix typos by rewriting text freely', isCorrect: false),
              PromptPieceDef(text: 'Add new columns for enrichment', isCorrect: false),
              PromptPieceDef(text: 'Recommend tools to clean the data', isCorrect: false),
            ],
            coachingNote:
                'Reusable cleaning prompts must protect meaning. Specify the rules, ban content edits, and add an audit reminder so changes don\'t become invisible.',
            assembledPromptExample:
                'Create a reusable cleaning prompt for [Data] with trim spaces, Title Case (preserve acronyms), [Missing] for blanks, no meaning changes, and an audit reminder.',
            feedbackWhenCorrect:
                'You now control repeatable data hygiene without corruption - that is operator-level reuse.',
            resultPolishedPrompt:
                'Write a reusable prompt to clean [Data] by trimming spaces, normalizing capitalization to Title Case (preserve acronyms), and replacing blanks with [Missing]. Do not rewrite content or change numeric values. Include an audit reminder for anything beyond formatting.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Reusable Formatting Prompt That Doesn\'t Change Values',
          situation:
              'You need consistent formatting across spreadsheets (dates, currency, separators) without altering underlying values.\n\nIf formatting changes values, your report becomes untrustworthy.\n\nIf you prompt AI weakly, it usually:\n- rounds numbers without permission\n- changes date meaning across regions\n- fixes currency inconsistently\n\nThis is why your prompt fails:\n- no rule for preserving decimals\n- no rule for date interpretation\n- no expectation to flag ambiguous formats\n\nMost people ask for standard formatting and forget that dates can be ambiguous.\n\nTo get a usable result, your prompt must define:\n- Context - reusable formatting for reports\n- Objective - standardize display without changing values\n- Requirements - date format, number separators, currency rules, and ambiguity flags\n- Expectations - reusable prompt with placeholders and review notes',
          prompt:
              'Create a reusable prompt that standardizes formatting for [Data] without changing values: numbers with thousand separators (preserve decimals), dates to YYYY-MM-DD (flag ambiguous dates like 03/04/2026 as [Ambiguous]), and currency with a single specified symbol. Do not round, do not infer missing dates, and include a [Currency] placeholder.',
          output:
              '**Reusable Prompt - Safe Formatting**\n\nFormat [Data] using these rules (display only; values unchanged):\n- Numbers: add thousand separators; preserve existing decimal precision.\n- Dates: convert to YYYY-MM-DD; if a date is ambiguous (e.g., 03/04/2026), flag as [Ambiguous] instead of guessing.\n- Currency: use [Currency] consistently; do not convert amounts.\n\nDo not round values. Do not infer missing dates.\n\nThis is where you can see control: ambiguity is flagged instead of being guessed into your report.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is value integrity: formatting prompts fail when they allow rounding or date guessing.\n- Objective targets display standardization only\n- Requirements preserve decimals and force ambiguity flags\n- Expectations make it reusable with placeholders',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nFormat this spreadsheet\n\nStrong prompt:\nCreate a reusable prompt that standardizes formatting for [Data] without changing values: numbers with thousand separators (preserve decimals), dates to YYYY-MM-DD (flag ambiguous dates like 03/04/2026 as [Ambiguous]), and currency with a single specified symbol. Do not round, do not infer missing dates, and include a [Currency] placeholder.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nReusable formatting for reports\n\nO - Objective\nStandardize display without changing values\n\nR - Requirements\nPreserve decimals; YYYY-MM-DD dates; flag ambiguity; consistent currency symbol\n\nE - Expectations\nReusable prompt with placeholders and review notes',
            ),
          ],
          proTip:
              'Formatting errors are credibility errors. If you don\'t ban rounding and date guessing, AI will help your report into being wrong.',
          takeaway: 'Never trade readability for integrity.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a safe, reusable formatting prompt.',
            pieces: [
              PromptPieceDef(text: 'Preserve numeric values and decimals (no rounding)', isCorrect: true),
              PromptPieceDef(text: 'Standardize dates to YYYY-MM-DD', isCorrect: true),
              PromptPieceDef(text: 'Flag ambiguous dates instead of guessing', isCorrect: true),
              PromptPieceDef(text: 'Use a consistent currency symbol via placeholder', isCorrect: true),
              PromptPieceDef(text: 'State display-only; values unchanged', isCorrect: true),
              PromptPieceDef(text: 'Convert currencies to a common base', isCorrect: false),
              PromptPieceDef(text: 'Round numbers to make them cleaner', isCorrect: false),
              PromptPieceDef(text: 'Assume US date format for all ambiguous dates', isCorrect: false),
              PromptPieceDef(text: 'Infer missing dates from context', isCorrect: false),
              PromptPieceDef(text: 'Add commentary explaining the data', isCorrect: false),
            ],
            coachingNote:
                'Safe formatting requires explicit integrity rules: no rounding, no date guessing, and ambiguity flags. Otherwise you silently change meaning.',
            assembledPromptExample:
                'Create a reusable formatting prompt for [Data] that standardizes number separators, dates (YYYY-MM-DD with ambiguity flags), and currency symbol without changing values.',
            feedbackWhenCorrect:
                'You now control report integrity - the ambiguity flag is what keeps formatting from becoming fiction.',
            resultPolishedPrompt:
                'Write a reusable prompt to format [Data] for reports: thousand separators with preserved decimals, dates to YYYY-MM-DD with [Ambiguous] flags, and a consistent [Currency] symbol. Display-only; no rounding; no guessing.',
          ),
        ),
        ScenarioDef(
          title: 'Define an Automation Workflow That Surfaces Risk Instead of Hiding It',
          situation:
              'You want a reusable workflow to sort, filter, and summarize data, but automation can hide critical rows if rules are vague.\n\nIf the workflow hides exclusions, you ship a clean summary that omits the risk.\n\nIf you prompt AI weakly, it usually:\n- filters aggressively\n- adds summary rows without stating what was excluded\n- turns rules into assumptions\n\nThis is why your prompt fails:\n- no explicit exclusion logic\n- no requirement to report what was filtered out\n- no expectation for an audit summary\n\nMost people automate for neatness, not for truth.\n\nTo get a usable result, your prompt must define:\n- Context - reusable spreadsheet automation workflow\n- Objective - sort/filter/summarize while preserving auditability\n- Requirements - explicit filter rules and exclusion reporting\n- Expectations - workflow steps plus an audit summary output',
          prompt:
              'Create a reusable automation workflow for [Data] with three steps: (1) sort by a specified column, (2) filter out rows matching an explicit exclusion rule, and (3) add a summary row with totals or averages for specified columns. Require an Audit Summary after the workflow describing what was excluded (count + rule) and what was summarized. Do not change any non-summary values.',
          output:
              '**Reusable Workflow - Sort / Filter / Summarize (auditable)**\n1) Sort [Data] by [Sort Column] in [Sort Order].\n2) Filter out rows where [Exclusion Rule].\n3) Add one Summary row calculating [Totals/Averages] for [Columns] only.\n\nAudit Summary (required):\n- Excluded rows: [count] (rule: [Exclusion Rule])\n- Summarized columns: [Columns] (method: [Totals/Averages])\n\nPay attention to the audit summary - that\'s what keeps automation from hiding what it removed.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is auditability: automation is dangerous when exclusions disappear.\n- Objective includes sort/filter/summarize plus visibility\n- Requirements force explicit rules and ban non-summary edits\n- Expectations add an audit summary so you can trust the output',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake an automation workflow for this sheet\n\nStrong prompt:\nCreate a reusable automation workflow for [Data] with three steps: (1) sort by a specified column, (2) filter out rows matching an explicit exclusion rule, and (3) add a summary row with totals or averages for specified columns. Require an Audit Summary after the workflow describing what was excluded (count + rule) and what was summarized. Do not change any non-summary values.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nReusable spreadsheet automation workflow\n\nO - Objective\nSort/filter/summarize while preserving auditability\n\nR - Requirements\nExplicit rules; no non-summary edits; required exclusion reporting\n\nE - Expectations\nWorkflow steps + Audit Summary output',
            ),
          ],
          proTip:
              'This is where people get burned: they automate the filter and stop seeing what disappeared. If you don\'t require an audit summary, you don\'t have control.',
          takeaway: 'Automation without auditability is just faster mistakes.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make this a safe, auditable spreadsheet automation workflow prompt.',
            pieces: [
              PromptPieceDef(text: 'Define explicit sort inputs via placeholders', isCorrect: true),
              PromptPieceDef(text: 'Define explicit filter/exclusion rule', isCorrect: true),
              PromptPieceDef(text: 'Restrict edits to summary row only', isCorrect: true),
              PromptPieceDef(text: 'Require an Audit Summary describing exclusions and summaries', isCorrect: true),
              PromptPieceDef(text: 'Make it reusable with [Data] and rule placeholders', isCorrect: true),
              PromptPieceDef(text: 'Filter out anything that looks unusual automatically', isCorrect: false),
              PromptPieceDef(text: 'Remove rows but do not mention them', isCorrect: false),
              PromptPieceDef(text: 'Add new columns to enrich the data', isCorrect: false),
              PromptPieceDef(text: 'Rewrite values to make them consistent', isCorrect: false),
              PromptPieceDef(text: 'Recommend tools instead of providing steps', isCorrect: false),
            ],
            coachingNote:
                'Reusable automation prompts should include an audit summary by default. Otherwise you get clean output with invisible exclusions.',
            assembledPromptExample:
                'Create a reusable sort/filter/summarize workflow with placeholders and a required Audit Summary (excluded count + rule, summarized columns + method). No edits beyond a summary row.',
            feedbackWhenCorrect:
                'You now control automation risk - audit summaries are what separate operators from spreadsheet gamblers.',
            resultPolishedPrompt:
                'Write a reusable workflow to sort by a specified column, filter by an explicit rule, and add a summary row for specified columns. Require an Audit Summary reporting excluded rows (count + rule) and summarized columns/method. Do not change non-summary values.',
          ),
        ),
      ],
    ),
  ];
}

```

### `lib\data\tracks\track4_presentations.dart`
```
import '../app_catalog.dart';

/// Track 4 – Presentations (lessons 1–5)
List<LessonDef> buildTrack4Lessons() {
  return [
    const LessonDef(
      title: 'Build a Decision-Ready Deck Narrative',
      scenarios: [
        ScenarioDef(
          title: 'Turn a Vague Request Into a Decision Deck Outline',
          situation:
              'A VP asks for “a quick deck” on the new onboarding process.\n\nThe real need is not slides - it is a decision: approve rollout timing and who owns what.\n\nIf this deck is fuzzy, leadership will walk away aligned on the wrong thing.\n\nIf you prompt AI weakly, it usually:\n- produces generic slide titles\n- hides the decision and the trade-offs\n- invents “benefits” you cannot defend\n\nThis is why your prompt fails:\n- no clear Objective (what decision this deck supports)\n- weak Requirements (what must remain visible vs. what must be excluded)\n- no Expectations for decision-ready structure\n\nMost people ask for “a 5-slide outline” and get a tidy deck that cannot drive a decision.\n\nTo get a usable result, your prompt must define:\n- Context - leadership needs a rollout decision deck for onboarding\n- Objective - make the decision, trade-offs, and ownership explicit\n- Requirements - slide-by-slide purpose, no invented claims, clear asks\n- Expectations - paste-ready outline with tight titles and bullets',
          prompt:
              'Create a 6-slide decision deck outline for leadership to approve the new onboarding rollout. Make the decision explicit. For each slide, provide a title and 3–5 bullets. Include: current problem signal, proposed approach, trade-offs/risks, rollout plan with owners, what leadership must decide today, and next steps. Do not invent metrics or benefits; if something is unknown, label it [TBD]. Keep it concise and executive-ready.',
          output:
              '**Slide 1 — Why this change (signal, not story)**\n- Current onboarding creates inconsistent ramp and duplicated “how we work” explanations\n- New hires rely on tribal knowledge; managers are improvising\n- Decision today: approve a single onboarding path + ownership model\n\n**Slide 2 — Proposed onboarding approach (what changes)**\n- One standard flow: Day 1 setup → Week 1 outcomes → Week 2 ramp targets\n- Centralized source of truth (single checklist + template pack)\n- Owner model: People Ops owns content; Function leads own role-specific inserts\n\n**Slide 3 — What this enables (without over-claiming)**\n- Clearer expectations for new hires and managers\n- Fewer ad‑hoc onboarding “rebuilds” across teams\n- Faster alignment on first‑week execution priorities\n\n**Slide 4 — Risks and trade-offs (keep visible)**\n- Risk: role-specific needs get lost if the standard template is too rigid\n- Trade-off: speed of rollout vs. time to collect feedback from each function\n- Mitigation: define what is “standard” vs. “role-specific” up front\n\n**Slide 5 — Rollout plan (who does what by when)**\n- Phase 1: draft standard checklist + template pack [Owner: People Ops] [TBD date]\n- Phase 2: function lead review + role-specific inserts [Owners: Function leads] [TBD date]\n- Phase 3: pilot with 1–2 teams, capture fixes, then scale [Owner: Program lead] [TBD date]\n\n**Slide 6 — Leadership decision + next steps**\n- Decide: approve standard flow scope (what is mandatory vs. optional)\n- Decide: confirm ownership model and reviewer list\n- Next: schedule pilot kickoff and commit review checkpoint cadence\n\nWhat matters here is the “decision slide”: the prompt forced the deck to drive an outcome, not just look organized.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is decision framing. You didn’t ask for “slides” - you defined the decision, the trade-offs that must stay visible, and the ownership model.\n- The Objective prevents generic outlines\n- Requirements ban invented metrics and force slide purposes\n- Expectations make the output paste-ready for leadership',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCreate a 5-slide outline about the new onboarding process\n\nStrong prompt:\nCreate a 6-slide decision deck outline for leadership to approve the new onboarding rollout. Make the decision explicit. For each slide, provide a title and 3–5 bullets. Include: current problem signal, proposed approach, trade-offs/risks, rollout plan with owners, what leadership must decide today, and next steps. Do not invent metrics or benefits; if something is unknown, label it [TBD]. Keep it concise and executive-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLeadership needs a rollout decision deck for onboarding\n\nO - Objective\nMake the decision, trade-offs, and ownership explicit\n\nR - Requirements\nSlide-by-slide purpose; include risks/trade-offs; no invented claims; label unknowns [TBD]\n\nE - Expectations\nExecutive-ready outline with tight titles and bullets',
            ),
          ],
          proTip:
              'If you don’t force a “Decision + Trade-offs” slide, the model will quietly turn your deck into marketing copy. Decision decks are not allowed to be inspirational.',
          takeaway:
              'If the deck doesn’t state the decision and the trade-offs, it is not a decision deck.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that force a decision-ready deck outline (not a generic slide list).',
            pieces: [
              PromptPieceDef(
                  text: 'Name the decision leadership must make today',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require a risks/trade-offs slide so uncertainty stays visible',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require owners for rollout steps (not just a timeline)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented metrics/benefits; label unknowns as [TBD]',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Specify slide-by-slide output shape (title + 3–5 bullets)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for “a persuasive deck that sells the change”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to add impressive statistics to build confidence',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI choose the number of slides and structure',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove risks to keep the deck “positive”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a full script for every slide with long paragraphs',
                  isCorrect: false),
            ],
            coachingNote:
                'Decision decks fail when the prompt optimizes for “nice slides” instead of decision signal. Lock the decision, force trade-offs to stay visible, and prevent invented certainty.',
            assembledPromptExample:
                'Create a 6-slide decision deck outline for leadership approval. Include a decision slide, a risks/trade-offs slide, rollout steps with owners, and ban invented metrics (use [TBD] for unknowns).',
            feedbackWhenCorrect:
                'You now control what leadership sees first: decision signal, not slide polish.',
            resultPolishedPrompt:
                'Draft a 6-slide executive decision deck outline to approve the onboarding rollout. Make the decision explicit; include risks/trade-offs; include rollout steps with owners; no invented claims; mark unknowns as [TBD]. For each slide: title + 3–5 bullets.',
          ),
        ),
        ScenarioDef(
          title: 'Convert Messy Inputs Into a Single Cohesive Story',
          situation:
              'You have messy inputs: meeting notes, Slack snippets, and a half-written doc about onboarding.\n\nYou need a deck outline that stays truthful while making the narrative coherent.\n\nIf you smooth this too much, you will erase the disagreement and ship false certainty.\n\nIf you prompt AI weakly, it usually:\n- “blends” conflicting statements into one confident claim\n- drops the caveats to make the story clean\n- creates a timeline that looks plausible but isn’t sourced\n\nThis is why your prompt fails:\n- no definition of what counts as confirmed vs. disputed\n- no Requirements for preserving open questions\n- no Expectations for an evidence-safe outline\n\nMost people ask for “a clean deck from these notes” and accidentally publish fiction.\n\nTo get a usable result, your prompt must define:\n- Context - fragmented notes with conflicts and gaps\n- Objective - produce a coherent outline without inventing consensus\n- Requirements - tag disputed items; keep open questions explicit\n- Expectations - a deck outline plus an “Unknowns” section',
          prompt:
              'Build a 7-slide outline from these messy inputs. For each slide: title + 3–5 bullets. Keep narrative coherent, but do not invent agreement: if inputs conflict, include both views and tag as [Disputed]. If something is missing, tag as [Unknown]. Include one slide called “Open Questions” and one slide called “Decision Needed”. Keep it executive-neutral and safe to forward.',
          output:
              '**Slide 1 — What we’re solving (signal)**\n- Onboarding quality varies by team; ramp expectations are inconsistent\n- Current materials are scattered across docs, Slack, and tribal knowledge\n- Goal: standardize the baseline without blocking role-specific needs\n\n**Slide 2 — What’s working today (confirmed)**\n- Existing checklist covers setup and access reliably\n- Teams that run a week-1 plan report fewer “where do I start?” questions [Unknown: quantified impact]\n\n**Slide 3 — What’s failing (inputs conflict)**\n- View A: the problem is missing structure; new hires need a clear week-by-week plan [Disputed]\n- View B: the problem is manager follow-through; templates won’t help without accountability [Disputed]\n- Shared point: ownership is unclear across functions\n\n**Slide 4 — Proposed baseline (what would be standardized)**\n- Standard Day 1–Week 2 flow + source-of-truth checklist\n- Role-specific inserts owned by function leads\n- Review checkpoint to prevent drift\n\n**Slide 5 — Open Questions (do not hide these)**\n- What is mandatory across all roles vs. optional?\n- Who approves role-specific inserts and on what cadence?\n- What does “ramp success” mean for each function? [Unknown]\n\n**Slide 6 — Decision Needed (make the ask explicit)**\n- Decide scope: baseline flow boundaries\n- Decide ownership: People Ops vs. function leads vs. program lead\n- Decide timeline: pilot-first vs. broad rollout\n\n**Slide 7 — Next Steps (safe, not invented)**\n- Consolidate current assets into one draft baseline\n- Schedule a 45-minute scope decision review\n- Identify 1–2 pilot teams and define success criteria [Unknown]\n\nThe difference is truth control: the prompt forced [Disputed]/[Unknown] tags so coherence didn’t turn into invented certainty.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'This is the control point: narrative coherence without consensus fabrication. You required explicit tagging for conflict and missing data.\n- Requirements stop “helpful smoothing”\n- Expectations add an Open Questions slide so risk stays visible\n- Objective produces a usable outline without pretending the inputs agree',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn these notes into a clean deck outline\n\nStrong prompt:\nBuild a 7-slide outline from these messy inputs. For each slide: title + 3–5 bullets. Keep narrative coherent, but do not invent agreement: if inputs conflict, include both views and tag as [Disputed]. If something is missing, tag as [Unknown]. Include one slide called “Open Questions” and one slide called “Decision Needed”. Keep it executive-neutral and safe to forward.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nFragmented notes with conflicts and gaps\n\nO - Objective\nCoherent deck outline without inventing consensus\n\nR - Requirements\nTag conflicts as [Disputed]; tag missing as [Unknown]; include Open Questions + Decision Needed\n\nE - Expectations\nExecutive-neutral, forward-safe outline',
            ),
          ],
          proTip:
              'If you don’t explicitly ban “merge the viewpoints,” the model will produce a single confident story. That’s how decks create fake alignment.',
          takeaway:
              'Coherence is not permission to invent certainty.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that prevent “clean deck” drift when inputs conflict.',
            pieces: [
              PromptPieceDef(
                  text: 'Require tagging conflicting claims as [Disputed]',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require tagging missing info as [Unknown]',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require an “Open Questions” slide to keep gaps visible',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require a “Decision Needed” slide so leadership knows the ask',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Set a fixed slide output shape (title + 3–5 bullets)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to “make it sound confident and aligned”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove caveats so the story feels clean',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI infer the timeline and owners from context',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Replace disputes with a single recommended view',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add inspirational framing and slogans',
                  isCorrect: false),
            ],
            coachingNote:
                'Messy input is where most users lose control. Your job is to preserve truth boundaries and make disagreement visible in a decision-ready way.',
            assembledPromptExample:
                'Build a 7-slide outline. Tag conflicts as [Disputed], missing as [Unknown], and include “Open Questions” + “Decision Needed”. Keep it executive-neutral.',
            feedbackWhenCorrect:
                'You now control truth boundaries under pressure - that’s what keeps decks credible.',
            resultPolishedPrompt:
                'Create a 7-slide executive outline from fragmented notes. Keep coherence without inventing agreement: tag conflicts [Disputed], missing info [Unknown]. Include “Open Questions” and “Decision Needed”. Title + 3–5 bullets per slide.',
          ),
        ),
        ScenarioDef(
          title: 'Write the Slide That Handles Politics Without Sounding Political',
          situation:
              'Two leaders disagree on how strict the onboarding standard should be.\n\nYou must present options without triggering defensiveness or accidentally taking sides.\n\nIf the tone is off, you will turn a solvable scope question into a turf fight.\n\nIf you prompt AI weakly, it usually:\n- picks a side implicitly\n- softens the trade-off until it’s meaningless\n- uses “nice” language that hides the real decision\n\nThis is why your prompt fails:\n- no Requirements for neutral tone while keeping stakes clear\n- no explicit options structure\n- no Expectations for decision-ready wording\n\nMost people try to “make it diplomatic” and end up making it vague.\n\nTo get a usable result, your prompt must define:\n- Context - stakeholder disagreement on standardization scope\n- Objective - present options, trade-offs, and recommendation safely\n- Requirements - neutral language, explicit trade-offs, no blame\n- Expectations - one slide with options + recommended decision framing',
          prompt:
              'Draft one executive slide titled “Scope Options” with three options for onboarding standardization. For each option: 2–3 bullets describing what it includes and the trade-off. Then add a short “Recommendation” section with one recommended option and the reasoning in neutral language. Do not assign blame, do not use emotional language, and do not hide the trade-offs. Keep it paste-ready.',
          output:
              '**Scope Options**\n\n**Option A — Standardize the baseline only**\n- Includes: Day 1 setup + Week 1 outcomes + shared checklist\n- Trade-off: faster rollout, but role-specific variance remains\n\n**Option B — Baseline + role-specific inserts (controlled)**\n- Includes: baseline flow + function-owned inserts reviewed on a set cadence\n- Trade-off: more coordination, but prevents drift while respecting differences\n\n**Option C — Full standardization across roles**\n- Includes: one unified flow with minimal role variance\n- Trade-off: strongest consistency, but higher risk of misfit and slower adoption\n\n**Recommendation**\n- Recommend Option B to balance consistency with function realities while keeping ownership explicit.\n\nPay attention to the control point: the prompt forced trade-offs into the slide so “neutral tone” didn’t become “non-committal.”',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The difference is structure under sensitivity: options + trade-offs + a neutral recommendation. You constrained tone without sacrificing decision clarity.\n- Requirements ban blame and vague softness\n- Expectations force a paste-ready slide that still commits\n- Objective keeps the outcome decision-focused, not debate-focused',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a diplomatic slide about onboarding scope\n\nStrong prompt:\nDraft one executive slide titled “Scope Options” with three options for onboarding standardization. For each option: 2–3 bullets describing what it includes and the trade-off. Then add a short “Recommendation” section with one recommended option and the reasoning in neutral language. Do not assign blame, do not use emotional language, and do not hide the trade-offs. Keep it paste-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nStakeholder disagreement on standardization scope\n\nO - Objective\nPresent options and recommendation without triggering politics\n\nR - Requirements\nNeutral tone; explicit trade-offs; no blame; no hidden downsides\n\nE - Expectations\nOne paste-ready slide: options + recommendation',
            ),
          ],
          proTip:
              '“Neutral tone” is not “no recommendation.” If you don’t force a recommendation structure, the model will dodge the decision to avoid conflict.',
          takeaway:
              'Diplomacy without trade-offs is just vagueness.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that produce a politically safe slide without hiding the real decision.',
            pieces: [
              PromptPieceDef(
                  text: 'Require multiple options with explicit trade-offs',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require a short recommendation section (one option + why)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban blame/emotional wording to keep tone controlled',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Force a paste-ready slide structure (title + bullets)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require trade-offs to stay visible (no “softening”)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to “handle the politics creatively”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Avoid mentioning trade-offs to keep everyone happy',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use strong persuasive language to win the room',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Only present one option so it’s “clear”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add humor to reduce tension',
                  isCorrect: false),
            ],
            coachingNote:
                'In tone-sensitive rooms, structure is your safety system. Options + trade-offs + a neutral recommendation keeps the discussion productive.',
            assembledPromptExample:
                'Create one slide with three scope options. For each: what it includes + trade-off. Add a neutral recommendation. No blame language; do not hide trade-offs.',
            feedbackWhenCorrect:
                'You now control sensitive decision framing without getting pulled into the politics.',
            resultPolishedPrompt:
                'Draft a single slide titled “Scope Options” with three options. For each: includes + trade-off. Add a short neutral “Recommendation” with one option and why. No blame, no emotional language, no hidden downsides.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Summarize Complex Work for Executives (No Drift)',
      scenarios: [
        ScenarioDef(
          title: 'Turn a Status Update Into an Executive Snapshot Slide',
          situation:
              'You need a one-slide update for an exec staff meeting.\n\nThe goal is signal: what is on track, what is at risk, and what decision (if any) is needed.\n\nIf this slide is vague, executives will assume the optimistic interpretation.\n\nIf you prompt AI weakly, it usually:\n- rewrites your update in nicer words\n- hides risk behind “progress language”\n- adds next steps that were never agreed\n\nThis is why your prompt fails:\n- no separation of facts vs. risk vs. decisions\n- no constraint against inventing actions\n- no Expectations for a single-slide format\n\nMost people ask for “a slide summary” and get a paragraph with bullets.\n\nTo get a usable result, your prompt must define:\n- Context - exec staff update with limited attention\n- Objective - compress to signal: status, risks, decisions\n- Requirements - one slide; labeled sections; no invented actions\n- Expectations - paste-ready slide text, not prose',
          prompt:
              'Convert this status update into a single executive slide with exactly these sections: Status (2 bullets), Risks (2 bullets), Decisions Needed (1 bullet), Next (1 bullet). Use only confirmed facts from the input. Do not invent actions or owners. Keep tone controlled and decision-ready.',
          output:
              '**Status**\n- Core workstream is progressing to plan against the current milestone\n- Key cross-functional handoffs are in motion; no confirmed blockers reported\n\n**Risks**\n- One dependency could affect sequencing if it slips again (confirm latest ETA) [TBD]\n- Risk visibility is uneven across teams; signal may be delayed without a checkpoint\n\n**Decisions Needed**\n- Confirm whether we accept the current sequencing risk or re-plan to de-risk\n\n**Next**\n- Publish a single dependency checkpoint with owner + ETA, then re-confirm timeline\n\nLook at how the labeled sections prevent drift: the prompt forced the model to separate facts, risks, and decisions instead of “making it sound good.”',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is signal separation. Executive slides fail when risk and decisions get blended into “status.”\n- Requirements enforce labeled sections and bullet counts\n- Objective forces decision signal, not rewrite\n- Expectations produce paste-ready slide text (not prose)',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this a slide summary for executives\n\nStrong prompt:\nConvert this status update into a single executive slide with exactly these sections: Status (2 bullets), Risks (2 bullets), Decisions Needed (1 bullet), Next (1 bullet). Use only confirmed facts from the input. Do not invent actions or owners. Keep tone controlled and decision-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nExec staff update with limited attention\n\nO - Objective\nCompress to signal: status, risks, decisions\n\nR - Requirements\nOne slide; fixed labeled sections; bullet counts; no invented actions/owners\n\nE - Expectations\nPaste-ready slide text, not prose',
            ),
          ],
          proTip:
              'If you don’t force a “Decisions Needed” section, the model will hide the ask inside a “Next steps” bullet. That’s how exec updates become unreadable.',
          takeaway:
              'Executive slides must separate signal: status, risk, decision, next.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that turn a status blob into a decision-ready exec slide.',
            pieces: [
              PromptPieceDef(
                  text: 'Require labeled sections (Status/Risks/Decisions/Next)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Fix bullet counts per section (forces compression)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented actions/owners (use input only)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require a “Decisions Needed” section explicitly',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Set expectation: paste-ready slide text, not prose',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for “a more positive tone”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI add helpful next steps automatically',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Allow the model to expand details for completeness',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for a narrative paragraph before the bullets',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove risk language to keep the slide upbeat',
                  isCorrect: false),
            ],
            coachingNote:
                'Your job is not to “summarize nicely.” Your job is to produce decision signal under a bullet budget and prevent the model from inventing progress.',
            assembledPromptExample:
                'Create one executive slide with labeled sections and fixed bullet counts. Use only confirmed facts. Include “Decisions Needed”. No invented actions or owners.',
            feedbackWhenCorrect:
                'You now control executive signal compression instead of shipping a polished status blob.',
            resultPolishedPrompt:
                'Rewrite this update into one executive slide with fixed sections and bullet counts: Status (2), Risks (2), Decisions Needed (1), Next (1). Input facts only; no invented actions/owners; paste-ready.',
          ),
        ),
        // Lessons 2–5 intentionally omitted in this snippet to keep patch size reasonable.
        // Full Track 4 upgrade continues below in the same style.
        ScenarioDef(
          title: 'Reconcile Conflicting Signals Into a Credible Exec Narrative',
          situation:
              'Different teams report different “truths”: one says on-track, another flags a dependency risk, a third says scope shifted.\n\nYou must produce an executive narrative that stays credible under scrutiny.\n\nIf you over-smooth conflict, leadership will assume stability that doesn’t exist.\n\nIf you prompt AI weakly, it usually:\n- collapses conflict into a single storyline\n- replaces risk with generic phrasing\n- invents a confident timeline to fill gaps\n\nThis is why your prompt fails:\n- no rule for handling conflicting inputs\n- no requirement to surface uncertainty explicitly\n- no expectation for executive-safe wording\n\nMost people try to “make it consistent” and accidentally remove the problem.\n\nTo get a usable result, your prompt must define:\n- Context - multi-team status with conflicting signals\n- Objective - reconcile without inventing agreement\n- Requirements - preserve conflict; mark unknowns; keep decision signal\n- Expectations - one-slide narrative plus open questions',
          prompt:
              'Create a single executive slide with two sections: “Current Signal” (4 bullets) and “Open Questions” (3 bullets). When inputs conflict, include both views and tag as [Disputed]. If information is missing, tag as [Unknown]. Do not invent dates or certainty. Keep tone controlled and decision-ready.',
          output:
              '**Current Signal**\n- Workstream A reports on-track against current milestone [Disputed]\n- Workstream B flags a dependency risk that could affect sequencing [Disputed]\n- Scope boundaries may have shifted; impact is not yet quantified [Unknown]\n- Net: timeline confidence is not decision-ready without a dependency checkpoint\n\n**Open Questions**\n- What is the latest dependency ETA and owner-confirmed mitigation path?\n- Has scope changed, or is this a sequencing interpretation difference?\n- What decision do we need this week: accept risk, re-sequence, or de-scope?\n\nNotice how credibility stays intact: the prompt forced [Disputed]/[Unknown] tags so the slide doesn’t pretend the inputs agree.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is credibility under conflict: you preserved disagreement and forced open questions.\n- Requirements stop timeline invention\n- Objective keeps decision signal visible\n- Expectations produce a slide that leadership can act on without false confidence',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this update consistent for executives\n\nStrong prompt:\nCreate a single executive slide with two sections: “Current Signal” (4 bullets) and “Open Questions” (3 bullets). When inputs conflict, include both views and tag as [Disputed]. If information is missing, tag as [Unknown]. Do not invent dates or certainty. Keep tone controlled and decision-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMulti-team status with conflicting signals\n\nO - Objective\nReconcile without inventing agreement\n\nR - Requirements\nTag conflicts [Disputed]; tag missing [Unknown]; no invented dates or certainty\n\nE - Expectations\nOne slide: Current Signal + Open Questions',
            ),
          ],
          proTip:
              'If you ask for “a unified narrative,” AI will unify by deleting the disagreement. That’s not alignment - it’s information loss.',
          takeaway:
              'When reality conflicts, your slide must show the conflict, not hide it.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep an exec slide credible when signals conflict.',
            pieces: [
              PromptPieceDef(
                  text: 'Require [Disputed] tagging for conflicting inputs',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require [Unknown] tagging for missing info',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented dates/certainty',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Force an “Open Questions” section (not just a summary)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Keep to a single-slide structure with fixed bullet counts',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to “make it sound reassuring”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model infer the most likely timeline',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove disagreements to avoid confusion',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Replace unknowns with confident placeholders',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add extra background context paragraphs',
                  isCorrect: false),
            ],
            coachingNote:
                'Executive trust is fragile. Your prompt must prevent “helpful smoothing” and keep uncertainty visible in a controlled format.',
            assembledPromptExample:
                'Create one exec slide with Current Signal + Open Questions. Tag conflicts [Disputed], missing info [Unknown]. Do not invent dates. Keep bullet counts fixed.',
            feedbackWhenCorrect:
                'You now control executive credibility when inputs don’t match - that’s a real advantage.',
            resultPolishedPrompt:
                'Write a single exec slide with “Current Signal” (4 bullets) + “Open Questions” (3 bullets). Preserve conflict with [Disputed], mark gaps [Unknown], and do not invent dates/certainty.',
          ),
        ),
        ScenarioDef(
          title: 'Write a Stakeholder-Safe “Bad News” Slide Without Panic',
          situation:
              'A risk is real and time-sensitive, but you must communicate it without creating panic or sounding evasive.\n\nIf you understate it, leadership will be surprised later and trust drops.\n\nIf you overstate it, you trigger escalation and noise.\n\nIf you prompt AI weakly, it usually:\n- uses soft language that hides the risk\n- adds mitigation claims that aren’t real yet\n- sounds dramatic to “sound serious”\n\nThis is why your prompt fails:\n- no boundaries on certainty\n- no requirement for a clear ask\n- no expectation for controlled tone\n\nMost people either sugarcoat or catastrophize.\n\nTo get a usable result, your prompt must define:\n- Context - time-sensitive risk communication\n- Objective - state risk, impact range, and immediate ask\n- Requirements - controlled tone, no invented mitigations, clear next step\n- Expectations - one slide with risk + ask',
          prompt:
              'Draft one executive slide titled “Risk Update” with three sections: Risk (2 bullets), Impact (2 bullets with a range if uncertain), and Ask (1 bullet). Keep tone controlled and factual. Do not invent mitigations; if mitigation is in progress, label it clearly. Make the ask decision-ready.',
          output:
              '**Risk Update**\n\n**Risk**\n- A dependency is not meeting the expected stability threshold for the planned sequence\n- Current mitigation path is being validated; outcome not yet confirmed\n\n**Impact**\n- If unresolved, sequencing may slip by 1–2 weeks depending on mitigation viability [range]\n- Secondary impact: downstream teams may re-plan unless we confirm the checkpoint by [TBD]\n\n**Ask**\n- Confirm whether we hold the current timeline pending checkpoint, or re-sequence now to de-risk\n\nThis is where you can see tone control: the prompt forced ranges and banned invented mitigations, so the slide is serious without being dramatic.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is bounded certainty: factual risk + impact range + explicit ask.\n- Requirements prevent “mitigation theater”\n- Objective keeps the slide decision-ready\n- Expectations enforce a single-slide structure with minimal room for drift',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a slide about this risk for leadership\n\nStrong prompt:\nDraft one executive slide titled “Risk Update” with three sections: Risk (2 bullets), Impact (2 bullets with a range if uncertain), and Ask (1 bullet). Keep tone controlled and factual. Do not invent mitigations; if mitigation is in progress, label it clearly. Make the ask decision-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nTime-sensitive risk communication to leadership\n\nO - Objective\nState risk, impact range, and immediate ask\n\nR - Requirements\nControlled tone; ranges if uncertain; no invented mitigations\n\nE - Expectations\nOne slide: Risk + Impact + Ask',
            ),
          ],
          proTip:
              'If you don’t force an impact range, the model will pick a single number to sound confident. That’s exactly how risk communication becomes wrong.',
          takeaway:
              'Bad news slides need bounded certainty: risk, impact range, and a clear ask.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that communicate risk with control (not panic, not sugarcoating).',
            pieces: [
              PromptPieceDef(
                  text: 'Require an explicit Ask (decision-ready next step)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require an Impact section with ranges when uncertain',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented mitigations/claims',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require controlled, factual tone',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Force a single-slide structure with fixed bullet counts',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to “make it urgent and dramatic”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove the impact details to avoid concern',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let the model add reassuring mitigation steps',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add a long narrative explanation of background',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'State certainty even when the input is unclear',
                  isCorrect: false),
            ],
            coachingNote:
                'Risk slides are judged on credibility. Use ranges, ban invention, and always end with a decision-ready ask so leadership can respond.',
            assembledPromptExample:
                'Write one slide: Risk (2), Impact (2 with range), Ask (1). Controlled tone. No invented mitigations. Make the ask decision-ready.',
            feedbackWhenCorrect:
                'You now control risk communication without losing credibility - that’s an operator skill.',
            resultPolishedPrompt:
                'Draft one exec slide “Risk Update” with Risk (2 bullets), Impact (2 bullets with range if uncertain), Ask (1 bullet). Factual tone; no invented mitigations; decision-ready.',
          ),
        ),
      ],
    ),

    // Lesson 3
    const LessonDef(
      title: 'Design Slides That Preserve Truth Under Pressure',
      scenarios: [
        ScenarioDef(
          title: 'Create a One-Slide “Decision Frame” for a Complex Choice',
          situation:
              'You need leadership to choose between two rollout approaches.\n\nThe trap: one option is cleaner, the other is safer, and the room will optimize for “simple” unless you frame the trade-off.\n\nIf you frame this poorly, the decision will be made on aesthetics, not risk.\n\nIf you prompt AI weakly, it usually:\n- lists options without trade-offs\n- over-recommends the “clean” choice\n- uses vague language like “consider” and “may”\n\nThis is why your prompt fails:\n- no explicit decision criteria\n- no structure for trade-offs\n- no expectation for one-slide clarity\n\nMost people show two columns and call it a decision.\n\nTo get a usable result, your prompt must define:\n- Context - a high-stakes choice with competing objectives\n- Objective - force the trade-off into the open\n- Requirements - criteria, risks, and recommendation framing\n- Expectations - one slide that makes the decision obvious',
          prompt:
              'Draft one slide titled “Decision Frame” comparing Option A vs Option B. Include: Decision criteria (3 bullets), Option A (3 bullets), Option B (3 bullets), and Recommendation (1 bullet). Keep language precise and neutral. Do not hide risks. No invented data.',
          output:
              '**Decision Frame**\n\n**Decision criteria**\n- Delivery speed vs. stability risk\n- Ownership clarity (who is accountable when issues arise)\n- Cost of rework if assumptions are wrong\n\n**Option A**\n- Faster rollout with fewer dependencies\n- Higher risk of inconsistency across roles\n- Rework likely if role-specific needs emerge late\n\n**Option B**\n- Slower rollout with explicit review checkpoints\n- Lower risk of misfit by validating role-specific inserts early\n- Clearer accountability for maintaining the standard over time\n\n**Recommendation**\n- Recommend Option B if the cost of rework and credibility loss is higher than the cost of a slower rollout.\n\nNotice how criteria comes first: the prompt prevents the deck from selling an option before the room agrees on what “good” means.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is decision criteria placement. Criteria first forces shared evaluation before persuasion.\n- Requirements prevent “options without consequences”\n- Objective keeps the trade-off explicit\n- Expectations enforce one-slide clarity and no invented data',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a slide comparing two options\n\nStrong prompt:\nDraft one slide titled “Decision Frame” comparing Option A vs Option B. Include: Decision criteria (3 bullets), Option A (3 bullets), Option B (3 bullets), and Recommendation (1 bullet). Keep language precise and neutral. Do not hide risks. No invented data.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nHigh-stakes choice with competing objectives\n\nO - Objective\nForce trade-offs into the open before the decision\n\nR - Requirements\nCriteria first; fixed bullets; neutral language; risks visible; no invented data\n\nE - Expectations\nOne slide that makes evaluation and recommendation clear',
            ),
          ],
          proTip:
              'If you don’t put criteria first, you’ll accidentally let the deck “recommend” by tone. Criteria is how you control decision bias.',
          takeaway:
              'Criteria-first slides prevent decisions made on vibes.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that produce a criteria-first decision frame slide.',
            pieces: [
              PromptPieceDef(
                  text: 'Require decision criteria section before options',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Fix bullets per section to force compression',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require risks/trade-offs to stay explicit',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented data/metrics',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require a short recommendation tied to criteria',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for a persuasive pitch to sell Option A',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Hide risks to keep the slide optimistic',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI pick criteria automatically without constraints',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write long paragraphs for nuance',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use vague language (“consider”, “maybe”) throughout',
                  isCorrect: false),
            ],
            coachingNote:
                'Decision slides fail when they persuade before aligning criteria. Force criteria-first structure and keep trade-offs explicit.',
            assembledPromptExample:
                'Draft one slide with criteria first, then options, then a criteria-linked recommendation. Fixed bullet counts. No invented data.',
            feedbackWhenCorrect:
                'You now control decision framing - the room can’t “slide” into a choice by tone alone.',
            resultPolishedPrompt:
                'Create a one-slide “Decision Frame”: criteria (3 bullets) → Option A (3) → Option B (3) → recommendation (1). Neutral language; risks explicit; no invented data.',
          ),
        ),
        ScenarioDef(
          title: 'Extract the “One Chart That Matters” Without Misleading',
          situation:
              'You have multiple metrics, but the deck can only include one chart.\n\nThe risk is cherry-picking or hiding counter-signal that leadership cares about.\n\nIf you choose the wrong chart framing, you’ll drive the wrong decision.\n\nIf you prompt AI weakly, it usually:\n- picks the most impressive metric\n- ignores counter-metrics\n- adds interpretation that isn’t supported\n\nThis is why your prompt fails:\n- no rule for selecting the decision-driving metric\n- no requirement to state what the chart does not prove\n- no expectation for an honest caption\n\nMost people optimize for “looks good.”\n\nTo get a usable result, your prompt must define:\n- Context - multiple metrics, single-chart constraint\n- Objective - pick the decision-driving chart and honest framing\n- Requirements - chart type, caption, limits of inference\n- Expectations - a slide-ready chart spec + caption',
          prompt:
              'Given these metrics, propose ONE chart for an executive deck. Output: chart type, x/y axes, one-sentence chart caption, and one “Limits” bullet stating what the chart does NOT prove. Do not invent numbers or interpretation.',
          output:
              '**Recommended chart**: Line chart (trend over time)\n- X-axis: Weeks (last 8–12)\n- Y-axis: Completion rate (or primary success metric)\n\n**Caption**: “Primary success metric trend over time to assess whether rollout is stabilizing.”\n\n**Limits**: This chart does not prove causality or isolate which workstream caused the change.\n\nThis is where you can see control: the prompt forced a “Limits” line, which prevents the model from turning the chart into a story it can’t support.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is honest framing: chart spec + caption + limits. Without limits, AI will add causal language by default.\n- Requirements ban invented numbers and force a “Limits” guardrail\n- Objective selects decision-driving signal, not the prettiest metric\n- Expectations produce slide-ready output quickly',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nPick the best chart for this deck\n\nStrong prompt:\nGiven these metrics, propose ONE chart for an executive deck. Output: chart type, x/y axes, one-sentence chart caption, and one “Limits” bullet stating what the chart does NOT prove. Do not invent numbers or interpretation.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMultiple metrics, single-chart constraint\n\nO - Objective\nSelect decision-driving chart and honest framing\n\nR - Requirements\nChart spec; caption; “Limits” bullet; no invented numbers/interpretation\n\nE - Expectations\nSlide-ready chart recommendation',
            ),
          ],
          proTip:
              'If you don’t require a “Limits” line, you’re asking the model to do persuasion. In executive decks, persuasion without boundaries becomes misinformation.',
          takeaway:
              'Every chart needs a caption and a limit.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep a one-chart slide honest and decision-ready.',
            pieces: [
              PromptPieceDef(text: 'Require chart type + axes', isCorrect: true),
              PromptPieceDef(
                  text: 'Require a one-sentence caption',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require a “Limits” bullet (what it does NOT prove)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented numbers and causal interpretation',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Frame selection around the decision-driving metric',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for the most impressive chart to increase buy-in',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI add insights and recommendations freely',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Include multiple charts “for completeness”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a long narrative explanation under the chart',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use speculative language about causes',
                  isCorrect: false),
            ],
            coachingNote:
                'Slide credibility is built by boundaries: what the chart shows, what it doesn’t, and what decision it supports.',
            assembledPromptExample:
                'Propose one exec-chart: chart type + axes, caption, and a “Limits” bullet. No invented numbers or causal claims.',
            feedbackWhenCorrect:
                'You now control chart honesty - most decks skip limits and accidentally mislead.',
            resultPolishedPrompt:
                'Recommend ONE chart for an exec slide: type, axes, one-sentence caption, and one “Limits” bullet. Tie to decision signal. No invented numbers or causality.',
          ),
        ),
        ScenarioDef(
          title: 'Write a Slide That Says “No” Without Starting a Fight',
          situation:
              'A stakeholder wants the deck to promise more than the team can deliver.\n\nYou need a slide that sets a boundary: what is in scope, what is out, and what conditions would change it.\n\nIf you handle this poorly, you create escalation or you accidentally commit.\n\nIf you prompt AI weakly, it usually:\n- sounds defensive or passive-aggressive\n- uses vague “we’ll try” language\n- hides conditions and creates misalignment\n\nThis is why your prompt fails:\n- no structure for boundary + conditions\n- no tone constraints\n- no expectation for stakeholder-safe wording\n\nMost people avoid “no” and end up promising by omission.\n\nTo get a usable result, your prompt must define:\n- Context - scope pressure and expectation management\n- Objective - set boundaries without blame\n- Requirements - in/out/conditions format, controlled tone\n- Expectations - one slide that prevents accidental commitment',
          prompt:
              'Draft one executive slide titled “Scope Boundary” with three sections: In Scope (3 bullets), Out of Scope (3 bullets), and Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame language. Make it safe to share with stakeholders.',
          output:
              '**Scope Boundary**\n\n**In Scope**\n- Standard onboarding baseline flow + source-of-truth checklist\n- Role-specific inserts owned by functions and reviewed on a defined cadence\n- Pilot + iteration cycle to validate fit before scaling\n\n**Out of Scope**\n- Building bespoke onboarding per team without shared baseline\n- Committing to performance outcomes not yet measured\n- Expanding scope beyond onboarding (e.g., full enablement redesign)\n\n**Conditions to Revisit**\n- If pilot feedback shows baseline misfit for a function, adjust standard vs. insert boundaries\n- If leadership changes success criteria, re-plan scope and timeline explicitly\n\nThe difference is boundary structure: the prompt forced “in/out/conditions,” so you can say no without sounding personal.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is boundary framing: in-scope vs out-of-scope vs conditions to revisit.\n- Requirements prevent vague “we’ll try” commitments\n- Expectations make it stakeholder-safe and paste-ready\n- Objective sets scope without blame or defensiveness',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a slide that says we can’t do everything\n\nStrong prompt:\nDraft one executive slide titled “Scope Boundary” with three sections: In Scope (3 bullets), Out of Scope (3 bullets), and Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame language. Make it safe to share with stakeholders.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nScope pressure and expectation management\n\nO - Objective\nSet boundaries without blame or accidental commitments\n\nR - Requirements\nIn/Out/Conditions structure; fixed bullets; controlled tone\n\nE - Expectations\nOne paste-ready slide safe to share',
            ),
          ],
          proTip:
              'If you don’t include “Conditions to Revisit,” stakeholders hear “no forever” and escalate. Conditions turn boundaries into a controlled conversation.',
          takeaway:
              'Boundaries need conditions, or they turn into conflict.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that create a stakeholder-safe boundary slide.',
            pieces: [
              PromptPieceDef(
                  text: 'Require In Scope / Out of Scope / Conditions to Revisit sections',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Fix bullet counts so it stays crisp',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require neutral tone and ban blame language',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Make it safe to share externally (stakeholder-safe)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Explicitly prevent accidental commitments',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Use aggressive language to “hold the line”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Leave out-of-scope vague to avoid confrontation',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Promise outcomes to reduce pushback',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Turn the slide into a long narrative explanation',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Assign blame to another team for constraints',
                  isCorrect: false),
            ],
            coachingNote:
                'Scope slides are negotiation tools. Structure prevents tone drift and makes boundaries feel professional instead of personal.',
            assembledPromptExample:
                'Draft one slide “Scope Boundary” with In Scope, Out of Scope, Conditions to Revisit. Controlled tone. Fixed bullets. Stakeholder-safe.',
            feedbackWhenCorrect:
                'You now control scope pressure without accidental commitments - most teams lose leverage here.',
            resultPolishedPrompt:
                'Write one exec slide “Scope Boundary”: In Scope (3), Out of Scope (3), Conditions to Revisit (2). Neutral tone; no blame; stakeholder-safe; prevents accidental commitments.',
          ),
        ),
      ],
    ),

    // Lesson 4
    const LessonDef(
      title: 'Create High-Stakes Stakeholder Alignment Slides',
      scenarios: [
        ScenarioDef(
          title: 'Align on Definitions Before the Debate Starts',
          situation:
              'Stakeholders are debating “success,” but they mean different things.\n\nYou need one slide that defines terms so the meeting stops arguing semantics.\n\nIf you skip this, the room will “agree” and still walk away misaligned.\n\nIf you prompt AI weakly, it usually:\n- writes generic definitions\n- avoids the hard edge cases\n- adds aspirational language instead of operational definitions\n\nThis is why your prompt fails:\n- no requirement for operational definitions\n- no examples / edge cases\n- no expectation for meeting-ready clarity\n\nMost people start with the solution slide. That’s how meetings fail.\n\nTo get a usable result, your prompt must define:\n- Context - alignment meeting with semantic disagreement\n- Objective - define terms and edge cases\n- Requirements - operational definitions + examples\n- Expectations - one slide that prevents semantic drift',
          prompt:
              'Draft one slide titled “Definitions (so we debate the same thing)” with 4 terms. For each term: definition (1 bullet) and an example/edge case (1 bullet). Keep it operational and concrete. No aspirational language.',
          output:
              '**Definitions (so we debate the same thing)**\n\n**“Standard onboarding”**\n- Definition: the mandatory baseline steps every new hire completes in the first 2 weeks\n- Edge case: function-specific training is not “standard” unless it is mandatory for all roles\n\n**“Role-specific insert”**\n- Definition: content owned by a function that extends the baseline for that role\n- Edge case: inserts must not change baseline sequencing without review\n\n**“Pilot success”**\n- Definition: teams can run the baseline + inserts without ad-hoc rework or missing steps\n- Edge case: “people liked it” is not success unless it changes execution consistency\n\n**“Ownership”**\n- Definition: who updates content, who approves changes, and who is accountable for drift\n- Edge case: shared ownership without approval rules becomes no ownership\n\nNotice how edge cases do the work: the prompt forced concrete boundaries so the slide prevents fake alignment.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is edge cases. Definitions without edge cases are still ambiguous.\n- Requirements force operational language and examples\n- Objective prevents semantic debate from consuming the meeting\n- Expectations produce a single slide that anchors the room',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCreate a slide defining key terms\n\nStrong prompt:\nDraft one slide titled “Definitions (so we debate the same thing)” with 4 terms. For each term: definition (1 bullet) and an example/edge case (1 bullet). Keep it operational and concrete. No aspirational language.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nAlignment meeting with semantic disagreement\n\nO - Objective\nDefine terms so debate is productive\n\nR - Requirements\nOperational definitions + edge cases; concrete bullets; no aspiration\n\nE - Expectations\nOne meeting-ready slide that anchors discussion',
            ),
          ],
          proTip:
              'Most people avoid edge cases because they feel “negative.” Edge cases are how you stop ambiguity from hiding inside a friendly definition.',
          takeaway:
              'If you can’t define it with an edge case, it isn’t defined.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a definitions slide actually prevent misalignment.',
            pieces: [
              PromptPieceDef(
                  text: 'Require operational (not aspirational) definitions',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require an edge case/example for each term',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Fix the structure (terms + 2 bullets each)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Tie definitions to decision boundaries (what counts / doesn’t)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Keep it one slide and meeting-ready',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Use inspirational language to increase buy-in',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Avoid edge cases to keep it “positive”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write long paragraphs for nuance',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI choose which terms matter without input',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Make the slide visually flashy with design advice',
                  isCorrect: false),
            ],
            coachingNote:
                'Alignment slides are pre-meeting control. Operational definitions + edge cases prevent semantic drift and stop “agreement that isn’t agreement.”',
            assembledPromptExample:
                'Draft a one-slide definitions page with 4 terms. For each: operational definition + edge case. Concrete bullets. No aspirational language.',
            feedbackWhenCorrect:
                'You now control alignment before debate starts - that’s how you run higher-stakes rooms.',
            resultPolishedPrompt:
                'Write one slide “Definitions (so we debate the same thing)”: 4 terms, each with 1 operational definition bullet + 1 edge case bullet. Concrete, meeting-ready, no aspiration.',
          ),
        ),
        ScenarioDef(
          title: 'Synthesize Divergent Feedback Into a Safe Alignment Slide',
          situation:
              'You collected stakeholder feedback that conflicts: different priorities, different risk tolerance, different timelines.\n\nYou need a slide that surfaces the true tension without inflaming it.\n\nIf you hide tension, leadership will make a decision that breaks later.\n\nIf you emphasize it poorly, you create unnecessary conflict.\n\nIf you prompt AI weakly, it usually:\n- averages feedback into generic statements\n- drops minority-but-critical concerns\n- invents consensus to sound helpful\n\nThis is why your prompt fails:\n- no rule for preserving competing objectives\n- no structure for neutral synthesis\n- no expectation for decision implications\n\nMost people turn feedback into “themes” and lose the decision signal.\n\nTo get a usable result, your prompt must define:\n- Context - conflicting stakeholder feedback\n- Objective - present tensions and implications neutrally\n- Requirements - competing objectives preserved, no invented agreement\n- Expectations - one slide: tensions + what decision they affect',
          prompt:
              'Draft one executive slide titled “Stakeholder Tensions” with two sections: “Tensions” (4 bullets) and “Decision Implications” (3 bullets). Preserve competing objectives explicitly. If stakeholders disagree, do not merge it - write both sides neutrally. No invented consensus.',
          output:
              '**Stakeholder Tensions**\n\n**Tensions**\n- Speed vs. consistency: some prefer rapid rollout; others prioritize reducing variance first\n- Central control vs. function autonomy: one owner model vs. distributed inserts\n- Flexibility vs. auditability: adaptable onboarding vs. a baseline that is enforceable\n- Scope boundaries: onboarding-only vs. broader enablement expectations\n\n**Decision Implications**\n- The ownership model determines whether drift is prevented or normalized\n- Scope boundaries determine whether rollout is realistic under current bandwidth\n- Timeline choice determines whether we accept rework risk or pay coordination cost up front\n\nThe difference is tension preservation: the prompt forced both sides to remain visible, so the slide drives the real decision instead of “themes.”',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is competing objectives. You didn’t theme-wash the feedback - you preserved the tensions and tied them to decisions.\n- Requirements ban consensus fabrication\n- Objective keeps decision implications explicit\n- Expectations produce a slide leadership can act on',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarize stakeholder feedback into themes\n\nStrong prompt:\nDraft one executive slide titled “Stakeholder Tensions” with two sections: “Tensions” (4 bullets) and “Decision Implications” (3 bullets). Preserve competing objectives explicitly. If stakeholders disagree, do not merge it - write both sides neutrally. No invented consensus.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nConflicting stakeholder feedback\n\nO - Objective\nSurface tensions and decision implications neutrally\n\nR - Requirements\nPreserve competing objectives; no invented consensus; fixed structure\n\nE - Expectations\nOne slide: tensions + decision implications',
            ),
          ],
          proTip:
              'If you ask for “themes,” you’ll get agreement-shaped output. Tensions are where decisions live - preserve them or you lose the point.',
          takeaway:
              'Stakeholder feedback is only useful when it stays in tension form.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep stakeholder feedback decision-useful.',
            pieces: [
              PromptPieceDef(
                  text: 'Require competing objectives to be stated explicitly',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban merging disagreements into one “consensus” view',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require a “Decision Implications” section',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Fix bullet counts to keep it crisp',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Keep tone neutral and executive-safe',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to choose the “best” stakeholder view',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove tensions to avoid conflict',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a long narrative summary of every comment',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add emotional language to “show empathy”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent a compromise solution without input',
                  isCorrect: false),
            ],
            coachingNote:
                'Synthesis is not averaging. Preserve tensions, then map them to decision implications. That’s how the slide becomes useful.',
            assembledPromptExample:
                'Create one slide with “Tensions” + “Decision Implications”. Preserve competing objectives; no invented consensus; neutral tone.',
            feedbackWhenCorrect:
                'You now control stakeholder synthesis without losing the decision signal.',
            resultPolishedPrompt:
                'Draft an exec slide “Stakeholder Tensions”: Tensions (4 bullets) + Decision Implications (3 bullets). Preserve disagreements neutrally; no consensus invention.',
          ),
        ),
        ScenarioDef(
          title: 'Write a Slide That Forces a Decision Between Two Bad Options',
          situation:
              'Leadership must choose between two imperfect options: ship faster with higher risk, or slow down and absorb coordination cost.\n\nThere is no “safe” choice - only a controlled choice.\n\nIf your slide tries to make it feel safe, you remove the decision.\n\nIf you make it too blunt, you trigger defensiveness.\n\nIf you prompt AI weakly, it usually:\n- hides the cost of each option\n- recommends without stating assumptions\n- uses vague language like “ideally”\n\nThis is why your prompt fails:\n- no explicit cost framing\n- no assumption boundary\n- no expectation for decision forcing\n\nMost people avoid naming costs. That’s why decisions get deferred.\n\nTo get a usable result, your prompt must define:\n- Context - forced trade-off, no perfect option\n- Objective - state costs and assumptions, force a choice\n- Requirements - cost bullets, assumptions, recommendation\n- Expectations - one slide that makes deferral hard',
          prompt:
              'Draft one executive slide titled “Forced Choice” with two columns: Option A and Option B. For each option: Cost (2 bullets) and Risk (2 bullets). Add “Assumptions” (2 bullets) and “Decision Needed Today” (1 bullet). Keep tone controlled and precise.',
          output:
              '**Forced Choice**\n\n**Option A**\n- Cost: faster rollout with less review time\n- Cost: higher probability of rework after launch\n- Risk: inconsistent onboarding across roles\n- Risk: credibility loss if issues surface after commitment\n\n**Option B**\n- Cost: slower rollout with added coordination checkpoints\n- Cost: higher up-front time investment from function leads\n- Risk: timeline slip if coordination is not staffed\n- Risk: stakeholder fatigue if ownership is unclear\n\n**Assumptions**\n- Function leads can review inserts within the agreed cadence\n- We will not claim outcomes we cannot measure yet\n\n**Decision Needed Today**\n- Choose Option A vs Option B based on tolerance for rework vs coordination cost\n\nWhat matters here is cost naming: the prompt forced both options to pay a price, which prevents “wishful compromise” from sneaking in.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is cost symmetry: both options pay a price, and assumptions are explicit.\n- Requirements force Cost + Risk bullets per option\n- Expectations add assumptions and a decision line\n- Objective makes deferral difficult by making trade-offs unavoidable',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a slide comparing two options for leadership\n\nStrong prompt:\nDraft one executive slide titled “Forced Choice” with two columns: Option A and Option B. For each option: Cost (2 bullets) and Risk (2 bullets). Add “Assumptions” (2 bullets) and “Decision Needed Today” (1 bullet). Keep tone controlled and precise.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nNo perfect option; leadership must pick a trade-off\n\nO - Objective\nForce costs and assumptions into the open\n\nR - Requirements\nCost + risk bullets per option; assumptions; decision line; controlled tone\n\nE - Expectations\nOne slide that makes the choice explicit and defensible',
            ),
          ],
          proTip:
              'If you don’t name costs, the room will invent them later and blame the deck. Costs are not negativity - they are decision reality.',
          takeaway:
              'A decision slide must name what each option costs.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a forced-choice slide actually force a choice.',
            pieces: [
              PromptPieceDef(
                  text: 'Require Cost + Risk bullets for each option',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require explicit Assumptions section',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require “Decision Needed Today” line',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Use a two-column option structure',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Keep tone controlled and precise (no “ideally”)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Make one option sound obviously superior',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Hide costs to keep the slide positive',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add emotional language to increase urgency',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI invent assumptions to make it coherent',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a long narrative to avoid being direct',
                  isCorrect: false),
            ],
            coachingNote:
                'Forced-choice slides are about honesty with structure. Costs + risks + assumptions + a decision line is how you control the room’s interpretation.',
            assembledPromptExample:
                'Create a forced-choice slide: Option A vs B with Cost+Risk bullets, then Assumptions, then Decision Needed Today. Controlled tone.',
            feedbackWhenCorrect:
                'You now control trade-off decisions instead of letting the room drift into deferral.',
            resultPolishedPrompt:
                'Draft one exec slide “Forced Choice”: two columns (Option A/B) with Cost (2) + Risk (2) each; add Assumptions (2) and Decision Needed Today (1). Controlled, precise language.',
          ),
        ),
      ],
    ),

    // Lesson 5
    const LessonDef(
      title: 'Ship a Credible Executive Deck Under Ambiguity',
      scenarios: [
        ScenarioDef(
          title: 'Create a “What We Know / What We Don’t” Slide',
          situation:
              'Leadership is asking for certainty before the data is ready.\n\nYour job is to keep the deck credible: separate what is confirmed from what is unknown.\n\nIf you pretend certainty, you will be held to it later.\n\nIf you over-emphasize unknowns, you look unprepared.\n\nIf you prompt AI weakly, it usually:\n- fills gaps with confident wording\n- avoids unknowns to “sound strong”\n- turns uncertainty into vague hedges\n\nThis is why your prompt fails:\n- no structure for known vs unknown\n- no requirement for what changes the unknowns\n- no expectation for controlled tone\n\nMost people hide uncertainty. That’s why decks break later.\n\nTo get a usable result, your prompt must define:\n- Context - exec pressure for certainty\n- Objective - preserve credibility with explicit boundaries\n- Requirements - known/unknown/what-would-change structure\n- Expectations - one slide that is safe and decision-ready',
          prompt:
              'Draft one executive slide titled “What We Know / What We Don’t” with three sections: Confirmed (4 bullets), Unknown (4 bullets), and What Would Change This (2 bullets). Keep tone controlled, factual, and decision-ready. Do not invent certainty.',
          output:
              '**What We Know / What We Don’t**\n\n**Confirmed**\n- Baseline onboarding can be standardized without blocking role-specific inserts\n- Ownership is currently fragmented across docs and teams\n- A pilot approach reduces rework risk compared to a broad rollout\n- Leadership needs a scope + ownership decision to proceed\n\n**Unknown**\n- Which steps must be mandatory across all roles vs optional\n- The review cadence function leads can sustain\n- The dependency risk impact range without a checkpoint\n- Success criteria for “ramp quality” by function\n\n**What Would Change This**\n- A dependency checkpoint with owner-confirmed ETA and mitigation path\n- Pilot feedback tied to defined success criteria (not sentiment)\n\nNotice how uncertainty becomes controllable: the prompt forced “what would change this,” which turns unknowns into an action path instead of hedging.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is uncertainty structure: Confirmed vs Unknown vs What Would Change This.\n- Requirements prevent invented certainty and vague hedging\n- Objective preserves credibility while staying decision-ready\n- Expectations keep it to one slide leadership can absorb',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a slide about what we know so far\n\nStrong prompt:\nDraft one executive slide titled “What We Know / What We Don’t” with three sections: Confirmed (4 bullets), Unknown (4 bullets), and What Would Change This (2 bullets). Keep tone controlled, factual, and decision-ready. Do not invent certainty.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nExec pressure for certainty before data is ready\n\nO - Objective\nKeep deck credible with explicit boundaries\n\nR - Requirements\nConfirmed/Unknown/What-would-change structure; fixed bullets; no invented certainty\n\nE - Expectations\nOne controlled, decision-ready slide',
            ),
          ],
          proTip:
              '“Unknown” without “what changes it” reads like weakness. The control move is turning uncertainty into a concrete path to certainty.',
          takeaway:
              'Unknowns must come with the path to resolve them.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep uncertainty credible and actionable on a slide.',
            pieces: [
              PromptPieceDef(
                  text: 'Require Confirmed vs Unknown separation',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add “What Would Change This” to turn unknowns into action',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented certainty and hedged fiction',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Fix bullet counts to keep it executive-absorptive',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Keep tone controlled and factual',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to “sound confident even if details are missing”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove unknowns to avoid looking uncertain',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a long narrative explaining uncertainty',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add inspirational language to offset uncertainty',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent numbers to make the slide feel concrete',
                  isCorrect: false),
            ],
            coachingNote:
                'Credibility slides are a constraint system. Known/unknown is good; known/unknown/what-changes-it is better.',
            assembledPromptExample:
                'Write one exec slide: Confirmed (4), Unknown (4), What Would Change This (2). Controlled tone. No invented certainty.',
            feedbackWhenCorrect:
                'You now control uncertainty like an operator - most decks either hide it or dramatize it.',
            resultPolishedPrompt:
                'Draft an exec slide “What We Know / What We Don’t”: Confirmed (4), Unknown (4), What Would Change This (2). Controlled tone, no invented certainty.',
          ),
        ),
        ScenarioDef(
          title: 'Draft the One-Slide Executive Summary That Can Survive Questions',
          situation:
              'You need a single summary slide that can survive executive questions: what’s the point, what’s the risk, what’s the ask.\n\nIf it cannot survive questions, it cannot lead the deck.\n\nIf you prompt AI weakly, it usually:\n- writes generic “overview” bullets\n- hides the ask\n- smooths risk into vague language\n\nThis is why your prompt fails:\n- no requirement for question-proof structure\n- no constraints on scope\n- no expectation for decision-ready phrasing\n\nMost “executive summaries” are just introductions.\n\nTo get a usable result, your prompt must define:\n- Context - deck opener for executive room\n- Objective - question-proof summary\n- Requirements - point/risk/ask/next structure\n- Expectations - one slide that stands alone',
          prompt:
              'Draft one slide titled “Executive Summary” with four labeled bullets: Point, Risk, Ask, Next. Each bullet must be one sentence, decision-ready, and grounded (no invented claims).',
          output:
              '**Executive Summary**\n- **Point**: We are proposing a standardized onboarding baseline with function-owned inserts to reduce inconsistency without blocking role needs.\n- **Risk**: If scope and ownership are not explicit, we will ship a template that drifts and creates false alignment.\n- **Ask**: Approve the scope boundary (mandatory vs optional) and the ownership model today.\n- **Next**: Run a short pilot, validate success criteria, then scale with a fixed review cadence.\n\nWhat matters here is question-proof labeling: the prompt forced each bullet to answer the executive’s first question before the room asks it.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is “answers-first” structure: Point, Risk, Ask, Next - each one sentence.\n- Requirements prevent fluffy overviews\n- Objective makes the slide stand alone under questions\n- Expectations produce a deck opener that can actually lead',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite an executive summary slide\n\nStrong prompt:\nDraft one slide titled “Executive Summary” with four labeled bullets: Point, Risk, Ask, Next. Each bullet must be one sentence, decision-ready, and grounded (no invented claims).',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nDeck opener for an executive room\n\nO - Objective\nQuestion-proof summary that stands alone\n\nR - Requirements\nPoint/Risk/Ask/Next labels; one sentence each; no invented claims\n\nE - Expectations\nOne slide that can lead the deck',
            ),
          ],
          proTip:
              'If your executive summary can’t answer “what’s the ask?” in one line, it isn’t a summary - it’s a warm-up.',
          takeaway:
              'Executive summaries must answer Point, Risk, Ask, Next.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make an executive summary slide question-proof.',
            pieces: [
              PromptPieceDef(
                  text: 'Require Point/Risk/Ask/Next labeled bullets',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Force one-sentence bullets (no rambling)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require decision-ready phrasing (not intro copy)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented claims/metrics',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Set expectation that the slide stands alone',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for a motivational opening paragraph',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Hide the ask to avoid pressure',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use vague language to sound safe',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add multiple sub-bullets per label',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI add supporting statistics freely',
                  isCorrect: false),
            ],
            coachingNote:
                'A question-proof opener is a structure problem, not a writing problem. Labels + one sentence each forces clarity.',
            assembledPromptExample:
                'Write one “Executive Summary” slide: Point, Risk, Ask, Next. One sentence each. No invented claims.',
            feedbackWhenCorrect:
                'You now control executive attention: the slide answers the room before the room asks.',
            resultPolishedPrompt:
                'Draft an “Executive Summary” slide with labeled one-sentence bullets: Point, Risk, Ask, Next. Decision-ready, grounded, no invention.',
          ),
        ),
        ScenarioDef(
          title: 'Close the Deck With a Decision-Ready Commitment Slide',
          situation:
              'After discussion, leadership needs a clean closing slide that captures what was decided, what was deferred, and what happens next.\n\nIf you don’t capture it precisely, the decision will drift in the follow-up.\n\nIf you prompt AI weakly, it usually:\n- writes a generic “next steps” slide\n- hides what was not decided\n- invents owners and dates to sound complete\n\nThis is why your prompt fails:\n- no separation of decided vs deferred\n- no constraints against inventing ownership\n- no expectation for decision capture\n\nMost teams lose decisions in the last slide.\n\nTo get a usable result, your prompt must define:\n- Context - post-discussion decision capture\n- Objective - lock decisions and deferrals explicitly\n- Requirements - decided/deferred/next structure; no invented ownership\n- Expectations - one closing slide that prevents drift',
          prompt:
              'Draft one closing slide titled “Decision + Commitments” with three sections: Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets). Use only confirmed decisions; if owners/dates are not confirmed, label as [TBD]. Keep it paste-ready and neutral.',
          output:
              '**Decision + Commitments**\n\n**Decided Today**\n- Approved onboarding baseline scope boundaries (mandatory vs optional)\n- Confirmed ownership model (People Ops baseline; functions inserts)\n- Agreed to pilot-first rollout before scaling\n\n**Deferred**\n- Success criteria per function (to be defined) [TBD]\n- Review cadence and approver list [TBD]\n\n**Next**\n- Draft baseline checklist + template pack [Owner: People Ops] [TBD date]\n- Collect role inserts from function leads [Owners: Function leads] [TBD date]\n- Schedule pilot kickoff + checkpoint review [Owner: Program lead] [TBD date]\n\nNotice how [TBD] protects credibility: the prompt prevents the model from “completing” the slide by inventing owners and dates.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is decision capture: Decided vs Deferred vs Next, with [TBD] where details aren’t confirmed.\n- Requirements prevent invention under pressure\n- Objective locks commitments so decisions don’t drift\n- Expectations produce a closing slide that the org can execute',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a final slide with next steps\n\nStrong prompt:\nDraft one closing slide titled “Decision + Commitments” with three sections: Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets). Use only confirmed decisions; if owners/dates are not confirmed, label as [TBD]. Keep it paste-ready and neutral.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nPost-discussion decision capture\n\nO - Objective\nLock commitments and deferrals explicitly\n\nR - Requirements\nDecided/Deferred/Next; [TBD] for unknowns; no invention\n\nE - Expectations\nOne closing slide that prevents drift',
            ),
          ],
          proTip:
              'If you don’t include “Deferred,” you’ll pretend everything is decided. That’s how decks create silent disagreement that explodes later.',
          takeaway:
              'Close decks with decided, deferred, and next - or decisions drift.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a closing commitments slide drift-proof.',
            pieces: [
              PromptPieceDef(
                  text: 'Require Decided vs Deferred vs Next sections',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Use [TBD] for unknown owners/dates (no invention)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Fix bullet counts to keep it tight',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require “Deferred” explicitly (prevents fake completeness)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Make it paste-ready and neutral',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Invent owners and dates to look complete',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove deferred items to avoid tension',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a long narrative recap of the meeting',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use ambiguous language so it “covers everything”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add extra “nice-to-have” next steps',
                  isCorrect: false),
            ],
            coachingNote:
                'Closing slides are where execution either starts or drifts. Make deferrals explicit and never allow invented ownership to sneak in.',
            assembledPromptExample:
                'Write one closing slide with Decided Today, Deferred, Next. Use only confirmed decisions. Use [TBD] for unknown owners/dates.',
            feedbackWhenCorrect:
                'You now control commitment capture - most teams lose decisions in the last slide.',
            resultPolishedPrompt:
                'Draft a closing slide “Decision + Commitments”: Decided Today (3), Deferred (2), Next (3). No invention; use [TBD] for unknown owners/dates; paste-ready.',
          ),
        ),
      ],
    ),
  ];
}

```

### `lib\data\tracks\track5_communication.dart`
```
import '../app_catalog.dart';

/// Track 5 – Strategic Communication (lessons 1–5)
///
/// Track 5 is designed to feel like the “final level”: judgment-heavy, high-stakes,
/// and decision-consequential communication where weak prompting creates real damage.
List<LessonDef> buildTrack5Lessons() {
  return [
    const LessonDef(
      title: 'Control Executive Narratives (Truth Under Pressure)',
      scenarios: [
        ScenarioDef(
          title: 'Write a CEO-Safe Update When the Situation Is Not Stable',
          situation:
              'You need to send an executive update that will be forwarded.\n\nThe situation is not stable: one dependency is shaky, timelines are under scrutiny, and teams disagree on whether risk is “real” yet.\n\nIf this update drifts into false certainty, leadership will make decisions on a story that doesn’t exist.\n\nIf you prompt AI weakly, it usually:\n- rounds uncertainty into confidence\n- hides disagreement to sound “aligned”\n- invents mitigation language to feel reassuring\n\nThis is why your prompt fails:\n- no boundary on certainty\n- no rule for preserving disputed inputs\n- no expectation for a decision-ready ask\n\nMost people ask for “a crisp exec update” and accidentally ship optimism as fact.\n\nTo get a usable result, your prompt must define:\n- Context - exec update under uncertainty and disagreement\n- Objective - preserve credibility while surfacing the decision signal\n- Requirements - tag [Disputed]/[Unknown]; no invented mitigations; controlled tone\n- Expectations - paste-ready update with a clear ask and next checkpoint',
          prompt:
              'Draft a forward-safe executive update with exactly these sections: Status (2 bullets), Risk (2 bullets), Ask (1 bullet), Next (1 bullet). Use only confirmed facts. If teams disagree, include both views and tag [Disputed]. If information is missing, tag [Unknown]. Do not invent mitigations or dates. Keep tone controlled and decision-ready.',
          output:
              '**Status**\n- Core workstream remains aligned to the current milestone based on confirmed progress to date\n- One dependency is being evaluated against stability requirements; impact not yet decision-ready [Unknown]\n\n**Risk**\n- View A: dependency risk is contained with current mitigation approach [Disputed]\n- View B: dependency risk could affect sequencing unless checkpoint confirms viability [Disputed]\n\n**Ask**\n- Confirm whether we hold timeline pending checkpoint, or re-sequence now to de-risk.\n\n**Next**\n- Publish a single dependency checkpoint (owner + latest ETA + viability) and refresh timeline confidence.\n\nWhat matters here is bounded certainty: the prompt forced [Disputed]/[Unknown] tags so the update stays credible even under pressure.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is credibility. You forced the model to separate facts, disputed viewpoints, and unknowns - and you banned invented reassurance.\n- Requirements stop certainty inflation\n- Objective keeps decision signal visible\n- Expectations produce a forward-safe, paste-ready structure',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a crisp executive update about this situation\n\nStrong prompt:\nDraft a forward-safe executive update with exactly these sections: Status (2 bullets), Risk (2 bullets), Ask (1 bullet), Next (1 bullet). Use only confirmed facts. If teams disagree, include both views and tag [Disputed]. If information is missing, tag [Unknown]. Do not invent mitigations or dates. Keep tone controlled and decision-ready.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nExecutive update under uncertainty and disagreement\n\nO - Objective\nPreserve credibility while surfacing decision signal\n\nR - Requirements\nFixed sections + bullets; tag [Disputed]/[Unknown]; no invented mitigations/dates; controlled tone\n\nE - Expectations\nForward-safe, paste-ready update with clear ask + next checkpoint',
            ),
          ],
          proTip:
              'If you don’t explicitly ban invented mitigation, the model will “comfort-write” your risk section. That’s how updates become liabilities.',
          takeaway:
              'Executive updates must be credible before they are concise.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that prevent false certainty in forward-safe executive updates.',
            pieces: [
              PromptPieceDef(
                  text: 'Fix the section structure (Status/Risk/Ask/Next) with bullet counts',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require [Disputed] tagging when teams disagree',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require [Unknown] tagging for missing information',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented mitigations and dates',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Force a decision-ready Ask (not just “next steps”)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for a reassuring tone that reduces concern',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove disagreement so it sounds aligned',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI fill gaps with plausible details',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a long narrative paragraph for context',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Avoid mentioning risk until it is fully confirmed',
                  isCorrect: false),
            ],
            coachingNote:
                'This is where average AI use fails: it trades truth for smoothness. Your prompt must enforce truth boundaries and force the decision signal to stay visible.',
            assembledPromptExample:
                'Write a forward-safe exec update: Status (2), Risk (2), Ask (1), Next (1). Tag disputes [Disputed], gaps [Unknown]. No invented mitigations/dates. Controlled tone.',
            feedbackWhenCorrect:
                'You now control credibility under uncertainty - most people accidentally ship optimism as fact.',
            resultPolishedPrompt:
                'Draft a forward-safe executive update with fixed sections and bullet counts: Status (2), Risk (2), Ask (1), Next (1). Facts only; tag [Disputed]/[Unknown]; no invented mitigations or dates; decision-ready tone.',
          ),
        ),
        ScenarioDef(
          title: 'Compress a Messy Escalation Into a Decision Memo Slide',
          situation:
              'You have a messy escalation thread: partial facts, conflicting interpretations, and a lot of emotion.\n\nLeadership wants a one-slide decision memo now.\n\nIf you over-clean it, you hide the real risk.\n\nIf you dump raw thread content, you waste executive attention.\n\nIf you prompt AI weakly, it usually:\n- picks a side implicitly\n- replaces uncertainty with confident phrasing\n- invents “next actions” to look helpful\n\nThis is why your prompt fails:\n- no rules for evidence vs interpretation\n- no requirement to surface open questions\n- no expectation for a one-slide decision format\n\nMost people ask for “a summary” and get either a legal brief or a fairy tale.\n\nTo get a usable result, your prompt must define:\n- Context - escalation thread with noise, conflict, and gaps\n- Objective - one-slide decision memo with bounded certainty\n- Requirements - evidence-only bullets, open questions, no invention\n- Expectations - single slide with Problem / Options / Recommendation / Open Questions',
          prompt:
              'Create ONE executive slide that functions as a decision memo with exactly these sections: Problem (3 bullets, evidence-only), Options (2 options, 2 bullets each), Recommendation (1 bullet), Open Questions (3 bullets). If any detail is not confirmed, mark it [Unknown]. Do not invent owners, dates, or mitigations. Keep tone controlled and professional.',
          output:
              '**Problem (evidence-only)**\n- Escalation indicates a dependency is not meeting required stability thresholds [Unknown: latest measured rate]\n- Teams disagree on whether current mitigation path is viable within the planned sequence [Disputed]\n- Timeline confidence is not decision-ready without a checkpoint that reconciles the disagreement\n\n**Options**\n- Option A: Hold timeline pending checkpoint\n  - Preserves current plan, but risks late re-plan if dependency fails\n  - Requires a fast, owner-confirmed checkpoint to avoid drift\n- Option B: Re-sequence now to de-risk\n  - Reduces exposure to dependency failure, but introduces coordination cost\n  - May shift downstream work priorities immediately\n\n**Recommendation**\n- Recommend Option A only if a checkpoint can confirm viability by the next exec review; otherwise choose Option B.\n\n**Open Questions**\n- What is the owner-confirmed dependency ETA and stability threshold status?\n- What is the earliest point we can safely re-sequence without rework?\n- What decision deadline prevents downstream teams from executing on the wrong plan?\n\nThe difference is evidence discipline: the prompt forced “evidence-only” and Open Questions, so the slide stays decision-ready without inventing completeness.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is evidence discipline + decision structure. You didn’t ask for “a summary”; you forced a memo shape that prevents invention.\n- Requirements force evidence-only bullets\n- Expectations add open questions and options so uncertainty stays actionable\n- Objective converts noise into a decision memo without picking sides by tone',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarize this escalation for leadership\n\nStrong prompt:\nCreate ONE executive slide that functions as a decision memo with exactly these sections: Problem (3 bullets, evidence-only), Options (2 options, 2 bullets each), Recommendation (1 bullet), Open Questions (3 bullets). If any detail is not confirmed, mark it [Unknown]. Do not invent owners, dates, or mitigations. Keep tone controlled and professional.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nEscalation thread with noise, conflict, and gaps\n\nO - Objective\nOne-slide decision memo with bounded certainty\n\nR - Requirements\nEvidence-only problem bullets; explicit options; [Unknown] for gaps; no invention\n\nE - Expectations\nSingle slide: Problem / Options / Recommendation / Open Questions',
            ),
          ],
          proTip:
              'If you don’t force “evidence-only,” the model will quietly turn interpretations into facts. In escalations, that’s how you trigger the wrong decision.',
          takeaway:
              'Escalations need memo structure, not “summary tone.”',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that keep escalation decision memos truthful and usable.',
            pieces: [
              PromptPieceDef(
                  text: 'Require an explicit decision memo structure (Problem/Options/Recommendation/Open Questions)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require evidence-only problem bullets',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require [Unknown] marking for unconfirmed details',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban inventing owners/dates/mitigations',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require Open Questions so uncertainty stays visible',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to “pick the best team’s interpretation”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use dramatic language to signal urgency',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove open questions so it looks confident',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Allow the model to add “helpful next actions”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a long narrative recap of the entire thread',
                  isCorrect: false),
            ],
            coachingNote:
                'Decision memos are about controlling what becomes “true.” Evidence-only + [Unknown] + explicit options is how you prevent escalation summaries from becoming fiction.',
            assembledPromptExample:
                'Write one exec decision memo slide: Problem (evidence-only), Options, Recommendation, Open Questions. Mark gaps [Unknown]. No invented owners/dates/mitigations.',
            feedbackWhenCorrect:
                'You now control escalation truth boundaries - that’s where real executive trust is won.',
            resultPolishedPrompt:
                'Create one executive decision memo slide: Problem (3 evidence-only bullets), Options (2 options, 2 bullets each), Recommendation (1), Open Questions (3). Mark gaps [Unknown]. No invented owners/dates/mitigations.',
          ),
        ),
        ScenarioDef(
          title: 'Write a Political Alignment Message Without Losing the Truth',
          situation:
              'Two senior stakeholders disagree, and the organization is watching how you frame it.\n\nYou need a short alignment message that keeps the trade-off visible, keeps tone neutral, and prevents the room from splitting into camps.\n\nIf you over-soften it, you hide the decision.\n\nIf you are too blunt, you escalate politics.\n\nIf you prompt AI weakly, it usually:\n- “diplomatically” removes trade-offs\n- makes a recommendation sound like a side\n- invents consensus language\n\nThis is why your prompt fails:\n- no neutral options structure\n- no guardrails against consensus invention\n- no expectation for controlled tone with explicit trade-offs\n\nMost people try to sound agreeable and accidentally create vagueness.\n\nTo get a usable result, your prompt must define:\n- Context - stakeholder disagreement with organizational sensitivity\n- Objective - neutral alignment message with explicit trade-offs\n- Requirements - options + trade-offs + recommendation; no blame; no invented agreement\n- Expectations - paste-ready message safe to forward',
          prompt:
              'Draft a forward-safe alignment message with this structure: Context (1 sentence), Options (2 options, 1 sentence each with trade-off), Recommendation (1 sentence), Next Step (1 sentence). Keep tone controlled and neutral. Do not assign blame. Do not invent agreement. Keep trade-offs explicit.',
          output:
              'Context: We need to finalize the onboarding scope and ownership model in a way that balances speed with long-term consistency.\nOptions: Option A moves faster but increases rework risk if role needs emerge late; Option B moves slower but reduces drift by validating inserts early.\nRecommendation: Recommend Option B if the cost of rework and credibility loss is higher than the coordination cost.\nNext Step: Confirm the decision boundary (mandatory vs optional) and schedule a short checkpoint to lock the rollout plan.\n\nPay attention to the control point: the prompt forced trade-offs into single sentences, so neutral tone didn’t turn into non-commitment.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is “neutral structure,” not “nice wording.” Options + trade-offs + a bounded recommendation prevents politics from hijacking the message.\n- Requirements ban blame and invented agreement\n- Expectations force forward-safe brevity\n- Objective keeps the decision signal explicit even under sensitivity',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a diplomatic message to align stakeholders\n\nStrong prompt:\nDraft a forward-safe alignment message with this structure: Context (1 sentence), Options (2 options, 1 sentence each with trade-off), Recommendation (1 sentence), Next Step (1 sentence). Keep tone controlled and neutral. Do not assign blame. Do not invent agreement. Keep trade-offs explicit.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nStakeholder disagreement with organizational sensitivity\n\nO - Objective\nNeutral alignment message with explicit trade-offs\n\nR - Requirements\nOptions with trade-offs; controlled tone; no blame; no invented agreement\n\nE - Expectations\nForward-safe, paste-ready message',
            ),
          ],
          proTip:
              '“Diplomatic” is not a style choice - it’s a structure choice. Without explicit trade-offs, diplomacy becomes vagueness and the politics get worse.',
          takeaway:
              'Neutral tone with explicit trade-offs is the win condition.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that keep alignment messages neutral without losing decision clarity.',
            pieces: [
              PromptPieceDef(
                  text: 'Require options with explicit trade-offs',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Force a fixed one-sentence-per-section structure',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban blame language',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ban invented agreement/consensus',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Require a decision-ready recommendation and next step',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask AI to “make it inspiring”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove trade-offs to avoid tension',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use strong persuasive language to “win”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Only present one option to sound decisive',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI infer consensus language to smooth conflict',
                  isCorrect: false),
            ],
            coachingNote:
                'In political rooms, the risk is not “tone.” The risk is losing the trade-off. Structure protects truth while keeping you neutral.',
            assembledPromptExample:
                'Write a forward-safe alignment message: Context, Options (2 with trade-offs), Recommendation, Next Step. One sentence each. Neutral tone. No blame. No invented agreement.',
            feedbackWhenCorrect:
                'You now control decision framing without triggering politics - that’s a senior-level skill.',
            resultPolishedPrompt:
                'Draft a forward-safe alignment message: Context (1 sentence), Options (2 with trade-offs), Recommendation (1), Next Step (1). Neutral tone; no blame; no invented agreement; trade-offs explicit.',
          ),
        ),
      ],
    ),

    // The remaining four lessons continue this “final level” pattern.
    // To keep this patch safe and fast, they are authored in the same structure below.
    const LessonDef(
      title: 'Negotiate Scope, Risk, and Accountability (No Accidental Commitments)',
      scenarios: [
        ScenarioDef(
          title: 'Set Scope Boundaries That Survive Forwarding',
          situation:
              'A stakeholder wants you to “just include” additional scope in a plan.\n\nYou must set boundaries without sounding obstructive and without accidentally committing.\n\nIf you’re vague, your message will be read as approval.\n\nIf you’re harsh, you trigger escalation.\n\nIf you prompt AI weakly, it usually:\n- uses soft “we’ll try” language\n- hides conditions\n- removes out-of-scope clarity to keep tone friendly\n\nThis is why your prompt fails:\n- no In/Out/Conditions structure\n- no requirement for forward-safe wording\n- no expectation to prevent accidental commitment\n\nMost people try to be nice and end up committing by omission.\n\nTo get a usable result, your prompt must define:\n- Context - scope pressure and expectation management\n- Objective - set boundaries without blame\n- Requirements - In Scope / Out of Scope / Conditions to Revisit\n- Expectations - paste-ready, stakeholder-safe message',
          prompt:
              'Draft a forward-safe scope boundary message with three labeled sections: In Scope (3 bullets), Out of Scope (3 bullets), Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame. No invented promises.',
          output:
              '**In Scope**\n- Baseline onboarding flow + source-of-truth checklist\n- Function-owned inserts reviewed on a defined cadence\n- Pilot-first rollout with explicit success criteria\n\n**Out of Scope**\n- Promising performance outcomes we cannot measure yet\n- Expanding scope into full enablement redesign\n- Adding bespoke team-specific onboarding outside the baseline + inserts model\n\n**Conditions to Revisit**\n- If pilot shows baseline misfit, adjust standard vs insert boundaries explicitly\n- If leadership changes success criteria or timeline, re-plan scope with an explicit trade-off\n\nNotice how “conditions” prevents escalation: the prompt sets boundaries without making it sound like a permanent no.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is anti-commitment structure: In/Out/Conditions. It keeps tone neutral while preventing “we’ll try” drift.\n- Requirements force clarity without blame\n- Expectations make it forward-safe\n- Objective prevents accidental commitment under scope pressure',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a nice message about scope\n\nStrong prompt:\nDraft a forward-safe scope boundary message with three labeled sections: In Scope (3 bullets), Out of Scope (3 bullets), Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame. No invented promises.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nScope pressure and expectation management\n\nO - Objective\nSet boundaries without blame or accidental commitment\n\nR - Requirements\nIn/Out/Conditions; fixed bullets; neutral tone; no promises\n\nE - Expectations\nForward-safe, paste-ready boundary message',
            ),
          ],
          proTip:
              'If you don’t include “Out of Scope,” stakeholders will interpret silence as yes. Nice language without boundaries is not nice - it’s risky.',
          takeaway:
              'If it’s not explicitly out of scope, it will become in scope.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that prevent accidental commitments in scope boundary messages.',
            pieces: [
              PromptPieceDef(text: 'Require In/Out/Conditions sections', isCorrect: true),
              PromptPieceDef(text: 'Make it forward-safe (stakeholder-safe)', isCorrect: true),
              PromptPieceDef(text: 'Ban invented promises and outcomes', isCorrect: true),
              PromptPieceDef(text: 'Keep tone controlled and neutral', isCorrect: true),
              PromptPieceDef(text: 'Fix bullet counts to keep it crisp', isCorrect: true),
              PromptPieceDef(text: 'Use vague language to avoid conflict', isCorrect: false),
              PromptPieceDef(text: 'Remove out-of-scope items to stay positive', isCorrect: false),
              PromptPieceDef(text: 'Add persuasive language to win buy-in', isCorrect: false),
              PromptPieceDef(text: 'Promise delivery dates to reduce pushback', isCorrect: false),
              PromptPieceDef(text: 'Assign blame for constraints', isCorrect: false),
            ],
            coachingNote:
                'Forward-safe messages are judged on what they prevent. Structure beats tone. In/Out/Conditions is how you keep control under pressure.',
            assembledPromptExample:
                'Write a forward-safe scope boundary message: In Scope (3), Out of Scope (3), Conditions to Revisit (2). Neutral tone. No promises.',
            feedbackWhenCorrect:
                'You now control scope pressure without accidental commitments - most teams lose leverage here.',
            resultPolishedPrompt:
                'Draft a forward-safe scope boundary message with labeled sections: In Scope (3 bullets), Out of Scope (3 bullets), Conditions to Revisit (2 bullets). Neutral tone; no blame; no invented promises.',
          ),
        ),
        ScenarioDef(
          title: 'Translate Conflicting Requirements Into a Negotiation Frame',
          situation:
              'You receive conflicting requirements: “ship fast,” “don’t take risk,” “keep everyone happy,” and “don’t add headcount.”\n\nYou need a negotiation frame that makes the trade-offs explicit without sounding like you’re pushing back.\n\nIf you don’t make trade-offs explicit, you’ll be held responsible for impossible constraints.\n\nIf you prompt AI weakly, it usually:\n- echoes constraints without resolving them\n- invents a compromise that doesn’t exist\n- hides the “impossible triangle” to sound helpful\n\nThis is why your prompt fails:\n- no structure for trade-offs\n- no requirement to map constraints to decisions\n- no expectation for a negotiation-safe tone\n\nMost people accept impossible requirements and hope it works.\n\nTo get a usable result, your prompt must define:\n- Context - conflicting constraints and unclear priorities\n- Objective - make trade-offs explicit and propose decision questions\n- Requirements - constraints table + decision questions; no fake compromise\n- Expectations - paste-ready negotiation frame for stakeholders',
          prompt:
              'Create a negotiation frame with two sections: Constraints (4 bullets that restate the conflicting requirements) and Decision Questions (4 bullets that force prioritization trade-offs). Keep tone neutral. Do not invent a compromise solution. Make it safe to send.',
          output:
              '**Constraints (as stated)**\n- Ship quickly, with minimal schedule impact\n- Avoid operational risk and prevent downstream surprises\n- Keep stakeholder experience stable (no disruptive change)\n- Do not add headcount or sustained coordination load\n\n**Decision Questions (to force prioritization)**\n- Which matters more: timeline certainty or risk reduction if the dependency fails?\n- What is the acceptable cost: coordination up front or rework later?\n- What scope is mandatory vs optional to preserve speed without promising outcomes?\n- What decision deadline avoids downstream execution on the wrong assumption?\n\nLook at how this changes the conversation: the prompt forced questions that translate “requirements” into priorities, without pretending everything is compatible.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is refusing fake compromise. You turned conflicting constraints into decision questions that force prioritization.\n- Requirements ban invented solutions\n- Objective shifts from “accept requirements” to “clarify priorities”\n- Expectations produce a send-ready negotiation frame',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHelp me respond to these requirements\n\nStrong prompt:\nCreate a negotiation frame with two sections: Constraints (4 bullets that restate the conflicting requirements) and Decision Questions (4 bullets that force prioritization trade-offs). Keep tone neutral. Do not invent a compromise solution. Make it safe to send.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nConflicting constraints and unclear priorities\n\nO - Objective\nMake trade-offs explicit and force prioritization\n\nR - Requirements\nConstraints + decision questions; neutral tone; no fake compromise\n\nE - Expectations\nPaste-ready negotiation frame safe to send',
            ),
          ],
          proTip:
              'If you let the model “solve” conflicting requirements, it will invent a compromise that sounds plausible. That’s not a solution - it’s a future escalation.',
          takeaway:
              'Conflicting requirements are a prioritization problem, not a writing problem.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that prevent fake compromise in requirement negotiation.',
            pieces: [
              PromptPieceDef(text: 'Require explicit restatement of constraints', isCorrect: true),
              PromptPieceDef(text: 'Require decision questions that force prioritization', isCorrect: true),
              PromptPieceDef(text: 'Ban invented compromise solutions', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral and send-safe', isCorrect: true),
              PromptPieceDef(text: 'Tie questions to trade-offs (speed vs risk, etc.)', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to propose “the best solution” anyway', isCorrect: false),
              PromptPieceDef(text: 'Hide trade-offs to avoid difficult conversation', isCorrect: false),
              PromptPieceDef(text: 'Use aggressive language to push back', isCorrect: false),
              PromptPieceDef(text: 'Assume priorities are obvious from context', isCorrect: false),
              PromptPieceDef(text: 'Add emotional framing to increase urgency', isCorrect: false),
            ],
            coachingNote:
                'This is senior-level communication: you translate impossible constraints into decision questions that force priorities, without sounding defensive.',
            assembledPromptExample:
                'Write a negotiation frame: Constraints (4) + Decision Questions (4). Neutral tone. No invented compromise. Send-safe.',
            feedbackWhenCorrect:
                'You now control requirement negotiation without accepting impossible constraints as “requirements.”',
            resultPolishedPrompt:
                'Create a send-safe negotiation frame with Constraints (4 bullets) and Decision Questions (4 bullets) that force prioritization trade-offs. Neutral tone. No invented compromise solution.',
          ),
        ),
        ScenarioDef(
          title: 'Deliver a “No” That Preserves Relationships and Sets Conditions',
          situation:
              'You must decline a stakeholder request that would break scope, risk tolerance, or credibility.\n\nYou need to say no in a way that preserves the relationship and offers a controlled path forward.\n\nIf you soften too much, it becomes a yes.\n\nIf you’re blunt, you create a political problem.\n\nIf you prompt AI weakly, it usually:\n- says no without conditions\n- adds vague “happy to help” language\n- avoids the trade-off that drives the no\n\nThis is why your prompt fails:\n- no conditions structure\n- no boundaries on commitments\n- no expectation for controlled tone and next step\n\nMost people avoid no, and the scope expands anyway.\n\nTo get a usable result, your prompt must define:\n- Context - declining a high-pressure request\n- Objective - preserve relationship while preventing scope drift\n- Requirements - clear no + rationale + conditions to revisit\n- Expectations - short, forward-safe message',
          prompt:
              'Draft a forward-safe decline message with this structure: No (1 sentence), Why (1 sentence, factual), Conditions to Revisit (2 bullets), Next Step (1 sentence). Tone: controlled and professional. Do not apologize excessively or assign blame.',
          output:
              'No: We can’t commit to that expanded scope within the current timeline without increasing rework and risk.\nWhy: The current plan is calibrated to a baseline + inserts model, and adding bespoke work changes the delivery trade-offs.\nConditions to Revisit:\n- If leadership approves a timeline change, we can re-scope with explicit trade-offs.\n- If we reduce baseline scope, we can add one targeted bespoke item without increasing risk.\nNext Step: Confirm which constraint is flexible (timeline, scope, or risk tolerance), then we’ll propose an updated plan.\n\nThis is where you can see control: the prompt forced conditions, so “no” becomes a managed path forward instead of a fight.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is conditionality. No + factual why + conditions prevents accidental yes and keeps the relationship intact.\n- Requirements prevent over-apology and blame\n- Objective keeps boundaries while staying forward-safe\n- Expectations create a short message that can be forwarded without escalation',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a polite no to this request\n\nStrong prompt:\nDraft a forward-safe decline message with this structure: No (1 sentence), Why (1 sentence, factual), Conditions to Revisit (2 bullets), Next Step (1 sentence). Tone: controlled and professional. Do not apologize excessively or assign blame.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nDeclining a high-pressure request\n\nO - Objective\nPreserve relationship while preventing scope drift\n\nR - Requirements\nFixed structure; factual why; conditions; controlled tone; no blame/over-apology\n\nE - Expectations\nShort, forward-safe message with a managed path forward',
            ),
          ],
          proTip:
              'Most people say no without conditions, and the stakeholder hears “stonewall.” Conditions turn no into a professional negotiation, not a personal rejection.',
          takeaway:
              'A no without conditions becomes a political problem.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that produce a forward-safe, relationship-preserving “no”.',
            pieces: [
              PromptPieceDef(text: 'Require No/Why/Conditions/Next structure', isCorrect: true),
              PromptPieceDef(text: 'Require factual rationale (not emotional)', isCorrect: true),
              PromptPieceDef(text: 'Require conditions to revisit (2 bullets)', isCorrect: true),
              PromptPieceDef(text: 'Ban blame and excessive apology', isCorrect: true),
              PromptPieceDef(text: 'Make it forward-safe (controlled tone)', isCorrect: true),
              PromptPieceDef(text: 'Use aggressive language to prevent pushback', isCorrect: false),
              PromptPieceDef(text: 'Leave conditions out to keep it simple', isCorrect: false),
              PromptPieceDef(text: 'Over-explain with long paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Promise future delivery without constraints', isCorrect: false),
              PromptPieceDef(text: 'Shift responsibility to another team', isCorrect: false),
            ],
            coachingNote:
                'High-stakes no’s are about control, not politeness. Structure and conditions prevent accidental commitments while keeping the relationship intact.',
            assembledPromptExample:
                'Write a forward-safe decline: No (1), Why (1 factual), Conditions (2 bullets), Next Step (1). Controlled tone. No blame, no over-apology.',
            feedbackWhenCorrect:
                'You now control high-stakes “no” messages without triggering escalation - that’s rare.',
            resultPolishedPrompt:
                'Draft a forward-safe decline: No (1 sentence), Why (1 factual), Conditions to Revisit (2 bullets), Next Step (1). Controlled tone; no blame; no excessive apology.',
          ),
        ),
      ],
    ),

    // Lessons 3–5 (titles below) follow the same advanced pattern
    // with Scenario 1 clarity, Scenario 2 messy/conflicting input, Scenario 3 ambiguity + trade-offs.
    // For brevity here, they are authored to the same standard and structure.
    const LessonDef(
      title: 'Handle Sensitive Messaging (Risk, Trust, and Reputation)',
      scenarios: [
        ScenarioDef(
          title: 'Write a Trust-Preserving Customer Message (No Over-Promise)',
          situation:
              'You need an external message about an issue without over-promising or escalating.\n\nIf you over-promise, you create a credibility problem.\n\nIf you under-communicate, you create a trust problem.\n\nTo get a usable result, your prompt must define:\n- Context - customer message under uncertainty\n- Objective - preserve trust without inventing certainty\n- Requirements - facts only; what’s next; support path\n- Expectations - short, clear, customer-safe message',
          prompt:
              'Draft a customer-safe message with: What happened (1–2 sentences, factual), What we’re doing now (2 bullets), What you can do (1 bullet), Support (1 sentence). Do not promise timelines unless confirmed. Controlled, professional tone.',
          output:
              'What happened: We identified an issue affecting some users’ access to the service. We are still confirming full impact.\nWhat we’re doing now:\n- Investigating root cause and validating the mitigation path\n- Monitoring for additional impact and updating internal checkpoints\nWhat you can do:\n- If you’re blocked, contact support with your account ID so we can prioritize review\nSupport: We’ll share an update as soon as we can confirm the next checkpoint.\n\nNotice how credibility is protected: the prompt banned timeline invention while still giving users a clear path.',
          refinements: ['What Made This Work', 'Weak vs Strong Prompt', 'C.O.R.E. Breakdown'],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is trust without promises: factual impact + what we’re doing + what the customer can do.\n- Requirements ban timeline invention\n- Expectations force support path and next checkpoint framing\n- Objective keeps tone professional and calm',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite an apology email to customers\n\nStrong prompt:\nDraft a customer-safe message with: What happened (1–2 sentences, factual), What we’re doing now (2 bullets), What you can do (1 bullet), Support (1 sentence). Do not promise timelines unless confirmed. Controlled, professional tone.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCustomer message under uncertainty\n\nO - Objective\nPreserve trust without invented certainty\n\nR - Requirements\nFacts only; no unconfirmed timelines; clear next actions + support path\n\nE - Expectations\nShort, customer-safe message',
            ),
          ],
          proTip:
              'If you let the model “sound confident,” it will invent timelines. In external messaging, invented timelines are reputation debt.',
          takeaway:
              'Trust is facts + next checkpoint, not reassurance.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that prevent over-promising in customer messages.',
            pieces: [
              PromptPieceDef(text: 'Ban unconfirmed timelines', isCorrect: true),
              PromptPieceDef(text: 'Require factual “what happened” section', isCorrect: true),
              PromptPieceDef(text: 'Require “what we’re doing now” bullets', isCorrect: true),
              PromptPieceDef(text: 'Require a customer action/support path', isCorrect: true),
              PromptPieceDef(text: 'Keep tone controlled and professional', isCorrect: true),
              PromptPieceDef(text: 'Ask for strong reassurance language', isCorrect: false),
              PromptPieceDef(text: 'Promise resolution by a specific time', isCorrect: false),
              PromptPieceDef(text: 'Hide uncertainty to sound competent', isCorrect: false),
              PromptPieceDef(text: 'Add technical root-cause speculation', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative apology', isCorrect: false),
            ],
            coachingNote:
                'External messaging is where prompt drift becomes reputation risk. Facts, constraints, and support paths keep you safe.',
            assembledPromptExample:
                'Write a customer-safe update: factual impact, what we’re doing, what the customer can do, support. No unconfirmed timelines.',
            feedbackWhenCorrect:
                'You now control trust messaging without over-promising - most teams accidentally create credibility debt here.',
            resultPolishedPrompt:
                'Draft a customer-safe message with fixed sections and no unconfirmed timelines. Facts only, clear next actions, support path, controlled tone.',
          ),
        ),
        ScenarioDef(
          title: 'Reconcile Messy Incident Notes Into an Exec + Customer Pair',
          situation:
              'You have messy incident notes and need two aligned messages: one for executives, one for customers.\n\nIf the messages diverge, you create credibility risk internally and externally.\n\nTo get a usable result, your prompt must define:\n- Context - one incident, two audiences\n- Objective - consistent facts with audience-appropriate framing\n- Requirements - shared facts; different emphasis; no invention\n- Expectations - two outputs with consistent truth boundaries',
          prompt:
              'Create two messages from the same incident notes:\n1) Exec update: Status/Risk/Ask/Next (bullets).\n2) Customer update: What happened / What we’re doing / What you can do / Support.\nUse only confirmed facts. Mark gaps [Unknown]. No invented timelines.',
          output:
              '**Exec update**\n- Status: issue identified; scope still being confirmed [Unknown]\n- Risk: credibility and churn risk if we over-promise timelines\n- Ask: confirm whether we proactively message all users or only affected segment\n- Next: publish checkpoint after impact is confirmed\n\n**Customer update**\nWhat happened: We identified an issue affecting some users’ access; we are confirming full impact.\nWhat we’re doing: investigating + validating mitigation.\nWhat you can do: contact support if blocked.\nSupport: we’ll update after the next checkpoint.\n\nThe difference is consistency control: one prompt produced two audience outputs without changing the truth boundaries.',
          refinements: ['What Made This Work', 'Weak vs Strong Prompt', 'C.O.R.E. Breakdown'],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is shared facts + audience framing. You required two outputs but forced one truth boundary.\n- Requirements ban invented timelines\n- Expectations define both formats\n- Objective preserves credibility across audiences',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite messages for execs and customers\n\nStrong prompt:\nCreate two messages from the same incident notes:\n1) Exec update: Status/Risk/Ask/Next (bullets).\n2) Customer update: What happened / What we’re doing / What you can do / Support.\nUse only confirmed facts. Mark gaps [Unknown]. No invented timelines.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nOne incident, two audiences\n\nO - Objective\nConsistent facts with audience-appropriate framing\n\nR - Requirements\nUse confirmed facts only; mark [Unknown]; no invented timelines; defined formats\n\nE - Expectations\nTwo aligned outputs from one prompt',
            ),
          ],
          proTip:
              'Two-audience messaging is where most teams contradict themselves. Make “shared facts” an explicit requirement, or AI will drift the story for each audience.',
          takeaway:
              'If your audiences hear different facts, you don’t have comms - you have risk.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep exec and customer messaging aligned.',
            pieces: [
              PromptPieceDef(text: 'Require two explicit output formats', isCorrect: true),
              PromptPieceDef(text: 'Force shared confirmed facts (truth boundary)', isCorrect: true),
              PromptPieceDef(text: 'Mark gaps [Unknown]', isCorrect: true),
              PromptPieceDef(text: 'Ban invented timelines', isCorrect: true),
              PromptPieceDef(text: 'Specify audience-appropriate emphasis (not new facts)', isCorrect: true),
              PromptPieceDef(text: 'Let AI write “the best version” for each audience', isCorrect: false),
              PromptPieceDef(text: 'Add reassuring timelines for customers', isCorrect: false),
              PromptPieceDef(text: 'Hide uncertainty for execs to look strong', isCorrect: false),
              PromptPieceDef(text: 'Allow different facts per audience for readability', isCorrect: false),
              PromptPieceDef(text: 'Ask for technical root cause speculation', isCorrect: false),
            ],
            coachingNote:
                'The hard part isn’t writing; it’s consistency. Your prompt must lock truth boundaries so outputs don’t drift by audience.',
            assembledPromptExample:
                'From one incident note set, produce exec + customer updates with defined formats. Shared facts only, gaps [Unknown], no invented timelines.',
            feedbackWhenCorrect:
                'You now control multi-audience consistency - most teams accidentally contradict themselves.',
            resultPolishedPrompt:
                'Create exec + customer updates from the same notes with fixed formats. Confirmed facts only; mark gaps [Unknown]; no invented timelines; audience framing without changing facts.',
          ),
        ),
        ScenarioDef(
          title: 'Write a “We Were Wrong” Message That Preserves Authority',
          situation:
              'A prior message created a wrong expectation. You must correct it without sounding evasive or chaotic.\n\nIf you over-apologize, you look unstable.\n\nIf you under-correct, you look dishonest.\n\nTo get a usable result, your prompt must define:\n- Context - correcting a wrong expectation\n- Objective - clarify, reset expectation, preserve authority\n- Requirements - what changed, what’s true now, what’s next, no blame\n- Expectations - short, forward-safe correction message',
          prompt:
              'Draft a correction message with: What changed (1 sentence), What’s true now (2 bullets), What happens next (2 bullets), and a closing line that preserves authority (1 sentence). No blame. Controlled tone.',
          output:
              'What changed: We learned new information that invalidates the previous assumption.\nWhat’s true now:\n- The timeline confidence is not decision-ready without a dependency checkpoint\n- We will not confirm a date until the checkpoint is validated\nWhat happens next:\n- We will publish the checkpoint outcome after owner confirmation\n- We will update the plan with an explicit trade-off decision if sequencing changes\nClosing: We’ll keep updates factual and decision-ready as the signal becomes confirmed.\n\nNotice how authority is preserved: the prompt forced “what’s true now” and “what happens next” without blame or drama.',
          refinements: ['What Made This Work', 'Weak vs Strong Prompt', 'C.O.R.E. Breakdown'],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is authoritative correction: what changed, what is true now, what happens next.\n- Requirements ban blame and over-apology\n- Expectations keep it short and forward-safe\n- Objective resets expectations without losing authority',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite an apology for being wrong\n\nStrong prompt:\nDraft a correction message with: What changed (1 sentence), What’s true now (2 bullets), What happens next (2 bullets), and a closing line that preserves authority (1 sentence). No blame. Controlled tone.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCorrecting a wrong expectation\n\nO - Objective\nReset expectations while preserving authority\n\nR - Requirements\nFixed structure; controlled tone; no blame; no drama\n\nE - Expectations\nShort, forward-safe correction message',
            ),
          ],
          proTip:
              'Most corrections fail because they’re emotional. Authority is structure: what changed, what’s true, what’s next.',
          takeaway:
              'Correction messages must be factual and structured, not apologetic prose.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make correction messages authoritative and safe.',
            pieces: [
              PromptPieceDef(text: 'Require “what changed” + “what’s true now”', isCorrect: true),
              PromptPieceDef(text: 'Require “what happens next” bullets', isCorrect: true),
              PromptPieceDef(text: 'Ban blame language', isCorrect: true),
              PromptPieceDef(text: 'Keep tone controlled and non-dramatic', isCorrect: true),
              PromptPieceDef(text: 'Add an authority-preserving closing line', isCorrect: true),
              PromptPieceDef(text: 'Over-apologize to show sincerity', isCorrect: false),
              PromptPieceDef(text: 'Hide the change to avoid attention', isCorrect: false),
              PromptPieceDef(text: 'Assign fault to another team', isCorrect: false),
              PromptPieceDef(text: 'Promise a timeline to calm people down', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative explanation', isCorrect: false),
            ],
            coachingNote:
                'Corrections are credibility tests. Structure and bounded certainty keep you authoritative while resetting expectations.',
            assembledPromptExample:
                'Write a correction: what changed (1), what’s true now (2 bullets), what happens next (2 bullets), authority closing (1). Controlled tone; no blame.',
            feedbackWhenCorrect:
                'You now control expectation resets without losing authority - that’s senior-level credibility.',
            resultPolishedPrompt:
                'Draft a structured correction message: What changed (1), What’s true now (2 bullets), What happens next (2 bullets), Closing (1). Controlled tone; no blame; no invented timelines.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Make Decisions With AI (Bounded Certainty, No Hallucination)',
      scenarios: [
        ScenarioDef(
          title: 'Turn Inputs Into a Decision Brief (Not a Recommendation Dump)',
          situation:
              'You need a decision brief where AI helps structure reasoning, not invent it.\n\nTo get a usable result, your prompt must define:\n- Context - decision brief with incomplete inputs\n- Objective - structure the brief without hallucinating data\n- Requirements - options, risks, assumptions, decision question\n- Expectations - concise decision brief with bounded certainty',
          prompt:
              'Draft a decision brief with: Decision Question (1), Options (2 options, 2 bullets each), Risks (3 bullets), Assumptions (3 bullets), and Recommendation (1 bullet with condition). Mark unknowns [Unknown]. No invented data.',
          output:
              '**Decision Question**: Do we hold the current plan pending checkpoint, or re-sequence now to reduce risk?\n\n**Options**\n- Hold pending checkpoint: preserves plan; risk of late re-plan\n- Re-sequence now: reduces dependency exposure; coordination cost\n\n**Risks**\n- Rework risk if assumptions change after commitment\n- Credibility risk if we ship invented certainty\n- Execution risk if teams proceed on the wrong plan\n\n**Assumptions**\n- Dependency viability can be confirmed by a checkpoint [Unknown]\n- Teams can absorb coordination cost without slip [Unknown]\n- Success criteria can be defined quickly enough to guide pilot\n\n**Recommendation**\n- Recommend hold only if checkpoint can confirm viability before the decision deadline; otherwise re-sequence.\n\nNotice how bounded certainty is enforced: the prompt forced assumptions and [Unknown] tags so the model can’t “sound right” by making things up.',
          refinements: ['What Made This Work', 'Weak vs Strong Prompt', 'C.O.R.E. Breakdown'],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is preventing recommendation theater: options, risks, assumptions, and a conditional recommendation.\n- Requirements ban invented data\n- Expectations force bounded certainty markers\n- Objective structures reasoning without pretending the inputs are complete',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nRecommend what we should do\n\nStrong prompt:\nDraft a decision brief with: Decision Question (1), Options (2 options, 2 bullets each), Risks (3 bullets), Assumptions (3 bullets), and Recommendation (1 bullet with condition). Mark unknowns [Unknown]. No invented data.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nDecision brief with incomplete inputs\n\nO - Objective\nStructure decision without hallucination\n\nR - Requirements\nOptions/risks/assumptions; [Unknown] tags; conditional recommendation; no invented data\n\nE - Expectations\nConcise, decision-ready brief with bounded certainty',
            ),
          ],
          proTip:
              'If you ask for “the best recommendation,” AI will invent justification. Force assumptions and conditionality or you’re buying confidence, not help.',
          takeaway:
              'A recommendation without assumptions is just confident fiction.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that prevent hallucinated decision briefs.',
            pieces: [
              PromptPieceDef(text: 'Require options + risks + assumptions', isCorrect: true),
              PromptPieceDef(text: 'Require [Unknown] tagging', isCorrect: true),
              PromptPieceDef(text: 'Ban invented data', isCorrect: true),
              PromptPieceDef(text: 'Require a conditional recommendation', isCorrect: true),
              PromptPieceDef(text: 'Include an explicit decision question', isCorrect: true),
              PromptPieceDef(text: 'Ask for a confident recommendation without constraints', isCorrect: false),
              PromptPieceDef(text: 'Let AI add supporting metrics', isCorrect: false),
              PromptPieceDef(text: 'Remove assumptions to keep it clean', isCorrect: false),
              PromptPieceDef(text: 'Use emotional persuasion language', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative analysis', isCorrect: false),
            ],
            coachingNote:
                'Decision briefs are where hallucination is most dangerous. Options + risks + assumptions + [Unknown] is the safety system.',
            assembledPromptExample:
                'Write a decision brief with decision question, options, risks, assumptions, and a conditional recommendation. Mark [Unknown]. No invented data.',
            feedbackWhenCorrect:
                'You now control bounded certainty in decision work - that’s the final-level skill.',
            resultPolishedPrompt:
                'Draft a decision brief: Decision Question (1), Options (2×2 bullets), Risks (3), Assumptions (3), Recommendation (1 conditional). Mark [Unknown]. No invented data.',
          ),
        ),
        ScenarioDef(
          title: 'Synthesize Conflicting Inputs Into a Decision Threshold',
          situation:
              'Inputs conflict and you need a threshold that triggers a decision.\n\nTo get a usable result, your prompt must define:\n- Context - conflicting inputs with time pressure\n- Objective - define a decision threshold\n- Requirements - trigger conditions, next action, owner\n- Expectations - threshold statement that can be used operationally',
          prompt:
              'Write a decision threshold statement with: Trigger (2 bullets), Decision (1 bullet), Next Action (2 bullets). Use [Unknown] if any trigger requires data not yet confirmed. No invented numbers.',
          output:
              '**Trigger**\n- If dependency viability is not confirmed by the next checkpoint [Unknown: checkpoint date]\n- If downstream teams must commit sequencing decisions before viability is confirmed\n\n**Decision**\n- Re-sequence to remove dependency exposure from the critical path\n\n**Next Action**\n- Define the checkpoint owner and confirmation criteria [Unknown]\n- Communicate the decision deadline so teams don’t execute on the wrong assumption\n\nThis is where you can see operator-level prompting: the prompt produced an operational threshold, not a “recommendation.”',
          refinements: ['What Made This Work', 'Weak vs Strong Prompt', 'C.O.R.E. Breakdown'],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is operationalization: triggers → decision → next action.\n- Requirements ban invented numbers and force [Unknown] where needed\n- Objective turns ambiguity into a threshold\n- Expectations produce something teams can actually run',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTell me what to do\n\nStrong prompt:\nWrite a decision threshold statement with: Trigger (2 bullets), Decision (1 bullet), Next Action (2 bullets). Use [Unknown] if any trigger requires data not yet confirmed. No invented numbers.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nConflicting inputs with time pressure\n\nO - Objective\nDefine a decision threshold\n\nR - Requirements\nTrigger/Decision/Next structure; [Unknown] tags; no invented numbers\n\nE - Expectations\nOperational threshold statement',
            ),
          ],
          proTip:
              'If you don’t force triggers, AI will give you advice. Advice doesn’t run. Thresholds run.',
          takeaway:
              'Decision thresholds beat recommendations in messy reality.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that turn ambiguity into an operational decision threshold.',
            pieces: [
              PromptPieceDef(text: 'Require Trigger/Decision/Next structure', isCorrect: true),
              PromptPieceDef(text: 'Ban invented numbers', isCorrect: true),
              PromptPieceDef(text: 'Require [Unknown] tagging for missing trigger data', isCorrect: true),
              PromptPieceDef(text: 'Tie triggers to a decision deadline', isCorrect: true),
              PromptPieceDef(text: 'Make next actions explicit', isCorrect: true),
              PromptPieceDef(text: 'Ask for general advice and best practices', isCorrect: false),
              PromptPieceDef(text: 'Hide unknowns to keep it confident', isCorrect: false),
              PromptPieceDef(text: 'Add persuasive language', isCorrect: false),
              PromptPieceDef(text: 'Write long narrative analysis', isCorrect: false),
              PromptPieceDef(text: 'Assume trigger criteria without stating it', isCorrect: false),
            ],
            coachingNote:
                'Thresholds are how senior teams avoid endless debate. Prompting for triggers and actions forces operational clarity without hallucination.',
            assembledPromptExample:
                'Write a decision threshold: triggers, decision, next actions. [Unknown] for missing trigger data. No invented numbers.',
            feedbackWhenCorrect:
                'You now control decision thresholds - this is beyond “prompting”; it’s operational leverage.',
            resultPolishedPrompt:
                'Create an operational decision threshold with Trigger (2), Decision (1), Next Action (2). Tag missing trigger data [Unknown]. No invented numbers.',
          ),
        ),
        ScenarioDef(
          title: 'Write the “Final Call” Message That Locks the Decision',
          situation:
              'A decision has been made, but the organization will reinterpret it unless you lock it precisely.\n\nTo get a usable result, your prompt must define:\n- Context - final decision communication\n- Objective - lock scope, rationale, and next steps\n- Requirements - decided vs deferred; owners; no invented details\n- Expectations - forward-safe final call message',
          prompt:
              'Draft a final decision message with: Decision (1 sentence), Rationale (2 bullets), Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets with owners or [TBD]). Controlled tone; no invented details.',
          output:
              'Decision: We are proceeding with a baseline + inserts onboarding model and piloting before scale.\nRationale:\n- Balances consistency with function realities while keeping ownership explicit\n- Reduces rework and credibility risk versus a broad rollout\nDecided Today:\n- Scope boundary (mandatory vs optional) set\n- Ownership model confirmed\n- Pilot-first rollout approved\nDeferred:\n- Success criteria per function [TBD]\n- Review cadence and approver list [TBD]\nNext:\n- Draft baseline checklist [Owner: People Ops]\n- Collect inserts [Owners: Function leads]\n- Schedule checkpoint review [Owner: Program lead]\n\nPay attention to how drift is prevented: the prompt forced Decided vs Deferred so the organization can’t “fill in” missing decisions later.',
          refinements: ['What Made This Work', 'Weak vs Strong Prompt', 'C.O.R.E. Breakdown'],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is drift prevention: Decision + decided vs deferred + owned next actions.\n- Requirements ban invented details\n- Expectations force [TBD] where needed\n- Objective locks interpretation so the org doesn’t rewrite the decision later',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a message announcing the decision\n\nStrong prompt:\nDraft a final decision message with: Decision (1 sentence), Rationale (2 bullets), Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets with owners or [TBD]). Controlled tone; no invented details.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nFinal decision communication\n\nO - Objective\nLock scope, rationale, and next steps\n\nR - Requirements\nDecided vs deferred; owners or [TBD]; controlled tone; no invention\n\nE - Expectations\nForward-safe message that prevents drift',
            ),
          ],
          proTip:
              'Most decisions drift because “deferred” isn’t stated. If you don’t label what wasn’t decided, people will decide it for you after the meeting.',
          takeaway:
              'Decisions drift when deferrals are unspoken.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that lock a decision and prevent organizational drift.',
            pieces: [
              PromptPieceDef(text: 'Require Decided vs Deferred sections', isCorrect: true),
              PromptPieceDef(text: 'Require owners or [TBD] for next actions', isCorrect: true),
              PromptPieceDef(text: 'Ban invented details', isCorrect: true),
              PromptPieceDef(text: 'Include rationale bullets (not just announcement)', isCorrect: true),
              PromptPieceDef(text: 'Keep it forward-safe and controlled tone', isCorrect: true),
              PromptPieceDef(text: 'Hide deferred items to sound complete', isCorrect: false),
              PromptPieceDef(text: 'Invent owners and dates for clarity', isCorrect: false),
              PromptPieceDef(text: 'Use emotional celebration tone', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative recap', isCorrect: false),
              PromptPieceDef(text: 'Leave next steps vague', isCorrect: false),
            ],
            coachingNote:
                'Final-call messages are interpretation control. Decided vs deferred + owned next steps is how you stop the org from rewriting the decision.',
            assembledPromptExample:
                'Write a final call: Decision (1), Rationale (2 bullets), Decided Today (3), Deferred (2), Next (3 with owners or [TBD]). No invented details.',
            feedbackWhenCorrect:
                'You now control decision lock-in - this is where senior operators outperform everyone else.',
            resultPolishedPrompt:
                'Draft a forward-safe final decision message with Decision, Rationale, Decided Today, Deferred, Next (with owners/[TBD]). Controlled tone; no invented details.',
          ),
        ),
      ],
    ),
  ];
}

```

### `lib\data\tracks\track6_content_creation.dart`
```
import '../app_catalog.dart';

/// Track 6 – Content Creation (lessons 1–5)
///
/// Track 6 is where “writing” becomes decision-consequential: you’re shaping tone,
/// certainty, and structure under ambiguity, time pressure, and audience risk.
List<LessonDef> buildTrack6Lessons() {
  return [
    const LessonDef(
      title: 'Rewrite Content for Tone and Style',
      scenarios: [
        ScenarioDef(
          title: 'Rewrite for a More Professional Tone',
          situation:
              'You need to send a message that will be forwarded to an external stakeholder.\n\nYour draft is accurate, but it reads casual and slightly defensive.\n\nIf the tone lands wrong, trust drops and every future update gets scrutinised.\n\nIf you prompt AI weakly, it usually:\n- “polishes” by changing meaning\n- adds fluff to sound professional\n- softens accountability to avoid discomfort\n\nThis is why your prompt fails:\n- no boundary on what must not change\n- no tone target that’s specific enough\n- no expectation for forward-safe phrasing\n\nMost people ask for “make it more professional” and accidentally approve a different message.\n\nTo get a usable result, your prompt must define:\n- Context - forward-safe stakeholder update\n- Objective - raise professionalism without shifting meaning\n- Requirements - preserve meaning/structure; remove casual/defensive language; keep it crisp\n- Expectations - paste-ready rewrite in the same shape',
          prompt:
              'Rewrite the message in a more professional, forward-safe tone.\n\nRequirements:\n- Preserve the original meaning and overall structure\n- Keep length within \u00b115%\n- Remove casual phrasing and any defensive tone\n- Do not add new claims, promises, dates, or justifications\n\nReturn only the rewritten message.',
          output:
              "Thank you for the update. I've reviewed the draft and will prepare the revisions by tomorrow. Please let me know if you have any additional input.\n\nWhat matters here is boundary control: the prompt forced a tone shift without letting the model “improve” the message by changing its substance.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *meaning preservation under tone change*.\n- Requirements prevented “helpful edits” (new claims, promises, or justification)\n- Expectations made it paste-ready (no commentary, no options)\n- Objective kept the rewrite forward-safe instead of “more formal but different”',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this more professional\n\nStrong prompt:\nRewrite the message in a more professional, forward-safe tone. Preserve meaning and overall structure; keep length within \u00b115%; remove casual/defensive language; do not add new claims/promises/dates/justifications. Return only the rewritten message.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nForward-safe stakeholder update\n\nO - Objective\nIncrease professionalism without shifting meaning\n\nR - Requirements\nPreserve meaning/structure; keep length within \u00b115%; remove casual/defensive phrasing; no new claims/promises/dates\n\nE - Expectations\nReturn only a paste-ready rewrite',
            ),
          ],
          proTip:
              'If you don’t explicitly ban “new promises,” the model will quietly write commitments you never agreed to. That’s how tone rewrites turn into liabilities.',
          takeaway:
              'In high-stakes rewrites, constraints protect meaning more than “good writing” does.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that keep a tone rewrite professional *without* changing meaning.',
            pieces: [
              PromptPieceDef(
                text: 'Preserve the original meaning and overall structure',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Keep length within \u00b115% (avoid expansion drift)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Remove casual and defensive language',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Ban new claims, promises, dates, or justifications',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Return only the rewritten message (paste-ready)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Add a persuasive paragraph to strengthen the argument',
                isCorrect: false,
              ),
              PromptPieceDef(
                text: 'Improve clarity by adding helpful background assumptions',
                isCorrect: false,
              ),
              PromptPieceDef(
                text: 'Make it longer to sound more professional',
                isCorrect: false,
              ),
              PromptPieceDef(
                text: 'Add reassurance to reduce stakeholder concern',
                isCorrect: false,
              ),
              PromptPieceDef(
                text: 'Change the structure to a new format (bullets, headings)',
                isCorrect: false,
              ),
            ],
            coachingNote:
                'The risk isn’t grammar—it’s drift. Your prompt must lock meaning and ban “helpful” additions so the tone upgrade doesn’t rewrite the message.',
            assembledPromptExample:
                'Rewrite this message to be more professional and forward-safe. Preserve meaning and structure; keep length within \u00b115%; remove casual/defensive phrasing; don’t add new claims/promises/dates. Return only the rewrite.',
            feedbackWhenCorrect:
                'You now control tone without content drift—most people accidentally approve a different message.',
            resultPolishedPrompt:
                'Rewrite in a professional, forward-safe tone while preserving meaning and structure. Keep length within \u00b115%. Remove casual/defensive phrasing. Do not add new claims, promises, dates, or justifications. Return only the rewritten message.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite for a More Concise Style',
          situation:
              'You need to send a quick update in a channel where people skim.\n\nYour draft is accurate but wordy—important signals get buried.\n\nIf this stays unclear, people will act on the wrong priority.\n\nIf you prompt AI weakly, it usually:\n- deletes nuance you needed\n- keeps the same length with different words\n- “summarises” by changing the implied commitment\n\nThis is why your prompt fails:\n- no definition of what must survive compression\n- no target structure for the shorter version\n- no guardrails against changing commitments\n\nTo get a usable result, your prompt must define:\n- Context - skim-friendly status update\n- Objective - compress without losing decision signal\n- Requirements - keep key facts + next action; remove filler; no new promises\n- Expectations - one short paragraph or 2 bullets (your choice)',
          prompt:
              'Rewrite the text to be more concise.\n\nRequirements:\n- Keep all essential meaning (facts + next step)\n- Remove redundancy and filler\n- Do not change commitments, owners, dates, or scope\n- Output as exactly 2 bullets: (1) Status, (2) Next\n\nReturn only the 2 bullets.',
          output:
              "- **Status:** The meeting has been moved to Thursday.\n- **Next:** I'll share the updated agenda once it's ready.\n\nLook at how structure creates speed: forcing Status/Next keeps the decision signal visible while everything else gets cut.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *compression with a preserved decision signal*.\n- Requirements protected commitments (no scope/date drift)\n- Expectations forced a stable shape (Status/Next) so the model couldn’t ramble\n- Objective focused on what matters under skim pressure: what changed + what happens next',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this shorter\n\nStrong prompt:\nRewrite to be concise while keeping essential meaning. Remove redundancy. Do not change commitments/owners/dates/scope. Output as exactly 2 bullets: Status and Next. Return only the bullets.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSkim-friendly update where people act fast\n\nO - Objective\nCompress without losing the decision signal\n\nR - Requirements\nKeep facts + next step; remove filler; no commitment/date/scope drift\n\nE - Expectations\nExactly 2 bullets: Status, Next',
            ),
          ],
          proTip:
              '“Make it shorter” is how you lose accountability. Force a tiny structure (Status/Next) so the model can’t delete the one line people actually need.',
          takeaway:
              'Concision is safer when you specify what must remain visible.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that compress an update *without* losing the decision signal.',
            pieces: [
              PromptPieceDef(
                text: 'Keep all essential meaning (facts + next step)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Remove redundancy and filler only',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Do not change commitments, owners, dates, or scope',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Force output shape: exactly 2 bullets (Status, Next)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Return only the final output (no explanations)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Add motivational language to keep energy high',
                isCorrect: false,
              ),
              PromptPieceDef(
                text: 'Rewrite with new examples to improve clarity',
                isCorrect: false,
              ),
              PromptPieceDef(
                text: 'Add assumptions to make the update feel complete',
                isCorrect: false,
              ),
              PromptPieceDef(
                text: 'Change the tone to be more enthusiastic',
                isCorrect: false,
              ),
              PromptPieceDef(
                text: 'Expand into a detailed paragraph so nothing is missed',
                isCorrect: false,
              ),
            ],
            coachingNote:
                'Under skim pressure, the failure mode is deleting the one operational line. Your prompt must protect the “what changed” and “what happens next.”',
            assembledPromptExample:
                'Rewrite this to be concise. Keep essential meaning (facts + next step). Remove filler. Don’t change commitments/owners/dates/scope. Output exactly 2 bullets: Status, Next.',
            feedbackWhenCorrect:
                'You’re now compressing without losing accountability—most people trade clarity for brevity and regret it later.',
            resultPolishedPrompt:
                'Rewrite to be concise while preserving essential meaning. Remove redundancy only. Do not change commitments/owners/dates/scope. Output exactly 2 bullets: Status and Next. Return only the bullets.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite for a Friendlier Tone',
          situation:
              'You need to respond to someone who feels ignored.\n\nYour current draft is correct, but it reads cold—and the relationship cost will show up later.\n\nIf you over-correct, you can sound overly casual or apologetic for things you didn’t do.\n\nIf you prompt AI weakly, it usually:\n- adds fake warmth (“hope you’re well”) that feels off\n- over-apologises and creates liability\n- becomes informal and loses credibility\n\nTo get a usable result, your prompt must define:\n- Context - relationship-sensitive reply\n- Objective - warmer tone without lowering professional standards\n- Requirements - acknowledge, clarify next step, keep boundaries\n- Expectations - short, paste-ready response',
          prompt:
              'Rewrite the message to be friendlier while staying professional.\n\nRequirements:\n- Preserve meaning\n- Add one brief acknowledgement line (no over-apology)\n- Keep it concise (max 3 sentences)\n- Do not add casual slang or emojis\n\nReturn only the rewritten message.',
          output:
              "Thanks for checking in — I appreciate the nudge. I'm reviewing the document now and will send the updated version shortly. If there’s a specific section you want prioritised, tell me and I’ll start there.\n\nPay attention to how tone stays warm without surrendering control: the prompt forced acknowledgement *and* boundaries.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *warmth without liability*.\n- Requirements prevented over-apology and casual drift\n- Expectations capped length so warmth didn’t become fluff\n- Objective kept the message professional while still human',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this friendlier\n\nStrong prompt:\nRewrite to be friendlier while staying professional. Preserve meaning; add one brief acknowledgement (no over-apology); max 3 sentences; no slang/emojis. Return only the rewritten message.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nRelationship-sensitive reply that may be forwarded\n\nO - Objective\nIncrease warmth without lowering professionalism\n\nR - Requirements\nPreserve meaning; one acknowledgement line; concise; no casual drift\n\nE - Expectations\nMax 3 sentences, paste-ready',
            ),
          ],
          proTip:
              'If you don’t say “no over-apology,” the model will invent accountability to sound nice. That’s not friendliness—that’s risk.',
          takeaway:
              'Friendly tone is a constraint problem, not a personality problem.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that make tone friendlier without becoming casual or over-apologetic.',
            pieces: [
              PromptPieceDef(text: 'Preserve the original meaning', isCorrect: true),
              PromptPieceDef(
                text: 'Add one brief acknowledgement line (no over-apology)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Keep it concise (max 3 sentences)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Stay professional (no slang or emojis)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Return only the rewritten message (paste-ready)',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Add playful jokes to build rapport', isCorrect: false),
              PromptPieceDef(text: 'Apologise strongly to sound empathetic', isCorrect: false),
              PromptPieceDef(
                text: 'Invent a reason for the delay to reassure them',
                isCorrect: false,
              ),
              PromptPieceDef(text: 'Make it much longer to sound thoughtful', isCorrect: false),
              PromptPieceDef(text: 'Add emojis to make it warmer', isCorrect: false),
            ],
            coachingNote:
                'Warmth that invents accountability is expensive. Specify acknowledgement + boundaries so the model can’t “people-please” its way into risk.',
            assembledPromptExample:
                'Rewrite to be friendlier but still professional. Preserve meaning. Add one brief acknowledgement (no over-apology). Max 3 sentences. No slang or emojis. Return only the rewrite.',
            feedbackWhenCorrect:
                'You’ve learned to add warmth without creating liability—most users over-correct and lose control.',
            resultPolishedPrompt:
                'Rewrite in a friendlier but still professional tone. Preserve meaning. Add one brief acknowledgement (no over-apology). Keep to max 3 sentences. No slang/emojis. Return only the rewritten message.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Rewrite Content for Different Audiences',
      scenarios: [
        ScenarioDef(
          title: 'Rewrite for a Senior Leadership Audience',
          situation:
              'You’re turning an internal update into something senior leadership can read in 20 seconds.\n\nThey don’t want process—they want outcomes, risk, and the decision ask.\n\nIf you oversimplify, you hide the only thing that matters.\n\nIf you prompt AI weakly, it usually:\n- strips risk to sound “confident”\n- adds vague positivity\n- removes the decision ask entirely\n\nTo get a usable result, your prompt must define:\n- Context - exec skim update\n- Objective - outcomes + risk + ask, no fluff\n- Requirements - high-level, bounded certainty, no invention\n- Expectations - short, forward-safe format',
          prompt:
              'Rewrite the update for senior leadership.\n\nRequirements:\n- Output exactly 3 bullets: Outcome, Risk, Ask\n- Use only confirmed facts; if a detail is missing, mark it [Unknown]\n- Keep it concise and forward-safe\n- Do not add mitigation claims unless stated\n\nReturn only the 3 bullets.',
          output:
              "- **Outcome:** The project remains on track for Friday’s milestone based on confirmed progress to date.\n- **Risk:** Final validation is in progress; residual risk cannot be quantified yet [Unknown].\n- **Ask:** Confirm whether to proceed with the milestone pending validation, or hold until results are confirmed.\n\nThis is where you can see executive control: the prompt forced Outcome/Risk/Ask so leadership gets a decision signal, not “an update.”",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *decision structure under uncertainty*.\n- Requirements forced bounded certainty ([Unknown] instead of confident guessing)\n- Expectations locked the exec lens (Outcome/Risk/Ask)\n- Objective ensured the update produces a decision, not information noise',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nRewrite for senior leadership\n\nStrong prompt:\nRewrite for senior leadership. Output exactly 3 bullets: Outcome, Risk, Ask. Facts only; mark gaps [Unknown]. Keep concise and forward-safe. Do not invent mitigation claims. Return only the bullets.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nExec audience, skim speed, forward-safe\n\nO - Objective\nOutcomes + risk + decision ask\n\nR - Requirements\nFacts only; [Unknown] for gaps; no invented mitigations; concise\n\nE - Expectations\nExactly 3 bullets: Outcome, Risk, Ask',
            ),
          ],
          proTip:
              'Executives don’t need more detail—they need the *decision boundary*. If you don’t force an Ask, the model will write “next steps” that don’t drive action.',
          takeaway:
              'For senior audiences, structure is how you earn attention.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that produce an exec-ready Outcome/Risk/Ask without invented certainty.',
            pieces: [
              PromptPieceDef(
                text: 'Force exactly 3 bullets: Outcome, Risk, Ask',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Require confirmed facts only (no guessing)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Mark missing details as [Unknown]',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Keep it concise and forward-safe',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Ban invented mitigation claims',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Add a motivating intro to set tone', isCorrect: false),
              PromptPieceDef(text: 'Remove risk language to sound confident', isCorrect: false),
              PromptPieceDef(text: 'Add likely timelines even if not confirmed', isCorrect: false),
              PromptPieceDef(text: 'Include background process detail for completeness', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative paragraph', isCorrect: false),
            ],
            coachingNote:
                'This is where most AI users fail: they ask for “exec tone” and get confident vagueness. Force structure + bounded certainty so the output stays decision-ready.',
            assembledPromptExample:
                'Rewrite for senior leadership as exactly 3 bullets: Outcome, Risk, Ask. Facts only. Mark gaps [Unknown]. No invented mitigations. Return only the bullets.',
            feedbackWhenCorrect:
                'You’re now writing exec updates that trigger decisions instead of consuming attention.',
            resultPolishedPrompt:
                'Rewrite for senior leadership using exactly 3 bullets: Outcome, Risk, Ask. Facts only; mark unknowns as [Unknown]. Keep concise and forward-safe. Do not invent mitigations. Return only the bullets.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite for a Customer Audience',
          situation:
              'You need to update a customer using text that currently reads like an internal note.\n\nYou must be clear, calm, and transparent—without over-committing.\n\nIf you sound uncertain, you trigger escalations.\n\nIf you sound too certain, you create contractual expectations.\n\nTo get a usable result, your prompt must define:\n- Context - customer-facing update\n- Objective - clarity + reassurance without false promises\n- Requirements - approved facts only; tone constraints; commitment boundaries\n- Expectations - short, customer-ready message',
          prompt:
              'Rewrite the message for a customer.\n\nRequirements:\n- Keep tone calm, confident, and respectful\n- Use only confirmed facts; do not invent timelines, causes, or guarantees\n- Include: (1) what we know, (2) what we’re doing next, (3) when we’ll update them\n- If a detail is unknown, say it’s being investigated (don’t guess)\n\nReturn only the rewritten message.',
          output:
              'Thank you for your patience. We’re currently reviewing the issue and validating the impact based on the information available so far. Next, we’ll complete our checks and share an update with the latest confirmed details by tomorrow.\n\nThe difference is controlled reassurance: the prompt forced a calm tone while banning invented certainty and over-promising.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *reassurance without guarantees*.\n- Requirements prevented invented timelines/causes\n- Expectations forced a complete customer structure (know / next / update)\n- Objective kept the message calm and credible instead of vague or risky',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nRewrite this for a customer\n\nStrong prompt:\nRewrite for a customer: calm, confident, respectful. Facts only; no invented timelines/causes/guarantees. Include what we know, what we’re doing next, and when we’ll update. If unknown, say it’s being investigated. Return only the rewrite.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nCustomer update with uncertainty and risk of over-commitment\n\nO - Objective\nClear, reassuring, credible communication\n\nR - Requirements\nFacts only; no guessing; tone constraints; investigation language for unknowns\n\nE - Expectations\nMessage includes: what we know / next / when we’ll update',
            ),
          ],
          proTip:
              'Customers escalate when you guess. If you don’t explicitly ban invented timelines, the model will “help” by writing promises you can’t keep.',
          takeaway:
              'Customer trust is built by credible certainty, not confident guessing.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that make a customer update calm and clear without accidental promises.',
            pieces: [
              PromptPieceDef(text: 'Keep tone calm, confident, and respectful', isCorrect: true),
              PromptPieceDef(text: 'Use confirmed facts only (no guessing)', isCorrect: true),
              PromptPieceDef(
                text: 'Ban invented timelines, causes, or guarantees',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Force structure: what we know / next / when we’ll update',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'If unknown, say it’s being investigated (don’t fill gaps)',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Add a promise that it will be fixed soon', isCorrect: false),
              PromptPieceDef(text: 'Explain internal process details for transparency', isCorrect: false),
              PromptPieceDef(text: 'Use casual friendliness to reduce tension', isCorrect: false),
              PromptPieceDef(text: 'Guess the root cause to sound competent', isCorrect: false),
              PromptPieceDef(text: 'Add discounts or compensation language', isCorrect: false),
            ],
            coachingNote:
                'The trap is “helpful certainty.” You want reassurance *inside boundaries*, not invented commitments that become someone else’s contract.',
            assembledPromptExample:
                'Rewrite for a customer: calm and respectful. Facts only; no invented timelines/causes/guarantees. Include what we know, what we’re doing next, and when we’ll update. If unknown, say it’s being investigated.',
            feedbackWhenCorrect:
                'You now control customer tone without over-committing—most users accidentally prompt the model into making promises.',
            resultPolishedPrompt:
                'Rewrite for a customer in a calm, confident, respectful tone. Use confirmed facts only. Do not invent timelines, causes, or guarantees. Include what we know, what we’ll do next, and when we’ll update. If something is unknown, say it’s being investigated.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite for a Non-Expert Audience',
          situation:
              'You need to explain something to a non-expert audience without sounding condescending.\n\nIf it’s too technical, they misunderstand.\n\nIf it’s too simplified, you hide important constraints.\n\nWeak prompting often produces:\n- “explain like I’m five” tone that feels insulting\n- missing caveats that matter\n- invented analogies that change meaning\n\nTo get a usable result, your prompt must define:\n- Context - non-expert audience with real constraints\n- Objective - clarity without distortion\n- Requirements - plain language, keep key caveats, no invented analogies\n- Expectations - short explanation + one concrete example',
          prompt:
              'Rewrite the text for a non-expert audience.\n\nRequirements:\n- Use plain language (avoid jargon)\n- Keep the key caveats/constraints (don’t oversimplify)\n- Do not invent analogies or new examples\n- Include: (1) a 2–3 sentence explanation, (2) one concrete example using only provided details\n\nReturn only the rewritten content.',
          output:
              'The project is on track, and we’re in the final testing stage to make sure everything works as expected. We’ll share the completed package once that validation is finished.\n\nExample: We’re running the last checks now; when they pass, we’ll send the final version.\n\nWhat matters here is respectful clarity: the prompt forced plain language while protecting the caveats that keep the explanation true.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *simplification without distortion*.\n- Requirements kept caveats visible (validation still pending)\n- Expectations demanded a specific shape (short explanation + example)\n- The “no invented analogies” rule prevents the model from changing meaning to be relatable',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nExplain this simply\n\nStrong prompt:\nRewrite for a non-expert audience: plain language, keep key caveats, no invented analogies. Output: 2–3 sentence explanation + one concrete example using only provided details. Return only the content.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nNon-expert audience, real constraints still matter\n\nO - Objective\nClarity without distortion or condescension\n\nR - Requirements\nPlain language; keep caveats; no invented analogies/examples\n\nE - Expectations\n2–3 sentence explanation + one concrete example (facts only)',
            ),
          ],
          proTip:
              'Non-expert rewrites fail when the model tries to be “relatable” by inventing analogies. If you don’t ban invention, you’ll get clarity that’s wrong.',
          takeaway:
              'Plain language is only valuable if the constraints survive.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that make a non-expert rewrite clear, accurate, and respectful.',
            pieces: [
              PromptPieceDef(text: 'Use plain language (avoid jargon)', isCorrect: true),
              PromptPieceDef(text: 'Keep key caveats/constraints visible', isCorrect: true),
              PromptPieceDef(
                text: 'Ban invented analogies and new examples',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Force structure: 2–3 sentences + one concrete example',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Require the example to use only provided details',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Add jokes to keep it engaging', isCorrect: false),
              PromptPieceDef(text: 'Remove caveats to keep it simple', isCorrect: false),
              PromptPieceDef(text: 'Add new analogies to explain faster', isCorrect: false),
              PromptPieceDef(text: 'Assume the audience is fully technical', isCorrect: false),
              PromptPieceDef(text: 'Expand into a long educational lesson', isCorrect: false),
            ],
            coachingNote:
                'The trap is “simple but wrong.” Protect constraints and ban invention so the non-expert version stays true and usable.',
            assembledPromptExample:
                'Rewrite for a non-expert: plain language, keep key caveats, no invented analogies. Output 2–3 sentences + one concrete example using only provided details. Return only the rewrite.',
            feedbackWhenCorrect:
                'You’re now simplifying without distortion—most users trade accuracy for friendliness.',
            resultPolishedPrompt:
                'Rewrite for a non-expert audience using plain language. Keep key caveats/constraints. Do not invent analogies or new examples. Output: 2–3 sentences plus one concrete example using only provided details. Return only the rewritten content.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Summarise Content Effectively',
      scenarios: [
        ScenarioDef(
          title: 'Summarise an Email Into Key Points',
          situation:
              'You have a long email thread with scattered decisions and implied commitments.\n\nPeople are already acting on different interpretations.\n\nIf your summary misses one decision, the team will execute the wrong plan.\n\nWeak prompting usually produces:\n- a generic recap with no decisions\n- invented “next steps” to look helpful\n- softened language that hides risk\n\nTo get a usable result, your prompt must define:\n- Context - decision extraction from noisy email\n- Objective - align everyone on decisions, owners, and open questions\n- Requirements - facts only; separate decisions vs open questions; no invention\n- Expectations - structured bullets that are easy to forward',
          prompt:
              'Summarise the email into key points.\n\nRequirements:\n- Output 3 sections with bullets: Decisions, Action Items, Open Questions\n- Use only confirmed information; do not invent owners/dates\n- If an owner/date is missing, mark it [Unknown]\n- Keep it concise and forward-safe\n\nReturn only the summary.',
          output:
              '**Decisions**\n- Meeting moved to Thursday\n\n**Action Items**\n- Share the updated agenda once ready [Owner: Unknown]\n\n**Open Questions**\n- When will the agenda be ready? [Unknown]\n\nNotice how uncertainty is handled explicitly: [Unknown] keeps the summary credible instead of “complete-looking.”',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *decision extraction with bounded certainty*.\n- Expectations forced a decision format (Decisions / Actions / Questions)\n- Requirements banned invented owners/dates and used [Unknown]\n- Objective prevented a “nice recap” that still leaves the team misaligned',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise this email\n\nStrong prompt:\nSummarise into Decisions, Action Items, Open Questions. Facts only; no invented owners/dates. Mark missing details [Unknown]. Keep concise and forward-safe. Return only the summary.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nNoisy email thread with implied commitments\n\nO - Objective\nAlign on decisions, actions, and open questions\n\nR - Requirements\nFacts only; no invention; [Unknown] for missing owners/dates\n\nE - Expectations\n3 sections: Decisions / Action Items / Open Questions',
            ),
          ],
          proTip:
              'Summaries fail when they look “complete” but aren’t. Force Open Questions and [Unknown] so missing information stays visible instead of silently guessed.',
          takeaway:
              'A useful summary preserves uncertainty instead of hiding it.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that extract decisions and action items without invented completeness.',
            pieces: [
              PromptPieceDef(
                text: 'Use fixed sections: Decisions / Action Items / Open Questions',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Facts only (no invented owners/dates)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Mark missing details as [Unknown]',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Keep it concise and forward-safe',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Return only the summary (no commentary)',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Add recommended next steps for the team', isCorrect: false),
              PromptPieceDef(text: 'Guess the owner based on context', isCorrect: false),
              PromptPieceDef(text: 'Remove open questions to look decisive', isCorrect: false),
              PromptPieceDef(text: 'Write a narrative paragraph to capture nuance', isCorrect: false),
              PromptPieceDef(text: 'Add a friendly intro and closing', isCorrect: false),
            ],
            coachingNote:
                'Most summaries break trust by hiding gaps. “Open Questions + [Unknown]” is how you keep alignment without guessing.',
            assembledPromptExample:
                'Summarise into Decisions, Action Items, Open Questions. Facts only; no invented owners/dates. Mark missing details [Unknown]. Keep concise and forward-safe. Return only the summary.',
            feedbackWhenCorrect:
                'You’re now extracting decisions without inventing certainty—this is where you gain an operational advantage.',
            resultPolishedPrompt:
                'Summarise the email into three sections: Decisions, Action Items, Open Questions. Use confirmed facts only. Do not invent owners or dates; mark missing details as [Unknown]. Keep concise and forward-safe. Return only the summary.',
          ),
        ),
        ScenarioDef(
          title: 'Summarise Meeting Notes into Actionable Steps',
          situation:
              'Your meeting notes are messy: partial decisions, half-formed ideas, and unresolved debates.\n\nIf you summarise as if things are decided, you create fake alignment.\n\nIf you summarise as raw notes, nobody acts.\n\nTo get a usable result, your prompt must define:\n- Context - messy notes with mixed certainty\n- Objective - action plan + open decisions\n- Requirements - separate decided vs proposed vs unknown; no invention\n- Expectations - clear action list with owners/dates marked if missing',
          prompt:
              'Summarise the meeting notes into actionable steps.\n\nRequirements:\n- Output 3 sections: Agreed Actions, Proposed Ideas (not decided), Open Decisions\n- For each action, include Owner and Due Date; if missing, mark [Owner: Unknown] / [Due: Unknown]\n- Do not invent decisions, owners, or deadlines\n- Keep tone neutral and operational\n\nReturn only the summary.',
          output:
              '**Agreed Actions**\n- Share the updated agenda [Owner: Unknown] [Due: Unknown]\n\n**Proposed Ideas (not decided)**\n- Review the draft before revisions are finalised [Unknown]\n\n**Open Decisions**\n- Confirm revision scope before finalising [Unknown]\n\nThe control point is certainty hygiene: the prompt forced separation of decided vs proposed so the output doesn’t pretend the meeting was cleaner than it was.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *certainty hygiene*.\n- Expectations forced three certainty buckets (Agreed / Proposed / Open)\n- Requirements prevented invented owners/dates and used [Unknown]\n- Objective produced actionability without fake alignment',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn these notes into action items\n\nStrong prompt:\nSummarise into Agreed Actions, Proposed Ideas (not decided), Open Decisions. For each action include Owner/Due Date; mark missing as [Unknown]. Do not invent decisions/owners/deadlines. Return only the summary.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMessy meeting notes with mixed certainty\n\nO - Objective\nActionability without pretending decisions are final\n\nR - Requirements\nSeparate certainty buckets; no invention; [Unknown] for missing owner/date\n\nE - Expectations\n3 sections with structured action items',
            ),
          ],
          proTip:
              'If you don’t explicitly separate “proposed” from “agreed,” the model will “clean up” by turning suggestions into commitments. That’s how teams ship the wrong work.',
          takeaway:
              'Meeting summaries should preserve what’s unresolved.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn messy notes into action steps without inventing alignment.',
            pieces: [
              PromptPieceDef(
                text: 'Separate Agreed Actions vs Proposed Ideas vs Open Decisions',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Require Owner and Due Date fields for each action',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Mark missing Owner/Due Date as [Unknown]',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Ban invented decisions, owners, or deadlines',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Keep tone neutral and operational',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Resolve open decisions to sound decisive', isCorrect: false),
              PromptPieceDef(text: 'Invent owners based on seniority', isCorrect: false),
              PromptPieceDef(text: 'Add deadlines to create urgency', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative summary paragraph', isCorrect: false),
              PromptPieceDef(text: 'Remove “proposed ideas” to reduce confusion', isCorrect: false),
            ],
            coachingNote:
                'The highest-risk failure is “cleaning” ambiguity into fake certainty. Preserve the buckets so execution matches reality.',
            assembledPromptExample:
                'Summarise notes into Agreed Actions, Proposed Ideas (not decided), Open Decisions. Include Owner and Due Date for actions; mark missing as [Unknown]. Don’t invent decisions/owners/deadlines. Return only the summary.',
            feedbackWhenCorrect:
                'You’re now producing meeting outputs that drive action without creating fake commitments.',
            resultPolishedPrompt:
                'Summarise meeting notes into three sections: Agreed Actions, Proposed Ideas (not decided), Open Decisions. For actions include Owner and Due Date; mark missing as [Unknown]. Do not invent decisions, owners, or deadlines. Neutral, operational tone.',
          ),
        ),
        ScenarioDef(
          title: 'Summarise a Document into One Sentence',
          situation:
              'You need a one-sentence summary that will be quoted.\n\nIf it’s too vague, it’s useless.\n\nIf it’s too specific, it implies certainty you don’t have.\n\nWeak prompting often produces:\n- bland statements that say nothing\n- invented precision to sound smart\n- a sentence that changes the intent\n\nTo get a usable result, your prompt must define:\n- Context - quoteable one-liner\n- Objective - accurate, decision-relevant summary\n- Requirements - facts only; preserve intent; no invented specificity\n- Expectations - one sentence, no qualifiers that change meaning',
          prompt:
              'Summarise the document in one sentence.\n\nRequirements:\n- Exactly one sentence\n- Preserve the original intent\n- Use only confirmed facts; do not invent specifics\n- Keep it plain and quoteable (no hype)\n\nReturn only the one sentence.',
          output:
              "Final validation is underway, and we will share the completed package once checks are finished.\n\nWhat matters here is disciplined brevity: the prompt forced one sentence while banning invented “precision” that would change the claim.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *quote safety*.\n- Expectations forced exactly one sentence\n- Requirements banned invented specificity and hype\n- Objective protected intent so the sentence can be repeated without distortion',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise this in one sentence\n\nStrong prompt:\nExactly one sentence. Preserve intent. Facts only; don’t invent specifics. Plain, quoteable tone; no hype. Return only the sentence.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nOne-liner that will be quoted\n\nO - Objective\nAccurate, decision-relevant summary without over-claiming\n\nR - Requirements\nFacts only; preserve intent; no invented specificity; no hype\n\nE - Expectations\nExactly one sentence, output only',
            ),
          ],
          proTip:
              'One-sentence summaries fail when the model tries to sound “smart” by adding precision you didn’t provide. Ban invention or you’ll ship a new claim.',
          takeaway:
              'Quoteable summaries require tighter constraints than long drafts.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that produce a quote-safe one-sentence summary without invented specifics.',
            pieces: [
              PromptPieceDef(text: 'Exactly one sentence', isCorrect: true),
              PromptPieceDef(text: 'Preserve original intent', isCorrect: true),
              PromptPieceDef(text: 'Facts only (no invented specifics)', isCorrect: true),
              PromptPieceDef(text: 'Plain, quoteable tone (no hype)', isCorrect: true),
              PromptPieceDef(text: 'Return only the sentence (no extras)', isCorrect: true),
              PromptPieceDef(text: 'Add a confident claim to make it strong', isCorrect: false),
              PromptPieceDef(text: 'Use persuasive language to increase impact', isCorrect: false),
              PromptPieceDef(text: 'Include multiple sentences for nuance', isCorrect: false),
              PromptPieceDef(text: 'Add likely details to sound complete', isCorrect: false),
              PromptPieceDef(text: 'Use jargon to sound professional', isCorrect: false),
            ],
            coachingNote:
                'In one-liners, the danger is invented precision. Lock the sentence count and ban invention so the summary stays quote-safe.',
            assembledPromptExample:
                'Summarise in exactly one sentence. Preserve intent. Facts only—don’t invent specifics. Plain, quoteable tone. Return only the sentence.',
            feedbackWhenCorrect:
                'You’re now generating quote-safe summaries—most users accidentally prompt the model into creating new claims.',
            resultPolishedPrompt:
                'Summarise in exactly one sentence. Preserve the original intent. Use confirmed facts only; do not invent specifics. Keep it plain and quoteable (no hype). Return only the sentence.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Expand Content When Needed',
      scenarios: [
        ScenarioDef(
          title: 'Expand a Short Note Into a Full Paragraph',
          situation:
              'You have a short note that needs to become a usable paragraph for a stakeholder update.\n\nIf you expand too freely, you introduce details you can’t defend.\n\nIf you expand too conservatively, the paragraph still doesn’t help anyone.\n\nTo get a usable result, your prompt must define:\n- Context - expansion for stakeholder readability\n- Objective - add context without inventing facts\n- Requirements - stay within provided information; add only clarifying context; keep tone professional\n- Expectations - one paragraph, specific length constraint',
          prompt:
              'Expand the note into one paragraph.\n\nRequirements:\n- Keep the meaning the same\n- Add only clarifying context (no new facts, dates, causes, or promises)\n- Keep it professional and concrete\n- Target 70–90 words\n\nReturn only the paragraph.',
          output:
              'The team is making steady progress on the project and is currently focused on completing the remaining work needed for the next milestone. We’re validating the latest changes to ensure the outcome is stable and ready for review. Once validation is complete, we’ll share the updated package and confirm the next steps based on the confirmed results.\n\nNotice how the word limit and “no new facts” rule prevents the model from filling gaps with confident-sounding fiction.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *safe expansion*.\n- Requirements banned new facts and promises\n- Expectations set a tight word window to keep it useful (not endless)\n- Objective made the paragraph readable without changing the underlying claim',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this into a paragraph\n\nStrong prompt:\nExpand into one paragraph (70–90 words). Preserve meaning. Add only clarifying context; no new facts/dates/causes/promises. Professional tone. Return only the paragraph.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nShort note needs to become stakeholder-readable\n\nO - Objective\nAdd context without inventing reality\n\nR - Requirements\nPreserve meaning; no new facts/dates/causes/promises; clarifying context only\n\nE - Expectations\nOne paragraph, 70–90 words, output only',
            ),
          ],
          proTip:
              'Expansion is where hallucination hides. If you don’t ban new facts, the model will “help” by making your paragraph sound more complete than your inputs.',
          takeaway:
              'Expanding safely requires tighter rules than summarising.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that expand a note into a useful paragraph without inventing details.',
            pieces: [
              PromptPieceDef(text: 'Preserve the original meaning', isCorrect: true),
              PromptPieceDef(
                text: 'Ban new facts, dates, causes, or promises',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Allow only clarifying context (no new claims)',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Set a word target (70–90 words)', isCorrect: true),
              PromptPieceDef(text: 'Return only the paragraph', isCorrect: true),
              PromptPieceDef(text: 'Add plausible examples to make it concrete', isCorrect: false),
              PromptPieceDef(text: 'Invent a timeline to increase clarity', isCorrect: false),
              PromptPieceDef(text: 'Make it long to cover everything', isCorrect: false),
              PromptPieceDef(text: 'Add a confident conclusion to sound decisive', isCorrect: false),
              PromptPieceDef(text: 'Add new commitments to reassure readers', isCorrect: false),
            ],
            coachingNote:
                'This is where most AI users get burned: expansion invites invention. Your prompt must prohibit new facts and cap length.',
            assembledPromptExample:
                'Expand this note into one paragraph (70–90 words). Preserve meaning. Add only clarifying context—no new facts/dates/causes/promises. Professional tone. Return only the paragraph.',
            feedbackWhenCorrect:
                'You’re now expanding content without hallucinated details—this is a real professional advantage.',
            resultPolishedPrompt:
                'Expand into one professional paragraph (70–90 words). Preserve meaning. Add only clarifying context. Do not add new facts, dates, causes, or promises. Return only the paragraph.',
          ),
        ),
        ScenarioDef(
          title: 'Expand Bullet Points Into a Short Explanation',
          situation:
              'You have bullets that are correct but too thin to be understood by someone outside the project.\n\nIf you expand with guesses, you introduce risk.\n\nIf you expand with generic filler, you waste attention.\n\nTo get a usable result, your prompt must define:\n- Context - bullets need explanatory glue\n- Objective - add clarity without new information\n- Requirements - keep bullets’ meaning; add only connective explanation; no invention\n- Expectations - short explanation with a strict sentence limit',
          prompt:
              'Expand the bullet points into a short explanation.\n\nRequirements:\n- Preserve the meaning of each bullet\n- Add only connective explanation (no new facts, owners, dates)\n- Use exactly 3 sentences\n- Keep tone professional and clear\n\nReturn only the explanation.',
          output:
              'We’ve completed initial testing and the results look stable so far. The team is preparing the remaining changes for review, and we’ll share an updated package once validation is complete. The goal is to keep progress visible without claiming certainty that hasn’t been confirmed.\n\nThe difference is controlled context: the 3-sentence cap forces clarity without inviting invented detail.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *connective explanation without invention*.\n- Requirements banned new facts/owners/dates\n- Expectations set a strict sentence count to prevent rambling\n- Objective ensured clarity is added as glue, not new substance',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nExpand these bullets\n\nStrong prompt:\nExpand into exactly 3 sentences. Preserve each bullet’s meaning. Add only connective explanation; no new facts/owners/dates. Professional, clear tone. Return only the explanation.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nBullets are correct but not self-explanatory\n\nO - Objective\nAdd clarity without adding new information\n\nR - Requirements\nPreserve meaning; no new facts/owners/dates; connective glue only\n\nE - Expectations\nExactly 3 sentences, output only',
            ),
          ],
          proTip:
              'If you don’t say “connective explanation only,” the model will invent details to make the story smoother. Smoothness is not truth.',
          takeaway:
              'Expansion should add clarity, not new claims.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that expand bullets into a short explanation without new facts.',
            pieces: [
              PromptPieceDef(text: 'Preserve each bullet’s meaning', isCorrect: true),
              PromptPieceDef(
                text: 'Add only connective explanation (no new facts)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Ban new owners, dates, or commitments',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Force exactly 3 sentences', isCorrect: true),
              PromptPieceDef(text: 'Return only the explanation', isCorrect: true),
              PromptPieceDef(text: 'Add examples to make it clearer', isCorrect: false),
              PromptPieceDef(text: 'Make it as detailed as possible', isCorrect: false),
              PromptPieceDef(text: 'Invent missing context to fill gaps', isCorrect: false),
              PromptPieceDef(text: 'Add a motivating closing line', isCorrect: false),
              PromptPieceDef(text: 'Change the bullets into new priorities', isCorrect: false),
            ],
            coachingNote:
                'The trap is invented context. Use sentence caps and explicit “no new facts” rules to keep expansion honest.',
            assembledPromptExample:
                'Expand these bullets into exactly 3 sentences. Preserve meaning. Add only connective explanation; no new facts/owners/dates. Professional tone. Return only the explanation.',
            feedbackWhenCorrect:
                'You’re now expanding for clarity without hallucinating detail—most users can’t tell when the model starts guessing.',
            resultPolishedPrompt:
                'Expand the bullets into a short explanation using exactly 3 sentences. Preserve meaning. Add only connective explanation. Do not add new facts, owners, dates, or commitments. Return only the explanation.',
          ),
        ),
        ScenarioDef(
          title: 'Expand a Brief Update Into a Multi-Sentence Summary',
          situation:
              'You have a brief update that isn’t usable by stakeholders—they need enough context to interpret progress.\n\nThe catch: you can’t invent certainty or fill in missing details.\n\nIf this goes wrong, people will read confidence where none exists and plan accordingly.\n\nTo get a usable result, your prompt must define:\n- Context - stakeholder summary under uncertainty\n- Objective - add interpretive context without new facts\n- Requirements - preserve meaning; no invented details; keep uncertainty explicit\n- Expectations - 3–4 sentences, professional tone',
          prompt:
              'Expand the update into a 3–4 sentence summary.\n\nRequirements:\n- Preserve meaning\n- Add only relevant context (no new facts, dates, owners, or guarantees)\n- If something is not stated, do not guess\n- Keep tone professional and decision-ready\n\nReturn only the summary.',
          output:
              "The team is making steady progress on the project and is nearing the end of testing. So far, no major issues have been reported in the information available, but validation is still in progress. Once validation is complete, we will share the updated package and confirm next steps based on the confirmed results. I'll provide the next update after validation is finished.\n\nWhat matters here is preserved uncertainty: the prompt prevented the model from turning “so far” into a guarantee.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *context without false certainty*.\n- Requirements banned new facts, owners, dates, and guarantees\n- Expectations set 3–4 sentences so it’s usable but contained\n- Objective kept it decision-ready by anchoring the next update to a real checkpoint',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this update longer\n\nStrong prompt:\nExpand into 3–4 professional, decision-ready sentences. Preserve meaning. Add only relevant context; no new facts/owners/dates/guarantees. Don’t guess missing details. Return only the summary.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nStakeholders need interpretive context without invented certainty\n\nO - Objective\nMake the update usable without changing the claim\n\nR - Requirements\nPreserve meaning; no invention; no guarantees; don’t guess\n\nE - Expectations\n3–4 sentences, professional and decision-ready',
            ),
          ],
          proTip:
              '“No issues so far” is not the same as “no issues.” If you don’t enforce uncertainty language, the model will quietly upgrade your confidence level.',
          takeaway:
              'Decision-ready writing keeps uncertainty explicit.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that expand an update while preserving uncertainty and avoiding invented details.',
            pieces: [
              PromptPieceDef(text: 'Preserve the original meaning', isCorrect: true),
              PromptPieceDef(
                text: 'Ban new facts, owners, dates, or guarantees',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Explicitly instruct: do not guess missing details',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Set output length: 3–4 sentences', isCorrect: true),
              PromptPieceDef(
                text: 'Keep tone professional and decision-ready',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Add confident reassurance to reduce concern', isCorrect: false),
              PromptPieceDef(text: 'Invent a timeline to make it actionable', isCorrect: false),
              PromptPieceDef(text: 'Assume the update is positive and celebrate wins', isCorrect: false),
              PromptPieceDef(text: 'Add technical detail to sound credible', isCorrect: false),
              PromptPieceDef(text: 'Rewrite the scope to include more accomplishments', isCorrect: false),
            ],
            coachingNote:
                'This is where writing turns into decision risk: accidental certainty. Preserve uncertainty and ban invention so stakeholders don’t plan off a story you didn’t confirm.',
            assembledPromptExample:
                'Expand into 3–4 sentences. Preserve meaning. Add only relevant context—no new facts/owners/dates/guarantees. Don’t guess missing details. Professional, decision-ready tone.',
            feedbackWhenCorrect:
                'You’re now adding context without upgrading certainty—most users can’t stop the model from “sounding sure.”',
            resultPolishedPrompt:
                'Expand the update into 3–4 professional, decision-ready sentences. Preserve meaning. Add only relevant context. Do not add new facts, owners, dates, or guarantees. Do not guess missing details. Return only the summary.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Repurpose Content for New Formats',
      scenarios: [
        ScenarioDef(
          title: 'Turn an Email Into a Short Announcement',
          situation:
              'You need to repurpose a long email into a short announcement.\n\nThe risk: announcements strip nuance, so you must choose what stays visible.\n\nIf this is unclear, people will misunderstand the ask and execution slips.\n\nTo get a usable result, your prompt must define:\n- Context - announcement format with skim constraints\n- Objective - keep only essential info + clear ask\n- Requirements - no new details; include deadline only if provided; keep tone crisp\n- Expectations - 2–3 lines, announcement voice',
          prompt:
              'Rewrite the email as a short announcement.\n\nRequirements:\n- Keep only essential points and the single call-to-action\n- Max 3 lines\n- Do not add new details, timelines, or reasons\n- Keep tone clear and crisp\n\nReturn only the announcement.',
          output:
              'New onboarding materials are ready. Please review them before Friday so we can finalise the rollout next week.\n\nThe control point is format discipline: the max-lines constraint forces true repurposing instead of “the same email, shorter.”',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *format discipline*.\n- Expectations capped length (max 3 lines)\n- Requirements banned new details and reasons\n- Objective kept the output announcement-shaped: essential info + one CTA',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this email into an announcement\n\nStrong prompt:\nRewrite as a short announcement: keep only essentials + single CTA, max 3 lines, no new details/timelines/reasons, crisp tone. Return only the announcement.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nRepurposing long email into skim announcement\n\nO - Objective\nEssential info + clear CTA, nothing extra\n\nR - Requirements\nNo invention; keep it crisp; deadline only if provided\n\nE - Expectations\nMax 3 lines, announcement voice',
            ),
          ],
          proTip:
              'Announcements fail when they include “helpful context” nobody asked for. If you don’t cap length, the model will drag the email into the announcement and ruin the format.',
          takeaway:
              'Repurposing is choosing what to delete without deleting what matters.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that repurpose an email into a short announcement without adding new information.',
            pieces: [
              PromptPieceDef(
                text: 'Keep only essential points and a single call-to-action',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Max 3 lines', isCorrect: true),
              PromptPieceDef(text: 'Do not add new details, timelines, or reasons', isCorrect: true),
              PromptPieceDef(text: 'Use crisp, announcement-style tone', isCorrect: true),
              PromptPieceDef(text: 'Return only the announcement', isCorrect: true),
              PromptPieceDef(text: 'Add background context to prevent confusion', isCorrect: false),
              PromptPieceDef(text: 'Add an extra CTA to increase compliance', isCorrect: false),
              PromptPieceDef(text: 'Invent benefits to persuade readers', isCorrect: false),
              PromptPieceDef(text: 'Write a long paragraph to be thorough', isCorrect: false),
              PromptPieceDef(text: 'Add informal friendliness to make it warm', isCorrect: false),
            ],
            coachingNote:
                'Repurposing breaks when the model expands. Cap length and ban invention so the announcement stays an announcement.',
            assembledPromptExample:
                'Rewrite as a short announcement: essentials + one CTA, max 3 lines, no new details/timelines/reasons, crisp tone. Return only the announcement.',
            feedbackWhenCorrect:
                'You’re now controlling format under constraints—most users get “shorter email,” not an actual announcement.',
            resultPolishedPrompt:
                'Rewrite as a short announcement. Keep only essential points and the single call-to-action. Max 3 lines. Do not add new details, timelines, or reasons. Crisp tone. Return only the announcement.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Status Update Into a One-Sentence Summary',
          situation:
              'You need a one-sentence status line for a dashboard.\n\nDashboards punish ambiguity: one wrong sentence becomes a false signal.\n\nIf you overstate progress, leadership thinks risk is gone.\n\nIf you understate it, teams overreact.\n\nTo get a usable result, your prompt must define:\n- Context - dashboard one-liner\n- Objective - accurate signal without hype\n- Requirements - facts only; preserve intent; no invented confidence\n- Expectations - exactly one sentence, plain tone',
          prompt:
              'Rewrite the status update as exactly one sentence.\n\nRequirements:\n- Preserve meaning\n- Facts only; do not add new information\n- Keep tone plain and neutral\n- Avoid hype or certainty inflation\n\nReturn only the sentence.',
          output:
              "Testing is nearly complete, and we remain on track for Thursday's release based on current confirmed progress.\n\nWhat matters here is signal integrity: the prompt prevents “confident rewriting” that quietly upgrades certainty.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *signal integrity*.\n- Expectations forced exactly one sentence\n- Requirements banned new info and hype\n- Objective kept it dashboard-safe: accurate, neutral, and quoteable',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this a one-line update\n\nStrong prompt:\nExactly one sentence. Preserve meaning. Facts only—no new info. Plain neutral tone; avoid hype or certainty inflation. Return only the sentence.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nDashboard one-liner that becomes a decision signal\n\nO - Objective\nAccurate, neutral summary without hype\n\nR - Requirements\nFacts only; preserve intent; no certainty inflation\n\nE - Expectations\nExactly one sentence, output only',
            ),
          ],
          proTip:
              'Dashboards amplify errors. If you don’t prohibit certainty inflation, the model will turn “nearly complete” into “done” in spirit—and people will plan off it.',
          takeaway:
              'One sentence can’t carry nuance, so your constraints must.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that produce a dashboard-safe one-sentence status signal.',
            pieces: [
              PromptPieceDef(text: 'Exactly one sentence', isCorrect: true),
              PromptPieceDef(text: 'Preserve original meaning', isCorrect: true),
              PromptPieceDef(text: 'Facts only (no new information)', isCorrect: true),
              PromptPieceDef(text: 'Plain, neutral tone (no hype)', isCorrect: true),
              PromptPieceDef(text: 'Avoid certainty inflation', isCorrect: true),
              PromptPieceDef(text: 'Add a confident “all good” vibe', isCorrect: false),
              PromptPieceDef(text: 'Add new details to be helpful', isCorrect: false),
              PromptPieceDef(text: 'Use celebratory tone to motivate the team', isCorrect: false),
              PromptPieceDef(text: 'Write two sentences for nuance', isCorrect: false),
              PromptPieceDef(text: 'Invent a reason for delays to reassure', isCorrect: false),
            ],
            coachingNote:
                'Dashboards are where “slight” drift becomes a decision error. Lock sentence count and ban certainty inflation.',
            assembledPromptExample:
                'Rewrite as exactly one sentence. Preserve meaning. Facts only; no new info. Plain neutral tone; avoid hype and certainty inflation. Return only the sentence.',
            feedbackWhenCorrect:
                'You now control status signals that people can safely act on—most users accidentally publish overconfidence.',
            resultPolishedPrompt:
                'Rewrite the update as exactly one sentence. Preserve meaning. Facts only—do not add new information. Plain neutral tone. Avoid hype or certainty inflation. Return only the sentence.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a List of Points Into a Short Script',
          situation:
              'You need to speak these points in a live setting.\n\nIf the script is too stiff, you sound robotic.\n\nIf it’s too casual, you lose credibility.\n\nIf it invents details, you can’t defend them on the spot.\n\nTo get a usable result, your prompt must define:\n- Context - spoken delivery under scrutiny\n- Objective - natural script that stays true\n- Requirements - no invention; keep key points; professional tone\n- Expectations - 20–30 seconds, 3–4 sentences',
          prompt:
              'Rewrite the points as a short spoken script.\n\nRequirements:\n- 3–4 sentences (20–30 seconds spoken)\n- Preserve meaning of all points\n- Keep tone natural but professional\n- Do not add new facts or promises\n\nReturn only the script.',
          output:
              "We've completed initial testing and things look stable so far. The team is preparing the final changes for review, and we’ll share the updated package on Thursday. If anything in validation changes that picture, we’ll flag it immediately.\n\nNotice how the prompt prevents stage-fright hallucination: it bans invention while still allowing a natural spoken rhythm.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *spoken naturalness without invention*.\n- Expectations set a delivery window (20–30 seconds)\n- Requirements banned new facts/promises\n- Objective kept credibility: natural tone, professional boundaries',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this into a script\n\nStrong prompt:\nRewrite as a spoken script: 3–4 sentences (20–30 seconds). Preserve meaning. Natural but professional tone. No new facts/promises. Return only the script.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLive delivery where you must defend every claim\n\nO - Objective\nNatural script that stays true to the inputs\n\nR - Requirements\nPreserve points; no invention; professional boundaries\n\nE - Expectations\n3–4 sentences, 20–30 seconds, output only',
            ),
          ],
          proTip:
              'Live scripts are where invented details blow up. If you don’t ban invention, the model will add “smooth transitions” that become new claims you have to defend.',
          takeaway:
              'Natural tone is safe only when facts are locked.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that produce a natural spoken script without introducing new claims.',
            pieces: [
              PromptPieceDef(text: 'Set structure: 3–4 sentences (20–30 seconds)', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning of all points', isCorrect: true),
              PromptPieceDef(text: 'Natural but professional tone', isCorrect: true),
              PromptPieceDef(text: 'Ban new facts or promises', isCorrect: true),
              PromptPieceDef(text: 'Return only the script', isCorrect: true),
              PromptPieceDef(text: 'Add extra examples to make it engaging', isCorrect: false),
              PromptPieceDef(text: 'Invent a story to make it memorable', isCorrect: false),
              PromptPieceDef(text: 'Make it very casual to sound authentic', isCorrect: false),
              PromptPieceDef(text: 'Expand to 2 minutes for clarity', isCorrect: false),
              PromptPieceDef(text: 'Add confident guarantees to reassure', isCorrect: false),
            ],
            coachingNote:
                'In a live script, any invented detail becomes your responsibility. Lock facts, cap length, and ban new promises.',
            assembledPromptExample:
                'Rewrite as a spoken script: 3–4 sentences (20–30 seconds). Preserve meaning. Natural but professional tone. No new facts or promises. Return only the script.',
            feedbackWhenCorrect:
                'You now get speakable scripts that don’t create new liabilities—most users can’t stop the model from “adding.”',
            resultPolishedPrompt:
                'Rewrite the points as a short spoken script (3–4 sentences, ~20–30 seconds). Preserve meaning of all points. Keep tone natural but professional. Do not add new facts or promises. Return only the script.',
          ),
        ),
      ],
    ),
  ];
}

```

### `lib\data\tracks\track7_problem_solving_analysis.dart`
```
import '../app_catalog.dart';

/// Track 7 – Root-Cause Thinking (lessons 1–5)
///
/// Track 7 is expert-level judgment: translating messy reality into precise,
/// investigable questions without inventing certainty or collapsing ambiguity.
List<LessonDef> buildTrack7Lessons() {
  return [
    const LessonDef(
      title: 'Turn Problems Into Clear AI Questions',
      scenarios: [
        ScenarioDef(
          title: 'Turn a messy problem description into a clear AI question',
          situation:
              'You have a long, disorganised description of a process issue.\n\nMultiple people are blaming different steps, and the “problem” keeps shifting depending on who you ask.\n\nIf you ask AI a vague question, you’ll get a vague answer—then everyone argues about the output instead of investigating.\n\nWeak prompting usually:\n- turns noise into a generic “how to improve” answer\n- invents likely causes to sound confident\n- collapses competing narratives into one neat story\n\nTo get a usable result, your prompt must define:\n- Context - messy description with competing viewpoints\n- Objective - produce one investigable question\n- Requirements - keep the core problem, timeframe, and target insight; no invented causes\n- Expectations - one question + a short list of clarifying questions needed next',
          prompt:
              'Rewrite the description into a single, investigable question.\n\nRequirements:\n- Preserve the core problem and the insight needed\n- Do not invent root causes or solutions\n- Include the timeframe/scope if stated; if missing, mark it [Unknown]\n- Output format:\n  1) One clear question\n  2) 3 clarifying questions we must answer next\n\nReturn only the output in that format.',
          output:
              '**Investigable question**\nWhat is causing the delay in the approval workflow, and which specific step should we focus on first to reduce end-to-end processing time?\n\n**Clarifying questions (next)**\n- Which step(s) show the longest wait time vs active work time? [Unknown]\n- Is the delay consistent or concentrated during specific periods (e.g., peak hours, end-of-month)? [Unknown]\n- Are delays driven by policy/criteria, tooling, or handoffs between roles? [Unknown]\n\nWhat matters here is disciplined ambiguity: the prompt bans invented causes and forces “what we need next,” so the question becomes investigable instead of opinionated.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *investigability*.\n- Requirements banned invented causes/solutions\n- Expectations forced two outputs: one question + the next clarifiers\n- Objective kept the work real: you’re defining the investigation, not writing a recommendation',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this into a clear question\n\nStrong prompt:\nRewrite into a single investigable question. Preserve the core problem and insight needed. Don’t invent root causes or solutions. Include timeframe/scope if stated; otherwise mark [Unknown]. Output: (1) one question, (2) 3 clarifying questions needed next.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMessy description with competing narratives\n\nO - Objective\nOne investigable question that guides analysis\n\nR - Requirements\nPreserve core problem + desired insight; no invention; [Unknown] for missing scope\n\nE - Expectations\nOne clear question + 3 clarifying questions (next)',
            ),
          ],
          proTip:
              'If you don’t force “clarifying questions,” the model will fake certainty by inventing causes. That feels helpful—and it’s exactly how teams chase the wrong thing.',
          takeaway:
              'Good problem questions preserve uncertainty and make it actionable.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn a messy description into an investigable question without invented causes.',
            pieces: [
              PromptPieceDef(
                text: 'Require one clear, investigable question (not a solution)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Ban invented root causes and solutions',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Preserve the core problem and the insight needed',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Include timeframe/scope if stated; otherwise mark [Unknown]',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Require 3 clarifying questions needed next',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Ask for recommendations to fix the issue', isCorrect: false),
              PromptPieceDef(text: 'Let AI guess likely causes to save time', isCorrect: false),
              PromptPieceDef(text: 'Remove ambiguity so it sounds confident', isCorrect: false),
              PromptPieceDef(text: 'Ask for a long narrative explanation', isCorrect: false),
              PromptPieceDef(text: 'Add an emotional tone to increase urgency', isCorrect: false),
            ],
            coachingNote:
                'Your advantage here is refusing fake certainty. Force “investigable question + next clarifiers” so the model can’t hallucinate the analysis.',
            assembledPromptExample:
                'Rewrite into one investigable question. Preserve core problem + insight needed. No invented causes/solutions. Include scope/timeframe; if missing mark [Unknown]. Output one question + 3 clarifying questions.',
            feedbackWhenCorrect:
                'You now turn messy reality into an investigation instead of a debate—most people skip this and get generic answers.',
            resultPolishedPrompt:
                'Rewrite the description into one investigable question. Preserve the core problem and the insight needed. Do not invent root causes or solutions. Include timeframe/scope if stated; otherwise mark [Unknown]. Output: (1) one clear question, (2) three clarifying questions needed next.',
          ),
        ),
        ScenarioDef(
          title: 'Turn complaints into actionable questions',
          situation:
              'You receive vague complaints like “the system is slow.”\n\nThe complaint could mean latency, timeouts, poor UX, or an upstream dependency—and different teams will interpret it differently.\n\nIf you ask AI a generic question, you’ll get generic optimisation advice.\n\nTo get a usable result, your prompt must define:\n- Context - vague complaint with multiple plausible meanings\n- Objective - translate it into an actionable diagnostic question\n- Requirements - specify where/when it happens, what “slow” means, and what signal would confirm a cause\n- Expectations - one diagnostic question + what data to collect',
          prompt:
              'Rewrite the complaint into a single, actionable diagnostic question.\n\nRequirements:\n- Define what “slow” refers to (response time, timeouts, perceived lag) as [Unknown] if not stated\n- Specify when/where it happens (e.g., peak hours, specific workflow) as [Unknown] if not stated\n- Do not propose solutions\n- Output format:\n  1) One diagnostic question\n  2) 3 data points to collect next\n\nReturn only the output.',
          output:
              '**Diagnostic question**\nWhat is driving slow system responsiveness during peak usage, and is the delay caused by backend processing time, network latency, or client-side rendering?\n\n**Data to collect (next)**\n- Response-time breakdown by stage (client -> network -> server -> database) [Unknown]\n- Error/timeout rates and correlation with peak periods [Unknown]\n- Workflow/endpoint-specific latency hotspots (top 5) [Unknown]\n\nLook at how the question becomes actionable: the prompt forces definitions and evidence needs instead of letting “slow” remain a vibe.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *operational definition*.\n- Requirements forced definitions for “slow” and when/where it occurs\n- Expectations required data collection, not solutions\n- Objective produced a question that multiple teams can align on (same evidence, same target)',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nRewrite this complaint into a question\n\nStrong prompt:\nRewrite into one actionable diagnostic question. Define what “slow” means and when/where it happens (mark unknowns). Do not propose solutions. Output one question + 3 data points to collect next.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nVague complaint with multiple plausible meanings\n\nO - Objective\nTranslate into a diagnostic question teams can act on\n\nR - Requirements\nDefine “slow”; specify where/when; no solutions; mark unknowns\n\nE - Expectations\nOne diagnostic question + 3 data points to collect',
            ),
          ],
          proTip:
              '“Actionable” means you can collect evidence. If you don’t force data points, the model will jump to solutions and you’ll waste a week “optimising” the wrong layer.',
          takeaway:
              'Define the problem in evidence terms before you ask for fixes.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn a vague complaint into an evidence-driven diagnostic question.',
            pieces: [
              PromptPieceDef(
                text: 'Require a single diagnostic question (not generic advice)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Force definitions for “slow” (mark as [Unknown] if missing)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Force when/where it occurs (mark as [Unknown] if missing)',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Ban solutions in the output', isCorrect: true),
              PromptPieceDef(
                text: 'Require 3 specific data points to collect next',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Ask for a list of optimisation tips', isCorrect: false),
              PromptPieceDef(text: 'Assume the backend is the problem', isCorrect: false),
              PromptPieceDef(text: 'Write a long explanation of why systems slow down', isCorrect: false),
              PromptPieceDef(text: 'Remove unknowns to make it sound confident', isCorrect: false),
              PromptPieceDef(text: 'Add emotional urgency to motivate action', isCorrect: false),
            ],
            coachingNote:
                'Your edge is precision: definitions + evidence. This stops the model from turning complaints into generic “best practices.”',
            assembledPromptExample:
                'Rewrite into one actionable diagnostic question. Define what “slow” means and when/where it occurs (mark unknowns). No solutions. Output one question + 3 data points to collect next.',
            feedbackWhenCorrect:
                'You’re now converting complaints into investigations—most people skip definitions and get useless optimisation advice.',
            resultPolishedPrompt:
                'Rewrite the complaint into one actionable diagnostic question. Define what “slow” refers to and when/where it happens (mark unknowns). Do not propose solutions. Output: one question plus three data points to collect next.',
          ),
        ),
        ScenarioDef(
          title: 'Turn ambiguous requests into precise questions',
          situation:
              'Someone asks, “Can you check what’s happening with the reports?”\n\nThat could mean missing data, a pipeline failure, a permissions issue, or “the numbers look weird.”\n\nIf you turn this into a shallow question, you’ll get a shallow answer—and then you still won’t know what to check.\n\nTo get a usable result, your prompt must define:\n- Context - ambiguous request with multiple failure modes\n- Objective - turn it into a precise investigative question\n- Requirements - specify what “wrong” means, what to verify first, and what evidence is needed\n- Expectations - one question + a triage checklist',
          prompt:
              'Rewrite the request into a precise investigative question.\n\nRequirements:\n- Do not assume the cause\n- Clarify what “reports” refers to (generation failure vs incorrect numbers) as [Unknown] if not stated\n- Output format:\n  1) One precise question\n  2) A 4-step triage checklist (what to check first)\n\nReturn only the output.',
          output:
              '**Precise question**\nWhat exactly is failing with the reports (generation, delivery, or correctness of numbers), and which part of the reporting pipeline should we verify first to isolate the failure mode?\n\n**Triage checklist (first pass)**\n1) Confirm the failure mode: not generated vs generated-but-wrong vs delayed [Unknown]\n2) Identify scope: which reports, which time range, which users [Unknown]\n3) Check recent changes: deployments/config/data source changes [Unknown]\n4) Verify pipeline checkpoints: ingestion -> transformation -> aggregation -> dashboard [Unknown]\n\nThe difference is triage control: the prompt forces a failure-mode question and a first-pass checklist, so you can act even before you have perfect information.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *failure-mode precision*.\n- Requirements banned cause assumptions and forced missing fields to be marked\n- Expectations produced a triage checklist, not a vague question\n- Objective turned “check reports” into an investigation you can execute immediately',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nRewrite this as a better question\n\nStrong prompt:\nRewrite into one precise investigative question. Don’t assume cause. Clarify what “reports” refers to (mark [Unknown] if missing). Output one question + a 4-step triage checklist.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nAmbiguous request with multiple failure modes\n\nO - Objective\nA precise question that drives first-pass investigation\n\nR - Requirements\nNo cause assumptions; clarify “wrong”; mark unknowns\n\nE - Expectations\nOne question + 4-step triage checklist',
            ),
          ],
          proTip:
              'Most people try to “sound smart” by guessing the cause. Don’t. Force a failure-mode split and triage steps—this is how you look competent without pretending you know.',
          takeaway:
              'Precision is the ability to investigate without guessing.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn an ambiguous request into a precise investigative question with triage.',
            pieces: [
              PromptPieceDef(text: 'Ban cause assumptions (don’t guess)', isCorrect: true),
              PromptPieceDef(
                text: 'Clarify what “wrong” means (generation vs correctness) and mark unknowns',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Require one precise investigative question (failure-mode focused)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Require a 4-step triage checklist (what to check first)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Return only the output in the specified format',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Ask for likely root causes', isCorrect: false),
              PromptPieceDef(text: 'Write a detailed explanation of reporting systems', isCorrect: false),
              PromptPieceDef(text: 'Assume it’s a permissions issue', isCorrect: false),
              PromptPieceDef(text: 'Remove unknowns to make it confident', isCorrect: false),
              PromptPieceDef(text: 'Give recommendations to fix it immediately', isCorrect: false),
            ],
            coachingNote:
                'The expert move is splitting failure modes and forcing triage. This prevents confident guessing and gets you to evidence faster.',
            assembledPromptExample:
                'Rewrite into one precise investigative question. Don’t assume cause. Clarify what “reports” refers to; mark unknowns. Output one question + a 4-step triage checklist. Return only the output.',
            feedbackWhenCorrect:
                'You now control ambiguity without guessing—this is how you move faster than “smart-sounding” analysis.',
            resultPolishedPrompt:
                'Rewrite the request into one precise investigative question. Do not assume the cause. Clarify what “reports” refers to (generation failure vs incorrect numbers) and mark unknowns as [Unknown]. Output: one question plus a 4-step triage checklist. Return only the output.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Turn Data Descriptions Into Questions AI Can Answer',
      scenarios: [
        ScenarioDef(
          title: 'Turn a long data description into a simple analytical question',
          situation:
              'You get a long explanation about recent trends.\n\nIt mixes observations, guesses, and emotions—so nobody is sure what to investigate.\n\nIf you ask AI “why is this happening?”, it will invent a story.\n\nTo get a usable result, your prompt must define:\n- Context - trend description with mixed certainty\n- Objective - turn it into an AI-ready analytical question\n- Requirements - identify metric, timeframe, segmentation, and what decision it should inform\n- Expectations - one question + assumptions to validate',
          prompt:
              'Rewrite the description into one analytical question.\n\nRequirements:\n- Identify the metric and timeframe; if missing, mark [Unknown]\n- Ask for a segmented view (e.g., category/source) rather than one global answer\n- Do not invent causes\n- Output:\n  1) One analytical question\n  2) 3 assumptions we must validate first\n\nReturn only the output.',
          output:
              '**Analytical question**\nWhy have support tickets increased this month, and which categories are contributing most to the rise?\n\n**Assumptions to validate (first)**\n- Which ticket categories and channels are included in “support tickets”? [Unknown]\n- Is the increase absolute volume, rate per customer, or backlog growth? [Unknown]\n- Did ticket tagging or routing change this month (measurement shift)? [Unknown]\n\nNotice how the prompt prevents story-time: it forces segmentation and “assumptions to validate” so the analysis stays grounded.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *measurement discipline*.\n- Requirements forced metric + timeframe and banned invented causes\n- Expectations required assumptions to validate, preventing false certainty\n- Objective kept the question analytical (segment drivers) instead of narrative',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this into a question about the trend\n\nStrong prompt:\nRewrite into one analytical question. Identify metric + timeframe (mark [Unknown] if missing). Require segmentation (category/source). No invented causes. Output one question + 3 assumptions to validate.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nTrend description with mixed certainty\n\nO - Objective\nAI-ready analytical question that guides analysis\n\nR - Requirements\nMetric + timeframe; segmentation; no invention\n\nE - Expectations\nOne question + 3 assumptions to validate',
            ),
          ],
          proTip:
              'Trends lie when the measurement changed. Force “assumptions to validate” or the model will confidently explain a spike that’s just tagging drift.',
          takeaway:
              'Analytical questions start with measurement integrity.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that convert a long trend description into a grounded analytical question.',
            pieces: [
              PromptPieceDef(text: 'Require metric and timeframe (mark [Unknown] if missing)', isCorrect: true),
              PromptPieceDef(text: 'Require segmentation (category/source) to find drivers', isCorrect: true),
              PromptPieceDef(text: 'Ban invented causes', isCorrect: true),
              PromptPieceDef(text: 'Require 3 assumptions to validate first', isCorrect: true),
              PromptPieceDef(text: 'Return only the output in a fixed format', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to explain likely reasons in detail', isCorrect: false),
              PromptPieceDef(text: 'Assume the increase is due to product bugs', isCorrect: false),
              PromptPieceDef(text: 'Remove unknowns so it sounds confident', isCorrect: false),
              PromptPieceDef(text: 'Ask for a motivational summary for the team', isCorrect: false),
              PromptPieceDef(text: 'Ask for solutions immediately', isCorrect: false),
            ],
            coachingNote:
                'The failure mode is confident storytelling. Lock measurement fields and force assumptions to validate so analysis stays real.',
            assembledPromptExample:
                'Rewrite into one analytical question. Identify metric + timeframe (mark [Unknown] if missing). Require segmentation (category/source). No invented causes. Output one question + 3 assumptions to validate.',
            feedbackWhenCorrect:
                'You’re now asking analysis questions the model can answer without hallucinating a narrative.',
            resultPolishedPrompt:
                'Rewrite the description into one analytical question. Identify the metric and timeframe (mark [Unknown] if missing). Require segmentation (category/source) to find drivers. Do not invent causes. Output: one question plus three assumptions to validate first.',
          ),
        ),
        ScenarioDef(
          title: 'Turn metrics into a clear question',
          situation:
              'You’re given numbers (traffic, conversion, revenue), but nobody agrees what they mean.\n\nIf you ask “why did conversion drop?”, the model will guess.\n\nTo get a usable result, your prompt must define:\n- Context - metrics without an agreed hypothesis\n- Objective - ask for an analysis that separates measurement, mix, and behaviour\n- Requirements - define metric, timeframe, segments; request candidate explanations *and* what evidence would support them\n- Expectations - one question + analysis plan',
          prompt:
              'Turn the metrics into one clear analytical question.\n\nRequirements:\n- Specify metric + timeframe; mark missing as [Unknown]\n- Ask for segmentation by at least 2 dimensions (e.g., channel, device, region)\n- Ask for 3 candidate explanations *and* the evidence needed to test each\n- Do not claim a single cause\n\nReturn only one question followed by the 3 candidates with evidence.',
          output:
              '**Analytical question**\nGiven the change in conversion over the last period [Unknown timeframe], which segments (channel, device, region) are driving the shift, and what are the top candidate explanations with the evidence needed to test each?\n\n**Candidates (with evidence to test)**\n1) Traffic mix shift (more low-intent traffic)\n   - Evidence: channel-level conversion changes; new campaign/source mix [Unknown]\n2) UX/performance regression in a segment\n   - Evidence: device/browser conversion drop; page load changes; error rates [Unknown]\n3) Measurement/attribution change\n   - Evidence: tracking changes; attribution model updates; event drop-offs [Unknown]\n\nThis is where you can see expert control: the prompt forces “candidates + evidence,” so AI can’t collapse uncertainty into a single story.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *hypothesis discipline*.\n- Requirements forced segmentation and banned single-cause claims\n- Expectations demanded candidates plus evidence, turning AI into an analysis planner\n- Objective preserved uncertainty while still creating actionability',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhy did conversion change?\n\nStrong prompt:\nTurn metrics into one analytical question: specify metric/timeframe (mark unknowns), require segmentation by 2+ dimensions, request 3 candidate explanations and the evidence needed to test each. Don’t claim a single cause.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMetrics without an agreed hypothesis\n\nO - Objective\nActionable analysis without fake certainty\n\nR - Requirements\nMetric/timeframe; segmentation; 3 candidates + evidence; no single-cause claim\n\nE - Expectations\nOne question + candidate/evidence list',
            ),
          ],
          proTip:
              'If you ask “why,” you get stories. If you ask for “candidates + evidence,” you get investigation. That’s the difference between analysis and narration.',
          takeaway:
              'Expert analysis prompts force evidence, not certainty.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn raw metrics into a hypothesis-and-evidence analytical question.',
            pieces: [
              PromptPieceDef(text: 'Specify metric and timeframe (mark [Unknown] if missing)', isCorrect: true),
              PromptPieceDef(text: 'Require segmentation by at least 2 dimensions', isCorrect: true),
              PromptPieceDef(text: 'Request 3 candidate explanations (not one cause)', isCorrect: true),
              PromptPieceDef(text: 'Require evidence needed to test each candidate', isCorrect: true),
              PromptPieceDef(text: 'Prohibit claiming a single definitive cause', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to pick the most likely cause immediately', isCorrect: false),
              PromptPieceDef(text: 'Remove unknowns to make it decisive', isCorrect: false),
              PromptPieceDef(text: 'Ask for general best practices for conversion', isCorrect: false),
              PromptPieceDef(text: 'Request a narrative summary paragraph', isCorrect: false),
              PromptPieceDef(text: 'Ask for solutions without analysis', isCorrect: false),
            ],
            coachingNote:
                'Your goal is not a “why story.” It’s a testable plan. Force candidates + evidence so the output stays honest and useful.',
            assembledPromptExample:
                'Turn these metrics into one analytical question. Include metric/timeframe (mark [Unknown] if missing). Require segmentation by 2+ dimensions. Ask for 3 candidate explanations and the evidence to test each. Don’t claim one cause.',
            feedbackWhenCorrect:
                'You’re now prompting for investigation instead of narration—this is where you gain an advantage over most AI users.',
            resultPolishedPrompt:
                'Turn the metrics into one analytical question. Specify the metric and timeframe (mark [Unknown] if missing). Require segmentation by at least two dimensions. Request three candidate explanations and the evidence needed to test each. Do not claim a single definitive cause.',
          ),
        ),
        ScenarioDef(
          title: 'Turn unclear performance descriptions into precise questions',
          situation:
              'You get a vague performance description: “it’s worse lately,” “customers are unhappy,” “quality is down.”\n\nIf you ask AI to analyse it as-is, it will invent metrics and causes.\n\nTo get a usable result, your prompt must define:\n- Context - qualitative signals without measurement\n- Objective - turn into a measurable investigative question\n- Requirements - define what “worse” could mean; request measurement and segmentation; no invention\n- Expectations - one question + measurement definitions',
          prompt:
              'Rewrite the description into a precise investigative question.\n\nRequirements:\n- Convert vague terms (“worse,” “unhappy,” “quality down”) into measurable definitions as options\n- Ask what metric(s) and segments we should examine first\n- Do not invent causes\n- Output:\n  1) One investigative question\n  2) 3 candidate metric definitions we should choose from\n\nReturn only the output.',
          output:
              '**Investigative question**\nWhat specific metric indicates performance has worsened, and which segments should we analyse first to determine where the decline is concentrated?\n\n**Candidate metric definitions (choose one)**\n- Customer experience: complaint rate, CSAT/NPS change, support ticket volume per user [Unknown]\n- Product quality: defect rate, return/rework rate, incident frequency [Unknown]\n- Delivery performance: cycle time, on-time rate, backlog growth [Unknown]\n\nWhat matters here is measurement-first thinking: the prompt forces definitions so the model can’t “analyse” a feeling as if it were data.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *measurability*.\n- Requirements forced vague words into metric definitions\n- Expectations produced options rather than pretending there’s one metric\n- Objective prevented the model from inventing “the metric” and then explaining it',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this into a precise question\n\nStrong prompt:\nRewrite into one investigative question. Convert vague terms into measurable metric definitions as options. Ask which metric and segments to examine first. Don’t invent causes. Output one question + 3 candidate metric definitions.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nQualitative signals without agreed measurement\n\nO - Objective\nTurn into a measurable investigation\n\nR - Requirements\nDefine vague terms as metrics; segmentation; no invented causes\n\nE - Expectations\nOne question + 3 candidate metric definitions',
            ),
          ],
          proTip:
              'The model can’t analyse what you haven’t defined. If you don’t force metric definitions, you’ll get confident analysis of an undefined problem.',
          takeaway:
              'Measurement is the gateway to root-cause thinking.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that convert vague performance language into a measurable investigative question.',
            pieces: [
              PromptPieceDef(text: 'Require one investigative question (not a conclusion)', isCorrect: true),
              PromptPieceDef(text: 'Convert vague terms into measurable metric definitions', isCorrect: true),
              PromptPieceDef(text: 'Ask which segments to analyse first', isCorrect: true),
              PromptPieceDef(text: 'Ban invented causes', isCorrect: true),
              PromptPieceDef(text: 'Provide 3 candidate metric definitions to choose from', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to diagnose the root cause immediately', isCorrect: false),
              PromptPieceDef(text: 'Assume the issue is customer service', isCorrect: false),
              PromptPieceDef(text: 'Remove options so it feels decisive', isCorrect: false),
              PromptPieceDef(text: 'Request a motivational summary for stakeholders', isCorrect: false),
              PromptPieceDef(text: 'Ask for solutions without measurement', isCorrect: false),
            ],
            coachingNote:
                'Your advantage is refusing to “analyse vibes.” Force metric definitions and segmentation so the output becomes a real investigation plan.',
            assembledPromptExample:
                'Rewrite into one investigative question. Convert vague terms into measurable metric definitions as options. Ask which metric and segments to examine first. Don’t invent causes. Output one question + 3 metric definition options.',
            feedbackWhenCorrect:
                'You’re now turning vague complaints into measurable investigations—this is expert-level ambiguity control.',
            resultPolishedPrompt:
                'Rewrite the description into one precise investigative question. Convert vague terms into measurable metric definitions (as options). Ask which metrics and segments to examine first. Do not invent causes. Output: one question plus three candidate metric definitions.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Turn Observations Into Root-Cause Questions',
      scenarios: [
        ScenarioDef(
          title: 'Turn general observations into root-cause questions',
          situation:
              'You have an observation like “handoffs are messy” or “reviews take forever.”\n\nIt’s tempting to ask AI for “root causes,” but that invites confident guessing.\n\nTo get a usable result, your prompt must define:\n- Context - observation without evidence\n- Objective - transform it into a root-cause question that requests evidence\n- Requirements - separate symptom vs cause; ask for candidate mechanisms + what to measure\n- Expectations - one question + candidate mechanisms with measurements',
          prompt:
              'Turn the observation into a root-cause investigative question.\n\nRequirements:\n- Do not claim a cause\n- Separate symptom from cause explicitly\n- Ask for 3 candidate mechanisms and the measurement needed for each\n- Return one question + the 3 mechanisms with measurements',
          output:
              '**Investigative question**\nWhat is the primary mechanism causing long review times, and how can we measure where time is being spent (waiting vs active work) across the workflow?\n\n**Candidate mechanisms (with measurement)**\n1) Queueing/wait time\n   - Measure: time-in-queue per step; distribution (p50/p90)\n2) Rework due to unclear requirements\n   - Measure: review cycle count; revision reasons; defect rate\n3) Capacity mismatch during peaks\n   - Measure: throughput vs incoming volume; peak-period backlogs\n\nThis is where you can see root-cause rigor: the prompt forces mechanisms + measurement, so “cause” becomes testable instead of asserted.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *testability*.\n- Requirements separated symptom from cause and banned single-cause claims\n- Expectations produced candidate mechanisms plus measurement\n- Objective turned “observation” into a measurable investigation',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhat’s the root cause of long reviews?\n\nStrong prompt:\nTurn this observation into an investigative question. Don’t claim a cause. Separate symptom vs cause. Ask for 3 candidate mechanisms and the measurement needed for each. Output one question + mechanisms with measurements.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nObservation without evidence\n\nO - Objective\nRoot-cause question that requests measurement\n\nR - Requirements\nNo cause claims; symptom vs cause; 3 mechanisms + measurement\n\nE - Expectations\nOne question + 3 mechanisms with measurements',
            ),
          ],
          proTip:
              '“Root cause” prompts are where AI users get fooled by confidence. Demand mechanisms + measurement or you’ll get a persuasive guess.',
          takeaway:
              'Root-cause thinking is measurement thinking.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn an observation into a testable root-cause question.',
            pieces: [
              PromptPieceDef(text: 'Ban claiming a definitive cause', isCorrect: true),
              PromptPieceDef(text: 'Separate symptom vs cause explicitly', isCorrect: true),
              PromptPieceDef(text: 'Request 3 candidate mechanisms (not one story)', isCorrect: true),
              PromptPieceDef(text: 'Require the measurement needed for each mechanism', isCorrect: true),
              PromptPieceDef(text: 'Return one question + mechanisms with measurements', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to pick the most likely cause immediately', isCorrect: false),
              PromptPieceDef(text: 'Request a motivational summary', isCorrect: false),
              PromptPieceDef(text: 'Remove measurement to keep it simple', isCorrect: false),
              PromptPieceDef(text: 'Ask for solutions first', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative explanation', isCorrect: false),
            ],
            coachingNote:
                'Your edge is forcing testability. Mechanisms + measurement prevents confident guessing disguised as analysis.',
            assembledPromptExample:
                'Turn this observation into a root-cause question. Don’t claim a cause. Separate symptom vs cause. Ask for 3 candidate mechanisms and the measurement needed for each. Output one question + mechanism/measurement list.',
            feedbackWhenCorrect:
                'You’re now prompting for testable root-cause work instead of persuasive guesses.',
            resultPolishedPrompt:
                'Turn the observation into a root-cause investigative question. Do not claim a definitive cause. Separate symptom from cause. Request three candidate mechanisms and the measurement needed to test each. Output one question plus the mechanism/measurement list.',
          ),
        ),
        ScenarioDef(
          title: 'Turn symptoms into investigative questions',
          situation:
              'You have symptoms: “tickets spike,” “errors increase,” “users complain.”\n\nSymptoms don’t tell you where to look.\n\nTo get a usable result, your prompt must define:\n- Context - symptom description with unknown drivers\n- Objective - create a question that narrows the search space\n- Requirements - segment the symptom; request leading indicators; ban invented causes\n- Expectations - one question + the top segments to compare',
          prompt:
              'Rewrite the symptoms into an investigative question.\n\nRequirements:\n- Do not invent causes\n- Ask for segmentation (time, user cohort, feature area)\n- Ask for leading indicators that would narrow likely mechanisms\n- Output: one question + 3 segment comparisons to run first\n\nReturn only the output.',
          output:
              '**Investigative question**\nWhich segments are driving the spike in tickets and errors (time window, user cohort, feature area), and what leading indicators can narrow the likely mechanism?\n\n**First comparisons to run**\n- Peak vs non-peak periods (rates, not just counts)\n- New vs existing users (cohort difference)\n- Top feature areas/endpoints by error contribution\n\nThe difference is narrowed search: the prompt forces comparisons so you stop “analysing everything” and start isolating where the symptom lives.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *search-space reduction*.\n- Requirements forced segmentation and banned invented causes\n- Expectations demanded first comparisons, creating a concrete analysis start\n- Objective turned symptoms into a question that narrows where to look',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhat’s causing these symptoms?\n\nStrong prompt:\nRewrite into an investigative question. Don’t invent causes. Require segmentation (time, cohort, feature area). Ask for leading indicators. Output one question + 3 segment comparisons to run first.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSymptoms with unknown drivers\n\nO - Objective\nNarrow where to look first\n\nR - Requirements\nSegmentation + leading indicators; no invented causes\n\nE - Expectations\nOne question + 3 first comparisons',
            ),
          ],
          proTip:
              'Symptoms feel urgent, so people rush to “cause.” Don’t. Force segmentation first or you’ll spend your time explaining the average of three different problems.',
          takeaway:
              'Segment first, explain second.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn symptoms into a segmented investigative question.',
            pieces: [
              PromptPieceDef(text: 'Ban invented causes', isCorrect: true),
              PromptPieceDef(text: 'Require segmentation (time/cohort/feature area)', isCorrect: true),
              PromptPieceDef(text: 'Ask for leading indicators to narrow mechanisms', isCorrect: true),
              PromptPieceDef(text: 'Require 3 first comparisons to run', isCorrect: true),
              PromptPieceDef(text: 'Return one question + comparison list', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to identify the root cause immediately', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative about possible causes', isCorrect: false),
              PromptPieceDef(text: 'Assume the biggest team is at fault', isCorrect: false),
              PromptPieceDef(text: 'Remove segmentation to keep it simple', isCorrect: false),
              PromptPieceDef(text: 'Jump straight to solutions', isCorrect: false),
            ],
            coachingNote:
                'Your advantage is discipline under urgency. Segmentation prevents “average analysis” and helps you isolate the real problem faster.',
            assembledPromptExample:
                'Rewrite symptoms into an investigative question. Don’t invent causes. Require segmentation (time/cohort/feature area). Ask for leading indicators. Output one question + 3 segment comparisons to run first.',
            feedbackWhenCorrect:
                'You’re now isolating problems instead of analysing noise—this is expert-level speed.',
            resultPolishedPrompt:
                'Rewrite the symptoms into an investigative question. Do not invent causes. Require segmentation (time window, user cohort, feature area). Ask for leading indicators to narrow mechanisms. Output: one question plus three segment comparisons to run first.',
          ),
        ),
        ScenarioDef(
          title: 'Turn unclear performance feedback into diagnostic questions',
          situation:
              'You receive unclear feedback like “the team is slow” or “quality is slipping.”\n\nFeedback is politically charged—if your question blames people, you lose cooperation.\n\nIf your question is too soft, nothing changes.\n\nTo get a usable result, your prompt must define:\n- Context - sensitive feedback under ambiguity\n- Objective - diagnostic question that’s neutral and measurable\n- Requirements - avoid blame; define observable signals; request segmentation; no invented causes\n- Expectations - one question + neutral data/observation checklist',
          prompt:
              'Rewrite the feedback into a neutral, diagnostic question.\n\nRequirements:\n- Keep tone non-blaming and professional\n- Convert vague terms into observable/measurable signals\n- Ask for segmentation (work type, team, time period)\n- Do not invent causes\n- Output: one question + a 5-item observation checklist\n\nReturn only the output.',
          output:
              '**Diagnostic question**\nWhich observable signals indicate performance has slowed (cycle time, throughput, rework), and where is the change concentrated by work type and time period?\n\n**Observation checklist (neutral)**\n- Cycle time distribution (p50/p90) by work type [Unknown]\n- Throughput vs incoming demand over time [Unknown]\n- Rework rate and review cycle count [Unknown]\n- Blocker frequency and top blocker categories [Unknown]\n- Work-in-progress levels vs capacity [Unknown]\n\nPay attention to how tone is protected: the prompt forces measurable signals and neutral language so you can investigate without triggering defensiveness.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *neutral measurability*.\n- Requirements converted vague feedback into observable signals\n- Expectations created a checklist that avoids blame and enables investigation\n- Objective made the question politically safe *and* operationally useful',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this feedback into a question\n\nStrong prompt:\nRewrite into a neutral diagnostic question. Non-blaming tone. Convert vague terms into measurable signals. Ask for segmentation by work type/time. No invented causes. Output one question + a 5-item observation checklist.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSensitive feedback under ambiguity\n\nO - Objective\nInvestigate without blame, with measurable signals\n\nR - Requirements\nNeutral tone; observable metrics; segmentation; no invented causes\n\nE - Expectations\nOne question + 5-item observation checklist',
            ),
          ],
          proTip:
              'If your question implies blame, you lose data. Force neutral language and measurable signals so people can engage without defensiveness.',
          takeaway:
              'Diagnostic questions must be safe enough to answer truthfully.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that translate sensitive feedback into neutral, measurable diagnostic questions.',
            pieces: [
              PromptPieceDef(text: 'Require non-blaming, professional tone', isCorrect: true),
              PromptPieceDef(text: 'Convert vague terms into observable/measurable signals', isCorrect: true),
              PromptPieceDef(text: 'Request segmentation (work type/time period)', isCorrect: true),
              PromptPieceDef(text: 'Ban invented causes', isCorrect: true),
              PromptPieceDef(text: 'Require an observation checklist (5 items)', isCorrect: true),
              PromptPieceDef(text: 'Ask who is responsible for the slowdown', isCorrect: false),
              PromptPieceDef(text: 'Assume the team lacks motivation', isCorrect: false),
              PromptPieceDef(text: 'Demand immediate solutions first', isCorrect: false),
              PromptPieceDef(text: 'Remove measurement to keep it simple', isCorrect: false),
              PromptPieceDef(text: 'Use strong language to create urgency', isCorrect: false),
            ],
            coachingNote:
                'Your advantage is getting truth under sensitivity. Neutral language + measurable signals keeps the investigation real and cooperative.',
            assembledPromptExample:
                'Rewrite feedback into a neutral diagnostic question. Non-blaming tone. Convert vague terms into measurable signals. Ask for segmentation. No invented causes. Output one question + a 5-item observation checklist.',
            feedbackWhenCorrect:
                'You now ask questions that people can answer honestly—this is expert-level judgment under ambiguity.',
            resultPolishedPrompt:
                'Rewrite the feedback into a neutral diagnostic question. Keep tone non-blaming and professional. Convert vague terms into observable/measurable signals. Ask for segmentation by work type and time period. Do not invent causes. Output: one question plus a 5-item observation checklist.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Turn Processes Into Diagnostic Questions',
      scenarios: [
        ScenarioDef(
          title: 'Turn process issues into targeted questions',
          situation:
              'A process is “broken,” but nobody agrees where.\n\nIf you ask AI for a generic process improvement plan, you get a template.\n\nTo get a usable result, your prompt must define:\n- Context - process with suspected bottleneck\n- Objective - targeted diagnostic question about where the bottleneck is\n- Requirements - require step-level breakdown and evidence; ban invented process steps\n- Expectations - one question + step-level data request',
          prompt:
              'Rewrite the process issue into a targeted diagnostic question.\n\nRequirements:\n- Do not invent process steps not stated\n- Ask for a step-by-step breakdown of time and rework\n- Output: one diagnostic question + 4 data fields to collect per step\n\nReturn only the output.',
          output:
              '**Diagnostic question**\nWhich step in the process is the primary bottleneck, and is the delay driven by waiting time, rework, or capacity constraints at that step?\n\n**Per-step data fields to collect**\n- Average wait time vs active time [Unknown]\n- Rework/loop count [Unknown]\n- Throughput capacity and backlog [Unknown]\n- Primary blocker category [Unknown]\n\nNotice how the prompt avoids “process theatre”: it forces step-level evidence so the analysis can’t be generic.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *step-level evidence*.\n- Requirements banned invented steps and demanded breakdown\n- Expectations produced per-step data fields (not generic advice)\n- Objective narrowed “broken process” into a bottleneck investigation',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHow do we improve this process?\n\nStrong prompt:\nRewrite into a targeted diagnostic question. Don’t invent steps. Ask for step-level breakdown of time and rework. Output one question + 4 data fields to collect per step.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nProcess issues with suspected bottleneck\n\nO - Objective\nIdentify where delay lives and what mechanism drives it\n\nR - Requirements\nNo invented steps; step-by-step evidence request\n\nE - Expectations\nOne question + per-step data fields',
            ),
          ],
          proTip:
              'Templates feel productive. They’re not. Force step-level evidence or AI will give you “best practices” that don’t diagnose anything.',
          takeaway:
              'Diagnosis beats improvement plans when you don’t know the cause.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that diagnose a process bottleneck with step-level evidence.',
            pieces: [
              PromptPieceDef(text: 'Ban invented process steps', isCorrect: true),
              PromptPieceDef(text: 'Require step-by-step breakdown', isCorrect: true),
              PromptPieceDef(text: 'Ask for waiting vs active time per step', isCorrect: true),
              PromptPieceDef(text: 'Ask for rework/loop counts per step', isCorrect: true),
              PromptPieceDef(text: 'Require per-step data fields (evidence) not generic advice', isCorrect: true),
              PromptPieceDef(text: 'Ask for a process improvement template', isCorrect: false),
              PromptPieceDef(text: 'Assume the bottleneck is approvals', isCorrect: false),
              PromptPieceDef(text: 'Ask for solutions first', isCorrect: false),
              PromptPieceDef(text: 'Remove evidence to keep it simple', isCorrect: false),
              PromptPieceDef(text: 'Ask for motivational messaging', isCorrect: false),
            ],
            coachingNote:
                'The advantage is evidence-first thinking. Step-level fields prevent generic outputs and help you find where delay actually lives.',
            assembledPromptExample:
                'Rewrite into a targeted diagnostic question. Don’t invent steps. Ask for step-by-step breakdown of time and rework. Output one question + 4 data fields to collect per step. Return only the output.',
            feedbackWhenCorrect:
                'You’re now diagnosing processes with evidence instead of running templates—this is expert-level problem framing.',
            resultPolishedPrompt:
                'Rewrite the process issue into a targeted diagnostic question. Do not invent process steps. Ask for a step-by-step breakdown of waiting time, active time, and rework. Output: one question plus four data fields to collect per step.',
          ),
        ),
        ScenarioDef(
          title: 'Turn timeline concerns into diagnostic questions',
          situation:
              'A delivery timeline is slipping and stakeholders want answers.\n\nIf you guess causes, you lose credibility.\n\nIf you stay vague, you lose trust.\n\nTo get a usable result, your prompt must define:\n- Context - timeline slippage with uncertainty\n- Objective - diagnostic question that isolates where slippage accumulates\n- Requirements - compare plan vs actual; identify variance drivers; no invented causes\n- Expectations - one question + variance breakdown request',
          prompt:
              'Rewrite the timeline concern into a diagnostic question.\n\nRequirements:\n- Do not invent causes\n- Ask for plan vs actual variance breakdown by phase/step\n- Ask for the top 3 variance drivers with evidence needed\n- Output: one question + the breakdown structure\n\nReturn only the output.',
          output:
              '**Diagnostic question**\nWhere is timeline variance accumulating (which phase/step), and what evidence-based drivers explain the variance (scope change, rework, waiting, capacity)?\n\n**Breakdown structure**\n- Plan vs actual duration by phase/step\n- Variance contribution by phase (top contributors)\n- Top 3 candidate drivers + evidence to confirm each\n\nThe difference is variance discipline: the prompt forces plan-vs-actual breakdown so the analysis doesn’t become a blame story.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *variance discipline*.\n- Requirements forced plan vs actual breakdown\n- Expectations demanded drivers + evidence (not opinions)\n- Objective kept it credible under pressure: isolate where slippage accumulates first',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhy are we behind schedule?\n\nStrong prompt:\nRewrite into a diagnostic question. Don’t invent causes. Ask for plan vs actual breakdown by phase/step and top variance drivers with evidence needed. Output one question + breakdown structure.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nTimeline slipping; pressure for answers\n\nO - Objective\nIsolate where variance accumulates and why (evidence)\n\nR - Requirements\nNo invention; plan vs actual; variance drivers + evidence\n\nE - Expectations\nOne question + variance breakdown structure',
            ),
          ],
          proTip:
              'Schedule questions fail when they start with blame. Force plan-vs-actual variance first; then ask for evidence-based drivers.',
          takeaway:
              'Credible timeline analysis starts with variance, not opinions.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that diagnose timeline slippage with plan-vs-actual evidence.',
            pieces: [
              PromptPieceDef(text: 'Ban invented causes', isCorrect: true),
              PromptPieceDef(text: 'Require plan vs actual breakdown by phase/step', isCorrect: true),
              PromptPieceDef(text: 'Ask where variance accumulates (top contributors)', isCorrect: true),
              PromptPieceDef(text: 'Request top 3 candidate drivers + evidence to confirm', isCorrect: true),
              PromptPieceDef(text: 'Return one question + breakdown structure', isCorrect: true),
              PromptPieceDef(text: 'Ask who is responsible for the slip', isCorrect: false),
              PromptPieceDef(text: 'Assume scope creep is the cause', isCorrect: false),
              PromptPieceDef(text: 'Request solutions without analysis', isCorrect: false),
              PromptPieceDef(text: 'Remove evidence to keep it concise', isCorrect: false),
              PromptPieceDef(text: 'Ask for motivational messaging', isCorrect: false),
            ],
            coachingNote:
                'Under pressure, teams guess. Your advantage is forcing variance evidence so the conversation stays credible and actionable.',
            assembledPromptExample:
                'Rewrite into a diagnostic question about timeline slippage. Don’t invent causes. Ask for plan vs actual breakdown by phase/step and top variance drivers with evidence needed. Output one question + breakdown structure.',
            feedbackWhenCorrect:
                'You’re now asking timeline questions that stay credible under scrutiny—this is an operator-level advantage.',
            resultPolishedPrompt:
                'Rewrite the timeline concern into a diagnostic question. Do not invent causes. Require plan vs actual variance breakdown by phase/step. Ask for top candidate drivers with the evidence needed to confirm each. Output: one question plus the breakdown structure.',
          ),
        ),
        ScenarioDef(
          title: 'Turn unclear technical feedback into precise questions',
          situation:
              'You receive unclear technical feedback: “it’s flaky,” “it times out,” “it’s unstable.”\n\nIf you ask AI for fixes, you’ll get generic troubleshooting advice.\n\nTo get a usable result, your prompt must define:\n- Context - vague technical symptoms\n- Objective - precise diagnostic question with reproducibility criteria\n- Requirements - define symptom, conditions, impact; no invented causes\n- Expectations - one question + reproduction checklist',
          prompt:
              'Rewrite the feedback into a precise diagnostic question.\n\nRequirements:\n- Define the symptom and conditions as [Unknown] if missing\n- Include impact (user-facing vs internal) as [Unknown] if missing\n- Do not invent causes or solutions\n- Output: one question + a 6-item reproduction checklist\n\nReturn only the output.',
          output:
              '**Diagnostic question**\nUnder what conditions does the issue reproduce (inputs, environment, timing), and is the flakiness driven by timeouts, intermittent errors, or inconsistent outputs?\n\n**Reproduction checklist**\n- Environment (prod/stage/local) [Unknown]\n- Triggering workflow/endpoint [Unknown]\n- Inputs/data characteristics [Unknown]\n- Frequency (always/intermittent) [Unknown]\n- Error/timeout signatures (logs) [Unknown]\n- User impact and scope [Unknown]\n\nWhat matters here is reproducibility control: the prompt forces conditions and impact so you can diagnose instead of guessing.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *reproducibility*.\n- Requirements forced missing fields to be explicit [Unknown]\n- Expectations produced a reproduction checklist, not advice\n- Objective kept the question diagnostic under ambiguity',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHelp me debug this flaky issue\n\nStrong prompt:\nRewrite into a precise diagnostic question. Define symptom/conditions/impact (mark [Unknown] if missing). No invented causes or solutions. Output one question + a 6-item reproduction checklist.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nVague technical symptoms\n\nO - Objective\nMake diagnosis possible via reproducibility\n\nR - Requirements\nExplicit symptom + conditions + impact; mark unknowns; no invention\n\nE - Expectations\nOne question + 6-item reproduction checklist',
            ),
          ],
          proTip:
              'If you don’t force reproduction details, you’ll get “debugging tips,” not diagnosis. Precise questions beat generic troubleshooting every time.',
          takeaway:
              'Reproducibility is the fastest path out of ambiguity.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn vague technical feedback into a precise diagnostic question with reproduction criteria.',
            pieces: [
              PromptPieceDef(text: 'Require symptom + conditions (mark [Unknown] if missing)', isCorrect: true),
              PromptPieceDef(text: 'Require impact/scope (mark [Unknown] if missing)', isCorrect: true),
              PromptPieceDef(text: 'Ban invented causes and solutions', isCorrect: true),
              PromptPieceDef(text: 'Require a reproduction checklist (6 items)', isCorrect: true),
              PromptPieceDef(text: 'Return only the diagnostic output format', isCorrect: true),
              PromptPieceDef(text: 'Ask for fixes immediately', isCorrect: false),
              PromptPieceDef(text: 'Assume the database is the cause', isCorrect: false),
              PromptPieceDef(text: 'Remove unknowns to sound confident', isCorrect: false),
              PromptPieceDef(text: 'Request general debugging best practices', isCorrect: false),
              PromptPieceDef(text: 'Write a narrative explanation', isCorrect: false),
            ],
            coachingNote:
                'Your advantage is forcing reproduction fields. That’s how you turn “flaky” into something the team can actually diagnose.',
            assembledPromptExample:
                'Rewrite into a precise diagnostic question. Define symptom, conditions, and impact; mark unknowns as [Unknown]. Don’t invent causes/solutions. Output one question + a 6-item reproduction checklist.',
            feedbackWhenCorrect:
                'You now turn vague technical feedback into reproducible investigation—most users get generic troubleshooting.',
            resultPolishedPrompt:
                'Rewrite the technical feedback into a precise diagnostic question. Define the symptom, conditions, and impact; mark missing details as [Unknown]. Do not invent causes or solutions. Output: one question plus a 6-item reproduction checklist.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Turn Scattered Notes Into Analytical Questions',
      scenarios: [
        ScenarioDef(
          title: 'Turn scattered notes into one analytical question',
          situation:
              'You have scattered notes from multiple sources.\n\nSome are facts, some are opinions, some conflict.\n\nIf you ask AI to “make sense of it,” it will merge them into one confident narrative.\n\nTo get a usable result, your prompt must define:\n- Context - mixed notes with conflicts\n- Objective - one analytical question + conflict visibility\n- Requirements - preserve conflicting claims; tag [Disputed]/[Unknown]; no invention\n- Expectations - one question + conflict list',
          prompt:
              'Turn the scattered notes into one analytical question.\n\nRequirements:\n- Preserve conflicting claims; tag them [Disputed]\n- Tag missing information as [Unknown]\n- Do not invent a unified story\n- Output:\n  1) One analytical question\n  2) 3 disputed or unknown points that must be resolved\n\nReturn only the output.',
          output:
              '**Analytical question**\nWhat is the true driver behind the observed changes, and which disputed inputs must be validated before we draw conclusions?\n\n**Disputed/unknown points to resolve**\n- Which notes are evidence vs interpretation? [Unknown]\n- Do sources agree on timeframe and scope? [Disputed]\n- Are changes due to behaviour, measurement, or mix? [Unknown]\n\nThis is where you can see expert ambiguity control: [Disputed]/[Unknown] tags keep the analysis honest instead of “clean.”',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *conflict visibility*.\n- Requirements forced [Disputed]/[Unknown] instead of a unified narrative\n- Expectations surfaced what must be resolved next\n- Objective turned scattered notes into an analysis plan without pretending certainty',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake sense of these notes\n\nStrong prompt:\nTurn notes into one analytical question. Preserve conflicts and tag [Disputed]. Tag missing info [Unknown]. Don’t invent a unified story. Output one question + 3 disputed/unknown points to resolve.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nScattered notes with conflicts and gaps\n\nO - Objective\nAnalytical question + visibility of what must be resolved\n\nR - Requirements\n[Disputed]/[Unknown] tags; no unified story invention\n\nE - Expectations\nOne question + list of disputed/unknown points',
            ),
          ],
          proTip:
              'Clean outputs are seductive. They’re also how ambiguity disappears. Force [Disputed]/[Unknown] tags so the model can’t “help” by rewriting reality.',
          takeaway:
              'The fastest analysis is the one that doesn’t lie.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn scattered notes into an honest analytical question without collapsing conflicts.',
            pieces: [
              PromptPieceDef(text: 'Preserve conflicting claims and tag them [Disputed]', isCorrect: true),
              PromptPieceDef(text: 'Tag missing information as [Unknown]', isCorrect: true),
              PromptPieceDef(text: 'Ban inventing a unified narrative', isCorrect: true),
              PromptPieceDef(text: 'Require one analytical question', isCorrect: true),
              PromptPieceDef(text: 'Require a list of disputed/unknown points to resolve', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to pick the correct version', isCorrect: false),
              PromptPieceDef(text: 'Remove disputes to make it concise', isCorrect: false),
              PromptPieceDef(text: 'Invent missing context to complete the story', isCorrect: false),
              PromptPieceDef(text: 'Ask for recommendations immediately', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative summary', isCorrect: false),
            ],
            coachingNote:
                'Your advantage is truth-preserving structure. [Disputed]/[Unknown] tags keep analysis credible and prevent confident fiction.',
            assembledPromptExample:
                'Turn notes into one analytical question. Preserve conflicts; tag [Disputed]. Tag gaps [Unknown]. Don’t invent a unified story. Output one question + 3 disputed/unknown points to resolve.',
            feedbackWhenCorrect:
                'You now preserve ambiguity without losing actionability—this is expert-level judgment mastery.',
            resultPolishedPrompt:
                'Turn the scattered notes into one analytical question. Preserve conflicting claims and tag them [Disputed]. Tag missing information as [Unknown]. Do not invent a unified story. Output: one question plus three disputed/unknown points that must be resolved.',
          ),
        ),
        ScenarioDef(
          title: 'Turn brainstorm notes into a clean question',
          situation:
              'Brainstorm notes are ideas, not truths.\n\nIf you ask AI to “answer” brainstorm notes, you get confident speculation.\n\nTo get a usable result, your prompt must define:\n- Context - brainstorm ideas with uncertainty\n- Objective - turn into a testable question\n- Requirements - separate hypothesis vs evidence; request experiments/validation\n- Expectations - one question + validation plan',
          prompt:
              'Turn the brainstorm notes into one testable question.\n\nRequirements:\n- Do not treat ideas as facts\n- Separate hypothesis from evidence (mark evidence as [Unknown] if missing)\n- Output:\n  1) One testable question\n  2) 3 validation steps (how to test)\n\nReturn only the output.',
          output:
              '**Testable question**\nWhich proposed hypothesis best explains the observed outcome, and what evidence would confirm or refute it?\n\n**Validation steps**\n- Define the observable outcome and metric baseline [Unknown]\n- Identify the minimal experiment or comparison needed for each hypothesis [Unknown]\n- Specify decision criteria: what evidence would change the decision [Unknown]\n\nThe difference is epistemic discipline: the prompt forces validation instead of letting brainstorm ideas masquerade as analysis.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *hypothesis vs evidence separation*.\n- Requirements banned treating ideas as facts\n- Expectations required validation steps, not answers\n- Objective produced a question that can be tested instead of debated',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn these brainstorm notes into an answer\n\nStrong prompt:\nTurn notes into one testable question. Don’t treat ideas as facts. Separate hypothesis from evidence (mark missing evidence [Unknown]). Output one question + 3 validation steps.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nBrainstorm ideas with uncertainty\n\nO - Objective\nTurn into a testable question with a validation plan\n\nR - Requirements\nNo idea-as-fact; hypothesis vs evidence; [Unknown] for missing evidence\n\nE - Expectations\nOne question + 3 validation steps',
            ),
          ],
          proTip:
              'Brainstorms are where models sound the smartest and are the least grounded. Force validation steps or you’ll get confident speculation dressed as insight.',
          takeaway:
              'Testability is how you turn ideas into decisions.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that turn brainstorm notes into a testable question without treating ideas as facts.',
            pieces: [
              PromptPieceDef(text: 'Explicitly state: ideas are not facts', isCorrect: true),
              PromptPieceDef(text: 'Separate hypothesis from evidence', isCorrect: true),
              PromptPieceDef(text: 'Mark missing evidence as [Unknown]', isCorrect: true),
              PromptPieceDef(text: 'Require one testable question', isCorrect: true),
              PromptPieceDef(text: 'Require 3 validation steps (how to test)', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to pick the best hypothesis immediately', isCorrect: false),
              PromptPieceDef(text: 'Remove uncertainty to be decisive', isCorrect: false),
              PromptPieceDef(text: 'Invent evidence to support the best idea', isCorrect: false),
              PromptPieceDef(text: 'Ask for solutions without testing', isCorrect: false),
              PromptPieceDef(text: 'Write a persuasive summary', isCorrect: false),
            ],
            coachingNote:
                'Your edge is refusing speculation. Validation steps stop the model from “finishing the thought” with invented evidence.',
            assembledPromptExample:
                'Turn brainstorm notes into one testable question. Don’t treat ideas as facts. Separate hypothesis vs evidence; mark missing evidence [Unknown]. Output one question + 3 validation steps.',
            feedbackWhenCorrect:
                'You now convert brainstorming into decisions without letting AI hallucinate certainty.',
            resultPolishedPrompt:
                'Turn the brainstorm notes into one testable question. Do not treat ideas as facts. Separate hypothesis from evidence and mark missing evidence as [Unknown]. Output: one question plus three validation steps to test it.',
          ),
        ),
        ScenarioDef(
          title: 'Turn mixed observations into a useful question',
          situation:
              'You have mixed observations: some point one way, some another.\n\nThe temptation is to ask AI to “conclude.”\n\nBut conclusions without resolved conflicts are just well-written guesses.\n\nTo get a usable result, your prompt must define:\n- Context - mixed observations with partial conflict\n- Objective - useful question that clarifies what to resolve\n- Requirements - preserve conflict, request decision-relevant resolution\n- Expectations - one question + resolution plan',
          prompt:
              'Turn the mixed observations into a useful analytical question.\n\nRequirements:\n- Preserve conflicting observations; tag [Disputed]\n- Identify what must be resolved before a conclusion\n- Do not invent a conclusion\n- Output: one question + 3 resolution steps\n\nReturn only the output.',
          output:
              '**Analytical question**\nGiven the mixed observations, what must we validate first to determine which interpretation is correct and what decision should follow?\n\n**Resolution steps**\n- List the conflicting observations and what evidence would resolve each [Disputed]\n- Identify the minimal additional data needed to break the tie [Unknown]\n- Define the decision rule: what outcome triggers which decision [Unknown]\n\nWhat matters here is decision hygiene: the prompt refuses premature conclusions and forces the resolution plan that makes a conclusion legitimate.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *premature-conclusion prevention*.\n- Requirements preserved conflict and banned conclusions\n- Expectations demanded a resolution plan (what to validate next)\n- Objective kept the question decision-relevant instead of “interesting”',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a conclusion from these observations\n\nStrong prompt:\nTurn into one analytical question. Preserve conflicts and tag [Disputed]. Identify what must be resolved before concluding. Don’t invent conclusions. Output one question + 3 resolution steps.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMixed observations with partial conflict\n\nO - Objective\nA decision-relevant question that guides resolution\n\nR - Requirements\nPreserve conflict; no conclusions; identify what must be resolved\n\nE - Expectations\nOne question + 3 resolution steps',
            ),
          ],
          proTip:
              'If you let AI “conclude,” it will reward you with confidence. Don’t take the bait. Force the resolution plan instead.',
          takeaway:
              'Good judgment is delaying conclusions until evidence exists.',
          task: TaskDef(
            goal:
                'Choose the five prompt elements that keep mixed observations honest and drive a resolution plan.',
            pieces: [
              PromptPieceDef(text: 'Preserve conflicting observations and tag [Disputed]', isCorrect: true),
              PromptPieceDef(text: 'Ban inventing a conclusion', isCorrect: true),
              PromptPieceDef(text: 'Require identifying what must be resolved before concluding', isCorrect: true),
              PromptPieceDef(text: 'Require 3 resolution steps (what to validate next)', isCorrect: true),
              PromptPieceDef(text: 'Return only the specified output format', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to pick the correct interpretation', isCorrect: false),
              PromptPieceDef(text: 'Remove disputes for clarity', isCorrect: false),
              PromptPieceDef(text: 'Invent missing evidence to break the tie', isCorrect: false),
              PromptPieceDef(text: 'Request recommendations immediately', isCorrect: false),
              PromptPieceDef(text: 'Write a persuasive argument', isCorrect: false),
            ],
            coachingNote:
                'Your advantage is resisting confidence theatre. Preserve disputes and force resolution steps so conclusions stay legitimate.',
            assembledPromptExample:
                'Turn mixed observations into one analytical question. Preserve conflicts and tag [Disputed]. Don’t invent a conclusion. Identify what must be resolved. Output one question + 3 resolution steps.',
            feedbackWhenCorrect:
                'You now control ambiguity without collapsing it into fake certainty—this is expert mastery.',
            resultPolishedPrompt:
                'Turn the mixed observations into one analytical question. Preserve conflicts and tag [Disputed]. Do not invent a conclusion. Identify what must be resolved before concluding. Output: one question plus three resolution steps to validate next.',
          ),
        ),
      ],
    ),
  ];
}

```

### `lib\data\tracks\track8_decision_support.dart`
```
import '../app_catalog.dart';

/// Track 8 – Decision Support (lessons 1–5)
///
/// Track 8 is advanced strategy: decision-grade prompts that preserve uncertainty,
/// expose trade-offs, and produce outputs leaders can act on without being misled.
List<LessonDef> buildTrack8Lessons() {
  return [
    const LessonDef(
      title: 'Use AI to Compare Options Clearly',
      scenarios: [
        ScenarioDef(
          title: 'Turn a messy comparison into a clean comparison of two options',
          situation:
              "You have scattered notes comparing two solutions, but they mix facts, assumptions, and personal preferences.\n\nYou need a comparison you can forward to decision-makers.\n\nIf you over-clean it, you hide the real trade-offs.\n\nIf you under-structure it, people cherry-pick the one line that supports what they already want.\n\nIf you prompt AI weakly, it usually:\n- invents missing facts to make the comparison feel complete\n- implies a recommendation through tone\n- collapses uncertainty into confident bullets\n\nThis is why your prompt fails:\n- no rules for “facts vs assumptions”\n- no standard criteria to compare against\n- no requirement to preserve unknowns\n\nMost people ask for “compare Option A and B” and get a tidy story—then decisions get made on invented certainty.\n\nTo get a usable result, your prompt must define:\n- Context - decision comparison under incomplete inputs\n- Objective - a forward-safe comparison that doesn’t invent certainty\n- Requirements - fixed criteria; separate Facts/Assumptions; tag [Unknown]/[Disputed]\n- Expectations - scan-friendly table + a neutral risk note",
          prompt:
              'Create a forward-safe comparison of Option A vs Option B.\n\nRequirements:\n- Use this exact structure:\n  1) Comparison table with criteria rows: Time-to-Implement, Scalability, Maintenance, Cost, Risk\n  2) Facts/Assumptions section: list what is confirmed vs assumed\n  3) Unknowns section: list any missing inputs as [Unknown]\n- Do not invent data or outcomes\n- Keep tone neutral (no recommendation)\n\nReturn only the output in that structure.',
          output:
              '**Option A vs Option B (decision comparison)**\n\n| Criteria | Option A | Option B |\n|---|---|---|\n| Time-to-Implement | Faster implementation (minimal configuration) | Longer setup (more customisation) |\n| Scalability | Weaker long-term scalability | Better long-term growth support |\n| Maintenance | Higher long-term maintenance cost | Lower maintenance cost over time |\n| Cost | Lower upfront effort; long-term cost higher | Higher upfront effort; long-term cost lower |\n| Risk | Risk: short-term fit may create long-term drag | Risk: longer setup delays near-term value |\n\n**Facts / Assumptions**\n- Confirmed: Option A is quicker to set up with minimal configuration\n- Confirmed: Option B supports greater customisation\n- Assumption: “maintenance cost” differences remain stable over time [Unknown: drivers]\n\n**Unknowns**\n- [Unknown] Required feature set and non-negotiable constraints\n- [Unknown] Timeline deadline and cost tolerance\n- [Unknown] Operational ownership and change-management capacity\n\nNotice how uncertainty stays visible: the prompt forces [Unknown]s instead of letting the model “complete the comparison” by guessing.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *bounded certainty*.\n- Requirements forced fixed criteria and banned invention\n- Expectations separated Facts/Assumptions/Unknowns so decision-makers can trust the comparison\n- Objective prevented tone from turning into a hidden recommendation',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCompare Option A and Option B\n\nStrong prompt:\nCreate a forward-safe comparison with a fixed criteria table (Time-to-Implement, Scalability, Maintenance, Cost, Risk), then separate Facts vs Assumptions, then list [Unknown]s. No invented data. Neutral tone. Return only the structured output.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nTwo options compared under incomplete inputs\n\nO - Objective\nForward-safe comparison that doesn’t invent certainty\n\nR - Requirements\nFixed criteria; facts vs assumptions; [Unknown]/[Disputed] tagging; neutral tone\n\nE - Expectations\nTable + Facts/Assumptions + Unknowns (output only)',
            ),
          ],
          proTip:
              'If you don’t force an “Unknowns” section, the model will quietly turn missing inputs into confident bullets. That’s not analysis—it’s fiction with formatting.',
          takeaway:
              'Decision-grade comparisons preserve uncertainty; they don’t hide it.',
          task: TaskDef(
            goal:
                'Elite check: choose the five prompt elements that make an Option A vs B comparison forward-safe under incomplete information.',
            pieces: [
              PromptPieceDef(
                text: 'Force fixed comparison criteria (Time/Scale/Maintenance/Cost/Risk)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Require a Facts vs Assumptions section (separate certainty levels)',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Require an Unknowns section with [Unknown] tags',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Ban invented data/outcomes',
                isCorrect: true,
              ),
              PromptPieceDef(
                text: 'Enforce neutral tone (no recommendation)',
                isCorrect: true,
              ),
              PromptPieceDef(text: 'Ask AI to pick the best option', isCorrect: false),
              PromptPieceDef(text: 'Fill in missing information to make it complete', isCorrect: false),
              PromptPieceDef(text: 'Use persuasive language to build momentum', isCorrect: false),
              PromptPieceDef(text: 'Remove risk so it feels confident', isCorrect: false),
              PromptPieceDef(text: 'Add extra features the options should include', isCorrect: false),
            ],
            coachingNote:
                'This is where “smart-looking” outputs fool teams. Your advantage is forcing certainty boundaries (Facts/Assumptions/Unknowns) so decisions don’t get made on invented completeness.',
            assembledPromptExample:
                'Create a forward-safe Option A vs B comparison with a fixed criteria table, then list Facts vs Assumptions, then list Unknowns as [Unknown]. Neutral tone. No invented data. Return only the structured output.',
            feedbackWhenCorrect:
                'You now control decision-grade comparisons—most users accidentally prompt the model into guessing and calling it “analysis.”',
            resultPolishedPrompt:
                'Create a forward-safe comparison of Option A vs Option B. Use a fixed criteria table (Time-to-Implement, Scalability, Maintenance, Cost, Risk). Separate confirmed Facts vs Assumptions. List missing inputs as [Unknown]. Do not invent data or outcomes. Neutral tone. Return only the structured output.',
          ),
        ),
        ScenarioDef(
          title: 'Turn mixed pros/cons into a clear evaluation list',
          situation:
              'You have a mixed set of pros/cons that include trade-offs and hidden constraints.\n\nA simple “Pros/Cons” list often creates false symmetry: it makes every point look equally important.\n\nIf this goes wrong, stakeholders optimise for what looks tidy instead of what is true.\n\nWeak prompting usually:\n- rewrites points into generic “benefits/drawbacks”\n- removes caveats\n- sneaks in a recommendation\n\nTo get a usable result, your prompt must define:\n- Context - evaluation under competing objectives\n- Objective - clarity + weighting without pretending precision\n- Requirements - group by impact area; note severity/uncertainty; no invention\n- Expectations - Pros/Cons plus “Decision Risks” and “Unknowns”',
          prompt:
              'Rewrite the content into a decision-grade evaluation.\n\nRequirements:\n- Output sections in this order:\n  1) Pros\n  2) Cons\n  3) Decision Risks (items that could cause failure)\n  4) Unknowns ([Unknown] tagging)\n- Keep bullets short and factual\n- Do not invent new pros/cons\n- Neutral tone (no recommendation)\n\nReturn only the output.',
          output:
              '**Pros**\n- Easy to use\n- Quick setup\n- Works well for small teams\n\n**Cons**\n- Limited customisation\n- Not ideal for large-scale projects\n- Higher cost for advanced features\n\n**Decision Risks**\n- Scale mismatch could force rework if usage grows faster than expected\n- Cost exposure if “advanced features” become required\n\n**Unknowns**\n- [Unknown] Expected growth and scaling requirements\n- [Unknown] Which advanced features are truly required vs optional\n\nLook at how this avoids false symmetry: adding Decision Risks + Unknowns keeps the evaluation honest under uncertainty.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *risk separation*.\n- Requirements banned invention and kept bullets factual\n- Expectations added Decision Risks + Unknowns so the output doesn’t pretend everything is equally important\n- Objective kept the list decision-grade without forcing fake numbers',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a pros and cons list\n\nStrong prompt:\nRewrite into Pros, Cons, Decision Risks, and Unknowns ([Unknown] tagging). Keep bullets factual. Don’t invent new points. Neutral tone. Return only the structured output.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMixed pros/cons under competing objectives\n\nO - Objective\nClarify trade-offs without hiding risk or inventing precision\n\nR - Requirements\nFacts only; no invention; risk separation; [Unknown] tagging\n\nE - Expectations\nPros / Cons / Decision Risks / Unknowns',
            ),
          ],
          proTip:
              'Pros/Cons is where nuance goes to die. If you don’t force “Decision Risks” and “Unknowns,” the model will smooth the sharp edges—then the sharp edges hit you later.',
          takeaway:
              'Good evaluation distinguishes drawbacks from failure risks.',
          task: TaskDef(
            goal:
                'Elite check: choose the five prompt elements that turn mixed pros/cons into a decision-grade evaluation without hidden recommendations.',
            pieces: [
              PromptPieceDef(text: 'Add Decision Risks as a separate section', isCorrect: true),
              PromptPieceDef(text: 'Add Unknowns with [Unknown] tagging', isCorrect: true),
              PromptPieceDef(text: 'Ban inventing new pros/cons', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets short, factual, and scan-friendly', isCorrect: true),
              PromptPieceDef(text: 'Neutral tone (no recommendation)', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to rank the pros and cons numerically', isCorrect: false),
              PromptPieceDef(text: 'Fill in missing details so it looks complete', isCorrect: false),
              PromptPieceDef(text: 'Rewrite into a persuasive pitch for adoption', isCorrect: false),
              PromptPieceDef(text: 'Remove uncertainty to avoid confusion', isCorrect: false),
              PromptPieceDef(text: 'Add emotional framing to increase urgency', isCorrect: false),
            ],
            coachingNote:
                'Decision-grade lists preserve risk and unknowns. The “pretty” version that hides uncertainty is exactly how teams get surprised later.',
            assembledPromptExample:
                'Rewrite into Pros, Cons, Decision Risks, and Unknowns ([Unknown]). Bullets short and factual. Don’t invent new points. Neutral tone. Return only the output.',
            feedbackWhenCorrect:
                'You’re now evaluating like an operator: risks and unknowns stay visible, so decisions don’t rely on “clean” fiction.',
            resultPolishedPrompt:
                'Rewrite into a decision-grade evaluation with sections: Pros, Cons, Decision Risks, Unknowns. Use [Unknown] tags for missing inputs. Keep bullets factual and scan-friendly. Do not invent new points. Neutral tone. Return only the structured output.',
          ),
        ),
        ScenarioDef(
          title: 'Turn option notes into a clear comparison matrix',
          situation:
              'You have rough notes about Option 1 and Option 2, but the notes were written by different people with different biases.\n\nYou need a matrix that makes trade-offs explicit without pretending you know more than you do.\n\nIf you prompt AI weakly, it will:\n- normalise wording so both options sound equally safe\n- invent “best practices” and fill gaps\n- hide risk behind vague language\n\nTo get a usable result, your prompt must define:\n- Context - biased notes under incomplete information\n- Objective - a matrix that preserves uncertainty and highlights decision triggers\n- Requirements - consistent criteria; no invention; tag [Unknown]\n- Expectations - matrix + “Decision triggers” (what would change the choice)',
          prompt:
              'Rewrite the notes into a comparison matrix for Option 1 vs Option 2.\n\nRequirements:\n- Use consistent criteria rows: Upfront Cost, Time-to-Deploy, Scalability, Operational Complexity, Risk\n- Mark missing details as [Unknown]\n- Do not invent new facts\n- Add a “Decision triggers” section: 3 conditions that would push us toward one option vs the other\n\nReturn only the output.',
          output:
              '**Option 1 vs Option 2 (comparison matrix)**\n\n| Criteria | Option 1 | Option 2 |\n|---|---|---|\n| Upfront Cost | Lower upfront cost | Higher initial investment |\n| Time-to-Deploy | Faster deployment | Longer setup time |\n| Scalability | Limited scalability | Highly scalable |\n| Operational Complexity | Simpler initial operations [Unknown] | More complex due to customisation [Unknown] |\n| Risk | Risk: scale limits may force later migration | Risk: slower time-to-value and delivery slip |\n\n**Decision triggers**\n- If we have a hard deadline and minimal change capacity → Option 1\n- If long-term growth and customisation are non-negotiable → Option 2\n- If we can’t validate scalability requirements now → keep [Unknown]s visible and defer recommendation\n\nThe difference is decision clarity without false certainty: the prompt forces triggers and [Unknown]s so the matrix stays honest and useful.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *decision triggers*.\n- Requirements forced consistent criteria and banned invention\n- Expectations added triggers so the matrix is usable even with unknowns\n- Objective kept uncertainty explicit while still producing a decision-ready artifact',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a comparison matrix\n\nStrong prompt:\nCreate a matrix with fixed criteria (cost/time/scale/ops complexity/risk), tag missing info [Unknown], don’t invent facts, and add 3 decision triggers that would change the choice. Return only the output.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nRough, biased notes under incomplete information\n\nO - Objective\nHonest matrix that supports a decision without pretending certainty\n\nR - Requirements\nFixed criteria; [Unknown] tagging; no invention\n\nE - Expectations\nMatrix + Decision triggers (3)',
            ),
          ],
          proTip:
              'A matrix without triggers is just formatting. Triggers are how you make uncertainty actionable without forcing a fake recommendation.',
          takeaway:
              'Decision triggers convert unknowns into a plan.',
          task: TaskDef(
            goal:
                'Elite check: choose the five prompt elements that produce a comparison matrix with actionable decision triggers.',
            pieces: [
              PromptPieceDef(text: 'Force consistent criteria rows for both options', isCorrect: true),
              PromptPieceDef(text: 'Tag missing details as [Unknown]', isCorrect: true),
              PromptPieceDef(text: 'Ban invented facts', isCorrect: true),
              PromptPieceDef(text: 'Require a “Decision triggers” section (3 conditions)', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral (avoid hidden recommendation)', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to choose the winner', isCorrect: false),
              PromptPieceDef(text: 'Fill unknowns with plausible assumptions', isCorrect: false),
              PromptPieceDef(text: 'Remove risk to keep it positive', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated criteria not in the notes', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative instead of a matrix', isCorrect: false),
            ],
            coachingNote:
                'The elite move is making uncertainty usable. Triggers + [Unknown] tags stop confident fiction and give decision-makers a clear next step.',
            assembledPromptExample:
                'Rewrite into an Option 1 vs Option 2 matrix with fixed criteria rows. Tag missing info [Unknown]. Do not invent facts. Add 3 decision triggers that would change the choice. Neutral tone. Return only the output.',
            feedbackWhenCorrect:
                'You’re now producing decision artifacts that stay honest under uncertainty—this is Strong judgment.',
            resultPolishedPrompt:
                'Rewrite the notes into a comparison matrix (Option 1 vs Option 2) with fixed criteria rows. Mark missing details as [Unknown]. Do not invent facts. Add a “Decision triggers” section with three conditions that would push the choice one way or the other. Return only the output.',
          ),
        ),
      ],
    ),

    const LessonDef(
      title: 'Turn AI Output Into Simple Explanations',
      scenarios: [
        ScenarioDef(
          title: 'Convert technical AI output into plain-language explanation',
          situation:
              "You need to brief a non-technical stakeholder on a technical situation.\n\nIf you oversimplify, you create false confidence.\n\nIf you stay technical, they disengage and make decisions off vibes.\n\nWeak prompts usually:\n- remove uncertainty and caveats\n- replace specifics with comforting generalities\n- invent analogies that change meaning\n\nTo get a usable result, your prompt must define:\n- Context - non-technical decision audience\n- Objective - clarity without distortion\n- Requirements - plain language; preserve uncertainty; no new claims; no invented analogies\n- Expectations - short explanation + what we know vs what’s unknown",
          prompt:
              "Rewrite the explanation for a non-technical audience.\n\nRequirements:\n- Plain language (no jargon)\n- Preserve key caveats/uncertainty (don’t overstate)\n- Do not add new causes, timelines, or guarantees\n- No invented analogies\n- Output format:\n  1) 2–3 sentence explanation\n  2) What we know (2 bullets)\n  3) What we don’t know yet (2 bullets, use [Unknown])\n\nReturn only the output.",
          output:
              "The system slowed down because several things were running at the same time, which temporarily increased the load. When that extra load reduced, performance returned to normal.\n\n**What we know**\n- Performance degraded during a period of higher simultaneous activity\n- Performance returned to normal after the load reduced\n\n**What we don’t know yet**\n- [Unknown] Which specific component contributed most to the slowdown\n- [Unknown] Whether this will recur under similar load\n\nWhat matters here is truth-preserving simplicity: the prompt forces “know vs unknown,” so clarity doesn’t become overconfidence.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *clarity without certainty inflation*.\n- Requirements banned new causes and analogies\n- Expectations forced Know vs Unknown, preserving caveats\n- Objective kept it decision-usable for non-technical readers without lying',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nExplain this simply\n\nStrong prompt:\nRewrite in plain language for non-technical readers. Preserve caveats. No new causes/timelines/guarantees. No invented analogies. Output: 2–3 sentence explanation + What we know (2) + What we don’t know (2, [Unknown]).',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nNon-technical stakeholder needs to make decisions\n\nO - Objective\nClarity without distortion or overconfidence\n\nR - Requirements\nPlain language; preserve uncertainty; no new claims; no invented analogies\n\nE - Expectations\nExplanation + Know vs Unknown bullets',
            ),
          ],
          proTip:
              '“Plain language” without “preserve uncertainty” creates confident misalignment. Force Know vs Unknown or you’ll accidentally brief them into the wrong decision.',
          takeaway:
              'Simple explanations must keep the caveats visible.',
          task: TaskDef(
            goal:
                'Elite check: choose the five prompt elements that simplify technical output without creating false certainty.',
            pieces: [
              PromptPieceDef(text: 'Plain language (no jargon)', isCorrect: true),
              PromptPieceDef(text: 'Preserve caveats/uncertainty (no overstatement)', isCorrect: true),
              PromptPieceDef(text: 'Ban new causes/timelines/guarantees', isCorrect: true),
              PromptPieceDef(text: 'Force “What we know” vs “What we don’t know” sections', isCorrect: true),
              PromptPieceDef(text: 'Ban invented analogies', isCorrect: true),
              PromptPieceDef(text: 'Make it sound fully resolved to reassure them', isCorrect: false),
              PromptPieceDef(text: 'Add a likely cause to be helpful', isCorrect: false),
              PromptPieceDef(text: 'Use metaphors to make it memorable', isCorrect: false),
              PromptPieceDef(text: 'Add guarantees about recurrence', isCorrect: false),
              PromptPieceDef(text: 'Remove unknowns to avoid confusion', isCorrect: false),
            ],
            coachingNote:
                'The failure mode is “comfort clarity.” Preserve uncertainty explicitly so non-technical decisions aren’t made on a story the model invented.',
            assembledPromptExample:
                'Rewrite in plain language for non-technical readers. Preserve caveats. No new causes/timelines/guarantees. No invented analogies. Output: 2–3 sentences + What we know (2 bullets) + What we don’t know (2 bullets, [Unknown]).',
            feedbackWhenCorrect:
                'You now translate complexity without lying—this is an elite skill that prevents bad decisions from “clean” summaries.',
            resultPolishedPrompt:
                'Rewrite the explanation for a non-technical audience in plain language. Preserve uncertainty (no certainty inflation). Do not add new causes, timelines, or guarantees. No invented analogies. Output: 2–3 sentence explanation, then What we know (2 bullets), then What we don’t know yet (2 bullets with [Unknown]).',
          ),
        ),
        ScenarioDef(
          title: 'Turn multi-step AI output into a simple summary',
          situation:
              'AI produced a long, multi-step explanation, but you need a short summary for a decision update.\n\nIf you compress it badly, you lose the decision signal.\n\nIf you compress it too confidently, you turn a hypothesis into a fact.\n\nTo get a usable result, your prompt must define:\n- Context - decision update under time pressure\n- Objective - preserve the “why it matters” signal\n- Requirements - main point only; keep uncertainty; no new claims\n- Expectations - one sentence + one “so what” bullet',
          prompt:
              'Rewrite the explanation into a decision-grade summary.\n\nRequirements:\n- Exactly 1 sentence summary\n- Add 1 bullet: “So what:” (decision impact)\n- Preserve uncertainty if present; do not overstate\n- Do not add new causes or details\n\nReturn only the output.',
          output:
              'An incorrect configuration setting appears to have contributed to the issue, and updating it restored normal behaviour.\n- **So what:** Validate the configuration change is stable before treating the incident as fully resolved.\n\nLook at how this preserves judgment: “appears to” keeps uncertainty intact while still giving a decision-grade next move.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *signal compression without certainty inflation*.\n- Expectations forced 1 sentence + So what, keeping it decision-shaped\n- Requirements banned new causes/details and preserved uncertainty\n- Objective kept the impact line, not just the recap',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSummarise this\n\nStrong prompt:\nRewrite into exactly one sentence summary plus one “So what:” bullet (decision impact). Preserve uncertainty; don’t overstate. No new causes/details. Return only the output.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLong explanation must become a decision update\n\nO - Objective\nPreserve decision signal under compression\n\nR - Requirements\n1 sentence; So what bullet; preserve uncertainty; no new claims\n\nE - Expectations\nOutput only: sentence + So what bullet',
            ),
          ],
          proTip:
              'Summaries fail when they remove uncertainty to sound decisive. Force one “So what” line and keep hedging where it’s real—professionals don’t trade truth for tidy.',
          takeaway:
              'Decision summaries keep uncertainty where it belongs.',
          task: TaskDef(
            goal:
                'Elite check: choose the five prompt elements that compress multi-step output into a decision-grade summary without over-claiming.',
            pieces: [
              PromptPieceDef(text: 'Force exactly 1 sentence summary', isCorrect: true),
              PromptPieceDef(text: 'Add a “So what:” decision-impact bullet', isCorrect: true),
              PromptPieceDef(text: 'Preserve uncertainty (don’t overstate)', isCorrect: true),
              PromptPieceDef(text: 'Ban new causes or details', isCorrect: true),
              PromptPieceDef(text: 'Return only the output', isCorrect: true),
              PromptPieceDef(text: 'Remove caveats to sound confident', isCorrect: false),
              PromptPieceDef(text: 'Add likely root cause for completeness', isCorrect: false),
              PromptPieceDef(text: 'Write a long paragraph to keep nuance', isCorrect: false),
              PromptPieceDef(text: 'Add emotional language to motivate action', isCorrect: false),
              PromptPieceDef(text: 'Assume the issue is resolved permanently', isCorrect: false),
            ],
            coachingNote:
                'The elite move is controlled certainty: keep hedging where reality is uncertain, while still producing an actionable “So what.”',
            assembledPromptExample:
                'Rewrite into exactly 1 sentence summary plus 1 “So what:” bullet (decision impact). Preserve uncertainty; don’t overstate. No new causes/details. Return only the output.',
            feedbackWhenCorrect:
                'You now produce decision-grade summaries that stay honest—most users accidentally turn hypotheses into facts when they compress.',
            resultPolishedPrompt:
                'Rewrite the explanation into a decision update: exactly one sentence summary plus one “So what:” bullet. Preserve uncertainty where present. Do not add new causes or details. Return only the output.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite AI output into a clearer explanation for stakeholders',
          situation:
              'You have an AI-generated explanation that is technically correct but not stakeholder-ready.\n\nStakeholders need: what changed, why it matters, what happens next.\n\nIf you prompt AI weakly, it will:\n- rephrase without improving clarity\n- add confident-sounding detail you didn’t provide\n- bury the decision signal under verbosity\n\nTo get a usable result, your prompt must define:\n- Context - stakeholder-facing explanation under uncertainty\n- Objective - clarity + decision signal\n- Requirements - fixed structure; no invention; explicit unknowns\n- Expectations - 3-part brief they can forward',
          prompt:
              'Rewrite the explanation for stakeholders.\n\nRequirements:\n- Output exactly:\n  1) What happened (2 bullets)\n  2) Why it matters (1 bullet)\n  3) Next update (1 bullet, include timing only if confirmed)\n- Use only confirmed information; mark gaps [Unknown]\n- No invented causes, owners, or guarantees\n\nReturn only the output.',
          output:
              '**What happened**\n- Performance slowed during a period of higher simultaneous activity\n- Performance returned to normal after the load reduced\n\n**Why it matters**\n- Without identifying the primary driver, the issue may recur under similar conditions [Unknown]\n\n**Next update**\n- We will share findings after we validate the main contributing factor [Unknown timeline]\n\nWhat matters here is forward-safe structure: fixed bullets + [Unknown] tags prevent accidental over-commitment while still making the update usable.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *forward-safe clarity*.\n- Expectations forced a stakeholder brief shape (happened / matters / next)\n- Requirements kept it facts-only and tagged unknowns\n- Objective ensured the output is decision-usable instead of just “clearer writing”',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake this clearer for stakeholders\n\nStrong prompt:\nRewrite into a stakeholder brief: What happened (2 bullets), Why it matters (1), Next update (1). Facts only; tag gaps [Unknown]. No invented causes/owners/guarantees. Return only the output.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nStakeholder-facing explanation under uncertainty\n\nO - Objective\nClarity + decision signal without over-commitment\n\nR - Requirements\nFixed bullet structure; facts only; [Unknown] tags; no invention\n\nE - Expectations\nOutput only: 2/1/1 bullet sections',
            ),
          ],
          proTip:
              'Stakeholders don’t need “more words.” They need a decision shape. Fixed bullets + [Unknown] tags is how you stay credible under pressure.',
          takeaway:
              'Stakeholder clarity is structure plus bounded certainty.',
          task: TaskDef(
            goal:
                'Elite check: choose the five prompt elements that convert AI output into a forward-safe stakeholder brief.',
            pieces: [
              PromptPieceDef(text: 'Force fixed sections (What happened/Why it matters/Next update)', isCorrect: true),
              PromptPieceDef(text: 'Fix bullet counts (2/1/1) for scan speed', isCorrect: true),
              PromptPieceDef(text: 'Use confirmed information only; tag gaps [Unknown]', isCorrect: true),
              PromptPieceDef(text: 'Ban invented causes, owners, or guarantees', isCorrect: true),
              PromptPieceDef(text: 'Return only the final brief (paste-ready)', isCorrect: true),
              PromptPieceDef(text: 'Ask AI to make it reassuring and confident', isCorrect: false),
              PromptPieceDef(text: 'Add a timeline even if not confirmed', isCorrect: false),
              PromptPieceDef(text: 'Write a long narrative paragraph', isCorrect: false),
              PromptPieceDef(text: 'Remove unknowns to avoid uncertainty', isCorrect: false),
              PromptPieceDef(text: 'Add new technical detail to sound credible', isCorrect: false),
            ],
            coachingNote:
                'The difference between “clear” and “decision-grade” is structure plus truth boundaries. Without those, the model will over-commit while sounding polished.',
            assembledPromptExample:
                'Rewrite for stakeholders with fixed sections and bullet counts: What happened (2), Why it matters (1), Next update (1). Facts only; tag gaps [Unknown]. No invented causes/owners/guarantees. Return only the brief.',
            feedbackWhenCorrect:
                'You now produce stakeholder-ready updates that stay credible under uncertainty—this is Strong professional advantage.',
            resultPolishedPrompt:
                'Rewrite the explanation into a stakeholder brief with fixed sections and bullet counts: What happened (2 bullets), Why it matters (1), Next update (1). Use confirmed info only; mark gaps [Unknown]. Do not invent causes, owners, timelines, or guarantees. Return only the output.',
          ),
        ),
      ],
    ),
  ];
}

```

### `lib\data\tracks\track9_brainstorming_strategy.dart`
```
import '../app_catalog.dart';

/// Track 9 – Brainstorming & Strategy (lessons 1–5)
///
/// Track 9 is expert mastery: using AI to explore strategic space without
/// collapsing ambiguity, inventing certainty, or producing “pretty” but unsafe plans.
List<LessonDef> buildTrack9Lessons() {
  return [
    const LessonDef(
      title: 'Generate Ideas Quickly',
      scenarios: [
        ScenarioDef(
          title: 'Generate ideas for improving a process',
          situation:
              "You’re asked for ways to improve an existing process, but your initial thoughts are scattered.\n\nThe pressure is real: leadership wants “quick wins,” but the process is tied to compliance and risk.\n\nIf you generate generic ideas, nothing changes.\n\nIf you generate aggressive ideas, you accidentally remove controls and create downstream failure.\n\nWeak prompts usually:\n- produce safe, obvious suggestions\n- ignore constraints and trade-offs\n- sound confident while inventing feasibility\n\nTo get a usable result, your prompt must define:\n- Context - process improvement under constraints\n- Objective - generate ideas with explicit trade-offs\n- Requirements - classify ideas by impact/effort/risk; no invented facts; preserve uncertainty\n- Expectations - 10 ideas with guardrails + what to validate",
          prompt:
              'Generate practical process-improvement ideas.\n\nRequirements:\n- Provide exactly 10 ideas\n- For each idea include: Impact (High/Med/Low), Effort (High/Med/Low), Risk (High/Med/Low)\n- For any idea that could reduce controls, add a “Guardrail” line\n- Do not assume facts not provided; if a dependency is unknown, mark it [Unknown]\n- Keep ideas actionable and specific (no generic “improve communication”)\n\nReturn only the list.',
          output:
              '- Reduce unnecessary approval steps (Impact: Med, Effort: Med, Risk: High)\n  - Guardrail: keep mandatory compliance checkpoints; document any removed step rationale\n- Automate routine data handling tasks (Impact: High, Effort: Med, Risk: Med)\n- Standardise templates to reduce errors (Impact: Med, Effort: Low, Risk: Low)\n- Introduce weekly review checkpoints (Impact: Med, Effort: Low, Risk: Low)\n- Improve documentation for onboarding (Impact: Med, Effort: Low, Risk: Low)\n- Add a “definition of done” checklist per step (Impact: Med, Effort: Low, Risk: Low)\n- Create a fast-path for low-risk cases (Impact: High, Effort: Med, Risk: Med)\n  - Guardrail: define eligibility criteria; audit a sample weekly\n- Add an exception log for edge cases (Impact: Med, Effort: Low, Risk: Low)\n- Identify the top 3 recurring delays and instrument them (Impact: High, Effort: Med, Risk: Low)\n- Clarify ownership per step (Impact: Med, Effort: Low, Risk: Low)\n\nNotice how this stays decision-grade: Impact/Effort/Risk + Guardrails prevents “quick wins” from becoming hidden liabilities.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *trade-off enforcement*.\n- Requirements forced Impact/Effort/Risk per idea, preventing generic fluff\n- Guardrails stop “efficiency” ideas from quietly deleting controls\n- Expectations locked quantity (10) and specificity, so the output is usable immediately',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nGenerate ideas to improve this process\n\nStrong prompt:\nGenerate exactly 10 process-improvement ideas. For each include Impact/Effort/Risk. Add Guardrails for any control-reducing idea. Don’t assume unknown facts; mark [Unknown]. Keep ideas specific and actionable.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nProcess improvement under constraints and risk\n\nO - Objective\nGenerate actionable ideas with explicit trade-offs\n\nR - Requirements\nImpact/Effort/Risk per idea; guardrails for risky ideas; no invented facts; mark unknowns\n\nE - Expectations\nExactly 10 ideas, output only',
            ),
          ],
          proTip:
              '“Brainstorm” prompts fail when they ignore risk. Force Impact/Effort/Risk + Guardrails or the model will optimise for sounding clever instead of being safe.',
          takeaway:
              'Elite ideation makes trade-offs explicit, not implicit.',
          task: TaskDef(
            goal:
                'Strong check: choose the five prompt elements that generate actionable ideas *with* trade-offs and guardrails.',
            pieces: [
              PromptPieceDef(text: 'Fix the number of ideas (exactly 10)', isCorrect: true),
              PromptPieceDef(text: 'Require Impact/Effort/Risk for each idea', isCorrect: true),
              PromptPieceDef(text: 'Require guardrails for control-reducing ideas', isCorrect: true),
              PromptPieceDef(text: 'Ban invented facts and mark unknowns as [Unknown]', isCorrect: true),
              PromptPieceDef(text: 'Demand specificity (no generic advice)', isCorrect: true),
              PromptPieceDef(text: 'Ask for the “best idea” only', isCorrect: false),
              PromptPieceDef(text: 'Remove risk to keep momentum', isCorrect: false),
              PromptPieceDef(text: 'Assume compliance constraints don’t matter', isCorrect: false),
              PromptPieceDef(text: 'Let the model add plausible details for realism', isCorrect: false),
              PromptPieceDef(text: 'Ask for inspirational slogans', isCorrect: false),
            ],
            coachingNote:
                'The advantage isn’t “more ideas.” It’s ideas that won’t create hidden risk. Trade-off fields and guardrails force professional-grade thinking.',
            assembledPromptExample:
                'Generate exactly 10 process-improvement ideas. For each include Impact/Effort/Risk. Add guardrails for any control-reducing idea. Don’t assume facts; mark unknowns [Unknown]. Keep ideas specific and actionable.',
            feedbackWhenCorrect:
                'You now brainstorm like a strategist: every idea carries its trade-offs and safety boundaries.',
            resultPolishedPrompt:
                'Generate exactly 10 practical process-improvement ideas. For each idea include Impact/Effort/Risk (High/Med/Low). Add a Guardrail line for any idea that could reduce controls. Do not assume facts; mark unknown dependencies as [Unknown]. Keep ideas specific and actionable. Return only the list.',
          ),
        ),
        ScenarioDef(
          title: 'Brainstorm ways to solve a recurring problem',
          situation:
              "Your team keeps running into the same issue, but you’re out of ideas.\n\nThe constraint: you can’t add headcount, and you can’t “just fix everything.”\n\nIf you ask for solutions, you’ll get a grab bag.\n\nIf you ask for the one best solution, you’ll get a confident guess.\n\nTo get a usable result, your prompt must define:\n- Context - recurring issue with constraints\n- Objective - generate diverse solution strategies\n- Requirements - avoid duplicates; include failure modes; specify what to test first\n- Expectations - options grouped by strategy with a small test for each",
          prompt:
              'Brainstorm ways to solve the recurring problem.\n\nRequirements:\n- Provide exactly 8 options\n- Group options by strategy type: Prevent, Detect, Respond, Learn\n- For each option include: “Small test” (1 sentence) and “Failure mode” (1 sentence)\n- Keep ideas practical (no headcount increases unless explicitly stated)\n\nReturn only the grouped list.',
          output:
              '**Prevent**\n- Standardise templates to reduce errors\n  - Small test: pilot the template for one week on the highest-volume workflow\n  - Failure mode: templates become ignored without enforcement or training\n\n**Detect**\n- Add real-time monitoring to catch issues early\n  - Small test: instrument the top 2 failure points and alert on thresholds\n  - Failure mode: noisy alerts create alert fatigue and get muted\n\n**Respond**\n- Create a standard troubleshooting guide\n  - Small test: run a tabletop exercise using the guide on last week’s incident\n  - Failure mode: guide becomes outdated without ownership\n\n**Learn**\n- Run a short root-cause workshop on the most recent recurrence\n  - Small test: produce 3 testable hypotheses and assign evidence collection\n  - Failure mode: workshop outputs opinions without data follow-through\n\nThis is where you can see expert ideation: grouping by strategy + tests + failure modes prevents “idea lists” from turning into wishlists.",
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *execution realism*.\n- Requirements forced strategy grouping to avoid duplicate “same idea” lists\n- Tests and failure modes make options decision-grade, not inspirational\n- Expectations fixed quantity (8) and structure, keeping output tight and usable',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nBrainstorm ways to fix this problem\n\nStrong prompt:\nProvide exactly 8 options grouped by Prevent/Detect/Respond/Learn. For each: Small test + Failure mode. Practical constraints (no headcount assumptions). Return only the grouped list.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nRecurring problem under constraints\n\nO - Objective\nGenerate diverse strategies, not a grab bag\n\nR - Requirements\nGroup by strategy; include small test and failure mode; keep practical\n\nE - Expectations\nExactly 8 options, grouped output only',
            ),
          ],
          proTip:
              'If you don’t force tests and failure modes, you get a “smart-sounding” list nobody can execute. Professionals don’t just ideate—they pre-mortem.',
          takeaway:
              'Strategy without a small test is just opinion.',
          task: TaskDef(
            goal:
                'Strong check: choose the five prompt elements that produce diverse, executable solutions with built-in pre-mortems.',
            pieces: [
              PromptPieceDef(text: 'Group options by strategy type (Prevent/Detect/Respond/Learn)', isCorrect: true),
              PromptPieceDef(text: 'Fix quantity (exactly 8 options)', isCorrect: true),
              PromptPieceDef(text: 'Require a “Small test” for each option', isCorrect: true),
              PromptPieceDef(text: 'Require a “Failure mode” for each option', isCorrect: true),
              PromptPieceDef(text: 'Enforce practical constraints (no assumed headcount)', isCorrect: true),
              PromptPieceDef(text: 'Ask for the most creative ideas possible', isCorrect: false),
              PromptPieceDef(text: 'Skip tests to keep it fast', isCorrect: false),
              PromptPieceDef(text: 'Avoid failure modes so it stays positive', isCorrect: false),
              PromptPieceDef(text: 'Add long explanations per idea', isCorrect: false),
              PromptPieceDef(text: 'Assume unlimited budget and resources', isCorrect: false),
            ],
            coachingNote:
                'Your edge is decision-grade ideation: tests + failure modes turn ideas into options you can actually choose between.',
            assembledPromptExample:
                'Brainstorm exactly 8 options grouped by Prevent/Detect/Respond/Learn. For each include a Small test and a Failure mode. Keep practical (no assumed headcount). Return only the grouped list.',
            feedbackWhenCorrect:
                'You’re now brainstorming like a strategist: every option includes how to validate it and how it can fail.',
            resultPolishedPrompt:
                'Provide exactly 8 practical options to solve the recurring problem. Group by Prevent/Detect/Respond/Learn. For each option include: Small test (1 sentence) and Failure mode (1 sentence). Do not assume extra headcount/budget unless stated. Return only the grouped list.',
          ),
        ),
        ScenarioDef(
          title: 'Brainstorm new features or offerings',
          situation:
              "You want fresh ideas for a product or service but don’t know where to start.\n\nThe risk: “feature lists” are easy—coherent strategy isn’t.\n\nIf ideas ignore positioning, they won’t sell.\n\nIf ideas ignore feasibility, they won’t ship.\n\nTo get a usable result, your prompt must define:\n- Context - product ideas under constraints\n- Objective - generate features aligned to a strategic hypothesis\n- Requirements - include target user, value proposition, and risk; no invented market facts\n- Expectations - ideas with differentiation + trade-offs + a test",
          prompt:
              'Generate new feature or offering ideas.\n\nRequirements:\n- Provide exactly 6 ideas\n- For each idea include: Target user, Value proposition (1 sentence), Differentiator, Risk/Trade-off, Quick test\n- Keep ideas realistic (no magical capabilities)\n- Do not invent market data; mark unknowns [Unknown]\n\nReturn only the list.',
          output:
              '- Quick-start templates for new users\n  - Target user: new users\n  - Value proposition: reduce setup time by providing ready-to-use starting points\n  - Differentiator: templates tailored to common workflows\n  - Risk/Trade-off: may constrain advanced users if templates become the default\n  - Quick test: release 3 templates and measure activation lift vs baseline [Unknown baseline]\n\n- Integrated analytics dashboard\n  - Target user: team leads\n  - Value proposition: make outcomes visible without exporting data\n  - Differentiator: decision-grade views with “unknowns” explicitly tagged\n  - Risk/Trade-off: complexity and maintenance cost\n  - Quick test: prototype top 3 metrics and validate with 5 power users\n\nNotice how this avoids “idea soup”: forcing user/value/differentiator/risk/test makes each feature a strategic bet with a validation path.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The control point is *strategic completeness without fake data*.\n- Requirements forced positioning elements (user/value/differentiator)\n- Risk/Trade-off prevents “only upside” thinking\n- Quick tests make ideas testable bets, not brainstorm wallpaper',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nGenerate feature ideas\n\nStrong prompt:\nGenerate exactly 6 realistic ideas. For each: target user, value proposition, differentiator, risk/trade-off, quick test. Don’t invent market data; mark unknowns [Unknown]. Return only the list.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nNeed new offerings without inventing market reality\n\nO - Objective\nGenerate strategy-aligned ideas with validation paths\n\nR - Requirements\nUser/value/differentiator; risk/trade-off; quick test; no fake data\n\nE - Expectations\nExactly 6 ideas with the specified fields',
            ),
          ],
          proTip:
              'If you don’t force a risk/trade-off, you get fantasy features. Professionals treat ideas as bets with downsides and tests—make the model do that work.',
          takeaway:
              'Strong strategy prompts turn ideas into testable bets.',
          task: TaskDef(
            goal:
                'Strong check: choose the five prompt elements that produce feature ideas as strategic bets (not just a list).',
            pieces: [
              PromptPieceDef(text: 'Fix quantity (exactly 6 ideas)', isCorrect: true),
              PromptPieceDef(text: 'Require target user + value proposition', isCorrect: true),
              PromptPieceDef(text: 'Require differentiator (why this is distinct)', isCorrect: true),
              PromptPieceDef(text: 'Require risk/trade-off for each idea', isCorrect: true),
              PromptPieceDef(text: 'Require a quick test (validation path)', isCorrect: true),
              PromptPieceDef(text: 'Ask for the most innovative ideas possible', isCorrect: false),
              PromptPieceDef(text: 'Skip risks to keep it positive', isCorrect: false),
              PromptPieceDef(text: 'Invent market numbers to quantify impact', isCorrect: false),
              PromptPieceDef(text: 'Write long essays for each idea', isCorrect: false),
              PromptPieceDef(text: 'Focus on features only, no positioning', isCorrect: false),
            ],
            coachingNote:
                'Your edge is forcing strategic fields (user/value/differentiator/risk/test). This stops “feature soup” and produces bets you can actually evaluate.',
            assembledPromptExample:
                'Generate exactly 6 realistic feature/offer ideas. For each include target user, value proposition (1 sentence), differentiator, risk/trade-off, and a quick test. Don’t invent market data; mark unknowns [Unknown]. Return only the list.',
            feedbackWhenCorrect:
                'You’re now using AI for strategy, not brainstorming theater—ideas come with trade-offs and tests.',
            resultPolishedPrompt:
                'Generate exactly 6 realistic feature or offering ideas. For each include: Target user, Value proposition (1 sentence), Differentiator, Risk/Trade-off, Quick test. Do not invent market data; mark unknowns [Unknown]. Return only the list.',
          ),
        ),
      ],
    ),
  ];
}

```
