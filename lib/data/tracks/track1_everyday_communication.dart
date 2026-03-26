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
                  text: 'Add extra background details to make the email longer',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'The email should clearly state that the report is ready for review',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Let the AI decide what the email should focus on',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'The email should ask for comments by Wednesday',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Include unrelated project updates', isCorrect: false),
              PromptPieceDef(
                  text: 'The tone should be polite and professional',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'The email should be written in two short paragraphs',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add creative phrasing to make it more interesting',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'The final output should be clear and ready to send',
                  isCorrect: true),
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


