# AI Ready — full product lesson export (user-facing content)

Generated from `lib/data/tracks/*.dart` sources. Shared UX: completion flows use the app bar title **Lesson Complete** (see `lesson_complete_screen.dart` / `lesson_flow/lesson_complete_screen.dart`).

## Track 1 — Everyday Communication
*Source: `lib/data/tracks/track1_everyday_communication.dart`*

### Lesson 1 — Write Clearly From Scratch

#### Scenario 1 — Write a Professional Email

**Situation**

You need to write a professional email to a colleague.

The draft policy document is ready, and you want to ask for feedback by Thursday.

But when you give AI a vague instruction, the result is usually:
- too generic
- missing the actual request
- not ready to send

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people would type “write an email about the policy”—then wonder why the reply feels generic.

To get a usable result, your prompt must define:
- Context - what is happening
- Objective - what the email should achieve
- Requirements - tone and structure
- Expectations - what the final output should include

**Expert prompt**

Write a professional email explaining that the draft policy document is ready for review and asking if they can share feedback by Thursday. Keep it to two or three short paragraphs.

**AI response (example)**

Subject: Draft Policy Document Ready for Review

Hi [Name],

I'm writing to let you know that the draft policy document is now ready for review. Please feel free to take a look at your convenience.

If possible, could you share your feedback by Thursday? This will help us stay on track with the timeline. Let me know if you have any questions.

Thanks,
[Your Name]

Notice how the deadline and the ask stay explicit—that is your Objective and Expectations, not the model improvising “professional.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: the model is following your structure, not polishing your writing.
- Context pins who this is for
- Objective pins the deadline ask
- Requirements cap length and tone
- Expectations demand send-ready text

- **Weak vs Strong Prompt**

Weak prompt:
Write an email about a document

Strong prompt:
Write a professional email explaining that the draft policy document is ready for review and asking if they can share feedback by Thursday. Keep it to two or three short paragraphs.

- **C.O.R.E. Breakdown**

C - Context
Colleague email; draft policy document is ready for review

O - Objective
Request feedback by Thursday

R - Requirements
Professional tone; two to three short paragraphs

E - Expectations
The email should be clear and ready to send

**Pro tip**

People skip C.O.R.E. because one line feels faster—then they lose the evening fixing mush. The real mistake is treating structure as optional.

**Takeaway**

AI mirrors the frame you give it. Name the situation, the outcome, the format, and what “done” looks like—and you pull ahead of anyone still typing “make this sound good.”

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a colleague email—report ready for review and comments by Wednesday.

**Challenge — options (10)**

- [✓ correct] The email should clearly state that the report is ready for review
- [✓ correct] The email should ask for comments by Wednesday
- [✓ correct] The tone should be polite and professional
- [✓ correct] The email should be written in two short paragraphs
- [✓ correct] The final output should be clear and ready to send
- [✗ incorrect] Add extra background details to make the email longer
- [✗ incorrect] Let the AI decide what the email should focus on
- [✗ incorrect] Include unrelated project updates
- [✗ incorrect] Add creative phrasing to make it more interesting
- [✗ incorrect] Choose the best AI model before writing

**Result — coaching note**

A premium prompt names Context, Objective, Requirements, and Expectations—what the output should include—so the model can deliver something you can send.

**Result — assembled prompt example**

Write a professional email to a colleague explaining that the report is ready for review. The objective is to clearly request comments by Wednesday. Write the email in two short paragraphs using a polite and professional tone. The final output should be clear, concise, and ready to send.

**Result — feedback when correct**

That score is the gap between “sounds fine” and send-ready: miss one C.O.R.E. slot and the model fills it with guesswork.

---

#### Scenario 2 — Rewrite a Messy Message Into a Clear Update

**Situation**

You need to send a clear project update to your team.

But instead of a clean brief, you only have scattered notes:
- timeline slipped slightly
- design team still finalising assets
- dev work is mostly done
- waiting on one dependency
- next steps unclear

When you give this kind of input to AI, the result is usually:
- disorganized
- missing key points
- unclear about what happens next

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Messy input is where most people lose control—they stop telling the model what not to do.

To get a usable result, your prompt must define:
- Context - messy internal update
- Objective - inform and align the team
- Requirements - structured, readable format
- Expectations - clear status and next steps

**Expert prompt**

Rewrite the following notes into a clear team update message.

The goal is to explain the current project status and make the next steps clear.

Structure the message with short sections or bullet points. Use a professional but simple tone.

The final output should clearly show what is done, what is pending, and what happens next.

**AI response (example)**

Hi team,

Here's a quick update on the project:

Current status:
- Development work is mostly complete
- Timeline has shifted slightly due to ongoing design work

Pending items:
- Final design assets from the design team
- One remaining dependency before full completion

Next steps:
- Finalise design assets
- Resolve the remaining dependency
- Prepare for final review

Let me know if anything needs clarification.

Notice how status, pending work, and next steps stay separated—that is Requirements and Expectations locking the shape so the model cannot bury the lead.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: messy notes do not get “fixed” by magic—they get routed by your format rules.
- Objective forces the one job: align the team
- Requirements force sections or bullets
- Expectations force done / pending / next without narrative drift

- **Weak vs Strong Prompt**

Weak prompt:
Summarise these notes

Strong prompt:
Rewrite the following notes into a clear team update message.

The goal is to explain the current project status and make the next steps clear.

Structure the message with short sections or bullet points. Use a professional but simple tone.

The final output should clearly show what is done, what is pending, and what happens next.

- **C.O.R.E. Breakdown**

C - Context
Messy meeting notes that need to be turned into a clear update

O - Objective
Inform the team and align them on current status

R - Requirements
Structured format using sections or bullet points

E - Expectations
The output should clearly show status, pending work, and next steps

**Pro tip**

“Summarise this” is a trap: it invites the model to freestyle. The mistake is skipping Requirements—then you get a wall of text with no next step.

**Takeaway**

Messy inputs punish vague prompts first. Lock Objective and format, and you stay in control while everyone else gets mush.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning rough notes into a structured team update with clear next steps.

**Challenge — options (10)**

- [✓ correct] The update should clearly explain the current status of the project
- [✓ correct] The output should organize information into sections or bullet points
- [✓ correct] The update should highlight what is completed and what is still pending
- [✓ correct] The message should clearly state the next steps
- [✓ correct] The final output should be structured, easy to read, and ready to send
- [✗ incorrect] Add extra details to make the update more comprehensive
- [✗ incorrect] Let the AI decide how to structure the message
- [✗ incorrect] Include all notes exactly as written
- [✗ incorrect] Add creative language to make the update more engaging
- [✗ incorrect] Focus only on completed work

**Result — coaching note**

When input is messy, C.O.R.E. is what keeps the model aligned: context, objective, format requirements, and explicit expectations for the final message.

**Result — assembled prompt example**

Rewrite the following meeting notes into a clear team update. The objective is to explain the current project status and align the team on next steps. Structure the message using clear sections or bullet points. The output should clearly show what is completed, what is pending, and what happens next, and should be ready to send.

**Result — feedback when correct**

Full marks here means you see the rails: without format + expectations, messy notes collapse into noise—this is where most AI users lose control.

---

#### Scenario 3 — Handle a Sensitive Update with the Right Tone

**Situation**

You need to send an update to a client.

There is a delay.

But the situation is not simple:
- the delay is caused by internal issues
- the work is still progressing
- you need to maintain trust
- you also need to reset expectations

If you prompt AI without structure, the output usually becomes:
- too vague
- too blunt
- too wordy

This is why your prompt fails:
- unclear Objective
- weak Requirements
- no defined Expectations

Most people ask for “professional” and hope tone handles itself—that is how trust leaks out of the email.

To get a usable result, your prompt must define:
- Context - client update with a delay
- Objective - inform, maintain confidence, and reset timeline
- Requirements - controlled tone and structure
- Expectations - clear, honest, and reassuring message

**Expert prompt**

Write a professional email to a client explaining that the project is slightly delayed due to internal adjustments.

The objective is to clearly communicate the delay while maintaining trust and keeping the relationship positive.

Use a calm, confident, and professional tone.

The email should briefly explain the situation, reassure progress, and provide a revised expectation.

The final output should be clear, honest, and ready to send.

**AI response (example)**

Subject: Project Update

Hi [Name],

I wanted to share a quick update on the project. We've made strong progress, but a few internal adjustments have slightly impacted the timeline.

That said, work is continuing steadily, and we are focused on delivering everything to the expected standard. We now expect to complete the next milestone shortly and will keep you updated as we move forward.

Thanks for your understanding, and please feel free to reach out if you would like to discuss any details.

Best regards,
[Your Name]

Notice how the delay is stated without panic and the next milestone still appears—that is Objective plus Requirements holding tone and honesty at once.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: delay emails blow up when Objective is fuzzy—you need one prompt to do three jobs at once.
- Objective balances bad news + relationship
- Requirements pin the tone so it cannot slide into panic or coldness
- Expectations force a forward path, not just an apology

- **Weak vs Strong Prompt**

Weak prompt:
Write an email saying the project is delayed

Strong prompt:
Write a professional email to a client explaining that the project is slightly delayed due to internal adjustments.

The objective is to clearly communicate the delay while maintaining trust and keeping the relationship positive.

Use a calm, confident, and professional tone.

The email should briefly explain the situation, reassure progress, and provide a revised expectation.

The final output should be clear, honest, and ready to send.

- **C.O.R.E. Breakdown**

C - Context
Client communication about a project delay

O - Objective
Communicate the delay while maintaining trust and confidence

R - Requirements
Controlled tone: calm, professional, reassuring

E - Expectations
The output should clearly explain the delay, show progress, and provide next steps

**Pro tip**

The common mistake is softening the delay until it disappears—then the client feels misled. Name the trade-offs in the prompt, or the model will guess wrong.

**Takeaway**

Hard news needs competing objectives spelled out. C.O.R.E. is how you keep honesty, warmth, and a clear next step in the same message—most users pick only one.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong client email about a delay—clear, calm, and trust-building.

**Challenge — options (10)**

- [✓ correct] The email should clearly explain that there is a delay in the project
- [✓ correct] The message should maintain a calm, confident, and professional tone
- [✓ correct] The email should reassure the client that progress is still being made
- [✓ correct] The message should provide a revised expectation or next step
- [✓ correct] The final output should be clear, honest, and ready to send
- [✗ incorrect] Minimise mention of the delay to keep the message positive
- [✗ incorrect] Let the AI decide how to communicate the situation
- [✗ incorrect] Add extra technical details to justify the delay
- [✗ incorrect] Make the message more casual to sound friendly
- [✗ incorrect] Focus only on positive updates

**Result — coaching note**

Sensitive updates need every element of C.O.R.E.: situation, competing objectives, tone requirements, and a concrete picture of the message the client should receive.

**Result — assembled prompt example**

Write a professional email to a client explaining that the project is slightly delayed due to internal adjustments. The objective is to clearly communicate the delay while maintaining trust and keeping the relationship positive. Use a calm, confident, and professional tone. The email should briefly explain the situation, reassure that progress is ongoing, and provide a revised expectation or next step. The final output should be clear, honest, and ready to send.

**Result — feedback when correct**

You nailed the tension: delay copy fails when Objective or tone is implicit—this is the edge over one-line “be professional” prompts.

---

### Lesson 2 — Rewrite for Clarity

#### Scenario 1 — Fix a Confusing Email So It's Clear and Concise

**Situation**

You have a colleague's draft about the training schedule. It repeats itself, hides the real update, and runs long.

Readers only need one fact: the schedule is not ready today and will be sent tomorrow afternoon.

When you tell AI only to "clean this up," the result is usually:
- still fluffy
- the wrong tone
- missing the single takeaway

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people ask AI to "make it better" and never name the one fact—so the model keeps the noise.

To get a usable result, your prompt must define:
- Context - internal email; colleague draft about the training schedule
- Objective - state clearly that the schedule is not ready today and will arrive tomorrow afternoon
- Requirements - professional tone; two short paragraphs; remove repetition
- Expectations - include a subject line; ready to send

**Expert prompt**

Rewrite my colleague's draft into a clear internal email about the training schedule. State plainly that the schedule is not ready today and will be sent tomorrow afternoon, without changing any facts. Use a professional tone in exactly two short paragraphs, cut repetition, and add a subject line so the message is ready to send.

**AI response (example)**

Subject: Training schedule — delivery tomorrow afternoon

Hi [Name],

Quick update: the training schedule is not ready to share today. It will be sent tomorrow afternoon once a few final checks are complete.

Thanks for your patience. Let me know if you need anything in the meantime.

Best,
[Your Name]

Notice how nothing new appears except clarity—the Objective and Requirements told the model what to delete, not what to invent.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: rewrites go wrong when Objective is missing—the model decorates instead of deleting.
- Context anchors the messy draft
- Objective locks the single takeaway
- Requirements force paragraph count and repetition cuts
- Expectations demand subject line + send-ready

- **Weak vs Strong Prompt**

Weak prompt:
Make this email better

Strong prompt:
Rewrite my colleague's draft into a clear internal email about the training schedule. State plainly that the schedule is not ready today and will be sent tomorrow afternoon, without changing any facts. Use a professional tone in exactly two short paragraphs, cut repetition, and add a subject line so the message is ready to send.

- **C.O.R.E. Breakdown**

C - Context
Internal email; colleague draft about the training schedule

O - Objective
Communicate the reschedule: not today; tomorrow afternoon

R - Requirements
Professional tone; two short paragraphs; strip repetition

E - Expectations
Subject line included; reads as polished and ready to send

**Pro tip**

“Better” is not a spec. The mistake is skipping Requirements—then the model keeps fluff because you never told it what to delete.

**Takeaway**

Anchor the draft, name the one outcome, then cage structure—noise dies when Expectations say what “done” looks like.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for telling the team the client roadmap review moved to Thursday at 10:00 a.m.

**Challenge — options (10)**

- [✓ correct] The message should clearly state the new meeting time (Thursday, 10:00 a.m.)
- [✓ correct] The objective should be to inform attendees and avoid confusion about the old time
- [✓ correct] The tone should stay professional and direct for a team channel or email
- [✓ correct] The output should briefly note that the calendar invite will be updated (or equivalent next step)
- [✓ correct] The final output should be short, accurate, and ready to post or send
- [✗ incorrect] Add a joke to keep the update light
- [✗ incorrect] Include unrelated project gossip for context
- [✗ incorrect] Let the model pick whichever time sounds reasonable
- [✗ incorrect] Pad the message so it feels more important
- [✗ incorrect] Ask the model to choose the best AI tool first

**Result — coaching note**

Strong rewrite prompts still need full C.O.R.E.: audience and channel, the factual change, tone and length, and what "done" looks like.

**Result — assembled prompt example**

Write a short team update for email or chat explaining that the client roadmap review has moved to Thursday at 10:00 a.m., so nobody relies on the old time. Use a professional, direct tone in two or three sentences, note that the calendar invite will be updated, and keep the message accurate and ready to send.

**Result — feedback when correct**

Perfect: this is the rewrite edge—Objective + Expectations stop the model from “improving” you into new facts.

---

#### Scenario 2 — Rewrite Fragmented Notes Into One Clean Update

**Situation**

You need one post in the leadership Slack channel, but your inbox is only fragments:
- "Q3 freeze — maybe Wed call??"
- Legal still reviewing one vendor clause
- "we should say something today"
- no agreed headline or owner

When you tell AI only to "summarise this," the result is usually:
- still chaotic
- invented dates or owners
- tone that feels too casual or too alarmist

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

This is where most AI users lose control: they never ban invention, so the model fills gaps with confident fiction.

To get a usable result, your prompt must define:
- Context - leadership channel; partial notes on Q3 budget and Legal
- Objective - one factual status update; no implied decision
- Requirements - neutral executive tone; one short paragraph or up to three tight bullets; do not invent owners, percentages, or dates
- Expectations - concise, factual, ready to paste

**Expert prompt**

Rewrite the following fragmented notes into one leadership-channel update for Slack. The Q3 budget discussion is active, Legal is still reviewing a vendor contract clause, and leadership wants a same-day line in channel. Communicate current status only—do not imply a final decision or a new deadline. Use a neutral executive tone in either one short paragraph or up to three bullet lines. Do not invent owners, percentages, or dates that the notes do not support, and do not add tasks unless the notes explicitly include them. Keep it factual and ready to paste.

**AI response (example)**

Headline: Q3 budget — vendor legal review in progress

Legal is still reviewing one clause on the vendor contract tied to the Q3 budget discussion. No final decision yet; we will share the next checkpoint once review clears. Ping me if you need detail for your function.

Notice how nothing is invented—Requirements and Expectations explicitly blocked dates, owners, and drama the notes did not support.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: leadership fragments need anti-hallucination rules in the prompt, not after the fact.
- Objective is “status only, no implied decision”
- Requirements lock tone and bullet budget
- Expectations demand paste-ready without invented facts

- **Weak vs Strong Prompt**

Weak prompt:
Summarise these chats

Strong prompt:
Rewrite the following fragmented notes into one leadership-channel update for Slack. The Q3 budget discussion is active, Legal is still reviewing a vendor contract clause, and leadership wants a same-day line in channel. Communicate current status only—do not imply a final decision or a new deadline. Use a neutral executive tone in either one short paragraph or up to three bullet lines. Do not invent owners, percentages, or dates that the notes do not support, and do not add tasks unless the notes explicitly include them. Keep it factual and ready to paste.

- **C.O.R.E. Breakdown**

C - Context
Leadership Slack channel; scattered notes on Q3 budget and Legal review

O - Objective
Share status without deciding or dramatising

R - Requirements
Executive-neutral tone; tight structure; no fabricated facts

E - Expectations
One paste-ready update with a clear headline

**Pro tip**

Messy input is not the problem—missing “do not invent” is. The model will guess dates and owners unless Requirements forbid it.

**Takeaway**

Fragmented sources need a contract: audience, intent, anti-hallucination lines, and the shape of the final post—skip one and you look reckless in channel.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning rough handoff notes into a structured handoff message for the incoming owner.

**Challenge — options (10)**

- [✓ correct] The prompt should state that the notes are messy handoff bullets from the departing owner
- [✓ correct] The objective should be to give the incoming owner a clear snapshot of status and blockers
- [✓ correct] The requirements should force a structured format (for example labeled sections or bullets)
- [✓ correct] The prompt should forbid inventing deadlines, approvals, or tool names not in the notes
- [✓ correct] The expectation should be a message the new owner can act on without follow-up clarification
- [✗ incorrect] Encourage creative storytelling to make it memorable
- [✗ incorrect] Let the model assume the project is already finished
- [✗ incorrect] Add emotional language about how stressful the week was
- [✗ incorrect] Paste the raw notes twice so the model "notices" them more
- [✗ incorrect] Ask which large language model to use before rewriting

**Result — coaching note**

Handoffs need the same structure as messy chat: name the mess, define the job, require a schema, ban guesses, and describe the finished artifact.

**Result — assembled prompt example**

Rewrite these rough handoff notes into a structured handoff message for the incoming project owner. Summarise current status, owners, and blockers using clear section labels or bullets. Keep a neutral professional tone, do not invent dates, budgets, or tool names that are not in the notes, and deliver something the new owner can act on without follow-up questions.

**Result — feedback when correct**

Strong: you spotted the guardrails—this is where prompts break when leadership visibility meets half-finished facts.

---

#### Scenario 3 — Handle a Vague Ask With the Right Tone

**Situation**

Your manager DMs: "Just circle back on the onboarding stuff later today — keep it tight."

You do not know which onboarding bundle they mean, what "later" means, or how formal to sound—and you cannot sound annoyed.

If you prompt AI without structure, the output usually becomes:
- too vague
- too blunt
- too wordy

This is why your prompt fails:
- unclear Objective
- weak Requirements
- no defined Expectations

Most people would ask AI to “sound polite” and get a reply that dodges the real question.

To get a usable result, your prompt must define:
- Context - manager DM; vague onboarding request
- Objective - acknowledge, clarify scope and timing, propose a bounded next step
- Requirements - respectful, calm, professional tone; about ninety words or fewer; no sarcasm; do not invent deliverables
- Expectations - one message, ready to send

**Expert prompt**

Draft a reply to my manager's DM: "Just circle back on the onboarding stuff later today — keep it tight." I am unsure which onboarding package they mean and what time "later" implies, and the tone should stay positive. Acknowledge the note, ask one focused question about scope and timing, and suggest a concrete next step without over-committing. Keep a respectful, calm, professional voice in about ninety words or fewer, with no sarcasm or passive aggression and no invented deliverables. Give me a single message that is ready to send.

**AI response (example)**

Thanks for the nudge — happy to tighten this up. When you say onboarding stuff, do you mean the new-hire checklist pack, the LMS module, or both? If you can point me to the version you want circled back on, I will send a short status and ETA later today. If you had a specific time in mind for "later," let me know and I will align.

Notice how one question unlocks scope without snark—that is Objective plus Requirements holding tone while you force clarity.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: the model cannot read your manager's mind—you have to script the trade-off between rapport and clarity.
- Objective forces acknowledge + clarify + next step without stalling
- Requirements cap length and ban sarcasm so tone cannot drift
- Expectations demand one send-ready message, not a thread

- **Weak vs Strong Prompt**

Weak prompt:
Help me reply to my boss

Strong prompt:
Draft a reply to my manager's DM: "Just circle back on the onboarding stuff later today — keep it tight." I am unsure which onboarding package they mean and what time "later" implies, and the tone should stay positive. Acknowledge the note, ask one focused question about scope and timing, and suggest a concrete next step without over-committing. Keep a respectful, calm, professional voice in about ninety words or fewer, with no sarcasm or passive aggression and no invented deliverables. Give me a single message that is ready to send.

- **C.O.R.E. Breakdown**

C - Context
Manager DM; vague onboarding request; need to protect rapport

O - Objective
Acknowledge, clarify scope/timing, propose a bounded next step

R - Requirements
Calm professional tone; word cap; no invented promises

E - Expectations
One polished reply ready to send immediately

**Pro tip**

Vague asks break when you forget “no invented deliverables”—the model will happily promise work you did not mean to offer.

**Takeaway**

Fuzzy inbound messages are still a spec problem. C.O.R.E. defines what “good” looks like before the model improvises rapport or dodge.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for asking a product lead for a short extension on a Friday deadline without sounding negative.

**Challenge — options (10)**

- [✓ correct] The prompt should state the existing Friday deadline and the channel (email or Slack)
- [✓ correct] The objective should be to request a brief extension with a specific new target time
- [✓ correct] The requirements should keep the tone constructive, respectful, and non-defensive
- [✓ correct] The prompt should mention one factual reason for the slip without blame or drama
- [✓ correct] The expectation should be a concise message ready to send in one pass
- [✗ incorrect] Suggest exaggerating the risk to force a yes
- [✗ incorrect] Tell the model to guess why the deadline was unrealistic
- [✗ incorrect] Add humour about working weekends
- [✗ incorrect] Ask for a long essay explaining team history
- [✗ incorrect] Instruct the model to compare AI vendors first

**Result — coaching note**

Sensitive timing asks need context, a crisp objective, tone rules, and a defined artifact — otherwise the model swings between apologetic novels and blunt demands.

**Result — assembled prompt example**

Draft a short Slack message to the product lead asking for a small extension on the Friday 5 p.m. deliverable because one dependency landed late. Propose Monday 10 a.m. with a brief outline of what ships when. Keep a constructive, respectful tone, avoid blame, stay under ninety words, do not invent metrics, and make the message ready to send without editing.

**Result — feedback when correct**

That is the difference between “polite” and in control: you picked the C.O.R.E. levers that stop the model from over-promising or under-clarifying.

---

### Lesson 3 — Adjust Tone for Any Situation

#### Scenario 1 — Polish a Casual Update for a Formal Audience

**Situation**

You wrote a quick Slack-style line for a leadership email: you will share the revised budget memo later today and people do not need to reply yet.

The audience expects a calm, professional register—not chatty shorthand.

When you only say "make this professional," AI often:
- adds filler
- shifts the meaning
- sounds stiff or generic

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most users say “make it professional” and get a new promise or a new tone—because they never locked the facts.

To get a usable result, your prompt must define:
- Context - leadership email; memo still being revised
- Objective - communicate timing and no action required
- Requirements - professional tone; keep the same facts; two short sentences
- Expectations - ready to send; no new commitments

**Expert prompt**

Rewrite this line for a leadership email without changing facts: I'll drop the revised budget memo later today—no need to reply yet. Keep the meaning identical, use a professional tone, and limit the output to two short sentences.

**AI response (example)**

Subject: Revised budget memo

Dear [Name],

I will share the revised budget memo later today. No response is required at this stage.

Kind regards,
[Your Name]

Notice how meaning stayed frozen—Requirements + Expectations told the model what not to change, not just how to sound.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: tone prompts fail when “professional” is the only instruction—the model will rewrite meaning.
- Context names leadership email so register shifts correctly
- Objective keeps timing + no-reply as the only job
- Requirements lock facts and sentence count
- Expectations demand send-ready lines, not a new pitch

- **Weak vs Strong Prompt**

Weak prompt:
Make this sound professional

Strong prompt:
Rewrite this line for a leadership email without changing facts: I'll drop the revised budget memo later today—no need to reply yet. Keep the meaning identical, use a professional tone, and limit the output to two short sentences.

- **C.O.R.E. Breakdown**

C - Context
Leadership email; budget memo revision timing

O - Objective
Share timing; state no reply needed

R - Requirements
Professional tone; same facts; two short sentences

E - Expectations
Polished lines ready to send

**Pro tip**

If you do not say “same facts,” the model will “improve” you into commitments you did not make—then you are editing on defense.

**Takeaway**

Tone is a constraint problem: lock audience, facts, and length first—style follows, and you stay ahead of generic “rewrite” output.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning a casual client chat into a polite email that confirms a Tuesday wire transfer without adding new promises.

**Challenge — options (10)**

- [✓ correct] The prompt should name the audience (client) and channel (email)
- [✓ correct] The objective should be to confirm the Tuesday transfer without creating new obligations
- [✓ correct] The requirements should keep a courteous, professional tone in two or three sentences
- [✓ correct] The prompt should forbid inventing amounts, dates, or bank details
- [✓ correct] The expectation should be a message the user can send immediately
- [✗ incorrect] Tell the model to sound more excited than professional
- [✗ incorrect] Let the model choose the payment day
- [✗ incorrect] Add a joke to relax the client
- [✗ incorrect] Paste unrelated invoice numbers for realism
- [✗ incorrect] Ask which AI model to use before drafting

**Result — coaching note**

When tone is the job, C.O.R.E. still matters: audience, outcome, tone and length rules, and a defined send-ready artifact.

**Result — assembled prompt example**

Turn this casual client chat into a short polite email confirming the wire transfer is scheduled for Tuesday. Name the audience and email format, keep a courteous professional tone in two or three sentences, do not invent amounts or bank details, and deliver text ready to send.

**Result — feedback when correct**

Full marks is the advantage: most people lose here because “tone” without fact-lock drifts—your picks keep meaning and register under control.

**Result — polished prompt**

Draft a brief client email confirming the wire transfer is on track for Tuesday. Keep a courteous professional tone in two or three sentences, do not invent amounts or banking details, and leave the message ready to send.

---

#### Scenario 2 — Shape Mixed Snippets Into One Consistent Tone

**Situation**

People sent you fragments about the same customer escalation:
- "make it sound less harsh"
- "still say we missed the SLA"
- "legal wants it shorter"
- "maybe add empathy?"

You must produce one email that is firm on facts but not aggressive.

If you say "combine these," AI often:
- drops the SLA point
- over-softens accountability
- drifts into a long lecture

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Conflicting notes are where average prompts collapse—the model picks one opinion and runs.

To get a usable result, your prompt must define:
- Context - customer escalation after a missed SLA; Legal review
- Objective - acknowledge miss, show corrective action, keep relationship workable
- Requirements - firm but respectful tone; short; include SLA fact without blame language
- Expectations - one email; ready to send

**Expert prompt**

Draft a customer email responding to a missed SLA. The message must acknowledge the miss, reference that Legal reviewed the wording, and describe the corrective step already taken. Use a firm but respectful tone, keep it under one hundred and twenty words, and avoid blame-shifting or emotional padding.

**AI response (example)**

Subject: Update on your recent service experience

Hi [Name],

We missed the SLA on your request, and that is not the standard we aim for. Legal has reviewed our response to ensure it is accurate and fair.

We have already implemented a corrective step to prevent a repeat, and we remain focused on delivering reliably for you. If you would like to discuss details, reply to this email and we will connect you with the right owner.

Thank you for your patience,
[Your Name]

Notice how the SLA stays visible but the tone stays controlled—that is Requirements setting the band, not “empathy” as a vibe.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: conflicting snippets need a single narrative contract—otherwise the model averages opinions.
- Objective forces miss + fix + relationship in one arc
- Requirements cap tone and length so empathy cannot bloat
- Expectations demand one email, not a committee draft

- **Weak vs Strong Prompt**

Weak prompt:
Combine these notes

Strong prompt:
Draft a customer email responding to a missed SLA. The message must acknowledge the miss, reference that Legal reviewed the wording, and describe the corrective step already taken. Use a firm but respectful tone, keep it under one hundred and twenty words, and avoid blame-shifting or emotional padding.

- **C.O.R.E. Breakdown**

C - Context
Customer escalation; missed SLA; Legal input

O - Objective
Acknowledge failure; show fix; preserve relationship

R - Requirements
Firm-respectful tone; word cap; no blame-shifting

E - Expectations
Single send-ready email

**Pro tip**

“Combine these” is how accountability disappears. The mistake is skipping Objective—then the model softens the SLA line to keep the peace.

**Takeaway**

Conflicting feedback is a spec: name the non-negotiable facts, then cage tone—everything else is decoration.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning conflicting bullet feedback into one internal memo about a delayed product launch.

**Challenge — options (10)**

- [✓ correct] The prompt should state that the input bullets conflict and must be reconciled
- [✓ correct] The objective should be to inform internal stakeholders of the new launch window
- [✓ correct] The requirements should enforce neutral executive tone and a fixed length
- [✓ correct] The prompt should forbid inventing causes, owners, or dates not in the notes
- [✓ correct] The expectation should be a memo ready to circulate without edits
- [✗ incorrect] Let each bullet become its own paragraph
- [✗ incorrect] Add dramatic language to show urgency
- [✗ incorrect] Include a paragraph apologising for the company culture
- [✗ incorrect] Guess which team caused the delay
- [✗ incorrect] Recommend a favourite AI assistant

**Result — coaching note**

Fragmented input needs guardrails: reconcile conflicts in the prompt, define the output type, and ban guessed facts.

**Result — assembled prompt example**

Reconcile these conflicting bullets into one internal memo announcing the delayed product launch and the new target window. Use neutral executive tone, keep under two hundred words, do not invent causes or owners, and deliver a memo ready to circulate.

**Result — feedback when correct**

Solid: mixed notes break prompts that lack a spine—your picks show you know how to lock one story before the model “smooths” facts away.

**Result — polished prompt**

Turn these conflicting notes into a single internal memo that announces the delayed launch and the revised window. Keep an executive-neutral voice, stay under two hundred words, do not invent causes or owners, and make it ready to circulate.

---

#### Scenario 3 — Hold a Boundary on Timing Without Sounding Dismissive

**Situation**

A stakeholder asks for your team's deep-dive analysis "by 9 a.m. tomorrow"—but your team needs at least until Thursday for anything reviewable.

You must decline the 9 a.m. deadline without damaging the relationship.

A vague prompt produces:
- over-apologising
- fake certainty
- or an aggressive "no"

This is why your prompt fails:
- unclear Objective
- weak Requirements
- no defined Expectations

Most people ask AI to “say no nicely” and get either groveling or a fight-pick—because boundaries were never defined.

To get a usable result, your prompt must define:
- Context - stakeholder request; unrealistic 9 a.m. deadline
- Objective - decline 9 a.m. push; propose Thursday deliverable; keep trust
- Requirements - respectful, confident tone; short; no invented approvals
- Expectations - email ready to send

**Expert prompt**

Write a short email to a stakeholder who asked for a full analysis by 9 a.m. tomorrow. Explain that a reviewable draft needs until Thursday morning, offer a concise interim summary tomorrow if helpful, and keep the tone respectful and confident. Do not promise legal sign-off or resources you cannot guarantee. Limit to about ninety words.

**AI response (example)**

Subject: Timing for the analysis

Hi [Name],

Thanks for the request. A reviewable version of the full analysis needs until Thursday morning to meet our quality bar.

If helpful, I can share a brief interim summary tomorrow so you have directional visibility sooner. Let me know what level of detail would be most useful.

Best,
[Your Name]

Notice how the no is paired with a smaller yes—the Objective trades timing without inventing leverage you do not have.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: boundary emails need competing objectives named up front—otherwise the model picks apology or aggression.
- Objective pairs decline with an alternate path
- Requirements cap promises so you cannot “helpfully” lie
- Expectations force send-ready structure with a next step

- **Weak vs Strong Prompt**

Weak prompt:
Say no politely

Strong prompt:
Write a short email to a stakeholder who asked for a full analysis by 9 a.m. tomorrow. Explain that a reviewable draft needs until Thursday morning, offer a concise interim summary tomorrow if helpful, and keep the tone respectful and confident. Do not promise legal sign-off or resources you cannot guarantee. Limit to about ninety words.

- **C.O.R.E. Breakdown**

C - Context
Stakeholder email; unrealistic morning deadline

O - Objective
Decline unsafe timing; propose viable date; preserve trust

R - Requirements
Respectful confident tone; word cap; no false promises

E - Expectations
Send-ready email with clear next step

**Pro tip**

If you do not forbid false promises, the model will “close” the deal for you—then you own commitments you never approved.

**Takeaway**

Timing conflicts are negotiation prompts: say what ships, what does not, and what is off-limits—most users only ask for politeness.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for asking a vendor for a one-week extension on a contract review while keeping the partnership positive.

**Challenge — options (10)**

- [✓ correct] The prompt should name the current review deadline and the channel (email)
- [✓ correct] The objective should request one additional week with a clear new date
- [✓ correct] The requirements should keep tone collaborative and avoid blame
- [✓ correct] The prompt should give one factual reason without exaggerating risk
- [✓ correct] The expectation should be a concise email ready to send
- [✗ incorrect] Threaten to switch vendors in the opening line
- [✗ incorrect] Let the model invent legal citations
- [✗ incorrect] Ask for humour to soften the ask
- [✗ incorrect] Request a ten-page appendix
- [✗ incorrect] Tell the model to compare LLM providers

**Result — coaching note**

Boundary-setting emails need context, a crisp ask, tone rules, and a no-fabrication line—otherwise the model swings between groveling and blunt refusals.

**Result — assembled prompt example**

Email the vendor asking for a one-week extension on the contract review, propose a new return date, cite one factual scheduling constraint without drama, keep the tone collaborative, and keep the message under a hundred words.

**Result — feedback when correct**

That is high-signal: boundary prompts fail when Objective is mush—your answers show you can trade time without trading away credibility.

**Result — polished prompt**

Write a concise vendor email requesting one more week for the contract review, propose a specific new date, reference one factual scheduling constraint without blame, stay collaborative, and keep it ready to send at under a hundred words.

---

### Lesson 4 — Expand or Shorten With Purpose

#### Scenario 1 — Strip a Long Email Down to the Essential Fact

**Situation**

You have a three-paragraph email full of background about meetings and history. The only operational fact is that the design review moves from Tuesday at 2 p.m. to Wednesday at 2 p.m.

If you say "shorten this," AI often:
- keeps the wrong details
- drops the date change
- adds new interpretation

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people ask for “shorter” and keep the drama—because they never named the one fact to preserve.

To get a usable result, your prompt must define:
- Context - internal schedule change; design review
- Objective - communicate the new day and time
- Requirements - one or two sentences; practical tone; remove backstory
- Expectations - accurate, ready to send

**Expert prompt**

Condense the message so it states only that the design review moves from Tuesday at 2 p.m. to Wednesday at 2 p.m. Use one or two clear sentences in a practical tone. Do not include meeting history or reasons unless provided in the source text.

**AI response (example)**

Subject: Design review time update

Hi team — the design review has moved from Tuesday 2 p.m. to Wednesday 2 p.m. Please update your calendars.

Notice how everything else vanished—Objective plus “do not include history” told the model what to delete.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: shortening is not summarising—it is deletion with a target.
- Objective names the only fact that may survive
- Requirements cap sentences and tone
- Expectations ban backstory so the model cannot “help” with context

- **Weak vs Strong Prompt**

Weak prompt:
Shorten this email

Strong prompt:
Condense the message so it states only that the design review moves from Tuesday at 2 p.m. to Wednesday at 2 p.m. Use one or two clear sentences in a practical tone. Do not include meeting history or reasons unless provided in the source text.

- **C.O.R.E. Breakdown**

C - Context
Internal note; design review reschedule

O - Objective
Communicate new day and time

R - Requirements
One or two sentences; strip backstory

E - Expectations
Accurate, send-ready update

**Pro tip**

“Shorten” without a preserved fact is roulette—the model keeps what sounds important, not what is operationally true.

**Takeaway**

Compression is C.O.R.E. with scissors: name the fact, ban the rest—then you beat everyone still “summarising.”

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for shrinking a long status thread into one sentence about a budget approval delay to next Monday.

**Challenge — options (10)**

- [✓ correct] The prompt should state the single fact to preserve (approval moved to Monday)
- [✓ correct] The objective should be to replace noise with that fact only
- [✓ correct] The requirements should cap length (one or two sentences)
- [✓ correct] The prompt should forbid inventing reasons or new dates
- [✓ correct] The expectation should be language ready to paste into chat
- [✗ incorrect] Keep every stakeholder name for politeness
- [✗ incorrect] Let the model summarise "the vibe" of the thread
- [✗ incorrect] Add a motivational closing quote
- [✗ incorrect] Expand with a paragraph of context
- [✗ incorrect] Ask the reader to pick a model first

**Result — coaching note**

Shortening prompts still need C.O.R.E.: name the fact, ban extra content, and describe the finished line.

**Result — assembled prompt example**

Compress this thread into one or two sentences stating only that budget approval now lands next Monday; drop history; do not invent reasons; keep a practical tone.

**Result — feedback when correct**

Exactly: this is where prompts break under noise—your picks show you know the one fact to keep and what to forbid.

**Result — polished prompt**

Provide one or two sentences for chat stating only that budget approval is now expected next Monday—no backstory, no invented causes, practical tone, ready to paste.

---

#### Scenario 2 — Turn Chaotic Bullets Into a Tight Status Brief

**Situation**

Your notes are a mess:
- "API still flaky??"
- "vendor ticket #??"
- "tell leadership something today"
- "don't panic anyone"

You need a single short brief for leadership.

If you prompt "clean this up," AI often:
- invents ticket numbers
- promises a fix time
- sounds alarmist or vague

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Leadership visibility plus messy notes is a credibility trap—most users let the model sound confident with invented precision.

To get a usable result, your prompt must define:
- Context - internal leadership brief; API instability notes
- Objective - factual status without panic
- Requirements - three bullet lines max; neutral tone; no invented metrics
- Expectations - ready to paste

**Expert prompt**

Turn these bullets into a leadership brief of at most three bullet lines. Report only what the notes support: intermittent API errors, vendor ticket open, next diagnostic checkpoint end of day. Do not invent ticket numbers, customer impact percentages, or fix times. Keep a neutral, steady tone.

**AI response (example)**

- Intermittent API errors observed; engineering is actively monitoring.
- Vendor support ticket is open; we are waiting on their next update.
- Next internal checkpoint: end of day for status consolidation.

Notice how numbers stay out—Requirements blocked fake precision, so the brief stays defensible.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: incident chaos needs negative constraints—tell the model what it is not allowed to sound sure about.
- Objective is steady status, not heroics
- Requirements cap bullets and tone
- Expectations forbid invented metrics so leadership cannot quote fiction

- **Weak vs Strong Prompt**

Weak prompt:
Fix these notes

Strong prompt:
Turn these bullets into a leadership brief of at most three bullet lines. Report only what the notes support: intermittent API errors, vendor ticket open, next diagnostic checkpoint end of day. Do not invent ticket numbers, customer impact percentages, or fix times. Keep a neutral, steady tone.

- **C.O.R.E. Breakdown**

C - Context
Leadership brief; messy incident notes

O - Objective
Inform without panic or false certainty

R - Requirements
Three bullets max; neutral tone; no fabricated metrics

E - Expectations
Paste-ready brief

**Pro tip**

If you do not ban metrics, the model will invent them to look competent—then you are defending a number nobody gave you.

**Takeaway**

High-stakes brevity is guardrails first: cap lines, neutral tone, explicit “do not invent”—then you look calmer than the room.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for converting messy workshop feedback into a three-bullet executive summary.

**Challenge — options (10)**

- [✓ correct] The prompt should say feedback is messy and must be consolidated
- [✓ correct] The objective should be a three-bullet executive summary of themes
- [✓ correct] The requirements should ban quoting individuals by name
- [✓ correct] The prompt should forbid inventing scores or attendance numbers
- [✓ correct] The expectation should be slides-ready phrasing
- [✗ incorrect] Include every attendee complaint verbatim
- [✗ incorrect] Add a humorous anecdote to lighten the tone
- [✗ incorrect] Let the model infer strategic priorities
- [✗ incorrect] Turn bullets into a five-page essay
- [✗ incorrect] Recommend an AI writing suite

**Result — coaching note**

Chaotic notes need consolidation rules: what to merge, what to forbid, and the executive shape of the output.

**Result — assembled prompt example**

Consolidate messy workshop feedback into three executive bullets summarising themes, anonymise individuals, do not invent scores, and make the lines ready for slides.

**Result — feedback when correct**

Nailed it: this scenario punishes lazy “clean this up” prompts—your picks show you know structure beats panic.

**Result — polished prompt**

Distil messy workshop comments into three executive bullets—themes only, no names, no invented metrics—worded for a slide deck.

---

#### Scenario 3 — Explain a Setback in Plain Language for Executives

**Situation**

Leadership wants a short explanation of why a pilot slipped by two weeks. Engineering gave you dense jargon about dependencies.

You must sound honest and steady—not defensive, not alarmist.

Weak prompts produce:
- buzzword soup
- blame
- or vague reassurance

This is why your prompt fails:
- unclear Objective
- weak Requirements
- no defined Expectations

Most people “translate jargon” and smuggle blame in—because plain language was never defined as a constraint.

To get a usable result, your prompt must define:
- Context - executive update; pilot slipped two weeks
- Objective - explain cause at high level; show mitigation; no blame
- Requirements - plain language; two sentences; confident calm tone
- Expectations - ready for email or slide speaker notes

**Expert prompt**

Write two sentences in plain language for executives explaining that the pilot slipped by two weeks because an upstream dependency delivered late, and that mitigation work is underway with a revised checkpoint next Friday. Keep the tone confident and calm, avoid jargon, and do not name individuals.

**AI response (example)**

The pilot slipped two weeks because an upstream dependency delivered later than planned, which pushed our integration work. Mitigation is underway, and we will report progress at next Friday's checkpoint.

Notice how blame stays off individuals—Requirements named tone and “no names,” so the story stays executive-safe.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: executive explanations fail when Objective is “sound smart.” You need cause + mitigation + next checkpoint in plain English.
- Requirements kill jargon and name-counting
- Expectations force lines you can actually read aloud

- **Weak vs Strong Prompt**

Weak prompt:
Explain the delay

Strong prompt:
Write two sentences in plain language for executives explaining that the pilot slipped by two weeks because an upstream dependency delivered late, and that mitigation work is underway with a revised checkpoint next Friday. Keep the tone confident and calm, avoid jargon, and do not name individuals.

- **C.O.R.E. Breakdown**

C - Context
Executive update; pilot delay

O - Objective
Explain cause; show mitigation path

R - Requirements
Plain language; two sentences; calm tone; no names

E - Expectations
Speaker-ready lines

**Pro tip**

Jargon is a hiding place. If you do not forbid names and blame, the model will serve both—then you look like you are throwing people under the bus.

**Takeaway**

Executive-safe updates are engineered: audience, calm tone, two sentences, no villains—most prompts skip at least one.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a two-sentence customer email about a service outage that emphasises restoration without overpromising future uptime.

**Challenge — options (10)**

- [✓ correct] The prompt should name the audience (customers) and channel
- [✓ correct] The objective should be to confirm service restoration and next monitoring step
- [✓ correct] The requirements should keep tone calm and avoid blaming teams
- [✓ correct] The prompt should forbid guaranteeing future uptime percentages
- [✓ correct] The expectation should be two short sentences ready to send
- [✗ incorrect] Add a coupon code not approved by legal
- [✗ incorrect] Name the engineer who caused the outage
- [✗ incorrect] Promise a full postmortem in two hours
- [✗ incorrect] Use sarcasm to sound human
- [✗ incorrect] Ask which chatbot to use

**Result — coaching note**

Sensitive plain-language updates need explicit tone, honesty limits, and a hard cap on promises.

**Result — assembled prompt example**

Draft two customer-facing sentences confirming the outage is resolved, note active monitoring, do not guarantee uptime figures, stay calm, and avoid blame.

**Result — feedback when correct**

Sharp: this is where trust breaks—your picks show you can cap promises and tone before the model writes a speech.

**Result — polished prompt**

Write two calm customer sentences: service is restored, monitoring continues, no uptime guarantees, no blame, ready to send.

---

### Lesson 5 — Create Useful Everyday Templates

#### Scenario 1 — Build a Reusable Document Handoff Email

**Situation**

You send the same kind of email whenever you share a policy draft: greeting, what the file is, what you need back, and by when.

If you say "make a template," AI often:
- writes a one-off essay
- forgets placeholders
- hides the ask

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people get a pretty paragraph—not a skeleton—because they never demanded placeholders and reuse.

To get a usable result, your prompt must define:
- Context - internal email; policy draft handoff
- Objective - share file; request review feedback
- Requirements - placeholders for names and dates; two or three short paragraphs; professional tone
- Expectations - reusable whenever a new draft ships

**Expert prompt**

Create a reusable email template for sharing a policy draft internally. Include placeholders for recipient name, document title, version date, and feedback deadline. Use two or three short paragraphs with a professional tone, state what review you need, and keep optional lines for attaching links versus files.

**AI response (example)**

Subject: [Document title] — review requested (v[version date])

Hi [Name],

I am sharing the [document title] for your review. The draft reflects [one-line purpose or scope].

Please send comments by [feedback deadline]. If you prefer, I can walk through questions on a short call.

Thank you,
[Your Name]

Notice how the slots are visible—Requirements forced placeholders, so the output stays reusable instead of bespoke.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: templates are not “nice copy”—they are slot machines.
- Objective is reuse, not one send
- Requirements force bracketed fields so you cannot accidentally ship fake names
- Expectations demand the ask stays visible

- **Weak vs Strong Prompt**

Weak prompt:
Give me an email template

Strong prompt:
Create a reusable email template for sharing a policy draft internally. Include placeholders for recipient name, document title, version date, and feedback deadline. Use two or three short paragraphs with a professional tone, state what review you need, and keep optional lines for attaching links versus files.

- **C.O.R.E. Breakdown**

C - Context
Internal email; policy draft circulation

O - Objective
Share draft; request structured feedback

R - Requirements
Placeholders; paragraph count; professional tone

E - Expectations
Reusable skeleton

**Pro tip**

If your template does not embarrass you with brackets, it is probably a one-off dressed up as process.

**Takeaway**

Reusable beats clever: slots, tone, and a reuse goal—then you ship faster than people rewriting from scratch every week.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a reusable meeting recap template with decisions, owners, and due dates.

**Challenge — options (10)**

- [✓ correct] The prompt should name the template purpose (meeting recap)
- [✓ correct] The objective should capture decisions, owners, and due dates
- [✓ correct] The requirements should include placeholders, not fake names
- [✓ correct] The prompt should limit length so the template stays scannable
- [✓ correct] The expectation should be something reusable every week
- [✗ incorrect] Embed a full sample meeting transcript
- [✗ incorrect] Add jokes in each section header
- [✗ incorrect] Let the model invent attendee personalities
- [✗ incorrect] Require a poem at the top
- [✗ incorrect] Ask which AI vendor built the template

**Result — coaching note**

Template prompts must declare sections, placeholders, tone, and reuse—otherwise you get a one-off paragraph.

**Result — assembled prompt example**

Build a weekly meeting recap template with sections for decisions, owners, and due dates; use bracket placeholders; keep it under half a page; professional tone.

**Result — feedback when correct**

Yes: this is leverage—most users cannot name what must be a slot versus what is prose; your picks show that skill.

**Result — polished prompt**

Produce a weekly meeting recap template: Decisions, Owners, Due dates—bracket placeholders only, professional tone, scannable half page, reusable every week.

---

#### Scenario 2 — Merge Rough Ideas Into One Scannable Template

**Situation**

People dumped ideas into a doc:
- "needs KPI section"
- "maybe risks?"
- "not too long"
- "finance wants numbers"

You need one weekly project template everyone can reuse.

If you prompt "combine," AI often:
- adds random sections
- writes example numbers
- loses the length cap

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

“Combine” is how you get fake KPIs—because nobody banned sample data.

To get a usable result, your prompt must define:
- Context - weekly project snapshot for cross-functional readers
- Objective - progress, KPI focus, risks, asks
- Requirements - max four sections; bracket placeholders only; no sample figures
- Expectations - paste-ready template

**Expert prompt**

Design a weekly project snapshot template with at most four labeled sections covering progress, KPI focus, risks, and asks. Use bracket placeholders only, keep instructions under the headings minimal, and do not insert numeric examples. Make it easy to scan in under thirty seconds.

**AI response (example)**

**[Project name] — Week of [date]**

**Progress**
- [3 bullets max]

**KPI focus**
- [Metric name] — [status vs target] — [note]

**Risks**
- [Risk] — [impact] — [mitigation owner]

**Asks**
- [What you need] — [from whom] — [by when]

Notice how numbers never appear—Expectations banned examples, so finance gets slots, not fiction.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: merged ideas need architecture, not enthusiasm.
- Objective is a repeatable weekly shape
- Requirements cap sections and ban numeric examples
- Expectations demand scan speed, not essay density

- **Weak vs Strong Prompt**

Weak prompt:
Merge these ideas

Strong prompt:
Design a weekly project snapshot template with at most four labeled sections covering progress, KPI focus, risks, and asks. Use bracket placeholders only, keep instructions under the headings minimal, and do not insert numeric examples. Make it easy to scan in under thirty seconds.

- **C.O.R.E. Breakdown**

C - Context
Weekly snapshot for busy readers

O - Objective
Standardize reporting structure

R - Requirements
Four sections max; placeholders; no fake numbers

E - Expectations
Scannable template

**Pro tip**

Templates balloon when section limits are missing—the model adds sections because it thinks more looks thorough.

**Takeaway**

Scannable beats complete: cap sections, ban sample numbers, force placeholders—then you own the template, not the model’s filler.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a customer onboarding checklist template with ordered steps and owner placeholders.

**Challenge — options (10)**

- [✓ correct] The prompt should define onboarding checklist purpose and audience
- [✓ correct] The objective should produce ordered steps with owner placeholders
- [✓ correct] The requirements should ban filling in real company data
- [✓ correct] The prompt should cap the number of steps for usability
- [✓ correct] The expectation should be a reusable checklist skeleton
- [✗ incorrect] Embed lorem ipsum filler paragraphs
- [✗ incorrect] Add a section for favourite emojis
- [✗ incorrect] Let the model invent customer personas
- [✗ incorrect] Turn the checklist into a narrative essay
- [✗ incorrect] Recommend software brands by name

**Result — coaching note**

Checklist templates need ordered steps, owner slots, and rules against invented data.

**Result — assembled prompt example**

Create a numbered onboarding checklist template with owner placeholders, no fake customer data, at most eight steps, and reusable for every new account.

**Result — feedback when correct**

Clean win: template prompts fail when “merge” replaces limits—your picks show you know how to cap structure and data.

**Result — polished prompt**

Build an eight-step onboarding checklist template—numbered, owner placeholders in brackets, no sample data, reusable for every new account.

---

#### Scenario 3 — Design a Neutral Escalation Template for Stakeholders

**Situation**

You need a short template for when individual contributors escalate blockers to directors—without sounding emotional or accusatory.

Stakeholders disagree on what "neutral" means.

Weak prompts yield:
- accusatory tone
- vague asks
- missing facts

This is why your prompt fails:
- unclear Objective
- weak Requirements
- no defined Expectations

Escalations are where tone goes toxic fast—most users let the model vent because “neutral” was never operationalized.

To get a usable result, your prompt must define:
- Context - escalation from IC to director; blocker on dependency
- Objective - request decision or resource in neutral voice
- Requirements - placeholders for impact, timeline, help needed; max ninety words of guidance text; no names of blame targets
- Expectations - ready to paste into email

**Expert prompt**

Create a concise escalation template individual contributors can send to a director when blocked by a dependency. Include placeholders for blocker summary, business impact, timeline risk, and the specific decision or resource needed. Keep guidance text neutral, avoid blame language, and limit boilerplate to ninety words total.

**AI response (example)**

Subject: Escalation — [Blocker summary]

Hi [Director name],

I am blocked on [workstream] because [dependency summary].

Impact: [customer or business impact]. Timeline risk: [date or window].

I need [specific decision or resource] to proceed. If another owner is better, please redirect me.

Thank you,
[Your Name]

Notice how blame has nowhere to land—Requirements forced facts, impact, and the ask instead of a villain.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is what changes the output: escalations are not “tone”—they are structured asks with risk shown cleanly.
- Objective is a decision or resource, not a feelings report
- Requirements ban blame language and cap boilerplate
- Expectations force paste-ready fields so nothing inflammatory sneaks in

- **Weak vs Strong Prompt**

Weak prompt:
Write an escalation email

Strong prompt:
Create a concise escalation template individual contributors can send to a director when blocked by a dependency. Include placeholders for blocker summary, business impact, timeline risk, and the specific decision or resource needed. Keep guidance text neutral, avoid blame language, and limit boilerplate to ninety words total.

- **C.O.R.E. Breakdown**

C - Context
IC-to-director escalation; dependency blocker

O - Objective
Secure decision or resource calmly

R - Requirements
Neutral tone; placeholders; word budget; no blame

E - Expectations
Paste-ready template

**Pro tip**

If you do not ban blame, the model will name a person—then you are in HR territory instead of unblocking work.

**Takeaway**

Neutral escalations win on slots: impact, time risk, explicit ask—everything else is noise that costs you credibility.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a polite follow-up template when a cross-team request has gone unanswered for five business days.

**Challenge — options (10)**

- [✓ correct] The prompt should state the scenario (unanswered request, five business days)
- [✓ correct] The objective should be to nudge for a response without accusing anyone
- [✓ correct] The requirements should include placeholders for ticket ID and needed action
- [✓ correct] The prompt should forbid emotional language and blame
- [✓ correct] The expectation should be a short template reusable on any thread
- [✗ incorrect] Encourage ALL CAPS for urgency
- [✗ incorrect] Name the colleague you think is lazy
- [✗ incorrect] Offer unrelated project updates
- [✗ incorrect] Turn the template into a legal threat
- [✗ incorrect] Ask which LLM wrote the template

**Result — coaching note**

Follow-up templates need neutral tone rules, explicit placeholders, and a ban on accusatory language.

**Result — assembled prompt example**

Draft a short follow-up template for cross-team requests unanswered after five business days—placeholders for ticket ID and ask, polite tone, no blame, reusable.

**Result — feedback when correct**

Strong: tone problems here are really missing asks—your picks show you can separate facts, impact, and the decision you need.

**Result — polished prompt**

Create a concise follow-up template for requests idle five business days: ticket placeholder, clear ask, polite neutral tone, no blame, ready to paste on any thread.

---

## Track 2 — Productivity & Workflow
*Source: `lib/data/tracks/track2_productivity_workflow.dart`*

### Lesson 1 — Summarise Quickly and Clearly

#### Scenario 1 — Summarise a Tense Alignment Meeting for Leadership

**Situation**

You must post a same-day leadership update after a cross-functional meeting.

Your raw notes include repeated debate, one high-risk dependency, and two decisions hidden in noise.

If this is unclear, leadership will make decisions on the wrong signal.

If you prompt AI weakly, it usually:
- overstates certainty
- buries the real decisions
- sounds generic instead of decision-ready

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people would just say "summarise this meeting" and ship a status blob.

To get a usable result, your prompt must define:
- Context - leadership update from a tense alignment meeting
- Objective - extract decisions, risk, and immediate actions
- Requirements - exactly four bullets; executive-neutral tone; no invented certainty
- Expectations - paste-ready update with ownership clarity

**Expert prompt**

Summarise these notes into exactly four leadership-ready bullet points. Include only confirmed decisions, one high-risk dependency, and immediate next actions with owners where stated. Remove side debates, do not imply consensus where disagreement remains, and keep output ready to paste into a leadership channel.

**AI response (example)**

- Decision: Launch-readiness review remains on Thursday and scope freeze holds.
- Risk: One vendor API dependency is still unstable and may affect handoff timing.
- Next action: Engineering and Vendor Ops confirm mitigation path by 4 p.m. tomorrow.
- Next action: Program lead posts revised checkpoint note after mitigation is confirmed.

Notice how the update stayed decision-ready under pressure - Requirements blocked false certainty.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is extraction discipline: the model follows your rules, not meeting noise.
- Objective locks signal selection
- Requirements lock format and truth boundaries
- Expectations lock leadership-ready quality

- **Weak vs Strong Prompt**

Weak prompt:
Summarise this meeting

Strong prompt:
Summarise these notes into exactly four leadership-ready bullet points. Include only confirmed decisions, one high-risk dependency, and immediate next actions with owners where stated. Remove side debates, do not imply consensus where disagreement remains, and keep output ready to paste into a leadership channel.

- **C.O.R.E. Breakdown**

C - Context
Leadership update from a tense alignment meeting

O - Objective
Extract decisions, risk, and immediate actions

R - Requirements
Exactly four bullets; executive-neutral; no invented certainty

E - Expectations
Paste-ready update with ownership clarity

**Pro tip**

Most people lose control by asking for a summary instead of decision extraction. If you do not ban certainty inflation, AI will over-commit for you.

**Takeaway**

If a leadership update hides the decision signal, it is the wrong update - even if it is concise.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a leadership meeting summary under pressure.

**Challenge — options (10)**

- [✓ correct] Require only confirmed decisions from the notes
- [✓ correct] Include one explicit high-risk dependency
- [✓ correct] Cap output to a fixed bullet count
- [✓ correct] Forbid implied agreement when disagreement exists
- [✓ correct] Expect a paste-ready leadership update
- [✗ incorrect] Add confidence percentages
- [✗ incorrect] Include side debates for nuance
- [✗ incorrect] Infer owners when missing
- [✗ incorrect] Soften risk language by default
- [✗ incorrect] Expand into narrative recap

**Result — coaching note**

Meeting summaries fail when truth boundaries are vague. Define extraction scope and certainty rules before output format.

**Result — assembled prompt example**

Summarise these notes into four leadership-ready bullets covering confirmed decisions, one active high-risk dependency, and immediate next actions with stated owners only.

**Result — feedback when correct**

You now control leadership signal extraction - most people ship noise and call it an update.

**Result — polished prompt**

Create four leadership-ready bullets from these notes with confirmed decisions, one active high-risk dependency, and immediate next actions. Do not imply consensus where disagreement remains.

---

#### Scenario 2 — Compress a Long Partner Email Without Losing Risk

**Situation**

A partner email is long and mixed: progress is mostly on track, but one dependency slipped and confidence is lower.

Your team needs a short update now, and leadership may read it later.

If you get this wrong, leadership makes decisions on the optimistic version.

If you prompt AI weakly, it usually:
- drops the risk caveat
- overstates confidence
- adds context nobody asked for

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people ask for "two lines" and cut the one sentence that protects decision quality.

To get a usable result, your prompt must define:
- Context - internal update from a mixed-signal partner email
- Objective - preserve status, risk caveat, and timing signal
- Requirements - one or two sentences; factual tone; no invented mitigation
- Expectations - ready to forward unchanged

**Expert prompt**

Rewrite this partner email into one or two internal-update sentences. Preserve only overall status, delayed dependency, and revised-date timing. Keep wording factual, do not add mitigation claims not in source text, and keep output safe to forward to leadership unchanged.

**AI response (example)**

The partner reports overall execution remains on track, but one dependency is delayed and could affect near-term sequencing. Revised dates are expected in their next update this week.

The difference is the caveat: Requirements prevented certainty drift while compressing.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

What matters here is survival rules: compression works only when what must stay is explicit.
- Objective protects critical facts
- Requirements protect caveats and length
- Expectations protect forward-ready quality

- **Weak vs Strong Prompt**

Weak prompt:
Summarise this in two lines

Strong prompt:
Rewrite this partner email into one or two internal-update sentences. Preserve only overall status, delayed dependency, and revised-date timing. Keep wording factual, do not add mitigation claims not in source text, and keep output safe to forward to leadership unchanged.

- **C.O.R.E. Breakdown**

C - Context
Internal update from mixed-signal partner email

O - Objective
Preserve status, delay caveat, and revised-date timing

R - Requirements
One or two sentences; factual; no invented mitigation

E - Expectations
Forward-safe update without edits

**Pro tip**

This is where most AI users fail: they shorten first and only later notice the risk sentence vanished.

**Takeaway**

If brevity deletes the risk caveat, the output is wrong - no matter how clean it reads.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for compressing a mixed-signal partner email.

**Challenge — options (10)**

- [✓ correct] Cap output to one or two sentences
- [✓ correct] Preserve status plus delay caveat
- [✓ correct] Include revised-date timing signal
- [✓ correct] Forbid mitigation claims not in source text
- [✓ correct] Expect forward-safe wording for leadership
- [✗ incorrect] Replace caveats with optimism
- [✗ incorrect] Add probable causes
- [✗ incorrect] Expand into full background
- [✗ incorrect] Insert extra action items
- [✗ incorrect] Infer timeline confidence

**Result — coaching note**

Compression breaks when source boundaries are loose. Define what must survive and what cannot be invented.

**Result — assembled prompt example**

Rewrite this partner email into one or two internal-update sentences preserving overall status, delayed dependency caveat, and revised-date timing only.

**Result — feedback when correct**

You kept the decision-critical caveat intact - this is where most short summaries quietly fail.

**Result — polished prompt**

Compress this partner email into one or two forward-safe sentences preserving status, delay caveat, and revised-date timing. Do not invent mitigation.

---

#### Scenario 3 — Translate Policy Guidance Into Plain-Language Execution

**Situation**

You received dense policy guidance. Compliance is strict, but frontline teams need instructions they can execute quickly.

If this is unclear, teams will execute the wrong version and you will own the rework.

If you prompt AI weakly, output usually:
- keeps legal jargon
- drops required actions
- sounds certain where exceptions exist

This is why your prompt fails:
- unclear Objective
- weak Requirements
- no defined Expectations

Most people simplify tone and accidentally change policy boundaries.

To get a usable result, your prompt must define:
- Context - policy-heavy guidance for frontline execution
- Objective - preserve mandatory action and timing in plain language
- Requirements - exactly two sentences; no jargon; no invented exceptions
- Expectations - announcement-ready text without policy drift

**Expert prompt**

Rewrite this policy paragraph into exactly two plain-language sentences for frontline teams. Include what must be done, when it takes effect, and any explicit boundary condition from source text. Avoid legal jargon, do not invent exceptions, and keep wording announcement-ready.

**AI response (example)**

Starting next Monday, teams must follow the updated workflow steps exactly as listed. No additional steps apply unless the source policy explicitly states an exception.

Control shows up in the boundary line - plain language stayed clear without policy drift.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The difference is fidelity rules: plain language only works if legal intent stays intact.
- Objective locks obligations and timing
- Requirements remove jargon and block invented exceptions
- Expectations lock announcement-ready fidelity

- **Weak vs Strong Prompt**

Weak prompt:
Simplify this paragraph

Strong prompt:
Rewrite this policy paragraph into exactly two plain-language sentences for frontline teams. Include what must be done, when it takes effect, and any explicit boundary condition from source text. Avoid legal jargon, do not invent exceptions, and keep wording announcement-ready.

- **C.O.R.E. Breakdown**

C - Context
Policy-heavy guidance for frontline communication

O - Objective
Preserve mandatory action and timing in plain language

R - Requirements
Exactly two sentences; no jargon; no invented exceptions

E - Expectations
Announcement-ready and policy-faithful

**Pro tip**

The common mistake is "make it simple" without fidelity rules. That is how compliance drift enters through good intentions.

**Takeaway**

Plain language without boundary controls is how compliance drift starts - C.O.R.E. keeps the line.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for policy-to-execution translation.

**Challenge — options (10)**

- [✓ correct] Enforce exactly two sentences
- [✓ correct] Include mandatory action and effective timing
- [✓ correct] Remove legal jargon
- [✓ correct] Preserve explicit boundary conditions from source
- [✓ correct] Expect announcement-ready wording without drift
- [✗ incorrect] Add illustrative examples
- [✗ incorrect] Infer likely exceptions
- [✗ incorrect] Expand into legal prose
- [✗ incorrect] Add optional recommendations
- [✗ incorrect] Reinterpret policy intent

**Result — coaching note**

Policy translation fails when fidelity constraints are missing. Pair plain-language requirements with boundary preservation.

**Result — assembled prompt example**

Rewrite this policy paragraph into exactly two plain-language announcement sentences preserving mandatory action, effective timing, and explicit boundary conditions only.

**Result — feedback when correct**

You now control simplification without policy drift - that is the compliance advantage.

**Result — polished prompt**

Create exactly two plain-language execution sentences from this policy text, preserving mandatory action, timing, and explicit boundaries only.

---

### Lesson 2 — Create Structure from Messy Input

#### Scenario 1 — Convert Fragmented Handoff Notes Into an Ownership Checklist

**Situation**

A handoff is moving fast. Notes are fragmented: partial tasks, mixed urgency, missing owners, and one blocker.

If you hide ownership gaps, the next team executes the wrong work first.

If you ask AI to "organize this," output usually:
- invents ownership
- hides unresolved blockers
- mixes critical and minor tasks

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

This is where most AI users fail: they optimize neatness over accountability.

To get a usable result, your prompt must define:
- Context - urgent handoff with mixed-urgency fragmented notes
- Objective - produce ownership checklist with blocker visibility
- Requirements - up to five action items; [Owner TBD] for missing owners; no invented tasks
- Expectations - handoff-ready checklist that surfaces risk

**Expert prompt**

Turn these fragmented handoff notes into a checklist of up to five critical action items. Keep action-first phrasing, attach stated owners, use [Owner TBD] when ownership is missing, preserve unresolved blockers explicitly, and remove duplicates. Output should be ready for a direct handoff message.

**AI response (example)**

- Finalize launch timeline and post to handoff channel (Owner: Program Lead).
- Confirm vendor dependency timing for next checkpoint (Owner: Vendor Ops).
- Upload latest approved documents to shared workspace (Owner: PMO).
- Resolve open integration blocker before handoff close (Owner: [Owner TBD]).
- Notify receiving team when blocker status changes (Owner: Program Lead).

Pay attention to how unresolved ownership stayed visible - that is control, not cosmetic cleanup.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is accountability rules: handoff quality depends on what stays visible.
- Objective targets ownership and blocker clarity
- Requirements force [Owner TBD] and action format
- Expectations keep risk visible for next team

- **Weak vs Strong Prompt**

Weak prompt:
Organize these handoff notes

Strong prompt:
Turn these fragmented handoff notes into a checklist of up to five critical action items. Keep action-first phrasing, attach stated owners, use [Owner TBD] when ownership is missing, preserve unresolved blockers explicitly, and remove duplicates. Output should be ready for a direct handoff message.

- **C.O.R.E. Breakdown**

C - Context
Urgent handoff with fragmented notes and missing ownership

O - Objective
Create accountable checklist and surface blockers

R - Requirements
Up to five actions; owner tags; [Owner TBD] for gaps

E - Expectations
Handoff-ready output with risk visibility

**Pro tip**

Most people hide [Owner TBD] to look organized. That is exactly how handoffs fail the next day.

**Takeaway**

If a handoff hides [Owner TBD], it is not organized - it is dangerous.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong handoff checklist prompt.

**Challenge — options (10)**

- [✓ correct] Cap output to five critical actions
- [✓ correct] Use action-first phrasing
- [✓ correct] Use [Owner TBD] when owner is missing
- [✓ correct] Keep unresolved blockers explicit
- [✓ correct] Expect direct handoff-message readiness
- [✗ incorrect] Infer likely owners
- [✗ incorrect] Include nice-to-have tasks
- [✗ incorrect] Hide blocker language
- [✗ incorrect] Expand each line with rationale
- [✗ incorrect] Average urgency labels

**Result — coaching note**

Handoffs fail on hidden ownership and blockers. Define accountability and visibility rules directly.

**Result — assembled prompt example**

Convert these fragmented handoff notes into up to five critical action items with stated owners, using [Owner TBD] for gaps and preserving unresolved blockers explicitly.

**Result — feedback when correct**

You now control handoff accountability - most teams polish the list and lose the blockers.

**Result — polished prompt**

Build a five-item handoff checklist from these notes with action-first phrasing, owner tags, [Owner TBD] for gaps, and explicit blocker visibility.

---

#### Scenario 2 — Turn Conflicting Project Narrative Into One Weekly Action Plan

**Situation**

A project narrative combines multiple stakeholder inputs with overlap and contradiction.

You need one weekly action plan the team can execute.

If this is oversmoothed, the team will execute a plan that assumes agreement that does not exist.

If you prompt loosely, AI tends to:
- merge conflicts into fake agreement
- invent dependencies
- output broad actions with no ownership

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people ask for bullets and miss the contradiction handling that matters.

To get a usable result, your prompt must define:
- Context - conflicting stakeholder narrative for weekly execution
- Objective - produce executable actions while preserving one unresolved trade-off
- Requirements - up to four bullets; owner role + deadline when stated; no invented dependencies
- Expectations - standup-ready plan without false closure

**Expert prompt**

Convert this narrative into up to four weekly action bullets. Keep only executable actions, include owner role and deadline when explicitly stated, preserve one unresolved trade-off as a flagged line, and avoid invented dependencies. Output must be ready for standup planning.

**AI response (example)**

- Finalize revised draft package by Thursday (Owner: Content Lead).
- Confirm vendor timeline constraints by Wednesday (Owner: Vendor Ops).
- Prepare Friday leadership deck with updated risk status (Owner: PM).
- Flag unresolved trade-off: launch-date pressure vs QA buffer remains open.

Notice how unresolved conflict remained explicit - Requirements prevented false closure.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

What matters here is conflict rules: plans from contradictory input need tension to stay visible.
- Objective includes action plus trade-off visibility
- Requirements enforce specificity and anti-invention
- Expectations avoid clean-looking but unsafe closure

- **Weak vs Strong Prompt**

Weak prompt:
Turn this into an action plan

Strong prompt:
Convert this narrative into up to four weekly action bullets. Keep only executable actions, include owner role and deadline when explicitly stated, preserve one unresolved trade-off as a flagged line, and avoid invented dependencies. Output must be ready for standup planning.

- **C.O.R.E. Breakdown**

C - Context
Conflicting stakeholder narrative for weekly execution

O - Objective
Create executable actions while preserving one unresolved trade-off

R - Requirements
Up to four bullets; owner role + stated deadline; no invented dependencies

E - Expectations
Standup-ready plan without false closure

**Pro tip**

If you optimize for neatness over truth, the plan looks good and fails in execution.

**Takeaway**

If the plan hides the unresolved trade-off, it is lying about execution reality.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong weekly plan prompt under conflicting input.

**Challenge — options (10)**

- [✓ correct] Cap output to four executable actions
- [✓ correct] Include owner role when stated
- [✓ correct] Include deadline when stated
- [✓ correct] Preserve one unresolved trade-off
- [✓ correct] Expect standup-ready output without invented dependencies
- [✗ incorrect] Resolve contradictions automatically
- [✗ incorrect] Infer owners for missing roles
- [✗ incorrect] Replace risk with positive framing
- [✗ incorrect] Add strategy recommendations
- [✗ incorrect] Rewrite as narrative prose

**Result — coaching note**

Plans fail when unresolved trade-offs are smoothed away. Define conflict carry-through and specificity together.

**Result — assembled prompt example**

Convert this conflicting narrative into up to four executable weekly actions with owner role/deadline where stated, preserving one unresolved trade-off and avoiding invented dependencies.

**Result — feedback when correct**

You kept the unresolved trade-off explicit - that is where you gain execution advantage.

**Result — polished prompt**

Turn this narrative into four standup-ready actions with stated owner role and deadlines, plus one explicit unresolved trade-off line. No invented dependencies.

---

#### Scenario 3 — Prioritize Mixed-Urgency Tasks Before a Hard Friday Deadline

**Situation**

Your team has mixed-urgency tasks before a hard Friday checkpoint. Some tasks look urgent but are low impact; others are dependency-critical.

If you mis-prioritize, you will miss the checkpoint while busy on the wrong work.

If you prompt AI weakly, it often:
- ranks by wording urgency instead of impact
- buries dependencies
- treats all tasks as equal effort

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people ask for "priority order" without defining what priority means.

To get a usable result, your prompt must define:
- Context - pre-deadline planning with mixed urgency
- Objective - rank by schedule impact and unblock sequence
- Requirements - up to five items; concise action lines; no added tasks
- Expectations - standup-ready execution order

**Expert prompt**

Turn these mixed-urgency tasks into an ordered list of up to five items. Prioritize by schedule impact and unblock sequence, not wording intensity. Keep each line concise and actionable, do not add tasks, and make output immediately usable in standup.

**AI response (example)**

1. Confirm vendor constraints affecting Friday checkpoint.
2. Lock revised internal sequence based on vendor constraints.
3. Update project plan with revised dates and owners.
4. Prepare checkpoint deck from updated sequence and risk.
5. Send standup note with final execution order.

Pay attention to how ordering follows unblock sequence - Objective defined what "priority" means.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The difference is the ranking rule: prioritization depends on logic, not formatting.
- Objective defines impact logic
- Requirements enforce concise execution language
- Expectations make order immediately usable

- **Weak vs Strong Prompt**

Weak prompt:
Prioritize these tasks

Strong prompt:
Turn these mixed-urgency tasks into an ordered list of up to five items. Prioritize by schedule impact and unblock sequence, not wording intensity. Keep each line concise and actionable, do not add tasks, and make output immediately usable in standup.

- **C.O.R.E. Breakdown**

C - Context
Mixed-urgency tasks before hard Friday checkpoint

O - Objective
Rank by schedule impact and unblock sequence

R - Requirements
Up to five concise actionable lines; no added tasks

E - Expectations
Standup-ready execution order

**Pro tip**

Most teams fail here by prioritizing what sounds urgent. Define impact logic or AI mirrors noise.

**Takeaway**

Priority is a decision rule - without it, AI just sorts by how urgent a sentence sounds.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for high-pressure task prioritization.

**Challenge — options (10)**

- [✓ correct] Define priority as schedule impact + unblock sequence
- [✓ correct] Cap output to five or fewer tasks
- [✓ correct] Require concise actionable lines
- [✓ correct] Forbid adding new tasks
- [✓ correct] Expect standup-ready execution order
- [✗ incorrect] Prioritize by emotional urgency words
- [✗ incorrect] Add strategic options beyond scope
- [✗ incorrect] Infer missing deadlines
- [✗ incorrect] Average all priorities into buckets
- [✗ incorrect] Expand into long rationale paragraphs

**Result — coaching note**

Prioritization prompts need explicit ranking logic. Without it, AI sorts by language cues, not operational impact.

**Result — assembled prompt example**

Order these tasks into up to five standup-ready actions prioritized by schedule impact and unblock sequence only, with concise actionable wording and no added tasks.

**Result — feedback when correct**

You now control prioritization logic under pressure - that is an operational advantage.

**Result — polished prompt**

Rank these tasks into five or fewer actionable standup items using schedule impact and unblock sequence as the ordering rule. Do not add tasks.

---

### Lesson 3 — Turn Information Into Schedules & Timelines

#### Scenario 1 — Build a Chronological Day Plan With Dependency Timing

**Situation**

You need a same-day plan from scattered notes. Several activities depend on earlier outcomes, and one missed slot can cascade into end-of-day risk.

If this slips, you spend the afternoon reacting instead of executing.

If you ask AI for a simple schedule, it often:
- lists items without dependency logic
- ignores hard time anchors
- puts low-risk tasks before blockers

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people request chronology only, then discover the plan is ordered but not executable.

To get a usable result, your prompt must define:
- Context - same-day plan with dependency-sensitive timing
- Objective - produce executable sequence with blockers first
- Requirements - concise line items; preserve time anchors; no invented tasks
- Expectations - ready-to-run day plan

**Expert prompt**

Turn these notes into a chronological day plan that is executable, not just ordered. Preserve stated time anchors, put dependency-blocking tasks before dependent tasks where timing allows, keep line items concise, and do not invent additional work.

**AI response (example)**

- 10:00 - Vendor call to confirm dependency status.
- Before lunch - Complete prep work required for draft review.
- 2:00 p.m. - Review draft using confirmed dependency inputs.
- End of day - Send final summary with updated status.

The control point is blocker-first sequencing - Requirements prevented a cosmetic timeline.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

What matters here is execution logic: schedules need blocker sequencing, not timestamps alone.
- Objective enforces blocker-first sequencing
- Requirements preserve hard time anchors
- Expectations target run-ready output

- **Weak vs Strong Prompt**

Weak prompt:
Create a daily schedule

Strong prompt:
Turn these notes into a chronological day plan that is executable, not just ordered. Preserve stated time anchors, put dependency-blocking tasks before dependent tasks where timing allows, keep line items concise, and do not invent additional work.

- **C.O.R.E. Breakdown**

C - Context
Same-day schedule with dependency-sensitive tasks

O - Objective
Build executable chronology with blocker-first logic

R - Requirements
Concise lines; preserve time anchors; no invented tasks

E - Expectations
Ready-to-run day plan

**Pro tip**

Chronological is not enough. If blocker-first logic is missing, your schedule looks tidy and fails by lunch.

**Takeaway**

A schedule that ignores dependencies is wrong - even if the times are in order.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for dependency-aware day planning.

**Challenge — options (10)**

- [✓ correct] Preserve all stated time anchors
- [✓ correct] Place blocker tasks before dependent tasks
- [✓ correct] Keep lines concise and actionable
- [✓ correct] Use only provided activities
- [✓ correct] Expect immediate team execution readiness
- [✗ incorrect] Re-sequence by writing style
- [✗ incorrect] Add optional stretch tasks
- [✗ incorrect] Replace times with broad windows
- [✗ incorrect] Expand each line with explanation
- [✗ incorrect] Infer missing tasks from context

**Result — coaching note**

Daily plans fail when prompts optimize formatting over dependency logic. Define both explicitly.

**Result — assembled prompt example**

Create a concise day plan from these notes preserving exact time anchors and sequencing blocker tasks before dependent work, with no invented tasks.

**Result — feedback when correct**

You now build run-ready schedules - most people get a tidy timeline that breaks by midday.

**Result — polished prompt**

Build a concise execution-ready day plan from these notes with exact time anchors and blocker-first ordering. Use only provided tasks.

---

#### Scenario 2 — Map Unordered Work Into a Weekly Plan With Deadline Risk

**Situation**

You need a Monday-Friday plan from unordered notes where one midweek dependency can compress Thursday and Friday work.

If this is presented as "evenly spread," the team will miss where the real pressure is.

If you prompt AI weakly, output often:
- spreads tasks evenly but unrealistically
- ignores late-week risk concentration
- hides dependency pressure

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people ask for a weekly plan and get calendar formatting without capacity realism.

To get a usable result, your prompt must define:
- Context - dependency-sensitive weekly sequencing under deadline risk
- Objective - map feasible order and surface pressure points
- Requirements - Monday-Friday format; concise daily lines; no invented work
- Expectations - leadership-visible plan that reflects risk concentration

**Expert prompt**

Convert these unordered notes into a Monday-Friday plan based on feasible sequence under stated constraints. Keep daily lines concise, do not add tasks or dates, and explicitly surface where risk concentration is highest.

**AI response (example)**

- Monday: Start analysis and isolate dependency-sensitive sections.
- Tuesday: Complete baseline analysis not blocked by vendor input.
- Wednesday: Confirm vendor constraints and finalize sequence assumptions.
- Thursday: Prepare draft with dependency impact called out.
- Friday: Send leadership draft and highlight Thursday-Friday risk concentration.

Look at how pressure points stayed explicit - Expectations required risk visibility, not just day labels.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The difference is capacity realism: weekly plans need sequencing plus pressure-point signaling.
- Objective enforces feasible order under constraints
- Requirements prevent invented work and verbosity
- Expectations force pressure-point visibility

- **Weak vs Strong Prompt**

Weak prompt:
Turn this into a weekly plan

Strong prompt:
Convert these unordered notes into a Monday-Friday plan based on feasible sequence under stated constraints. Keep daily lines concise, do not add tasks or dates, and explicitly surface where risk concentration is highest.

- **C.O.R.E. Breakdown**

C - Context
Unordered weekly tasks with dependency pressure

O - Objective
Create feasible sequence and reveal pressure points

R - Requirements
Monday-Friday concise lines; no invented tasks/dates

E - Expectations
Leadership-visible risk-aware plan

**Pro tip**

Calendar format can hide execution risk. If pressure points are not required, they vanish.

**Takeaway**

A weekly plan that hides pressure points is wrong - even if it looks clean.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for risk-aware weekly planning.

**Challenge — options (10)**

- [✓ correct] Force Monday-Friday structure
- [✓ correct] Require sequencing based on stated constraints
- [✓ correct] Keep daily lines concise and factual
- [✓ correct] Forbid invented tasks or dates
- [✓ correct] Require explicit pressure-point visibility
- [✗ incorrect] Distribute workload evenly for readability
- [✗ incorrect] Add extra buffer days
- [✗ incorrect] Shift dependencies to lower-stress days
- [✗ incorrect] Add long explanations under each day
- [✗ incorrect] Insert strategic options beyond scope

**Result — coaching note**

Weekly planning prompts need realism constraints. Define sequence logic and risk visibility, not just calendar shape.

**Result — assembled prompt example**

Turn these notes into a concise Monday-Friday plan using feasible sequence under stated constraints, surfacing pressure points, with no invented tasks or dates.

**Result — feedback when correct**

You now force planning realism - this is where "pretty" weekly plans quietly fail.

**Result — polished prompt**

Create a concise Monday-Friday plan from these notes using feasible sequencing under stated constraints, with explicit pressure-point visibility and no invented tasks or dates.

---

#### Scenario 3 — Convert Milestones Into a Decision-Safe Timeline

**Situation**

You need a milestone timeline for cross-team coordination. Dates are known, but one checkpoint is conditional on late input.

If this reads as certain, stakeholders will plan around a date that does not exist.

If you prompt loosely, AI often:
- presents uncertainty as fixed
- collapses dependencies
- produces a clean timeline that misleads stakeholders

This is why your prompt fails:
- unclear Objective
- weak Requirements
- no defined Expectations

Most people optimize for simplicity and erase uncertainty that decisions depend on.

To get a usable result, your prompt must define:
- Context - milestone timeline with condition-sensitive checkpoint
- Objective - provide chronology with confidence clarity
- Requirements - four or five concise bullets; preserve conditionality
- Expectations - coordination-safe timeline without false commitments

**Expert prompt**

Convert these milestone notes into a concise chronological timeline of four to five bullets. Preserve stated dates, mark conditional checkpoints explicitly, and keep each line short. Do not convert uncertainty into fixed commitments.

**AI response (example)**

- Tuesday - Complete outline.
- Wednesday - Prepare draft.
- Thursday morning - Review draft (conditional on late input).
- Friday - Final sign-off after Thursday review clears.

This is where you can see judgment control - uncertainty stayed visible instead of being flattened.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is the trust lever: timeline quality depends on certainty controls.
- Objective includes confidence clarity
- Requirements prevent false commitment language
- Expectations keep coordination safe

- **Weak vs Strong Prompt**

Weak prompt:
Create a timeline from these notes

Strong prompt:
Convert these milestone notes into a concise chronological timeline of four to five bullets. Preserve stated dates, mark conditional checkpoints explicitly, and keep each line short. Do not convert uncertainty into fixed commitments.

- **C.O.R.E. Breakdown**

C - Context
Cross-team milestones with one conditional checkpoint

O - Objective
Provide chronology with confidence clarity

R - Requirements
Four to five concise bullets; preserve conditionality

E - Expectations
Coordination-safe timeline without false commitments

**Pro tip**

Most timeline mistakes are confidence mistakes. If conditional dates are not protected, AI over-commits for you.

**Takeaway**

A timeline that flattens uncertainty is misinformation with nice formatting.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for coordination-safe milestone timelines.

**Challenge — options (10)**

- [✓ correct] Require chronological bullet timeline
- [✓ correct] Preserve stated dates exactly
- [✓ correct] Mark conditional checkpoints explicitly
- [✓ correct] Keep lines concise
- [✓ correct] Expect coordination-safe output without false commitments
- [✗ incorrect] Convert uncertain dates to firm promises
- [✗ incorrect] Insert extra milestones for completeness
- [✗ incorrect] Reorder milestones for readability
- [✗ incorrect] Expand each point into prose
- [✗ incorrect] Add causal speculation

**Result — coaching note**

Timeline prompts must control certainty, not just sequence. Preserve conditionality explicitly.

**Result — assembled prompt example**

Turn these milestone notes into four or five concise chronological bullets preserving stated dates and explicit conditional checkpoints.

**Result — feedback when correct**

You protected timeline trust by preserving uncertainty - that is the coordination advantage.

**Result — polished prompt**

Produce a concise four-to-five-bullet chronology from these milestones, preserving stated dates and explicit conditionality only.

---

### Lesson 4 — Turn Information Into Structured Formats

#### Scenario 1 — Convert Cross-Team Notes Into a Decision Table

**Situation**

You need a scan-fast table from cross-team notes. Leaders will use it to spot ownership and deadline risk quickly.

If the table hides unknowns, leadership sees false certainty and makes the wrong calls.

If you prompt AI generically, output often:
- drops unknown ownership
- normalizes risky dates
- looks neat but hides decisions needed

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people ask for "a table" and forget table design controls what leaders notice.

To get a usable result, your prompt must define:
- Context - cross-team status notes for leadership scan
- Objective - surface workstream, owner, deadline, and risk clarity
- Requirements - concise rows; preserve unknowns; no invented owners/dates
- Expectations - decision-support table ready to paste

**Expert prompt**

Turn these notes into a concise table with columns Workstream, Owner, Deadline, and Risk Flag. Use only stated information, keep unknown owner as [Owner TBD], and mark risk when timing is uncertain or tight. Do not invent owners, dates, or status.

**AI response (example)**

| Workstream | Owner | Deadline | Risk Flag |
| --- | --- | --- | --- |
| Timeline update | Sarah | Friday | Low |
| Vendor alignment | Marcus | Wednesday | Medium |
| Draft review | [Owner TBD] | Thursday | High |

Look at how unknown ownership stayed explicit - that keeps the table decision-useful.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The difference is visibility design: table structure tells leaders what to notice.
- Objective defines leadership-visible fields
- Requirements preserve unknowns and ban invention
- Expectations produce scan-ready decision support

- **Weak vs Strong Prompt**

Weak prompt:
Make this a table

Strong prompt:
Turn these notes into a concise table with columns Workstream, Owner, Deadline, and Risk Flag. Use only stated information, keep unknown owner as [Owner TBD], and mark risk when timing is uncertain or tight. Do not invent owners, dates, or status.

- **C.O.R.E. Breakdown**

C - Context
Cross-team notes for leadership scan

O - Objective
Surface owner/deadline/risk clarity by workstream

R - Requirements
Concise rows; preserve unknowns; no invented data

E - Expectations
Paste-ready decision-support table

**Pro tip**

Neat tables can still be risky. If unknown owners disappear, accountability risk disappears too.

**Takeaway**

A table that hides unknown owners is a decision trap - force the hard truths to stay visible.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for leadership decision tables.

**Challenge — options (10)**

- [✓ correct] Specify decision-relevant columns including risk
- [✓ correct] Preserve owner and deadline clarity per workstream
- [✓ correct] Keep rows concise and factual
- [✓ correct] Use [Owner TBD] for unknown ownership
- [✓ correct] Expect leadership scan-ready output
- [✗ incorrect] Infer missing owners from context
- [✗ incorrect] Normalize all risk flags to Medium
- [✗ incorrect] Add confidence percentages
- [✗ incorrect] Append paragraph commentary
- [✗ incorrect] Add suggested new workstreams

**Result — coaching note**

Decision tables need field discipline. Define what must be visible and what must never be invented.

**Result — assembled prompt example**

Convert these notes into a concise Workstream/Owner/Deadline/Risk table, preserving unknowns as [Owner TBD] and avoiding invented values.

**Result — feedback when correct**

You now design for decision visibility - most tables look clean and hide the risk.

**Result — polished prompt**

Create a concise decision table from these notes with Workstream, Owner, Deadline, and Risk Flag. Preserve unknown owner as [Owner TBD] and avoid invented data.

---

#### Scenario 2 — Synthesize Contradictory Feedback Into Actionable Themes

**Situation**

You collected feedback from stakeholders with conflicting priorities. Some comments overlap, others directly contradict.

If you erase the contradiction, you remove the decision the meeting exists to make.

If you prompt AI weakly, it tends to:
- merge contradictions into fake agreement
- over-generalize themes
- lose actionable signal

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people ask for "themes" and erase tension that decisions depend on.

To get a usable result, your prompt must define:
- Context - contradictory stakeholder feedback requiring synthesis
- Objective - group overlap while preserving key contradiction
- Requirements - three to five themes; concise labels; no invented consensus
- Expectations - decision-useful theme list

**Expert prompt**

Group this feedback into three to five themes for leadership discussion. Merge overlap, but preserve one explicit contradiction where stakeholder priorities conflict. Keep theme labels concise, avoid invented consensus language, and make output directly usable for decision review.

**AI response (example)**

- Clarity: Multiple stakeholders want tighter wording and fewer interpretation gaps.
- Timeline pressure: Comments consistently flag current timing as compressed.
- Input model conflict: One group wants broader early input, another wants narrow late review.
- Enablement: Teams request more concrete examples and reference artifacts.

This is where you can see control over ambiguity - contradiction stayed visible instead of flattened.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is the control point: synthesis quality depends on contradiction handling.
- Objective balances grouping and tension preservation
- Requirements block invented consensus
- Expectations keep decision utility

- **Weak vs Strong Prompt**

Weak prompt:
Group this into themes

Strong prompt:
Group this feedback into three to five themes for leadership discussion. Merge overlap, but preserve one explicit contradiction where stakeholder priorities conflict. Keep theme labels concise, avoid invented consensus language, and make output directly usable for decision review.

- **C.O.R.E. Breakdown**

C - Context
Contradictory stakeholder feedback requiring synthesis

O - Objective
Group overlap while preserving key contradiction

R - Requirements
Three to five concise themes; no invented consensus

E - Expectations
Decision-useful output for leadership discussion

**Pro tip**

Most AI users over-compress and erase disagreement. That makes meetings smoother and decisions worse.

**Takeaway**

If synthesis erases tension, it erases the decision - keep the contradiction where it matters.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for contradiction-aware feedback synthesis.

**Challenge — options (10)**

- [✓ correct] Cap output to three to five themes
- [✓ correct] Merge overlap while preserving one key contradiction
- [✓ correct] Use concise factual theme labels
- [✓ correct] Forbid invented consensus language
- [✓ correct] Expect decision-discussion readiness
- [✗ incorrect] Remove all contradictions
- [✗ incorrect] Add inferred themes
- [✗ incorrect] Rewrite themes as long paragraphs
- [✗ incorrect] Blend conflicts into neutral average
- [✗ incorrect] Add recommendations outside source

**Result — coaching note**

Theme synthesis should compress overlap, not conflict. Define contradiction handling or the model erases decision signal.

**Result — assembled prompt example**

Synthesize this feedback into three to five concise themes, preserving one explicit contradiction and avoiding invented consensus language.

**Result — feedback when correct**

You now preserve decision tension instead of smoothing it away - that is the advantage.

**Result — polished prompt**

Group these comments into three to five concise themes while preserving one explicit contradiction and avoiding invented consensus language.

---

#### Scenario 3 — Transform Unordered Instructions Into an Auditable Workflow

**Situation**

You have unordered process instructions for a recurring cross-team workflow. Review and approval gates are implied, not explicit.

If checkpoints go missing, the workflow becomes un-auditable and approvals get bypassed by accident.

If you prompt AI casually, it often:
- orders steps plausibly but unsafely
- omits control checkpoints
- invents transitions not in source text

This is why your prompt fails:
- unclear Objective
- weak Requirements
- no defined Expectations

Most people ask for a workflow and get process theater instead of auditable flow.

To get a usable result, your prompt must define:
- Context - cross-team process needing governance clarity
- Objective - produce dependency-ordered workflow with explicit checkpoints
- Requirements - up to four main steps; optional sub-steps; no invented transitions
- Expectations - auditable outline for operating docs

**Expert prompt**

Convert these unordered instructions into an auditable workflow outline with up to four main steps and optional sub-steps. Order steps by execution dependency, include explicit checkpoint lines where source indicates review/approval, and do not invent transitions or actions.

**AI response (example)**

1. Prepare materials
   - Gather required documents
   - Confirm latest approved versions
2. Review checkpoint
   - Share materials with reviewers
   - Capture required approval input
3. Finalize package
   - Apply approved changes only
   - Prepare release-ready version
4. Release checkpoint
   - Confirm approval gate cleared before distribution

Pay attention to how checkpoints are explicit - this is what makes the workflow auditable.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The difference is governance visibility: workflow quality needs dependency order plus checkpoints.
- Objective targets auditable sequence
- Requirements block invented transitions
- Expectations target operating-doc readiness

- **Weak vs Strong Prompt**

Weak prompt:
Turn this into a workflow

Strong prompt:
Convert these unordered instructions into an auditable workflow outline with up to four main steps and optional sub-steps. Order steps by execution dependency, include explicit checkpoint lines where source indicates review/approval, and do not invent transitions or actions.

- **C.O.R.E. Breakdown**

C - Context
Cross-team process needing governance clarity

O - Objective
Dependency-ordered workflow with explicit checkpoints

R - Requirements
Up to four steps; optional sub-steps; no invented transitions

E - Expectations
Auditable outline for operating docs

**Pro tip**

Auditability is where most users lose control. If checkpoint logic is not explicit in the prompt, it disappears in output.

**Takeaway**

A workflow without checkpoints is process theater - keep governance signals explicit.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for auditable workflow conversion.

**Challenge — options (10)**

- [✓ correct] Cap workflow to a small step count
- [✓ correct] Order by execution dependency
- [✓ correct] Include explicit review/approval checkpoints
- [✓ correct] Allow optional sub-steps for clarity
- [✓ correct] Expect operating-doc-ready auditable output
- [✗ incorrect] Insert likely transitions for flow
- [✗ incorrect] Remove checkpoints to keep it short
- [✗ incorrect] Reorder for readability only
- [✗ incorrect] Add rationale paragraphs
- [✗ incorrect] Generalize into principles

**Result — coaching note**

Workflow prompts need dependency order and checkpoint visibility together. Missing either one reduces audit safety.

**Result — assembled prompt example**

Convert these unordered instructions into up to four dependency-ordered workflow steps with optional sub-steps and explicit review/approval checkpoints, with no invented transitions.

**Result — feedback when correct**

You preserved auditability - this is where most workflow prompts quietly become unsafe.

**Result — polished prompt**

Build an auditable workflow from these instructions using up to four dependency-ordered steps, optional sub-steps, and explicit checkpoints only.

---

### Lesson 5 — Create Reusable Prompts for Daily Work

#### Scenario 1 — Design a Reusable Daily Update Prompt for Leadership Visibility

**Situation**

You send daily updates that may be read by leadership. You need a reusable prompt that stays concise, factual, and risk-aware across variable note quality.

If this drifts, leadership reads the wrong risk picture.

If your template prompt is weak, AI often:
- drifts into generic status language
- hides blockers
- changes emphasis based on note style

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people build reusable prompts that only work when the day is easy.

To get a usable result, your prompt must define:
- Context - daily leadership update from variable notes
- Objective - consistently report progress, risk, and next-day actions
- Requirements - one short paragraph; factual tone; no invented metrics
- Expectations - copy/paste-ready output with stable structure

**Expert prompt**

Create a reusable prompt that converts bullet notes into a one-paragraph leadership update with fixed sections for progress, active risks, and next-day actions. Keep tone factual and concise, forbid invented metrics or confidence claims, and include a [Notes] placeholder for repeated use.

**AI response (example)**

Reusable Prompt - Daily Leadership Update

Turn [Notes] into one concise paragraph covering:
- Progress completed today
- Active risks or blockers
- Next-day actions

Use controlled, professional tone. Do not invent metrics, causes, or confidence claims not present in [Notes]. Keep structure consistent across days and output ready to paste.

The difference is stability: constraints keep output consistent when note quality changes.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is stability controls: reusable prompts need more than placeholders.
- Objective locks recurring signal categories
- Requirements lock tone and anti-invention
- Expectations lock daily consistency

- **Weak vs Strong Prompt**

Weak prompt:
Create a daily summary template

Strong prompt:
Create a reusable prompt that converts bullet notes into a one-paragraph leadership update with fixed sections for progress, active risks, and next-day actions. Keep tone factual and concise, forbid invented metrics or confidence claims, and include a [Notes] placeholder for repeated use.

- **C.O.R.E. Breakdown**

C - Context
Reusable daily leadership update from variable notes

O - Objective
Consistent progress/risk/next-action reporting

R - Requirements
One paragraph; factual tone; no invented metrics

E - Expectations
Copy/paste-ready output with stable structure

**Pro tip**

Most reusable prompts fail on bad-input days. If constraints are weak, output quality swings with note quality.

**Takeaway**

Reusable prompts only matter on hard days - design for consistency under pressure.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong reusable daily update prompt.

**Challenge — options (10)**

- [✓ correct] Define fixed sections for progress, risk, and next actions
- [✓ correct] Require one paragraph output
- [✓ correct] Include reusable [Notes] placeholder
- [✓ correct] Forbid invented metrics or confidence claims
- [✓ correct] Expect stable copy/paste-ready structure
- [✗ incorrect] Allow style shifts by note tone
- [✗ incorrect] Add default motivational language
- [✗ incorrect] Include optional strategy recommendations
- [✗ incorrect] Expand on complex days by default
- [✗ incorrect] Let model choose sections dynamically

**Result — coaching note**

Reusable update prompts need consistency controls plus anti-invention rules, or quality drifts exactly when pressure rises.

**Result — assembled prompt example**

Create a reusable one-paragraph leadership update prompt with [Notes] placeholder and fixed sections for progress, active risks, and next-day actions. Keep factual and ban invented metrics.

**Result — feedback when correct**

You now have repeatable leadership-quality updates - not just a template that works on easy days.

**Result — polished prompt**

Build a reusable one-paragraph leadership update prompt with [Notes], fixed progress/risk/next-action sections, factual tone, and no invented metrics.

---

#### Scenario 2 — Create a Reusable Prompt for Risk-Sensitive Stakeholder Emails

**Situation**

You often draft stakeholder emails from rough notes where tone and commitments must stay controlled.

If this over-promises, you create a commitment you now have to unwind.

If your reusable prompt is too generic, AI often:
- sounds polished but vague
- over-promises next steps
- varies quality by note quality

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people template structure but forget commitment constraints.

To get a usable result, your prompt must define:
- Context - risk-sensitive stakeholder email from rough notes
- Objective - produce concise professional email with controlled commitments
- Requirements - two or three short paragraphs; no invented promises/dates
- Expectations - send-ready output with stable quality

**Expert prompt**

Create a reusable prompt that turns rough notes into a stakeholder email in two or three short paragraphs. Include placeholders for audience, purpose, key facts, and next step, require professional tone, and explicitly forbid invented commitments, approvals, or dates not in the notes. Output must be send-ready.

**AI response (example)**

Reusable Prompt - Stakeholder Email

Turn [Notes] into a professional email in 2-3 short paragraphs.
Include:
- Greeting for [Audience]
- Purpose in one clear line
- Key facts only from [Notes]
- One explicit next step
- Polite close

Do not invent commitments, approvals, or dates not present in [Notes]. Keep tone calm and send-ready.

Notice how the template controls commitment risk, not just email structure.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is the control point: reusable email prompts need commitment guardrails.
- Objective targets clarity plus commitment discipline
- Requirements lock structure and anti-invention rules
- Expectations lock stable send-ready quality

- **Weak vs Strong Prompt**

Weak prompt:
Create an email template from notes

Strong prompt:
Create a reusable prompt that turns rough notes into a stakeholder email in two or three short paragraphs. Include placeholders for audience, purpose, key facts, and next step, require professional tone, and explicitly forbid invented commitments, approvals, or dates not in the notes. Output must be send-ready.

- **C.O.R.E. Breakdown**

C - Context
Risk-sensitive stakeholder email from rough notes

O - Objective
Consistent concise email with controlled commitments

R - Requirements
2-3 short paragraphs; placeholders; no invented promises/dates

E - Expectations
Send-ready output with stable quality

**Pro tip**

This is where most AI users lose control: they template sections but not promise boundaries.

**Takeaway**

If the template does not control commitments, it is not leverage - it is risk.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong reusable prompt for risk-sensitive stakeholder emails.

**Challenge — options (10)**

- [✓ correct] Include placeholders for audience, purpose, facts, and next step
- [✓ correct] Require two or three short paragraphs
- [✓ correct] Forbid invented commitments, approvals, or dates
- [✓ correct] Require professional calm tone
- [✓ correct] Expect stable send-ready quality across inputs
- [✗ incorrect] Infer likely commitments for confidence
- [✗ incorrect] Allow informal tone shifts
- [✗ incorrect] Expand to four paragraphs when complex
- [✗ incorrect] Insert strategic recommendations
- [✗ incorrect] Add anticipated dates when missing

**Result — coaching note**

Reusable stakeholder prompts need structure and commitment guardrails together. Without both, risk control varies by day.

**Result — assembled prompt example**

Create a reusable stakeholder email prompt with placeholders for audience, purpose, key facts, and next step, 2-3 short paragraphs, and strict no-invented-commitment rules.

**Result — feedback when correct**

You now control commitment boundaries in reusable form - that is real stakeholder leverage.

**Result — polished prompt**

Build a reusable stakeholder email prompt with structured placeholders, 2-3 short paragraph limit, professional tone, and strict no-invented-commitment rules.

---

#### Scenario 3 — Create a Reusable Task Update Prompt for Escalation Readiness

**Situation**

You send frequent task updates that may be forwarded upward when risk increases. You need a reusable template prompt that stays concise but escalation-ready.

If this is vague, the update escalates without the one line leadership needs to judge risk.

If the prompt is too simple, AI usually:
- omits risk signal
- uses casual language that does not travel well
- varies structure across tasks

This is why your prompt fails:
- no clear Objective
- weak Requirements
- no defined Expectations

Most people template status but not escalation readiness.

To get a usable result, your prompt must define:
- Context - concise task updates that may escalate
- Objective - report status, risk level, and next step clearly
- Requirements - one or two sentences; neutral tone; required placeholders
- Expectations - reusable line safe for cross-level forwarding

**Expert prompt**

Create a reusable one- or two-sentence task update prompt with placeholders for task name, current status, risk level, and next action. Keep tone neutral and professional, forbid invented progress claims, and make output suitable for forwarding to leadership without reformatting.

**AI response (example)**

Task Update Template
[Task name] - Status: [status]. Risk: [risk level]. Next action: [next action].

What matters here is the risk field - it is what makes a short update escalation-ready.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The difference is escalation fields: short templates still need risk discipline.
- Objective includes status plus risk signal
- Requirements lock concise neutral format
- Expectations keep forwarding safety

- **Weak vs Strong Prompt**

Weak prompt:
Create a quick task template

Strong prompt:
Create a reusable one- or two-sentence task update prompt with placeholders for task name, current status, risk level, and next action. Keep tone neutral and professional, forbid invented progress claims, and make output suitable for forwarding to leadership without reformatting.

- **C.O.R.E. Breakdown**

C - Context
Concise task updates that may escalate upward

O - Objective
Report status, risk, and next action clearly

R - Requirements
One or two sentences; neutral tone; required placeholders

E - Expectations
Forward-safe reusable update line

**Pro tip**

Most AI users stay average here: they report status but hide risk, then escalation arrives with missing context.

**Takeaway**

If a status template cannot survive escalation, it is not a template - it is a draft.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a strong reusable prompt for escalation-ready task updates.

**Challenge — options (10)**

- [✓ correct] Cap output to one or two sentences
- [✓ correct] Require placeholders for task/status/risk/next action
- [✓ correct] Use neutral professional tone
- [✓ correct] Forbid invented progress or completion claims
- [✓ correct] Expect forward-safe output for leadership visibility
- [✗ incorrect] Drop risk field to keep it lighter
- [✗ incorrect] Add motivational language by default
- [✗ incorrect] Include optional sentiment field
- [✗ incorrect] Expand into paragraph format
- [✗ incorrect] Infer next actions when missing

**Result — coaching note**

Escalation-ready templates require risk field discipline and anti-invention constraints even when output is very short.

**Result — assembled prompt example**

Create a reusable one- or two-sentence task update prompt with placeholders for task, status, risk, and next action; keep neutral and forbid invented progress claims.

**Result — feedback when correct**

You now have a compact update that scales upward without cleanup - most templates break at escalation.

**Result — polished prompt**

Build a reusable 1-2 sentence task update prompt with placeholders for task, status, risk, and next action. Keep neutral, concise, and forward-safe.

---

## Track 3 — Spreadsheets & Data
*Source: `lib/data/tracks/track3_spreadsheets_data.dart`*

### Lesson 1 — Control Spreadsheet Summaries (Decision-Ready)

#### Scenario 1 — Extract a Leadership-Ready Weekly Snapshot From a Raw Sheet

**Situation**

You have a raw sales sheet across regions, but the meeting is in 10 minutes and leadership will scan for signal, not detail.

If this summary is wrong or vague, the team will optimize the wrong region.

If you prompt AI weakly, it usually:
- invents confidence
- adds commentary you can't defend
- hides missing data behind clean formatting

This is why your prompt fails:
- no clear objective (what decision this summary supports)
- weak requirements (what must be computed vs. preserved)
- no expectation for auditability

Most people ask for a "summary table" and get something that looks official but can't be verified.

To get a usable result, your prompt must define:
- Context - leadership scan of regional performance from a raw sheet
- Objective - compute totals and averages without interpretation
- Requirements - exact columns, number formatting, and missing-data rules
- Expectations - paste-ready output you can defend in a meeting

**Expert prompt**

Create a leadership-ready summary table from this sheet with exactly these columns: Region, Total Sales, Average Sale. Compute totals and averages from the provided values only. Do not add interpretation, do not invent missing values, and if any region data is incomplete, mark it as [Incomplete]. Keep formatting paste-ready for a leadership update.

**AI response (example)**

**Regional Sales Snapshot (computed from provided values)**
| Region | Total Sales | Average Sale |
|--------|-------------|--------------|
| North | $128,400 | $8,560 |
| South | $113,900 | $7,593 |
| East | $142,300 | $9,486 |
| West | $121,700 | $8,114 |

Notice how the output is decision-ready without editorializing - the Requirements kept it auditable.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is auditability: you told the model what to compute and what not to infer.
- Objective focuses on computation, not commentary
- Requirements lock columns, formatting, and missing-data handling
- Expectations force paste-ready output you can defend

- **Weak vs Strong Prompt**

Weak prompt:
Summarise this sheet by region

Strong prompt:
Create a leadership-ready summary table from this sheet with exactly these columns: Region, Total Sales, Average Sale. Compute totals and averages from the provided values only. Do not add interpretation, do not invent missing values, and if any region data is incomplete, mark it as [Incomplete]. Keep formatting paste-ready for a leadership update.

- **C.O.R.E. Breakdown**

C - Context
Leadership scan of regional performance from a raw sheet

O - Objective
Compute totals and averages without interpretation

R - Requirements
Exact columns and formatting; provided values only; missing stays missing

E - Expectations
Paste-ready output you can defend in a meeting

**Pro tip**

Most people let AI "make it insightful" and end up with claims they can't trace back to the sheet. In data work, auditable beats eloquent.

**Takeaway**

If you can't audit it, don't ship it - control the calculations and the boundaries.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a decision-ready, auditable spreadsheet summary prompt.

**Challenge — options (10)**

- [✓ correct] Specify exact output columns and order
- [✓ correct] Require totals and averages computed from provided values only
- [✓ correct] Forbid interpretation or performance commentary
- [✓ correct] Define how to handle missing or incomplete data
- [✓ correct] Expect paste-ready formatting for a leadership update
- [✗ incorrect] Ask for insights and recommendations by default
- [✗ incorrect] Allow the model to "fill gaps" to make the table complete
- [✗ incorrect] Add a narrative paragraph explaining why regions performed
- [✗ incorrect] Change region names for readability
- [✗ incorrect] Include confidence percentages for each region

**Result — coaching note**

Most data summaries fail because the prompt allows inference. Lock computation scope, missing-data rules, and output shape before asking for polish.

**Result — assembled prompt example**

Create a paste-ready table with columns Region, Total Sales, Average Sale computed from provided values only. Do not add interpretation; mark incomplete regions as [Incomplete].

**Result — feedback when correct**

You now control auditability - this is how you ship numbers leadership can trust.

**Result — polished prompt**

Build a leadership-ready regional summary table with exactly: Region, Total Sales, Average Sale. Compute from provided values only; do not interpret; mark incomplete regions as [Incomplete]; keep formatting paste-ready.

---

#### Scenario 2 — Reconcile Messy Inputs Into One Clean Summary Without Silent Assumptions

**Situation**

You receive a messy export: duplicate region labels, inconsistent currency symbols, and a few blank cells.

If you summarise this loosely, you will publish the wrong totals and nobody will notice until the next forecast review.

If you prompt AI weakly, it usually:
- "normalizes" by guessing
- silently drops rows
- produces clean output with hidden data loss

This is why your prompt fails:
- no definition of what counts as a valid row
- no rules for duplicates
- no expectation to report anomalies

Most people ask for a summary and skip the step that protects trust: anomaly reporting.

To get a usable result, your prompt must define:
- Context - messy export that needs safe summarisation
- Objective - compute totals safely while surfacing anomalies
- Requirements - dedupe rules, blank handling, and no silent drops
- Expectations - summary table plus an anomalies list you can act on

**Expert prompt**

Create a regional summary table (Region, Total Sales, Average Sale) from this messy export using only provided values. Do not guess missing values or drop rows silently. If duplicates exist, combine them by exact region name match only. If blanks or mixed currency symbols appear, keep the row but mark it as [Needs review] in an Anomalies list after the table.

**AI response (example)**

**Regional Summary (safe aggregation)**
| Region | Total Sales | Average Sale |
|--------|-------------|--------------|
| North | $128,400 | $8,560 |
| South | $113,900 | $7,593 |
| East | $142,300 | $9,486 |
| West | $121,700 | $8,114 |

**Anomalies (requires review)**
- Mixed currency symbol detected in 2 rows → not merged across symbols
- Blank sales value in 1 row → excluded from average; flagged for review

Look at how the output stays clean without hiding risk - Expectations forced anomaly visibility.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is the difference between tidy and trustworthy: you required anomaly reporting and banned silent cleanup.
- Objective targets safe aggregation
- Requirements define dedupe and missing-data rules
- Expectations force a review list so risk doesn't disappear

- **Weak vs Strong Prompt**

Weak prompt:
Summarise this export by region

Strong prompt:
Create a regional summary table (Region, Total Sales, Average Sale) from this messy export using only provided values. Do not guess missing values or drop rows silently. If duplicates exist, combine them by exact region name match only. If blanks or mixed currency symbols appear, keep the row but mark it as [Needs review] in an Anomalies list after the table.

- **C.O.R.E. Breakdown**

C - Context
Messy export needing safe summarisation

O - Objective
Aggregate by region while surfacing anomalies

R - Requirements
No guessing; no silent drops; explicit dedupe and blank handling

E - Expectations
Summary table + anomalies list for review

**Pro tip**

This is where most people lose trust: they ask AI to "clean it up" and it deletes the evidence. Always force an anomalies section when inputs are messy.

**Takeaway**

Messy inputs don't need perfection - they need visibility. Safe summaries surface what they couldn't compute.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a safe, anomaly-aware summary prompt for messy spreadsheet exports.

**Challenge — options (10)**

- [✓ correct] Ban guessing or inventing missing values
- [✓ correct] Require no silent row drops
- [✓ correct] Define duplicate-handling rules explicitly
- [✓ correct] Require an anomalies/review list after the summary
- [✓ correct] Use only provided values for calculations
- [✗ incorrect] Auto-correct region labels to a standard naming scheme
- [✗ incorrect] Merge across currencies to get one clean total
- [✗ incorrect] Drop blank rows without mentioning them
- [✗ incorrect] Add explanations for why the data is messy
- [✗ incorrect] Provide recommendations based on the numbers

**Result — coaching note**

In messy data, the win is not "clean output" - it's controlled cleanup with visible exceptions. Force anomaly reporting and ban silent drops.

**Result — assembled prompt example**

Summarise by region into a table using provided values only. Do not guess missing values or drop rows silently; define dedupe rules; include an anomalies list after the table.

**Result — feedback when correct**

You now control safe aggregation - the anomalies list is what keeps your summary credible.

**Result — polished prompt**

Create a regional summary table (Region, Total Sales, Average Sale) from this export using provided values only. No guessing, no silent drops, explicit duplicate/blank handling, and an Anomalies list after the table.

---

#### Scenario 3 — Summarise Sensitive Performance Data Without Overstating Conclusions

**Situation**

You're summarising performance data that will be forwarded to leadership. The numbers suggest a trend, but the sample is small and context is incomplete.

If you overstate, you trigger the wrong intervention; if you undersell, you miss a real risk.

If you prompt AI weakly, it usually:
- writes confident narratives from thin data
- adds causes that aren't in the sheet
- turns correlation into certainty

This is why your prompt fails:
- no rules for claims vs. observations
- no tone control
- no expectation to separate facts from hypotheses

Most people ask for "insights" and get a story. You need controlled, decision-safe language.

To get a usable result, your prompt must define:
- Context - sensitive performance snapshot with incomplete context
- Objective - extract factual observations and one cautious implication
- Requirements - separate Observations vs. Open Questions; no invented causes
- Expectations - forward-safe summary that signals risk without speculation

**Expert prompt**

Write a forward-safe performance snapshot from these numbers. Use two sections: Observations (facts only) and Open Questions (what we would need to confirm before acting). Keep tone controlled and professional. Do not invent causes, do not claim statistical significance, and keep it paste-ready for a leadership thread.

**AI response (example)**

**Performance Snapshot**
**Observations**
- The latest period shows lower volume than the prior period in the provided values.
- Variability increased across the most recent entries compared to earlier entries.

**Open Questions**
- Is the input set complete for this period (same coverage as prior)?
- Are there known operational changes that would explain the variance?

This is where you can see decision-safety: the model reports what's true without inventing why.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is claim discipline: you forced a split between facts and what needs confirmation.
- Objective targets decision-safe signal
- Requirements ban invented causes and enforce sectioning
- Expectations make it forward-safe without overselling

- **Weak vs Strong Prompt**

Weak prompt:
Give me insights from this data

Strong prompt:
Write a forward-safe performance snapshot from these numbers. Use two sections: Observations (facts only) and Open Questions (what we would need to confirm before acting). Keep tone controlled and professional. Do not invent causes, do not claim statistical significance, and keep it paste-ready for a leadership thread.

- **C.O.R.E. Breakdown**

C - Context
Sensitive performance snapshot with incomplete context

O - Objective
Extract factual observations and signal uncertainty safely

R - Requirements
Observations vs Open Questions; no invented causes; no overclaiming

E - Expectations
Forward-safe paste-ready summary with controlled tone

**Pro tip**

Most people think "analysis" means "explain why." In leadership threads, "why" without evidence is how you lose trust fast.

**Takeaway**

Separate facts from hypotheses every time - decision-safe language is a competitive advantage.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this decision-safe, tone-controlled performance summary prompt.

**Challenge — options (10)**

- [✓ correct] Require separate sections for facts vs. open questions
- [✓ correct] Forbid invented causes or speculation
- [✓ correct] Require controlled, professional tone
- [✓ correct] Expect forward-safe, paste-ready formatting
- [✓ correct] Use only the provided numbers as evidence
- [✗ incorrect] Ask the model to explain root causes for the trend
- [✗ incorrect] Add confidence scores for each observation
- [✗ incorrect] Assume missing context and fill it in
- [✗ incorrect] Use persuasive language to drive urgency
- [✗ incorrect] Recommend interventions based on limited data

**Result — coaching note**

Decision-safe summaries require claim discipline. Force structure (facts vs. questions), ban invented causes, and keep tone controlled.

**Result — assembled prompt example**

Write a forward-safe snapshot with Observations (facts only) and Open Questions. Use only provided numbers, avoid invented causes, keep tone controlled, and format paste-ready.

**Result — feedback when correct**

You now control claim discipline - this is how you communicate risk without losing credibility.

**Result — polished prompt**

Create a paste-ready performance snapshot with Observations (facts only) and Open Questions. Use only provided values; no invented causes; controlled professional tone; decision-safe wording.

---

### Lesson 2 — Find Exceptions and High-Leverage Rows

#### Scenario 1 — Extract the Top Values With a Tie-Break Rule

**Situation**

You need the top values from a column to prioritize attention, but ties and close values can change the story.

If you get this wrong, you escalate the wrong account to leadership.

If you prompt AI weakly, it usually:
- returns an arbitrary order
- ignores ties
- hides the tie-break logic

This is why your prompt fails:
- no tie rule
- no output shape
- no expectation to show only what matters

Most people ask for "top 3" and assume the model will handle ties correctly.

To get a usable result, your prompt must define:
- Context - prioritization based on top values
- Objective - extract top values with explicit ordering rules
- Requirements - tie-break rule; show values only; no commentary
- Expectations - output you can paste into a priority list without editing

**Expert prompt**

From this list, return the top three values in descending order. If there is a tie, include both tied values and label them as a tie. Show values only, no commentary, and keep output paste-ready.

**AI response (example)**

**Top values (descending)**
1. 1,320
2. 1,210
3. 1,180

Notice how the output is unambiguous - Requirements defined what to do when ranking isn't clean.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is ordering rules: rankings fail when ties are undefined.
- Objective targets extraction, not explanation
- Requirements define order, tie behavior, and values-only output
- Expectations make it paste-ready for prioritization

- **Weak vs Strong Prompt**

Weak prompt:
What are the top values?

Strong prompt:
From this list, return the top three values in descending order. If there is a tie, include both tied values and label them as a tie. Show values only, no commentary, and keep output paste-ready.

- **C.O.R.E. Breakdown**

C - Context
Prioritization based on top values

O - Objective
Extract top values with explicit ordering

R - Requirements
Descending order; tie rule; values only; no commentary

E - Expectations
Paste-ready output for a priority list

**Pro tip**

If you don't define tie behavior, you don't have a ranking - you have a guess with formatting.

**Takeaway**

Rankings require rules. No tie-break = no trust.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a reliable top-values extraction prompt.

**Challenge — options (10)**

- [✓ correct] Specify descending order
- [✓ correct] Specify how to handle ties
- [✓ correct] Require exactly the top three values
- [✓ correct] Forbid extra commentary
- [✓ correct] Expect paste-ready formatting
- [✗ incorrect] Explain why the values are high
- [✗ incorrect] Sort in a visually pleasing order
- [✗ incorrect] Add predictions based on the top values
- [✗ incorrect] Change the list to remove outliers
- [✗ incorrect] Recommend tools to analyze further

**Result — coaching note**

Extraction prompts fail when ranking rules are underspecified. Define ordering, tie behavior, and output scope.

**Result — assembled prompt example**

Return the top three values in descending order with an explicit tie rule. Values only, paste-ready.

**Result — feedback when correct**

You now control ranking reliability - this is how you avoid escalating the wrong item.

**Result — polished prompt**

Extract the top three values from this list in descending order. If ties occur, include tied values and label as a tie. Output values only, paste-ready, no commentary.

---

#### Scenario 2 — Find Max/Min in Messy Data Without Smuggling In Extra Metrics

**Situation**

You're asked for max/min immediately, but the dataset includes blanks, text, and a few values that might be placeholders.

If you get this wrong, you publish a number that can't be defended.

If you prompt AI weakly, it usually:
- includes non-numeric cells
- treats placeholders as real values
- adds extra metrics you didn't ask for

This is why your prompt fails:
- no rules for what counts as numeric
- no treatment for blanks/invalids
- no expectation to show exclusions

Most people ask for "min and max" and forget to require exclusion rules.

To get a usable result, your prompt must define:
- Context - messy column with mixed cell types
- Objective - compute max/min safely
- Requirements - ignore non-numeric; list exclusions; no extra metrics
- Expectations - two-line answer plus a one-line exclusions note

**Expert prompt**

From this column, return only the Maximum and Minimum numeric values. Ignore blanks and non-numeric cells. After the two-line summary, add one line listing how many cells were excluded and why. Do not compute any other metrics.

**AI response (example)**

**Summary**
- Maximum: 1,320
- Minimum: 670
Excluded: 2 non-numeric cells; 1 blank cell

Pay attention to how exclusions are explicit - that's what makes max/min defensible.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is exclusion rules: max/min is easy until the column isn't clean.
- Objective targets max/min only
- Requirements define numeric-only and force exclusions visibility
- Expectations keep output minimal and defensible

- **Weak vs Strong Prompt**

Weak prompt:
What are the max and min?

Strong prompt:
From this column, return only the Maximum and Minimum numeric values. Ignore blanks and non-numeric cells. After the two-line summary, add one line listing how many cells were excluded and why. Do not compute any other metrics.

- **C.O.R.E. Breakdown**

C - Context
Messy column with mixed cell types

O - Objective
Compute max/min safely

R - Requirements
Ignore blanks/non-numeric; show exclusions; no extra metrics

E - Expectations
Two-line summary + one-line exclusions note

**Pro tip**

If you don't force exclusion rules, AI will "help" by treating garbage like data. Then you own the number.

**Takeaway**

Defensible metrics require explicit inclusion rules.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a safe max/min prompt for messy columns.

**Challenge — options (10)**

- [✓ correct] Specify numeric-only inclusion
- [✓ correct] Ignore blanks and non-numeric cells
- [✓ correct] Require an exclusions count/reason line
- [✓ correct] Limit output to max/min only
- [✓ correct] Keep output paste-ready
- [✗ incorrect] Compute range and standard deviation
- [✗ incorrect] Interpret why min/max occurred
- [✗ incorrect] Fill blanks with averages
- [✗ incorrect] Convert text to numbers without noting it
- [✗ incorrect] Add recommendations based on min/max

**Result — coaching note**

In messy columns, max/min is only trustworthy if you define what counts as numeric and require exclusion visibility.

**Result — assembled prompt example**

Return only Maximum and Minimum numeric values; ignore blanks/non-numeric; include an exclusions note; no other metrics.

**Result — feedback when correct**

You now produce defensible max/min - the exclusions note is what keeps it credible.

**Result — polished prompt**

Compute Maximum and Minimum numeric values from this column. Ignore blanks and non-numeric cells. Output two lines for max/min plus one exclusions line. No other metrics.

---

#### Scenario 3 — Return Top Values by Category Without Creating False Comparability

**Situation**

You need the top value per category for a leadership view, but categories have different sample sizes and missing coverage.

If you present it as cleanly comparable, leadership will draw the wrong conclusion.

If you prompt AI weakly, it usually:
- outputs a tidy table with implied comparability
- hides missing categories
- invents a winner narrative

This is why your prompt fails:
- no rules for missing categories
- no expectation to surface coverage gaps
- no tone control

Most people ask for "highest per category" and forget to require a coverage note.

To get a usable result, your prompt must define:
- Context - category maxima for a leadership scan
- Objective - compute highest value per category without overclaiming
- Requirements - two-column table; preserve categories; flag missing coverage
- Expectations - table plus a one-line coverage caveat

**Expert prompt**

Create a two-column table (Category, Highest Value) with the maximum numeric value per category using only provided data. Preserve category names exactly. If any category has missing/blank values, still include it and mark Highest Value as [Insufficient data]. After the table, add one line noting whether coverage gaps exist.

**AI response (example)**

**Category Maximums**
| Category | Highest Value |
|----------|----------------|
| A | 860 |
| B | 1,210 |
| C | 940 |
Coverage note: values reflect provided rows only; categories with gaps should be treated as incomplete.

This is where you can see decision safety - the coverage note prevents clean table, wrong conclusion.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is coverage honesty: category tables mislead when missing data is hidden.
- Objective targets per-category maxima only
- Requirements preserve names and define missing coverage handling
- Expectations add a caveat so leadership doesn't over-read the table

- **Weak vs Strong Prompt**

Weak prompt:
Show the highest value by category

Strong prompt:
Create a two-column table (Category, Highest Value) with the maximum numeric value per category using only provided data. Preserve category names exactly. If any category has missing/blank values, still include it and mark Highest Value as [Insufficient data]. After the table, add one line noting whether coverage gaps exist.

- **C.O.R.E. Breakdown**

C - Context
Category maxima for leadership scan

O - Objective
Compute highest value per category without overclaiming

R - Requirements
Two-column table; preserve category names; explicit missing coverage rules

E - Expectations
Table + one-line coverage caveat

**Pro tip**

A clean table can still be dishonest. If coverage gaps aren't forced into the output, they disappear - and you inherit the conclusion.

**Takeaway**

If categories aren't comparable, don't let formatting imply they are.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a decision-safe max-per-category prompt.

**Challenge — options (10)**

- [✓ correct] Require a two-column Category/Highest Value table
- [✓ correct] Use only provided data
- [✓ correct] Preserve category names exactly
- [✓ correct] Define how to handle missing/blank category values
- [✓ correct] Require a one-line coverage caveat after the table
- [✗ incorrect] Rank categories by performance
- [✗ incorrect] Add interpretations about why categories differ
- [✗ incorrect] Drop categories with missing values
- [✗ incorrect] Normalize values across categories automatically
- [✗ incorrect] Recommend next steps based on the winners

**Result — coaching note**

Category maxima are dangerous when coverage gaps are hidden. Force missing-data handling plus a coverage note to keep leadership from over-reading the table.

**Result — assembled prompt example**

Make a Category/Highest Value table using only provided rows, preserve names, mark missing coverage as [Insufficient data], and add a one-line coverage note.

**Result — feedback when correct**

You now control comparability risk - that coverage line is what keeps the table decision-safe.

**Result — polished prompt**

Build a two-column table (Category, Highest Value) with maxima per category from provided data only. Preserve category names; handle missing coverage explicitly; add a one-line coverage caveat.

---

### Lesson 3 — Analyze Data Without Making Things Up

#### Scenario 1 — Turn Monthly Numbers Into Observations You Can Defend

**Situation**

You're asked to summarize monthly performance quickly. The audience wants signal, but you can't afford invented causes.

If you get this wrong, you will repeat a claim in a meeting that the sheet can't support.

If you prompt AI weakly, it usually:
- restates the dataset
- invents explanations
- blurs facts and implications

This is why your prompt fails:
- no boundaries on what counts as evidence
- no structure for trend vs. anomaly
- no expectation for concise, defensible output

Most people ask for insights and get storytelling.

To get a usable result, your prompt must define:
- Context - monthly KPI values requiring a fast summary
- Objective - extract trend, one anomaly, and one stability signal
- Requirements - 3-5 bullets; facts only; no invented causes
- Expectations - paste-ready observations for a leadership update

**Expert prompt**

From these monthly values, write 3-5 paste-ready bullets with: (1) the overall trend you can see, (2) one notable dip/spike, and (3) one stability signal if present. Use only the provided numbers as evidence. Do not invent causes, recommendations, or predictions.

**AI response (example)**

**Observations (numbers only)**
- Overall trend is upward across the later months compared to early months.
- Notable anomaly: February is the lowest point relative to surrounding months.
- April is the highest observed value in the period.
- Month-to-month movement is moderate aside from the February dip.

Notice how the bullets are defensible: the prompt banned why and forced observable signal.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is evidence boundaries: you forced observation, not explanation.
- Objective targets trend + anomaly + stability
- Requirements lock format and ban causes/predictions
- Expectations keep it paste-ready for leadership

- **Weak vs Strong Prompt**

Weak prompt:
Give me insights from these numbers

Strong prompt:
From these monthly values, write 3-5 paste-ready bullets with: (1) the overall trend you can see, (2) one notable dip/spike, and (3) one stability signal if present. Use only the provided numbers as evidence. Do not invent causes, recommendations, or predictions.

- **C.O.R.E. Breakdown**

C - Context
Monthly KPI values needing fast summary

O - Objective
Extract trend, anomaly, and stability signal

R - Requirements
3-5 bullets; evidence-only; no invented causes/predictions

E - Expectations
Paste-ready observations for leadership update

**Pro tip**

If you don't explicitly ban causes, AI will add them because it sounds helpful. In data work, helpful is how misinformation sneaks in.

**Takeaway**

Insights without evidence boundaries are just stories.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a defensible observations prompt.

**Challenge — options (10)**

- [✓ correct] Require a fixed bullet count (3-5)
- [✓ correct] Require trend + one anomaly + one stability signal
- [✓ correct] Use only provided numbers as evidence
- [✓ correct] Forbid invented causes/predictions
- [✓ correct] Expect paste-ready wording
- [✗ incorrect] Explain why February dipped
- [✗ incorrect] Recommend next actions
- [✗ incorrect] Rewrite all numbers as a paragraph
- [✗ incorrect] Add confidence ratings for each insight
- [✗ incorrect] Make the tone persuasive and urgent

**Result — coaching note**

The strongest analysis prompt is often a constraint prompt. Force what counts as evidence and ban invented explanations.

**Result — assembled prompt example**

Write 3-5 evidence-only observation bullets covering trend, one anomaly, and one stability signal. No causes, no predictions.

**Result — feedback when correct**

You now control evidence boundaries - that's how you produce insights you can defend.

**Result — polished prompt**

Produce 3-5 paste-ready observation bullets from these monthly values covering the overall trend, one notable dip/spike, and one stability signal (if present). Use numbers only; no invented causes, recommendations, or predictions.

---

#### Scenario 2 — Compare Two Periods With Clear Wins/Losses (No Cause Guessing)

**Situation**

You need to compare two periods for a weekly review. The team wants wins and regressions, but leadership hates speculation.

If you invent a narrative, you will spend the meeting defending a guess instead of deciding.

If you prompt AI weakly, it usually:
- averages away meaningful changes
- adds implied causes
- overstates improvement

This is why your prompt fails:
- no structure for improved/declined/stable
- no constraints on claims
- no expectation to cite what changed

Most people ask for a comparison and forget to require what-changed language.

To get a usable result, your prompt must define:
- Context - two-period performance review
- Objective - list improved/declined/stable signals
- Requirements - 3-5 bullets; evidence-only; no causes
- Expectations - paste-ready comparison for a review agenda

**Expert prompt**

Compare Period 1 vs Period 2 and return 3-5 paste-ready bullets grouped as Improved, Declined, Stable. Use only the provided numbers. Do not invent causes. Keep wording specific to what changed.

**AI response (example)**

**Period Comparison (evidence-only)**
- Improved: Sales are higher in Period 2 than Period 1 in the provided values.
- Declined: Ticket volume is lower in Period 2 than Period 1.
- Stable: Engagement shows minimal change across the two periods.

This is where you can see control: the prompt forces change-language instead of story-language.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is comparison scaffolding: you forced Improved/Declined/Stable and banned causes.
- Objective targets change detection
- Requirements enforce evidence-only grouped output
- Expectations make it agenda-ready

- **Weak vs Strong Prompt**

Weak prompt:
Compare these two periods

Strong prompt:
Compare Period 1 vs Period 2 and return 3-5 paste-ready bullets grouped as Improved, Declined, Stable. Use only the provided numbers. Do not invent causes. Keep wording specific to what changed.

- **C.O.R.E. Breakdown**

C - Context
Two-period performance review

O - Objective
Identify improved/declined/stable signals

R - Requirements
3-5 grouped bullets; evidence-only; no causes

E - Expectations
Paste-ready comparison for review agenda

**Pro tip**

If you don't force what-changed language, AI will default to why-it-changed language. That's the moment it stops being analysis and starts being fiction.

**Takeaway**

Good comparisons are structured; great comparisons are claim-disciplined.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a clean, evidence-only period comparison prompt.

**Challenge — options (10)**

- [✓ correct] Require Improved/Declined/Stable grouping
- [✓ correct] Use only provided numbers
- [✓ correct] Forbid invented causes
- [✓ correct] Keep output to 3-5 bullets
- [✓ correct] Expect paste-ready phrasing for an agenda
- [✗ incorrect] Predict next period performance
- [✗ incorrect] Explain root causes for the declines
- [✗ incorrect] Add recommendations automatically
- [✗ incorrect] Rewrite the numbers as a narrative
- [✗ incorrect] Include emotional tone to motivate the team

**Result — coaching note**

Comparisons get risky when prompts allow causes. Force grouped change signals and keep language anchored to what the numbers show.

**Result — assembled prompt example**

Compare Period 1 vs Period 2 with 3-5 grouped bullets: Improved/Declined/Stable. Evidence-only; no causes; paste-ready.

**Result — feedback when correct**

You now control comparison clarity - the grouping is what makes it decision-useful without speculation.

**Result — polished prompt**

Produce 3-5 paste-ready bullets comparing Period 1 vs Period 2 grouped as Improved, Declined, Stable. Use only provided numbers; no invented causes; focus on what changed.

---

#### Scenario 3 — Summarize KPIs With Controlled Tone (No Shaming, No Spin)

**Situation**

You're writing a KPI summary that will be shared cross-team. Tone matters: too harsh creates defensiveness, too soft hides risk.

If the tone is wrong, trust erodes and the numbers become political.

If you prompt AI weakly, it usually:
- spins weaknesses as positives
- sounds judgmental
- invents reasons for performance

This is why your prompt fails:
- no tone constraints
- no rule for facts-first structure
- no expectation to separate strengths vs risks

Most people ask for a summary and forget tone control.

To get a usable result, your prompt must define:
- Context - cross-team KPI snapshot
- Objective - state strengths and risks neutrally
- Requirements - 3-5 bullets; controlled tone; no invented causes
- Expectations - forward-safe summary that is honest without blame

**Expert prompt**

Write a cross-team KPI snapshot in 3-5 bullets. Include one strength, one risk/weakness, and one notable value. Keep tone controlled and professional (no blame, no spin). Use only the provided KPI values; do not invent causes or recommendations.

**AI response (example)**

**KPI Snapshot (controlled tone)**
- Strength: Customer satisfaction is the highest KPI at 92%.
- Risk: Ticket resolution time is the lowest KPI at 38%.
- Notable: Engagement sits mid-range at 67%.

Notice how the summary is honest without being emotional - tone control is part of Requirements.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is tone constraints plus scope: you forced honest structure without speculation.
- Objective targets strength + risk + notable
- Requirements lock bullet count, tone, and evidence-only language
- Expectations keep it forward-safe across teams

- **Weak vs Strong Prompt**

Weak prompt:
Summarise these KPIs

Strong prompt:
Write a cross-team KPI snapshot in 3-5 bullets. Include one strength, one risk/weakness, and one notable value. Keep tone controlled and professional (no blame, no spin). Use only the provided KPI values; do not invent causes or recommendations.

- **C.O.R.E. Breakdown**

C - Context
Cross-team KPI snapshot where tone matters

O - Objective
Communicate strengths and risks neutrally

R - Requirements
3-5 bullets; controlled tone; evidence-only; no invented causes

E - Expectations
Forward-safe honesty without blame

**Pro tip**

If you don't specify tone, AI will choose one for you. In cross-team reporting, tone is part of data accuracy because it changes how people act.

**Takeaway**

Control the tone or the data becomes politics.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a controlled-tone, evidence-only KPI snapshot prompt.

**Challenge — options (10)**

- [✓ correct] Require 3-5 bullets
- [✓ correct] Require one strength, one risk, and one notable value
- [✓ correct] Specify controlled professional tone (no blame/spin)
- [✓ correct] Use only provided KPI values
- [✓ correct] Forbid invented causes or recommendations
- [✗ incorrect] Use motivational language to inspire the team
- [✗ incorrect] Explain why resolution time is low
- [✗ incorrect] Add predictions for next quarter
- [✗ incorrect] Turn it into a long narrative summary
- [✗ incorrect] Make it persuasive and urgent

**Result — coaching note**

Tone is a requirement, not a nice-to-have. Define structure (strength/risk/notable), keep bullets tight, and ban invented causes to avoid politicized reporting.

**Result — assembled prompt example**

Write a 3-5 bullet KPI snapshot with one strength, one risk, one notable value. Controlled professional tone; use provided values only; no causes or recommendations.

**Result — feedback when correct**

You now control cross-team tone and truth - that's how you communicate risk without creating defensiveness.

**Result — polished prompt**

Create a 3-5 bullet cross-team KPI snapshot including one strength, one risk, and one notable value. Keep tone controlled and professional. Use only provided KPI values; no invented causes or recommendations.

---

### Lesson 4 — Make Charts and Narratives Decision-Safe

#### Scenario 1 — Choose a Chart Type Based on the Decision, Not Preference

**Situation**

You need a chart recommendation for a slide. The wrong chart will make the audience see the wrong pattern.

If the chart choice is wrong, you get challenged in the meeting and lose time defending the slide.

If you prompt AI weakly, it usually:
- recommends a generic chart
- ignores what decision the chart supports
- gives reasons that sound right but aren't aligned to the goal

This is why your prompt fails:
- no decision context
- no constraint on output shape
- no expectation for trade-offs

Most people ask best chart type without stating what the chart is meant to prove.

To get a usable result, your prompt must define:
- Context - chart for a slide with a specific decision goal
- Objective - pick the chart that best reveals the intended signal
- Requirements - recommend one chart, one sentence rationale, and one caveat
- Expectations - slide-ready guidance without design fluff

**Expert prompt**

Recommend one chart type to show the trend in these monthly values for a leadership slide. In one sentence, explain why it best supports a trend-reading decision. Add one short caveat about what the chart will not show well. Do not add design advice or extra chart options.

**AI response (example)**

Use a line chart: it makes month-to-month direction and inflection points easiest to read at a glance for trend decisions. Caveat: it won't show category composition or drivers without additional series.

Notice how the answer is decision-aligned, not preference-aligned - the prompt required a caveat and banned fluff.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is decision framing: chart advice is only useful when it's tied to what someone must decide.
- Objective targets trend reading
- Requirements force one option, one rationale, one caveat
- Expectations keep it slide-ready and non-fluffy

- **Weak vs Strong Prompt**

Weak prompt:
What chart should I use?

Strong prompt:
Recommend one chart type to show the trend in these monthly values for a leadership slide. In one sentence, explain why it best supports a trend-reading decision. Add one short caveat about what the chart will not show well. Do not add design advice or extra chart options.

- **C.O.R.E. Breakdown**

C - Context
Chart recommendation for leadership slide

O - Objective
Choose chart that best supports trend-reading decision

R - Requirements
One chart; one-sentence rationale; one caveat; no extra options

E - Expectations
Slide-ready guidance without fluff

**Pro tip**

If you don't force a caveat, you get fake certainty. Great chart recommendations include what the chart hides.

**Takeaway**

A chart choice without a caveat is a confidence bug.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a decision-aligned chart recommendation prompt.

**Challenge — options (10)**

- [✓ correct] Provide decision context (trend-reading for leadership)
- [✓ correct] Require exactly one chart recommendation
- [✓ correct] Require a one-sentence rationale
- [✓ correct] Require a short caveat
- [✓ correct] Ban design advice and extra options
- [✗ incorrect] Suggest three alternative charts to choose from
- [✗ incorrect] Add colors and styling recommendations
- [✗ incorrect] Explain the history of line charts
- [✗ incorrect] Predict the next month based on the trend
- [✗ incorrect] Add recommendations for improving the numbers

**Result — coaching note**

Chart prompts feel generic unless you anchor them to the decision and force a caveat. One option, one rationale, one limitation keeps it credible.

**Result — assembled prompt example**

Recommend one chart type for a leadership trend slide with one-sentence rationale and one caveat. No design advice, no extra options.

**Result — feedback when correct**

You now control chart advice quality - the caveat is what makes it credible in real meetings.

**Result — polished prompt**

Choose one chart type to show the trend in these monthly values for a leadership slide. Give one-sentence rationale tied to the decision and one short caveat. No design tips, no extra chart options.

---

#### Scenario 2 — Produce Chart-Ready Labels and Series Without Reformatting Mistakes

**Situation**

You need to paste labels and values into a chart quickly, but the input list mixes labels, values, and stray punctuation.

If you paste this wrong, your chart is wrong - and the slide is wrong.

If you prompt AI weakly, it usually:
- reorders values
- "cleans" labels by changing names
- mixes labels and values in one blob

This is why your prompt fails:
- no rule to preserve order
- no rule to keep labels exact
- no expectation for two separate lists

Most people ask for chart prep and forget to ban reordering.

To get a usable result, your prompt must define:
- Context - messy list needing chart-ready extraction
- Objective - extract labels and values in matching order
- Requirements - preserve original order and exact labels
- Expectations - two lists you can paste into a chart without fixing

**Expert prompt**

Extract chart-ready inputs from this list as two blocks: Labels and Values. Preserve the original row order and preserve label text exactly. Do not add commentary, do not reorder, and do not change numbers.

**AI response (example)**

**Labels**
- North
- South
- East
- West

**Values**
- 128,400
- 113,900
- 142,300
- 121,700

Notice how order preservation is the real control point - it prevents a clean-looking but incorrect chart.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is alignment: charts break when labels and series get out of sync.
- Objective targets extraction, not cleanup
- Requirements preserve order and exact labels
- Expectations deliver paste-ready blocks

- **Weak vs Strong Prompt**

Weak prompt:
Make this chart-ready

Strong prompt:
Extract chart-ready inputs from this list as two blocks: Labels and Values. Preserve the original row order and preserve label text exactly. Do not add commentary, do not reorder, and do not change numbers.

- **C.O.R.E. Breakdown**

C - Context
Messy list needing chart inputs

O - Objective
Extract labels and values in matching order

R - Requirements
Preserve order; preserve exact label text; no number changes

E - Expectations
Two paste-ready blocks: Labels and Values

**Pro tip**

Most people ask for clean chart data and accidentally invite reordering. In charts, order is truth.

**Takeaway**

If labels and values aren't aligned, the chart is misinformation.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a reliable chart-prep extraction prompt.

**Challenge — options (10)**

- [✓ correct] Output separate Labels and Values blocks
- [✓ correct] Preserve original row order
- [✓ correct] Preserve label text exactly
- [✓ correct] Do not change numbers
- [✓ correct] Ban commentary and extra suggestions
- [✗ incorrect] Alphabetize labels for readability
- [✗ incorrect] Standardize labels to shorter names
- [✗ incorrect] Add a suggested chart type
- [✗ incorrect] Round values aggressively to simplify
- [✗ incorrect] Reorder values from highest to lowest

**Result — coaching note**

Chart prep is mostly about alignment discipline. Separate blocks, preserve order, preserve labels, and ban reformatting that changes meaning.

**Result — assembled prompt example**

Extract Labels and Values blocks preserving original order and exact label text. No number changes, no commentary.

**Result — feedback when correct**

You now control chart accuracy - alignment rules are what prevent silent chart errors.

**Result — polished prompt**

Create two paste-ready blocks: Labels and Values. Preserve original row order and exact label text; do not change numbers; no commentary.

---

#### Scenario 3 — Write a Chart Caption That Signals Uncertainty Without Undermining Confidence

**Situation**

You need a short caption above a chart. The trend is real, but there's a caveat and you need to signal it without weakening the message.

If you get this wrong, the slide either overclaims or gets ignored.

If you prompt AI weakly, it usually:
- writes generic trend language
- adds causes
- ignores uncertainty

This is why your prompt fails:
- no constraint on length
- no rule for what we know vs. what we don't
- no tone control

Most people ask for a caption and forget to require an uncertainty clause.

To get a usable result, your prompt must define:
- Context - caption above a decision chart
- Objective - state the visible pattern and one uncertainty caveat
- Requirements - 1-2 sentences; numbers-only; no causes
- Expectations - slide-ready caption that is confident and honest

**Expert prompt**

Write a 1-2 sentence caption for this chart. State the visible trend based on provided values only, and add one short caveat about what the chart does not confirm. Do not invent causes or recommendations.

**AI response (example)**

The values trend upward overall, ending at the highest point in the period. Caveat: the chart shows pattern, not cause or completeness of underlying drivers.

This is where you can see expert framing: a caption that is confident and honest at the same time.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is confident honesty: you required trend + caveat without inviting causes.
- Objective targets pattern + limitation
- Requirements lock 1-2 sentences and evidence-only language
- Expectations keep it slide-ready and credible

- **Weak vs Strong Prompt**

Weak prompt:
Write a caption for this chart

Strong prompt:
Write a 1-2 sentence caption for this chart. State the visible trend based on provided values only, and add one short caveat about what the chart does not confirm. Do not invent causes or recommendations.

- **C.O.R.E. Breakdown**

C - Context
Caption above a decision chart

O - Objective
State pattern and one uncertainty caveat

R - Requirements
1-2 sentences; evidence-only; no causes/recommendations

E - Expectations
Slide-ready caption that is confident and honest

**Pro tip**

Captions fail when they overclaim. One controlled caveat is what prevents your slide from becoming a debate.

**Takeaway**

A good caption sells clarity; a great caption protects trust.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a slide-ready, decision-safe chart caption prompt.

**Challenge — options (10)**

- [✓ correct] Limit caption to 1-2 sentences
- [✓ correct] Require trend statement based on provided values only
- [✓ correct] Require one short caveat/limitation clause
- [✓ correct] Forbid invented causes or recommendations
- [✓ correct] Expect slide-ready wording
- [✗ incorrect] Explain why the trend happened
- [✗ incorrect] Add motivational language
- [✗ incorrect] Include multiple caveats and disclaimers
- [✗ incorrect] Add design tips for the chart
- [✗ incorrect] Predict future values

**Result — coaching note**

Decision-safe captions require two things: a visible pattern and a controlled limitation. Keep it short, evidence-only, and ban causes.

**Result — assembled prompt example**

Write a 1-2 sentence caption stating the visible trend and one caveat. Evidence-only; no causes; slide-ready.

**Result — feedback when correct**

You now write chart captions that hold up under scrutiny - that caveat is what keeps them credible.

**Result — polished prompt**

Create a 1-2 sentence chart caption stating the visible trend from provided values and one short caveat about what is not confirmed. No invented causes or recommendations; slide-ready.

---

### Lesson 5 — Create Reusable Data Prompts (Automation-Ready)

#### Scenario 1 — Design a Reusable Data Cleaning Prompt With Guardrails

**Situation**

You receive messy datasets regularly and you need consistent cleaning without rewriting instructions each time.

If the cleaning rules drift, your downstream analysis becomes inconsistent and nobody can reproduce the numbers.

If you prompt AI weakly, it usually:
- fixes content instead of formatting
- changes meaning while cleaning
- hides what it changed

This is why your prompt fails:
- no explicit do-not-change list
- no output expectations
- no audit note

Most people ask for cleaning steps and forget to ban meaning changes.

To get a usable result, your prompt must define:
- Context - reusable cleaning workflow for recurring datasets
- Objective - normalize formatting while preserving meaning
- Requirements - explicit cleaning rules plus strict non-edit boundaries
- Expectations - reusable prompt with placeholders and an audit reminder

**Expert prompt**

Create a reusable prompt that cleans spreadsheet data with these rules: trim extra spaces in all text fields, normalize capitalization to Title Case (preserve acronyms), and replace missing/blank values with [Missing]. Do not change meaning or rewrite content. Include a [Data] placeholder and end with: "List any changes beyond formatting as [Needs review]."

**AI response (example)**

**Reusable Prompt - Safe Data Cleaning**

Clean [Data] using these rules:
1) Trim leading/trailing and duplicate internal spaces in text fields.
2) Normalize capitalization to Title Case (preserve acronyms).
3) Replace blank/null cells with [Missing].

Guardrails:
- Do not rewrite content or infer missing information.
- Do not change numeric values.

After output, include: "List any changes beyond formatting as [Needs review]."

Notice how guardrails are explicit - that's what keeps cleaning from becoming data editing.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is guardrails: reusable cleaning prompts fail when they allow meaning edits.
- Objective targets normalization, not rewriting
- Requirements specify rules + do-not-change boundaries
- Expectations include a placeholder and audit reminder for repeatable use

- **Weak vs Strong Prompt**

Weak prompt:
Make this data cleaner

Strong prompt:
Create a reusable prompt that cleans spreadsheet data with these rules: trim extra spaces in all text fields, normalize capitalization to Title Case (preserve acronyms), and replace missing/blank values with [Missing]. Do not change meaning or rewrite content. Include a [Data] placeholder and end with: "List any changes beyond formatting as [Needs review]."

- **C.O.R.E. Breakdown**

C - Context
Reusable cleaning workflow for recurring datasets

O - Objective
Normalize formatting while preserving meaning

R - Requirements
Explicit cleaning steps + strict do-not-change boundaries

E - Expectations
Reusable prompt with [Data] placeholder and audit reminder

**Pro tip**

Most people think cleaning is harmless. It isn't. If you don't ban meaning edits, AI will improve your dataset and you won't notice until something breaks.

**Takeaway**

Cleaning without guardrails is silent data corruption.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a safe, reusable data-cleaning prompt.

**Challenge — options (10)**

- [✓ correct] Define exact cleaning rules (spaces/case/missing)
- [✓ correct] Forbid meaning changes or rewriting
- [✓ correct] Preserve numeric values explicitly
- [✓ correct] Include a reusable [Data] placeholder
- [✓ correct] Require an audit reminder or review flag
- [✗ incorrect] Infer missing values when possible
- [✗ incorrect] Standardize categories by renaming them
- [✗ incorrect] Fix typos by rewriting text freely
- [✗ incorrect] Add new columns for enrichment
- [✗ incorrect] Recommend tools to clean the data

**Result — coaching note**

Reusable cleaning prompts must protect meaning. Specify the rules, ban content edits, and add an audit reminder so changes don't become invisible.

**Result — assembled prompt example**

Create a reusable cleaning prompt for [Data] with trim spaces, Title Case (preserve acronyms), [Missing] for blanks, no meaning changes, and an audit reminder.

**Result — feedback when correct**

You now control repeatable data hygiene without corruption - that is operator-level reuse.

**Result — polished prompt**

Write a reusable prompt to clean [Data] by trimming spaces, normalizing capitalization to Title Case (preserve acronyms), and replacing blanks with [Missing]. Do not rewrite content or change numeric values. Include an audit reminder for anything beyond formatting.

---

#### Scenario 2 — Create a Reusable Formatting Prompt That Doesn't Change Values

**Situation**

You need consistent formatting across spreadsheets (dates, currency, separators) without altering underlying values.

If formatting changes values, your report becomes untrustworthy.

If you prompt AI weakly, it usually:
- rounds numbers without permission
- changes date meaning across regions
- fixes currency inconsistently

This is why your prompt fails:
- no rule for preserving decimals
- no rule for date interpretation
- no expectation to flag ambiguous formats

Most people ask for standard formatting and forget that dates can be ambiguous.

To get a usable result, your prompt must define:
- Context - reusable formatting for reports
- Objective - standardize display without changing values
- Requirements - date format, number separators, currency rules, and ambiguity flags
- Expectations - reusable prompt with placeholders and review notes

**Expert prompt**

Create a reusable prompt that standardizes formatting for [Data] without changing values: numbers with thousand separators (preserve decimals), dates to YYYY-MM-DD (flag ambiguous dates like 03/04/2026 as [Ambiguous]), and currency with a single specified symbol. Do not round, do not infer missing dates, and include a [Currency] placeholder.

**AI response (example)**

**Reusable Prompt - Safe Formatting**

Format [Data] using these rules (display only; values unchanged):
- Numbers: add thousand separators; preserve existing decimal precision.
- Dates: convert to YYYY-MM-DD; if a date is ambiguous (e.g., 03/04/2026), flag as [Ambiguous] instead of guessing.
- Currency: use [Currency] consistently; do not convert amounts.

Do not round values. Do not infer missing dates.

This is where you can see control: ambiguity is flagged instead of being guessed into your report.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is value integrity: formatting prompts fail when they allow rounding or date guessing.
- Objective targets display standardization only
- Requirements preserve decimals and force ambiguity flags
- Expectations make it reusable with placeholders

- **Weak vs Strong Prompt**

Weak prompt:
Format this spreadsheet

Strong prompt:
Create a reusable prompt that standardizes formatting for [Data] without changing values: numbers with thousand separators (preserve decimals), dates to YYYY-MM-DD (flag ambiguous dates like 03/04/2026 as [Ambiguous]), and currency with a single specified symbol. Do not round, do not infer missing dates, and include a [Currency] placeholder.

- **C.O.R.E. Breakdown**

C - Context
Reusable formatting for reports

O - Objective
Standardize display without changing values

R - Requirements
Preserve decimals; YYYY-MM-DD dates; flag ambiguity; consistent currency symbol

E - Expectations
Reusable prompt with placeholders and review notes

**Pro tip**

Formatting errors are credibility errors. If you don't ban rounding and date guessing, AI will help your report into being wrong.

**Takeaway**

Never trade readability for integrity.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a safe, reusable formatting prompt.

**Challenge — options (10)**

- [✓ correct] Preserve numeric values and decimals (no rounding)
- [✓ correct] Standardize dates to YYYY-MM-DD
- [✓ correct] Flag ambiguous dates instead of guessing
- [✓ correct] Use a consistent currency symbol via placeholder
- [✓ correct] State display-only; values unchanged
- [✗ incorrect] Convert currencies to a common base
- [✗ incorrect] Round numbers to make them cleaner
- [✗ incorrect] Assume US date format for all ambiguous dates
- [✗ incorrect] Infer missing dates from context
- [✗ incorrect] Add commentary explaining the data

**Result — coaching note**

Safe formatting requires explicit integrity rules: no rounding, no date guessing, and ambiguity flags. Otherwise you silently change meaning.

**Result — assembled prompt example**

Create a reusable formatting prompt for [Data] that standardizes number separators, dates (YYYY-MM-DD with ambiguity flags), and currency symbol without changing values.

**Result — feedback when correct**

You now control report integrity - the ambiguity flag is what keeps formatting from becoming fiction.

**Result — polished prompt**

Write a reusable prompt to format [Data] for reports: thousand separators with preserved decimals, dates to YYYY-MM-DD with [Ambiguous] flags, and a consistent [Currency] symbol. Display-only; no rounding; no guessing.

---

#### Scenario 3 — Define an Automation Workflow That Surfaces Risk Instead of Hiding It

**Situation**

You want a reusable workflow to sort, filter, and summarize data, but automation can hide critical rows if rules are vague.

If the workflow hides exclusions, you ship a clean summary that omits the risk.

If you prompt AI weakly, it usually:
- filters aggressively
- adds summary rows without stating what was excluded
- turns rules into assumptions

This is why your prompt fails:
- no explicit exclusion logic
- no requirement to report what was filtered out
- no expectation for an audit summary

Most people automate for neatness, not for truth.

To get a usable result, your prompt must define:
- Context - reusable spreadsheet automation workflow
- Objective - sort/filter/summarize while preserving auditability
- Requirements - explicit filter rules and exclusion reporting
- Expectations - workflow steps plus an audit summary output

**Expert prompt**

Create a reusable automation workflow for [Data] with three steps: (1) sort by a specified column, (2) filter out rows matching an explicit exclusion rule, and (3) add a summary row with totals or averages for specified columns. Require an Audit Summary after the workflow describing what was excluded (count + rule) and what was summarized. Do not change any non-summary values.

**AI response (example)**

**Reusable Workflow - Sort / Filter / Summarize (auditable)**
1) Sort [Data] by [Sort Column] in [Sort Order].
2) Filter out rows where [Exclusion Rule].
3) Add one Summary row calculating [Totals/Averages] for [Columns] only.

Audit Summary (required):
- Excluded rows: [count] (rule: [Exclusion Rule])
- Summarized columns: [Columns] (method: [Totals/Averages])

Pay attention to the audit summary - that's what keeps automation from hiding what it removed.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is auditability: automation is dangerous when exclusions disappear.
- Objective includes sort/filter/summarize plus visibility
- Requirements force explicit rules and ban non-summary edits
- Expectations add an audit summary so you can trust the output

- **Weak vs Strong Prompt**

Weak prompt:
Make an automation workflow for this sheet

Strong prompt:
Create a reusable automation workflow for [Data] with three steps: (1) sort by a specified column, (2) filter out rows matching an explicit exclusion rule, and (3) add a summary row with totals or averages for specified columns. Require an Audit Summary after the workflow describing what was excluded (count + rule) and what was summarized. Do not change any non-summary values.

- **C.O.R.E. Breakdown**

C - Context
Reusable spreadsheet automation workflow

O - Objective
Sort/filter/summarize while preserving auditability

R - Requirements
Explicit rules; no non-summary edits; required exclusion reporting

E - Expectations
Workflow steps + Audit Summary output

**Pro tip**

This is where people get burned: they automate the filter and stop seeing what disappeared. If you don't require an audit summary, you don't have control.

**Takeaway**

Automation without auditability is just faster mistakes.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make this a safe, auditable spreadsheet automation workflow prompt.

**Challenge — options (10)**

- [✓ correct] Define explicit sort inputs via placeholders
- [✓ correct] Define explicit filter/exclusion rule
- [✓ correct] Restrict edits to summary row only
- [✓ correct] Require an Audit Summary describing exclusions and summaries
- [✓ correct] Make it reusable with [Data] and rule placeholders
- [✗ incorrect] Filter out anything that looks unusual automatically
- [✗ incorrect] Remove rows but do not mention them
- [✗ incorrect] Add new columns to enrich the data
- [✗ incorrect] Rewrite values to make them consistent
- [✗ incorrect] Recommend tools instead of providing steps

**Result — coaching note**

Reusable automation prompts should include an audit summary by default. Otherwise you get clean output with invisible exclusions.

**Result — assembled prompt example**

Create a reusable sort/filter/summarize workflow with placeholders and a required Audit Summary (excluded count + rule, summarized columns + method). No edits beyond a summary row.

**Result — feedback when correct**

You now control automation risk - audit summaries are what separate operators from spreadsheet gamblers.

**Result — polished prompt**

Write a reusable workflow to sort by a specified column, filter by an explicit rule, and add a summary row for specified columns. Require an Audit Summary reporting excluded rows (count + rule) and summarized columns/method. Do not change non-summary values.

---

## Track 4 — Presentations
*Source: `lib/data/tracks/track4_presentations.dart`*

### Lesson 1 — Build a Decision-Ready Deck Narrative

#### Scenario 1 — Turn a Vague Request Into a Decision Deck Outline

**Situation**

A VP asks for “a quick deck” on the new onboarding process.

The real need is not slides - it is a decision: approve rollout timing and who owns what.

If this deck is fuzzy, leadership will walk away aligned on the wrong thing.

If you prompt AI weakly, it usually:
- produces generic slide titles
- hides the decision and the trade-offs
- invents “benefits” you cannot defend

This is why your prompt fails:
- no clear Objective (what decision this deck supports)
- weak Requirements (what must remain visible vs. what must be excluded)
- no Expectations for decision-ready structure

Most people ask for “a 5-slide outline” and get a tidy deck that cannot drive a decision.

To get a usable result, your prompt must define:
- Context - leadership needs a rollout decision deck for onboarding
- Objective - make the decision, trade-offs, and ownership explicit
- Requirements - slide-by-slide purpose, no invented claims, clear asks
- Expectations - paste-ready outline with tight titles and bullets

**Expert prompt**

Create a 6-slide decision deck outline for leadership to approve the new onboarding rollout. Make the decision explicit. For each slide, provide a title and 3–5 bullets. Include: current problem signal, proposed approach, trade-offs/risks, rollout plan with owners, what leadership must decide today, and next steps. Do not invent metrics or benefits; if something is unknown, label it [TBD]. Keep it concise and executive-ready.

**AI response (example)**

**Slide 1 — Why this change (signal, not story)**
- Current onboarding creates inconsistent ramp and duplicated “how we work” explanations
- New hires rely on tribal knowledge; managers are improvising
- Decision today: approve a single onboarding path + ownership model

**Slide 2 — Proposed onboarding approach (what changes)**
- One standard flow: Day 1 setup → Week 1 outcomes → Week 2 ramp targets
- Centralized source of truth (single checklist + template pack)
- Owner model: People Ops owns content; Function leads own role-specific inserts

**Slide 3 — What this enables (without over-claiming)**
- Clearer expectations for new hires and managers
- Fewer ad‑hoc onboarding “rebuilds” across teams
- Faster alignment on first‑week execution priorities

**Slide 4 — Risks and trade-offs (keep visible)**
- Risk: role-specific needs get lost if the standard template is too rigid
- Trade-off: speed of rollout vs. time to collect feedback from each function
- Mitigation: define what is “standard” vs. “role-specific” up front

**Slide 5 — Rollout plan (who does what by when)**
- Phase 1: draft standard checklist + template pack [Owner: People Ops] [TBD date]
- Phase 2: function lead review + role-specific inserts [Owners: Function leads] [TBD date]
- Phase 3: pilot with 1–2 teams, capture fixes, then scale [Owner: Program lead] [TBD date]

**Slide 6 — Leadership decision + next steps**
- Decide: approve standard flow scope (what is mandatory vs. optional)
- Decide: confirm ownership model and reviewer list
- Next: schedule pilot kickoff and commit review checkpoint cadence

What matters here is the “decision slide”: the prompt forced the deck to drive an outcome, not just look organized.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is decision framing. You didn’t ask for “slides” - you defined the decision, the trade-offs that must stay visible, and the ownership model.
- The Objective prevents generic outlines
- Requirements ban invented metrics and force slide purposes
- Expectations make the output paste-ready for leadership

- **Weak vs Strong Prompt**

Weak prompt:
Create a 5-slide outline about the new onboarding process

Strong prompt:
Create a 6-slide decision deck outline for leadership to approve the new onboarding rollout. Make the decision explicit. For each slide, provide a title and 3–5 bullets. Include: current problem signal, proposed approach, trade-offs/risks, rollout plan with owners, what leadership must decide today, and next steps. Do not invent metrics or benefits; if something is unknown, label it [TBD]. Keep it concise and executive-ready.

- **C.O.R.E. Breakdown**

C - Context
Leadership needs a rollout decision deck for onboarding

O - Objective
Make the decision, trade-offs, and ownership explicit

R - Requirements
Slide-by-slide purpose; include risks/trade-offs; no invented claims; label unknowns [TBD]

E - Expectations
Executive-ready outline with tight titles and bullets

**Pro tip**

If you don’t force a “Decision + Trade-offs” slide, the model will quietly turn your deck into marketing copy. Decision decks are not allowed to be inspirational.

**Takeaway**

If the deck doesn’t state the decision and the trade-offs, it is not a decision deck.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that force a decision-ready deck outline (not a generic slide list).

**Challenge — options (10)**

- [✓ correct] Name the decision leadership must make today
- [✓ correct] Require a risks/trade-offs slide so uncertainty stays visible
- [✓ correct] Require owners for rollout steps (not just a timeline)
- [✓ correct] Ban invented metrics/benefits; label unknowns as [TBD]
- [✓ correct] Specify slide-by-slide output shape (title + 3–5 bullets)
- [✗ incorrect] Ask for “a persuasive deck that sells the change”
- [✗ incorrect] Tell AI to add impressive statistics to build confidence
- [✗ incorrect] Let AI choose the number of slides and structure
- [✗ incorrect] Remove risks to keep the deck “positive”
- [✗ incorrect] Write a full script for every slide with long paragraphs

**Result — coaching note**

Decision decks fail when the prompt optimizes for “nice slides” instead of decision signal. Lock the decision, force trade-offs to stay visible, and prevent invented certainty.

**Result — assembled prompt example**

Create a 6-slide decision deck outline for leadership approval. Include a decision slide, a risks/trade-offs slide, rollout steps with owners, and ban invented metrics (use [TBD] for unknowns).

**Result — feedback when correct**

You now control what leadership sees first: decision signal, not slide polish.

**Result — polished prompt**

Draft a 6-slide executive decision deck outline to approve the onboarding rollout. Make the decision explicit; include risks/trade-offs; include rollout steps with owners; no invented claims; mark unknowns as [TBD]. For each slide: title + 3–5 bullets.

---

#### Scenario 2 — Convert Messy Inputs Into a Single Cohesive Story

**Situation**

You have messy inputs: meeting notes, Slack snippets, and a half-written doc about onboarding.

You need a deck outline that stays truthful while making the narrative coherent.

If you smooth this too much, you will erase the disagreement and ship false certainty.

If you prompt AI weakly, it usually:
- “blends” conflicting statements into one confident claim
- drops the caveats to make the story clean
- creates a timeline that looks plausible but isn’t sourced

This is why your prompt fails:
- no definition of what counts as confirmed vs. disputed
- no Requirements for preserving open questions
- no Expectations for an evidence-safe outline

Most people ask for “a clean deck from these notes” and accidentally publish fiction.

To get a usable result, your prompt must define:
- Context - fragmented notes with conflicts and gaps
- Objective - produce a coherent outline without inventing consensus
- Requirements - tag disputed items; keep open questions explicit
- Expectations - a deck outline plus an “Unknowns” section

**Expert prompt**

Build a 7-slide outline from these messy inputs. For each slide: title + 3–5 bullets. Keep narrative coherent, but do not invent agreement: if inputs conflict, include both views and tag as [Disputed]. If something is missing, tag as [Unknown]. Include one slide called “Open Questions” and one slide called “Decision Needed”. Keep it executive-neutral and safe to forward.

**AI response (example)**

**Slide 1 — What we’re solving (signal)**
- Onboarding quality varies by team; ramp expectations are inconsistent
- Current materials are scattered across docs, Slack, and tribal knowledge
- Goal: standardize the baseline without blocking role-specific needs

**Slide 2 — What’s working today (confirmed)**
- Existing checklist covers setup and access reliably
- Teams that run a week-1 plan report fewer “where do I start?” questions [Unknown: quantified impact]

**Slide 3 — What’s failing (inputs conflict)**
- View A: the problem is missing structure; new hires need a clear week-by-week plan [Disputed]
- View B: the problem is manager follow-through; templates won’t help without accountability [Disputed]
- Shared point: ownership is unclear across functions

**Slide 4 — Proposed baseline (what would be standardized)**
- Standard Day 1–Week 2 flow + source-of-truth checklist
- Role-specific inserts owned by function leads
- Review checkpoint to prevent drift

**Slide 5 — Open Questions (do not hide these)**
- What is mandatory across all roles vs. optional?
- Who approves role-specific inserts and on what cadence?
- What does “ramp success” mean for each function? [Unknown]

**Slide 6 — Decision Needed (make the ask explicit)**
- Decide scope: baseline flow boundaries
- Decide ownership: People Ops vs. function leads vs. program lead
- Decide timeline: pilot-first vs. broad rollout

**Slide 7 — Next Steps (safe, not invented)**
- Consolidate current assets into one draft baseline
- Schedule a 45-minute scope decision review
- Identify 1–2 pilot teams and define success criteria [Unknown]

The difference is truth control: the prompt forced [Disputed]/[Unknown] tags so coherence didn’t turn into invented certainty.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This is the control point: narrative coherence without consensus fabrication. You required explicit tagging for conflict and missing data.
- Requirements stop “helpful smoothing”
- Expectations add an Open Questions slide so risk stays visible
- Objective produces a usable outline without pretending the inputs agree

- **Weak vs Strong Prompt**

Weak prompt:
Turn these notes into a clean deck outline

Strong prompt:
Build a 7-slide outline from these messy inputs. For each slide: title + 3–5 bullets. Keep narrative coherent, but do not invent agreement: if inputs conflict, include both views and tag as [Disputed]. If something is missing, tag as [Unknown]. Include one slide called “Open Questions” and one slide called “Decision Needed”. Keep it executive-neutral and safe to forward.

- **C.O.R.E. Breakdown**

C - Context
Fragmented notes with conflicts and gaps

O - Objective
Coherent deck outline without inventing consensus

R - Requirements
Tag conflicts as [Disputed]; tag missing as [Unknown]; include Open Questions + Decision Needed

E - Expectations
Executive-neutral, forward-safe outline

**Pro tip**

If you don’t explicitly ban “merge the viewpoints,” the model will produce a single confident story. That’s how decks create fake alignment.

**Takeaway**

Coherence is not permission to invent certainty.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that prevent “clean deck” drift when inputs conflict.

**Challenge — options (10)**

- [✓ correct] Require tagging conflicting claims as [Disputed]
- [✓ correct] Require tagging missing info as [Unknown]
- [✓ correct] Require an “Open Questions” slide to keep gaps visible
- [✓ correct] Require a “Decision Needed” slide so leadership knows the ask
- [✓ correct] Set a fixed slide output shape (title + 3–5 bullets)
- [✗ incorrect] Ask AI to “make it sound confident and aligned”
- [✗ incorrect] Remove caveats so the story feels clean
- [✗ incorrect] Let AI infer the timeline and owners from context
- [✗ incorrect] Replace disputes with a single recommended view
- [✗ incorrect] Add inspirational framing and slogans

**Result — coaching note**

Messy input is where most users lose control. Your job is to preserve truth boundaries and make disagreement visible in a decision-ready way.

**Result — assembled prompt example**

Build a 7-slide outline. Tag conflicts as [Disputed], missing as [Unknown], and include “Open Questions” + “Decision Needed”. Keep it executive-neutral.

**Result — feedback when correct**

You now control truth boundaries under pressure - that’s what keeps decks credible.

**Result — polished prompt**

Create a 7-slide executive outline from fragmented notes. Keep coherence without inventing agreement: tag conflicts [Disputed], missing info [Unknown]. Include “Open Questions” and “Decision Needed”. Title + 3–5 bullets per slide.

---

#### Scenario 3 — Write the Slide That Handles Politics Without Sounding Political

**Situation**

Two leaders disagree on how strict the onboarding standard should be.

You must present options without triggering defensiveness or accidentally taking sides.

If the tone is off, you will turn a solvable scope question into a turf fight.

If you prompt AI weakly, it usually:
- picks a side implicitly
- softens the trade-off until it’s meaningless
- uses “nice” language that hides the real decision

This is why your prompt fails:
- no Requirements for neutral tone while keeping stakes clear
- no explicit options structure
- no Expectations for decision-ready wording

Most people try to “make it diplomatic” and end up making it vague.

To get a usable result, your prompt must define:
- Context - stakeholder disagreement on standardization scope
- Objective - present options, trade-offs, and recommendation safely
- Requirements - neutral language, explicit trade-offs, no blame
- Expectations - one slide with options + recommended decision framing

**Expert prompt**

Draft one executive slide titled “Scope Options” with three options for onboarding standardization. For each option: 2–3 bullets describing what it includes and the trade-off. Then add a short “Recommendation” section with one recommended option and the reasoning in neutral language. Do not assign blame, do not use emotional language, and do not hide the trade-offs. Keep it paste-ready.

**AI response (example)**

**Scope Options**

**Option A — Standardize the baseline only**
- Includes: Day 1 setup + Week 1 outcomes + shared checklist
- Trade-off: faster rollout, but role-specific variance remains

**Option B — Baseline + role-specific inserts (controlled)**
- Includes: baseline flow + function-owned inserts reviewed on a set cadence
- Trade-off: more coordination, but prevents drift while respecting differences

**Option C — Full standardization across roles**
- Includes: one unified flow with minimal role variance
- Trade-off: strongest consistency, but higher risk of misfit and slower adoption

**Recommendation**
- Recommend Option B to balance consistency with function realities while keeping ownership explicit.

Pay attention to the control point: the prompt forced trade-offs into the slide so “neutral tone” didn’t become “non-committal.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The difference is structure under sensitivity: options + trade-offs + a neutral recommendation. You constrained tone without sacrificing decision clarity.
- Requirements ban blame and vague softness
- Expectations force a paste-ready slide that still commits
- Objective keeps the outcome decision-focused, not debate-focused

- **Weak vs Strong Prompt**

Weak prompt:
Make a diplomatic slide about onboarding scope

Strong prompt:
Draft one executive slide titled “Scope Options” with three options for onboarding standardization. For each option: 2–3 bullets describing what it includes and the trade-off. Then add a short “Recommendation” section with one recommended option and the reasoning in neutral language. Do not assign blame, do not use emotional language, and do not hide the trade-offs. Keep it paste-ready.

- **C.O.R.E. Breakdown**

C - Context
Stakeholder disagreement on standardization scope

O - Objective
Present options and recommendation without triggering politics

R - Requirements
Neutral tone; explicit trade-offs; no blame; no hidden downsides

E - Expectations
One paste-ready slide: options + recommendation

**Pro tip**

“Neutral tone” is not “no recommendation.” If you don’t force a recommendation structure, the model will dodge the decision to avoid conflict.

**Takeaway**

Diplomacy without trade-offs is just vagueness.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that produce a politically safe slide without hiding the real decision.

**Challenge — options (10)**

- [✓ correct] Require multiple options with explicit trade-offs
- [✓ correct] Require a short recommendation section (one option + why)
- [✓ correct] Ban blame/emotional wording to keep tone controlled
- [✓ correct] Force a paste-ready slide structure (title + bullets)
- [✓ correct] Require trade-offs to stay visible (no “softening”)
- [✗ incorrect] Ask AI to “handle the politics creatively”
- [✗ incorrect] Avoid mentioning trade-offs to keep everyone happy
- [✗ incorrect] Use strong persuasive language to win the room
- [✗ incorrect] Only present one option so it’s “clear”
- [✗ incorrect] Add humor to reduce tension

**Result — coaching note**

In tone-sensitive rooms, structure is your safety system. Options + trade-offs + a neutral recommendation keeps the discussion productive.

**Result — assembled prompt example**

Create one slide with three scope options. For each: what it includes + trade-off. Add a neutral recommendation. No blame language; do not hide trade-offs.

**Result — feedback when correct**

You now control sensitive decision framing without getting pulled into the politics.

**Result — polished prompt**

Draft a single slide titled “Scope Options” with three options. For each: includes + trade-off. Add a short neutral “Recommendation” with one option and why. No blame, no emotional language, no hidden downsides.

---

### Lesson 2 — Summarize Complex Work for Executives (No Drift)

#### Scenario 1 — Turn a Status Update Into an Executive Snapshot Slide

**Situation**

You need a one-slide update for an exec staff meeting.

The goal is signal: what is on track, what is at risk, and what decision (if any) is needed.

If this slide is vague, executives will assume the optimistic interpretation.

If you prompt AI weakly, it usually:
- rewrites your update in nicer words
- hides risk behind “progress language”
- adds next steps that were never agreed

This is why your prompt fails:
- no separation of facts vs. risk vs. decisions
- no constraint against inventing actions
- no Expectations for a single-slide format

Most people ask for “a slide summary” and get a paragraph with bullets.

To get a usable result, your prompt must define:
- Context - exec staff update with limited attention
- Objective - compress to signal: status, risks, decisions
- Requirements - one slide; labeled sections; no invented actions
- Expectations - paste-ready slide text, not prose

**Expert prompt**

Convert this status update into a single executive slide with exactly these sections: Status (2 bullets), Risks (2 bullets), Decisions Needed (1 bullet), Next (1 bullet). Use only confirmed facts from the input. Do not invent actions or owners. Keep tone controlled and decision-ready.

**AI response (example)**

**Status**
- Core workstream is progressing to plan against the current milestone
- Key cross-functional handoffs are in motion; no confirmed blockers reported

**Risks**
- One dependency could affect sequencing if it slips again (confirm latest ETA) [TBD]
- Risk visibility is uneven across teams; signal may be delayed without a checkpoint

**Decisions Needed**
- Confirm whether we accept the current sequencing risk or re-plan to de-risk

**Next**
- Publish a single dependency checkpoint with owner + ETA, then re-confirm timeline

Look at how the labeled sections prevent drift: the prompt forced the model to separate facts, risks, and decisions instead of “making it sound good.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is signal separation. Executive slides fail when risk and decisions get blended into “status.”
- Requirements enforce labeled sections and bullet counts
- Objective forces decision signal, not rewrite
- Expectations produce paste-ready slide text (not prose)

- **Weak vs Strong Prompt**

Weak prompt:
Make this a slide summary for executives

Strong prompt:
Convert this status update into a single executive slide with exactly these sections: Status (2 bullets), Risks (2 bullets), Decisions Needed (1 bullet), Next (1 bullet). Use only confirmed facts from the input. Do not invent actions or owners. Keep tone controlled and decision-ready.

- **C.O.R.E. Breakdown**

C - Context
Exec staff update with limited attention

O - Objective
Compress to signal: status, risks, decisions

R - Requirements
One slide; fixed labeled sections; bullet counts; no invented actions/owners

E - Expectations
Paste-ready slide text, not prose

**Pro tip**

If you don’t force a “Decisions Needed” section, the model will hide the ask inside a “Next steps” bullet. That’s how exec updates become unreadable.

**Takeaway**

Executive slides must separate signal: status, risk, decision, next.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that turn a status blob into a decision-ready exec slide.

**Challenge — options (10)**

- [✓ correct] Require labeled sections (Status/Risks/Decisions/Next)
- [✓ correct] Fix bullet counts per section (forces compression)
- [✓ correct] Ban invented actions/owners (use input only)
- [✓ correct] Require a “Decisions Needed” section explicitly
- [✓ correct] Set expectation: paste-ready slide text, not prose
- [✗ incorrect] Ask for “a more positive tone”
- [✗ incorrect] Let AI add helpful next steps automatically
- [✗ incorrect] Allow the model to expand details for completeness
- [✗ incorrect] Ask for a narrative paragraph before the bullets
- [✗ incorrect] Remove risk language to keep the slide upbeat

**Result — coaching note**

Your job is not to “summarize nicely.” Your job is to produce decision signal under a bullet budget and prevent the model from inventing progress.

**Result — assembled prompt example**

Create one executive slide with labeled sections and fixed bullet counts. Use only confirmed facts. Include “Decisions Needed”. No invented actions or owners.

**Result — feedback when correct**

You now control executive signal compression instead of shipping a polished status blob.

**Result — polished prompt**

Rewrite this update into one executive slide with fixed sections and bullet counts: Status (2), Risks (2), Decisions Needed (1), Next (1). Input facts only; no invented actions/owners; paste-ready.

---

#### Scenario 2 — Reconcile Conflicting Signals Into a Credible Exec Narrative

**Situation**

Different teams report different “truths”: one says on-track, another flags a dependency risk, a third says scope shifted.

You must produce an executive narrative that stays credible under scrutiny.

If you over-smooth conflict, leadership will assume stability that doesn’t exist.

If you prompt AI weakly, it usually:
- collapses conflict into a single storyline
- replaces risk with generic phrasing
- invents a confident timeline to fill gaps

This is why your prompt fails:
- no rule for handling conflicting inputs
- no requirement to surface uncertainty explicitly
- no expectation for executive-safe wording

Most people try to “make it consistent” and accidentally remove the problem.

To get a usable result, your prompt must define:
- Context - multi-team status with conflicting signals
- Objective - reconcile without inventing agreement
- Requirements - preserve conflict; mark unknowns; keep decision signal
- Expectations - one-slide narrative plus open questions

**Expert prompt**

Create a single executive slide with two sections: “Current Signal” (4 bullets) and “Open Questions” (3 bullets). When inputs conflict, include both views and tag as [Disputed]. If information is missing, tag as [Unknown]. Do not invent dates or certainty. Keep tone controlled and decision-ready.

**AI response (example)**

**Current Signal**
- Workstream A reports on-track against current milestone [Disputed]
- Workstream B flags a dependency risk that could affect sequencing [Disputed]
- Scope boundaries may have shifted; impact is not yet quantified [Unknown]
- Net: timeline confidence is not decision-ready without a dependency checkpoint

**Open Questions**
- What is the latest dependency ETA and owner-confirmed mitigation path?
- Has scope changed, or is this a sequencing interpretation difference?
- What decision do we need this week: accept risk, re-sequence, or de-scope?

Notice how credibility stays intact: the prompt forced [Disputed]/[Unknown] tags so the slide doesn’t pretend the inputs agree.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is credibility under conflict: you preserved disagreement and forced open questions.
- Requirements stop timeline invention
- Objective keeps decision signal visible
- Expectations produce a slide that leadership can act on without false confidence

- **Weak vs Strong Prompt**

Weak prompt:
Make this update consistent for executives

Strong prompt:
Create a single executive slide with two sections: “Current Signal” (4 bullets) and “Open Questions” (3 bullets). When inputs conflict, include both views and tag as [Disputed]. If information is missing, tag as [Unknown]. Do not invent dates or certainty. Keep tone controlled and decision-ready.

- **C.O.R.E. Breakdown**

C - Context
Multi-team status with conflicting signals

O - Objective
Reconcile without inventing agreement

R - Requirements
Tag conflicts [Disputed]; tag missing [Unknown]; no invented dates or certainty

E - Expectations
One slide: Current Signal + Open Questions

**Pro tip**

If you ask for “a unified narrative,” AI will unify by deleting the disagreement. That’s not alignment - it’s information loss.

**Takeaway**

When reality conflicts, your slide must show the conflict, not hide it.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep an exec slide credible when signals conflict.

**Challenge — options (10)**

- [✓ correct] Require [Disputed] tagging for conflicting inputs
- [✓ correct] Require [Unknown] tagging for missing info
- [✓ correct] Ban invented dates/certainty
- [✓ correct] Force an “Open Questions” section (not just a summary)
- [✓ correct] Keep to a single-slide structure with fixed bullet counts
- [✗ incorrect] Ask AI to “make it sound reassuring”
- [✗ incorrect] Let the model infer the most likely timeline
- [✗ incorrect] Remove disagreements to avoid confusion
- [✗ incorrect] Replace unknowns with confident placeholders
- [✗ incorrect] Add extra background context paragraphs

**Result — coaching note**

Executive trust is fragile. Your prompt must prevent “helpful smoothing” and keep uncertainty visible in a controlled format.

**Result — assembled prompt example**

Create one exec slide with Current Signal + Open Questions. Tag conflicts [Disputed], missing info [Unknown]. Do not invent dates. Keep bullet counts fixed.

**Result — feedback when correct**

You now control executive credibility when inputs don’t match - that’s a real advantage.

**Result — polished prompt**

Write a single exec slide with “Current Signal” (4 bullets) + “Open Questions” (3 bullets). Preserve conflict with [Disputed], mark gaps [Unknown], and do not invent dates/certainty.

---

#### Scenario 3 — Write a Stakeholder-Safe “Bad News” Slide Without Panic

**Situation**

A risk is real and time-sensitive, but you must communicate it without creating panic or sounding evasive.

If you understate it, leadership will be surprised later and trust drops.

If you overstate it, you trigger escalation and noise.

If you prompt AI weakly, it usually:
- uses soft language that hides the risk
- adds mitigation claims that aren’t real yet
- sounds dramatic to “sound serious”

This is why your prompt fails:
- no boundaries on certainty
- no requirement for a clear ask
- no expectation for controlled tone

Most people either sugarcoat or catastrophize.

To get a usable result, your prompt must define:
- Context - time-sensitive risk communication
- Objective - state risk, impact range, and immediate ask
- Requirements - controlled tone, no invented mitigations, clear next step
- Expectations - one slide with risk + ask

**Expert prompt**

Draft one executive slide titled “Risk Update” with three sections: Risk (2 bullets), Impact (2 bullets with a range if uncertain), and Ask (1 bullet). Keep tone controlled and factual. Do not invent mitigations; if mitigation is in progress, label it clearly. Make the ask decision-ready.

**AI response (example)**

**Risk Update**

**Risk**
- A dependency is not meeting the expected stability threshold for the planned sequence
- Current mitigation path is being validated; outcome not yet confirmed

**Impact**
- If unresolved, sequencing may slip by 1–2 weeks depending on mitigation viability [range]
- Secondary impact: downstream teams may re-plan unless we confirm the checkpoint by [TBD]

**Ask**
- Confirm whether we hold the current timeline pending checkpoint, or re-sequence now to de-risk

This is where you can see tone control: the prompt forced ranges and banned invented mitigations, so the slide is serious without being dramatic.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is bounded certainty: factual risk + impact range + explicit ask.
- Requirements prevent “mitigation theater”
- Objective keeps the slide decision-ready
- Expectations enforce a single-slide structure with minimal room for drift

- **Weak vs Strong Prompt**

Weak prompt:
Make a slide about this risk for leadership

Strong prompt:
Draft one executive slide titled “Risk Update” with three sections: Risk (2 bullets), Impact (2 bullets with a range if uncertain), and Ask (1 bullet). Keep tone controlled and factual. Do not invent mitigations; if mitigation is in progress, label it clearly. Make the ask decision-ready.

- **C.O.R.E. Breakdown**

C - Context
Time-sensitive risk communication to leadership

O - Objective
State risk, impact range, and immediate ask

R - Requirements
Controlled tone; ranges if uncertain; no invented mitigations

E - Expectations
One slide: Risk + Impact + Ask

**Pro tip**

If you don’t force an impact range, the model will pick a single number to sound confident. That’s exactly how risk communication becomes wrong.

**Takeaway**

Bad news slides need bounded certainty: risk, impact range, and a clear ask.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that communicate risk with control (not panic, not sugarcoating).

**Challenge — options (10)**

- [✓ correct] Require an explicit Ask (decision-ready next step)
- [✓ correct] Require an Impact section with ranges when uncertain
- [✓ correct] Ban invented mitigations/claims
- [✓ correct] Require controlled, factual tone
- [✓ correct] Force a single-slide structure with fixed bullet counts
- [✗ incorrect] Ask AI to “make it urgent and dramatic”
- [✗ incorrect] Remove the impact details to avoid concern
- [✗ incorrect] Let the model add reassuring mitigation steps
- [✗ incorrect] Add a long narrative explanation of background
- [✗ incorrect] State certainty even when the input is unclear

**Result — coaching note**

Risk slides are judged on credibility. Use ranges, ban invention, and always end with a decision-ready ask so leadership can respond.

**Result — assembled prompt example**

Write one slide: Risk (2), Impact (2 with range), Ask (1). Controlled tone. No invented mitigations. Make the ask decision-ready.

**Result — feedback when correct**

You now control risk communication without losing credibility - that’s an operator skill.

**Result — polished prompt**

Draft one exec slide “Risk Update” with Risk (2 bullets), Impact (2 bullets with range if uncertain), Ask (1 bullet). Factual tone; no invented mitigations; decision-ready.

---

### Lesson 3 — Design Slides That Preserve Truth Under Pressure

#### Scenario 1 — Create a One-Slide “Decision Frame” for a Complex Choice

**Situation**

You need leadership to choose between two rollout approaches.

The trap: one option is cleaner, the other is safer, and the room will optimize for “simple” unless you frame the trade-off.

If you frame this poorly, the decision will be made on aesthetics, not risk.

If you prompt AI weakly, it usually:
- lists options without trade-offs
- over-recommends the “clean” choice
- uses vague language like “consider” and “may”

This is why your prompt fails:
- no explicit decision criteria
- no structure for trade-offs
- no expectation for one-slide clarity

Most people show two columns and call it a decision.

To get a usable result, your prompt must define:
- Context - a high-stakes choice with competing objectives
- Objective - force the trade-off into the open
- Requirements - criteria, risks, and recommendation framing
- Expectations - one slide that makes the decision obvious

**Expert prompt**

Draft one slide titled “Decision Frame” comparing Option A vs Option B. Include: Decision criteria (3 bullets), Option A (3 bullets), Option B (3 bullets), and Recommendation (1 bullet). Keep language precise and neutral. Do not hide risks. No invented data.

**AI response (example)**

**Decision Frame**

**Decision criteria**
- Delivery speed vs. stability risk
- Ownership clarity (who is accountable when issues arise)
- Cost of rework if assumptions are wrong

**Option A**
- Faster rollout with fewer dependencies
- Higher risk of inconsistency across roles
- Rework likely if role-specific needs emerge late

**Option B**
- Slower rollout with explicit review checkpoints
- Lower risk of misfit by validating role-specific inserts early
- Clearer accountability for maintaining the standard over time

**Recommendation**
- Recommend Option B if the cost of rework and credibility loss is higher than the cost of a slower rollout.

Notice how criteria comes first: the prompt prevents the deck from selling an option before the room agrees on what “good” means.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is decision criteria placement. Criteria first forces shared evaluation before persuasion.
- Requirements prevent “options without consequences”
- Objective keeps the trade-off explicit
- Expectations enforce one-slide clarity and no invented data

- **Weak vs Strong Prompt**

Weak prompt:
Make a slide comparing two options

Strong prompt:
Draft one slide titled “Decision Frame” comparing Option A vs Option B. Include: Decision criteria (3 bullets), Option A (3 bullets), Option B (3 bullets), and Recommendation (1 bullet). Keep language precise and neutral. Do not hide risks. No invented data.

- **C.O.R.E. Breakdown**

C - Context
High-stakes choice with competing objectives

O - Objective
Force trade-offs into the open before the decision

R - Requirements
Criteria first; fixed bullets; neutral language; risks visible; no invented data

E - Expectations
One slide that makes evaluation and recommendation clear

**Pro tip**

If you don’t put criteria first, you’ll accidentally let the deck “recommend” by tone. Criteria is how you control decision bias.

**Takeaway**

Criteria-first slides prevent decisions made on vibes.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that produce a criteria-first decision frame slide.

**Challenge — options (10)**

- [✓ correct] Require decision criteria section before options
- [✓ correct] Fix bullets per section to force compression
- [✓ correct] Require risks/trade-offs to stay explicit
- [✓ correct] Ban invented data/metrics
- [✓ correct] Require a short recommendation tied to criteria
- [✗ incorrect] Ask for a persuasive pitch to sell Option A
- [✗ incorrect] Hide risks to keep the slide optimistic
- [✗ incorrect] Let AI pick criteria automatically without constraints
- [✗ incorrect] Write long paragraphs for nuance
- [✗ incorrect] Use vague language (“consider”, “maybe”) throughout

**Result — coaching note**

Decision slides fail when they persuade before aligning criteria. Force criteria-first structure and keep trade-offs explicit.

**Result — assembled prompt example**

Draft one slide with criteria first, then options, then a criteria-linked recommendation. Fixed bullet counts. No invented data.

**Result — feedback when correct**

You now control decision framing - the room can’t “slide” into a choice by tone alone.

**Result — polished prompt**

Create a one-slide “Decision Frame”: criteria (3 bullets) → Option A (3) → Option B (3) → recommendation (1). Neutral language; risks explicit; no invented data.

---

#### Scenario 2 — Extract the “One Chart That Matters” Without Misleading

**Situation**

You have multiple metrics, but the deck can only include one chart.

The risk is cherry-picking or hiding counter-signal that leadership cares about.

If you choose the wrong chart framing, you’ll drive the wrong decision.

If you prompt AI weakly, it usually:
- picks the most impressive metric
- ignores counter-metrics
- adds interpretation that isn’t supported

This is why your prompt fails:
- no rule for selecting the decision-driving metric
- no requirement to state what the chart does not prove
- no expectation for an honest caption

Most people optimize for “looks good.”

To get a usable result, your prompt must define:
- Context - multiple metrics, single-chart constraint
- Objective - pick the decision-driving chart and honest framing
- Requirements - chart type, caption, limits of inference
- Expectations - a slide-ready chart spec + caption

**Expert prompt**

Given these metrics, propose ONE chart for an executive deck. Output: chart type, x/y axes, one-sentence chart caption, and one “Limits” bullet stating what the chart does NOT prove. Do not invent numbers or interpretation.

**AI response (example)**

**Recommended chart**: Line chart (trend over time)
- X-axis: Weeks (last 8–12)
- Y-axis: Completion rate (or primary success metric)

**Caption**: “Primary success metric trend over time to assess whether rollout is stabilizing.”

**Limits**: This chart does not prove causality or isolate which workstream caused the change.

This is where you can see control: the prompt forced a “Limits” line, which prevents the model from turning the chart into a story it can’t support.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is honest framing: chart spec + caption + limits. Without limits, AI will add causal language by default.
- Requirements ban invented numbers and force a “Limits” guardrail
- Objective selects decision-driving signal, not the prettiest metric
- Expectations produce slide-ready output quickly

- **Weak vs Strong Prompt**

Weak prompt:
Pick the best chart for this deck

Strong prompt:
Given these metrics, propose ONE chart for an executive deck. Output: chart type, x/y axes, one-sentence chart caption, and one “Limits” bullet stating what the chart does NOT prove. Do not invent numbers or interpretation.

- **C.O.R.E. Breakdown**

C - Context
Multiple metrics, single-chart constraint

O - Objective
Select decision-driving chart and honest framing

R - Requirements
Chart spec; caption; “Limits” bullet; no invented numbers/interpretation

E - Expectations
Slide-ready chart recommendation

**Pro tip**

If you don’t require a “Limits” line, you’re asking the model to do persuasion. In executive decks, persuasion without boundaries becomes misinformation.

**Takeaway**

Every chart needs a caption and a limit.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep a one-chart slide honest and decision-ready.

**Challenge — options (10)**

- [✓ correct] Require chart type + axes
- [✓ correct] Require a one-sentence caption
- [✓ correct] Require a “Limits” bullet (what it does NOT prove)
- [✓ correct] Ban invented numbers and causal interpretation
- [✓ correct] Frame selection around the decision-driving metric
- [✗ incorrect] Ask for the most impressive chart to increase buy-in
- [✗ incorrect] Let AI add insights and recommendations freely
- [✗ incorrect] Include multiple charts “for completeness”
- [✗ incorrect] Write a long narrative explanation under the chart
- [✗ incorrect] Use speculative language about causes

**Result — coaching note**

Slide credibility is built by boundaries: what the chart shows, what it doesn’t, and what decision it supports.

**Result — assembled prompt example**

Propose one exec-chart: chart type + axes, caption, and a “Limits” bullet. No invented numbers or causal claims.

**Result — feedback when correct**

You now control chart honesty - most decks skip limits and accidentally mislead.

**Result — polished prompt**

Recommend ONE chart for an exec slide: type, axes, one-sentence caption, and one “Limits” bullet. Tie to decision signal. No invented numbers or causality.

---

#### Scenario 3 — Write a Slide That Says “No” Without Starting a Fight

**Situation**

A stakeholder wants the deck to promise more than the team can deliver.

You need a slide that sets a boundary: what is in scope, what is out, and what conditions would change it.

If you handle this poorly, you create escalation or you accidentally commit.

If you prompt AI weakly, it usually:
- sounds defensive or passive-aggressive
- uses vague “we’ll try” language
- hides conditions and creates misalignment

This is why your prompt fails:
- no structure for boundary + conditions
- no tone constraints
- no expectation for stakeholder-safe wording

Most people avoid “no” and end up promising by omission.

To get a usable result, your prompt must define:
- Context - scope pressure and expectation management
- Objective - set boundaries without blame
- Requirements - in/out/conditions format, controlled tone
- Expectations - one slide that prevents accidental commitment

**Expert prompt**

Draft one executive slide titled “Scope Boundary” with three sections: In Scope (3 bullets), Out of Scope (3 bullets), and Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame language. Make it safe to share with stakeholders.

**AI response (example)**

**Scope Boundary**

**In Scope**
- Standard onboarding baseline flow + source-of-truth checklist
- Role-specific inserts owned by functions and reviewed on a defined cadence
- Pilot + iteration cycle to validate fit before scaling

**Out of Scope**
- Building bespoke onboarding per team without shared baseline
- Committing to performance outcomes not yet measured
- Expanding scope beyond onboarding (e.g., full enablement redesign)

**Conditions to Revisit**
- If pilot feedback shows baseline misfit for a function, adjust standard vs. insert boundaries
- If leadership changes success criteria, re-plan scope and timeline explicitly

The difference is boundary structure: the prompt forced “in/out/conditions,” so you can say no without sounding personal.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is boundary framing: in-scope vs out-of-scope vs conditions to revisit.
- Requirements prevent vague “we’ll try” commitments
- Expectations make it stakeholder-safe and paste-ready
- Objective sets scope without blame or defensiveness

- **Weak vs Strong Prompt**

Weak prompt:
Make a slide that says we can’t do everything

Strong prompt:
Draft one executive slide titled “Scope Boundary” with three sections: In Scope (3 bullets), Out of Scope (3 bullets), and Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame language. Make it safe to share with stakeholders.

- **C.O.R.E. Breakdown**

C - Context
Scope pressure and expectation management

O - Objective
Set boundaries without blame or accidental commitments

R - Requirements
In/Out/Conditions structure; fixed bullets; controlled tone

E - Expectations
One paste-ready slide safe to share

**Pro tip**

If you don’t include “Conditions to Revisit,” stakeholders hear “no forever” and escalate. Conditions turn boundaries into a controlled conversation.

**Takeaway**

Boundaries need conditions, or they turn into conflict.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that create a stakeholder-safe boundary slide.

**Challenge — options (10)**

- [✓ correct] Require In Scope / Out of Scope / Conditions to Revisit sections
- [✓ correct] Fix bullet counts so it stays crisp
- [✓ correct] Require neutral tone and ban blame language
- [✓ correct] Make it safe to share externally (stakeholder-safe)
- [✓ correct] Explicitly prevent accidental commitments
- [✗ incorrect] Use aggressive language to “hold the line”
- [✗ incorrect] Leave out-of-scope vague to avoid confrontation
- [✗ incorrect] Promise outcomes to reduce pushback
- [✗ incorrect] Turn the slide into a long narrative explanation
- [✗ incorrect] Assign blame to another team for constraints

**Result — coaching note**

Scope slides are negotiation tools. Structure prevents tone drift and makes boundaries feel professional instead of personal.

**Result — assembled prompt example**

Draft one slide “Scope Boundary” with In Scope, Out of Scope, Conditions to Revisit. Controlled tone. Fixed bullets. Stakeholder-safe.

**Result — feedback when correct**

You now control scope pressure without accidental commitments - most teams lose leverage here.

**Result — polished prompt**

Write one exec slide “Scope Boundary”: In Scope (3), Out of Scope (3), Conditions to Revisit (2). Neutral tone; no blame; stakeholder-safe; prevents accidental commitments.

---

### Lesson 4 — Create High-Stakes Stakeholder Alignment Slides

#### Scenario 1 — Align on Definitions Before the Debate Starts

**Situation**

Stakeholders are debating “success,” but they mean different things.

You need one slide that defines terms so the meeting stops arguing semantics.

If you skip this, the room will “agree” and still walk away misaligned.

If you prompt AI weakly, it usually:
- writes generic definitions
- avoids the hard edge cases
- adds aspirational language instead of operational definitions

This is why your prompt fails:
- no requirement for operational definitions
- no examples / edge cases
- no expectation for meeting-ready clarity

Most people start with the solution slide. That’s how meetings fail.

To get a usable result, your prompt must define:
- Context - alignment meeting with semantic disagreement
- Objective - define terms and edge cases
- Requirements - operational definitions + examples
- Expectations - one slide that prevents semantic drift

**Expert prompt**

Draft one slide titled “Definitions (so we debate the same thing)” with 4 terms. For each term: definition (1 bullet) and an example/edge case (1 bullet). Keep it operational and concrete. No aspirational language.

**AI response (example)**

**Definitions (so we debate the same thing)**

**“Standard onboarding”**
- Definition: the mandatory baseline steps every new hire completes in the first 2 weeks
- Edge case: function-specific training is not “standard” unless it is mandatory for all roles

**“Role-specific insert”**
- Definition: content owned by a function that extends the baseline for that role
- Edge case: inserts must not change baseline sequencing without review

**“Pilot success”**
- Definition: teams can run the baseline + inserts without ad-hoc rework or missing steps
- Edge case: “people liked it” is not success unless it changes execution consistency

**“Ownership”**
- Definition: who updates content, who approves changes, and who is accountable for drift
- Edge case: shared ownership without approval rules becomes no ownership

Notice how edge cases do the work: the prompt forced concrete boundaries so the slide prevents fake alignment.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is edge cases. Definitions without edge cases are still ambiguous.
- Requirements force operational language and examples
- Objective prevents semantic debate from consuming the meeting
- Expectations produce a single slide that anchors the room

- **Weak vs Strong Prompt**

Weak prompt:
Create a slide defining key terms

Strong prompt:
Draft one slide titled “Definitions (so we debate the same thing)” with 4 terms. For each term: definition (1 bullet) and an example/edge case (1 bullet). Keep it operational and concrete. No aspirational language.

- **C.O.R.E. Breakdown**

C - Context
Alignment meeting with semantic disagreement

O - Objective
Define terms so debate is productive

R - Requirements
Operational definitions + edge cases; concrete bullets; no aspiration

E - Expectations
One meeting-ready slide that anchors discussion

**Pro tip**

Most people avoid edge cases because they feel “negative.” Edge cases are how you stop ambiguity from hiding inside a friendly definition.

**Takeaway**

If you can’t define it with an edge case, it isn’t defined.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a definitions slide actually prevent misalignment.

**Challenge — options (10)**

- [✓ correct] Require operational (not aspirational) definitions
- [✓ correct] Require an edge case/example for each term
- [✓ correct] Fix the structure (terms + 2 bullets each)
- [✓ correct] Tie definitions to decision boundaries (what counts / doesn’t)
- [✓ correct] Keep it one slide and meeting-ready
- [✗ incorrect] Use inspirational language to increase buy-in
- [✗ incorrect] Avoid edge cases to keep it “positive”
- [✗ incorrect] Write long paragraphs for nuance
- [✗ incorrect] Let AI choose which terms matter without input
- [✗ incorrect] Make the slide visually flashy with design advice

**Result — coaching note**

Alignment slides are pre-meeting control. Operational definitions + edge cases prevent semantic drift and stop “agreement that isn’t agreement.”

**Result — assembled prompt example**

Draft a one-slide definitions page with 4 terms. For each: operational definition + edge case. Concrete bullets. No aspirational language.

**Result — feedback when correct**

You now control alignment before debate starts - that’s how you run higher-stakes rooms.

**Result — polished prompt**

Write one slide “Definitions (so we debate the same thing)”: 4 terms, each with 1 operational definition bullet + 1 edge case bullet. Concrete, meeting-ready, no aspiration.

---

#### Scenario 2 — Synthesize Divergent Feedback Into a Safe Alignment Slide

**Situation**

You collected stakeholder feedback that conflicts: different priorities, different risk tolerance, different timelines.

You need a slide that surfaces the true tension without inflaming it.

If you hide tension, leadership will make a decision that breaks later.

If you emphasize it poorly, you create unnecessary conflict.

If you prompt AI weakly, it usually:
- averages feedback into generic statements
- drops minority-but-critical concerns
- invents consensus to sound helpful

This is why your prompt fails:
- no rule for preserving competing objectives
- no structure for neutral synthesis
- no expectation for decision implications

Most people turn feedback into “themes” and lose the decision signal.

To get a usable result, your prompt must define:
- Context - conflicting stakeholder feedback
- Objective - present tensions and implications neutrally
- Requirements - competing objectives preserved, no invented agreement
- Expectations - one slide: tensions + what decision they affect

**Expert prompt**

Draft one executive slide titled “Stakeholder Tensions” with two sections: “Tensions” (4 bullets) and “Decision Implications” (3 bullets). Preserve competing objectives explicitly. If stakeholders disagree, do not merge it - write both sides neutrally. No invented consensus.

**AI response (example)**

**Stakeholder Tensions**

**Tensions**
- Speed vs. consistency: some prefer rapid rollout; others prioritize reducing variance first
- Central control vs. function autonomy: one owner model vs. distributed inserts
- Flexibility vs. auditability: adaptable onboarding vs. a baseline that is enforceable
- Scope boundaries: onboarding-only vs. broader enablement expectations

**Decision Implications**
- The ownership model determines whether drift is prevented or normalized
- Scope boundaries determine whether rollout is realistic under current bandwidth
- Timeline choice determines whether we accept rework risk or pay coordination cost up front

The difference is tension preservation: the prompt forced both sides to remain visible, so the slide drives the real decision instead of “themes.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is competing objectives. You didn’t theme-wash the feedback - you preserved the tensions and tied them to decisions.
- Requirements ban consensus fabrication
- Objective keeps decision implications explicit
- Expectations produce a slide leadership can act on

- **Weak vs Strong Prompt**

Weak prompt:
Summarize stakeholder feedback into themes

Strong prompt:
Draft one executive slide titled “Stakeholder Tensions” with two sections: “Tensions” (4 bullets) and “Decision Implications” (3 bullets). Preserve competing objectives explicitly. If stakeholders disagree, do not merge it - write both sides neutrally. No invented consensus.

- **C.O.R.E. Breakdown**

C - Context
Conflicting stakeholder feedback

O - Objective
Surface tensions and decision implications neutrally

R - Requirements
Preserve competing objectives; no invented consensus; fixed structure

E - Expectations
One slide: tensions + decision implications

**Pro tip**

If you ask for “themes,” you’ll get agreement-shaped output. Tensions are where decisions live - preserve them or you lose the point.

**Takeaway**

Stakeholder feedback is only useful when it stays in tension form.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep stakeholder feedback decision-useful.

**Challenge — options (10)**

- [✓ correct] Require competing objectives to be stated explicitly
- [✓ correct] Ban merging disagreements into one “consensus” view
- [✓ correct] Require a “Decision Implications” section
- [✓ correct] Fix bullet counts to keep it crisp
- [✓ correct] Keep tone neutral and executive-safe
- [✗ incorrect] Ask AI to choose the “best” stakeholder view
- [✗ incorrect] Remove tensions to avoid conflict
- [✗ incorrect] Write a long narrative summary of every comment
- [✗ incorrect] Add emotional language to “show empathy”
- [✗ incorrect] Invent a compromise solution without input

**Result — coaching note**

Synthesis is not averaging. Preserve tensions, then map them to decision implications. That’s how the slide becomes useful.

**Result — assembled prompt example**

Create one slide with “Tensions” + “Decision Implications”. Preserve competing objectives; no invented consensus; neutral tone.

**Result — feedback when correct**

You now control stakeholder synthesis without losing the decision signal.

**Result — polished prompt**

Draft an exec slide “Stakeholder Tensions”: Tensions (4 bullets) + Decision Implications (3 bullets). Preserve disagreements neutrally; no consensus invention.

---

#### Scenario 3 — Write a Slide That Forces a Decision Between Two Bad Options

**Situation**

Leadership must choose between two imperfect options: ship faster with higher risk, or slow down and absorb coordination cost.

There is no “safe” choice - only a controlled choice.

If your slide tries to make it feel safe, you remove the decision.

If you make it too blunt, you trigger defensiveness.

If you prompt AI weakly, it usually:
- hides the cost of each option
- recommends without stating assumptions
- uses vague language like “ideally”

This is why your prompt fails:
- no explicit cost framing
- no assumption boundary
- no expectation for decision forcing

Most people avoid naming costs. That’s why decisions get deferred.

To get a usable result, your prompt must define:
- Context - forced trade-off, no perfect option
- Objective - state costs and assumptions, force a choice
- Requirements - cost bullets, assumptions, recommendation
- Expectations - one slide that makes deferral hard

**Expert prompt**

Draft one executive slide titled “Forced Choice” with two columns: Option A and Option B. For each option: Cost (2 bullets) and Risk (2 bullets). Add “Assumptions” (2 bullets) and “Decision Needed Today” (1 bullet). Keep tone controlled and precise.

**AI response (example)**

**Forced Choice**

**Option A**
- Cost: faster rollout with less review time
- Cost: higher probability of rework after launch
- Risk: inconsistent onboarding across roles
- Risk: credibility loss if issues surface after commitment

**Option B**
- Cost: slower rollout with added coordination checkpoints
- Cost: higher up-front time investment from function leads
- Risk: timeline slip if coordination is not staffed
- Risk: stakeholder fatigue if ownership is unclear

**Assumptions**
- Function leads can review inserts within the agreed cadence
- We will not claim outcomes we cannot measure yet

**Decision Needed Today**
- Choose Option A vs Option B based on tolerance for rework vs coordination cost

What matters here is cost naming: the prompt forced both options to pay a price, which prevents “wishful compromise” from sneaking in.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is cost symmetry: both options pay a price, and assumptions are explicit.
- Requirements force Cost + Risk bullets per option
- Expectations add assumptions and a decision line
- Objective makes deferral difficult by making trade-offs unavoidable

- **Weak vs Strong Prompt**

Weak prompt:
Make a slide comparing two options for leadership

Strong prompt:
Draft one executive slide titled “Forced Choice” with two columns: Option A and Option B. For each option: Cost (2 bullets) and Risk (2 bullets). Add “Assumptions” (2 bullets) and “Decision Needed Today” (1 bullet). Keep tone controlled and precise.

- **C.O.R.E. Breakdown**

C - Context
No perfect option; leadership must pick a trade-off

O - Objective
Force costs and assumptions into the open

R - Requirements
Cost + risk bullets per option; assumptions; decision line; controlled tone

E - Expectations
One slide that makes the choice explicit and defensible

**Pro tip**

If you don’t name costs, the room will invent them later and blame the deck. Costs are not negativity - they are decision reality.

**Takeaway**

A decision slide must name what each option costs.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a forced-choice slide actually force a choice.

**Challenge — options (10)**

- [✓ correct] Require Cost + Risk bullets for each option
- [✓ correct] Require explicit Assumptions section
- [✓ correct] Require “Decision Needed Today” line
- [✓ correct] Use a two-column option structure
- [✓ correct] Keep tone controlled and precise (no “ideally”)
- [✗ incorrect] Make one option sound obviously superior
- [✗ incorrect] Hide costs to keep the slide positive
- [✗ incorrect] Add emotional language to increase urgency
- [✗ incorrect] Let AI invent assumptions to make it coherent
- [✗ incorrect] Write a long narrative to avoid being direct

**Result — coaching note**

Forced-choice slides are about honesty with structure. Costs + risks + assumptions + a decision line is how you control the room’s interpretation.

**Result — assembled prompt example**

Create a forced-choice slide: Option A vs B with Cost+Risk bullets, then Assumptions, then Decision Needed Today. Controlled tone.

**Result — feedback when correct**

You now control trade-off decisions instead of letting the room drift into deferral.

**Result — polished prompt**

Draft one exec slide “Forced Choice”: two columns (Option A/B) with Cost (2) + Risk (2) each; add Assumptions (2) and Decision Needed Today (1). Controlled, precise language.

---

### Lesson 5 — Ship a Credible Executive Deck Under Ambiguity

#### Scenario 1 — Create a “What We Know / What We Don’t” Slide

**Situation**

Leadership is asking for certainty before the data is ready.

Your job is to keep the deck credible: separate what is confirmed from what is unknown.

If you pretend certainty, you will be held to it later.

If you over-emphasize unknowns, you look unprepared.

If you prompt AI weakly, it usually:
- fills gaps with confident wording
- avoids unknowns to “sound strong”
- turns uncertainty into vague hedges

This is why your prompt fails:
- no structure for known vs unknown
- no requirement for what changes the unknowns
- no expectation for controlled tone

Most people hide uncertainty. That’s why decks break later.

To get a usable result, your prompt must define:
- Context - exec pressure for certainty
- Objective - preserve credibility with explicit boundaries
- Requirements - known/unknown/what-would-change structure
- Expectations - one slide that is safe and decision-ready

**Expert prompt**

Draft one executive slide titled “What We Know / What We Don’t” with three sections: Confirmed (4 bullets), Unknown (4 bullets), and What Would Change This (2 bullets). Keep tone controlled, factual, and decision-ready. Do not invent certainty.

**AI response (example)**

**What We Know / What We Don’t**

**Confirmed**
- Baseline onboarding can be standardized without blocking role-specific inserts
- Ownership is currently fragmented across docs and teams
- A pilot approach reduces rework risk compared to a broad rollout
- Leadership needs a scope + ownership decision to proceed

**Unknown**
- Which steps must be mandatory across all roles vs optional
- The review cadence function leads can sustain
- The dependency risk impact range without a checkpoint
- Success criteria for “ramp quality” by function

**What Would Change This**
- A dependency checkpoint with owner-confirmed ETA and mitigation path
- Pilot feedback tied to defined success criteria (not sentiment)

Notice how uncertainty becomes controllable: the prompt forced “what would change this,” which turns unknowns into an action path instead of hedging.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is uncertainty structure: Confirmed vs Unknown vs What Would Change This.
- Requirements prevent invented certainty and vague hedging
- Objective preserves credibility while staying decision-ready
- Expectations keep it to one slide leadership can absorb

- **Weak vs Strong Prompt**

Weak prompt:
Make a slide about what we know so far

Strong prompt:
Draft one executive slide titled “What We Know / What We Don’t” with three sections: Confirmed (4 bullets), Unknown (4 bullets), and What Would Change This (2 bullets). Keep tone controlled, factual, and decision-ready. Do not invent certainty.

- **C.O.R.E. Breakdown**

C - Context
Exec pressure for certainty before data is ready

O - Objective
Keep deck credible with explicit boundaries

R - Requirements
Confirmed/Unknown/What-would-change structure; fixed bullets; no invented certainty

E - Expectations
One controlled, decision-ready slide

**Pro tip**

“Unknown” without “what changes it” reads like weakness. The control move is turning uncertainty into a concrete path to certainty.

**Takeaway**

Unknowns must come with the path to resolve them.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep uncertainty credible and actionable on a slide.

**Challenge — options (10)**

- [✓ correct] Require Confirmed vs Unknown separation
- [✓ correct] Add “What Would Change This” to turn unknowns into action
- [✓ correct] Ban invented certainty and hedged fiction
- [✓ correct] Fix bullet counts to keep it executive-absorptive
- [✓ correct] Keep tone controlled and factual
- [✗ incorrect] Ask AI to “sound confident even if details are missing”
- [✗ incorrect] Remove unknowns to avoid looking uncertain
- [✗ incorrect] Write a long narrative explaining uncertainty
- [✗ incorrect] Add inspirational language to offset uncertainty
- [✗ incorrect] Invent numbers to make the slide feel concrete

**Result — coaching note**

Credibility slides are a constraint system. Known/unknown is good; known/unknown/what-changes-it is better.

**Result — assembled prompt example**

Write one exec slide: Confirmed (4), Unknown (4), What Would Change This (2). Controlled tone. No invented certainty.

**Result — feedback when correct**

You now control uncertainty like an operator - most decks either hide it or dramatize it.

**Result — polished prompt**

Draft an exec slide “What We Know / What We Don’t”: Confirmed (4), Unknown (4), What Would Change This (2). Controlled tone, no invented certainty.

---

#### Scenario 2 — Draft the One-Slide Executive Summary That Can Survive Questions

**Situation**

You need a single summary slide that can survive executive questions: what’s the point, what’s the risk, what’s the ask.

If it cannot survive questions, it cannot lead the deck.

If you prompt AI weakly, it usually:
- writes generic “overview” bullets
- hides the ask
- smooths risk into vague language

This is why your prompt fails:
- no requirement for question-proof structure
- no constraints on scope
- no expectation for decision-ready phrasing

Most “executive summaries” are just introductions.

To get a usable result, your prompt must define:
- Context - deck opener for executive room
- Objective - question-proof summary
- Requirements - point/risk/ask/next structure
- Expectations - one slide that stands alone

**Expert prompt**

Draft one slide titled “Executive Summary” with four labeled bullets: Point, Risk, Ask, Next. Each bullet must be one sentence, decision-ready, and grounded (no invented claims).

**AI response (example)**

**Executive Summary**
- **Point**: We are proposing a standardized onboarding baseline with function-owned inserts to reduce inconsistency without blocking role needs.
- **Risk**: If scope and ownership are not explicit, we will ship a template that drifts and creates false alignment.
- **Ask**: Approve the scope boundary (mandatory vs optional) and the ownership model today.
- **Next**: Run a short pilot, validate success criteria, then scale with a fixed review cadence.

What matters here is question-proof labeling: the prompt forced each bullet to answer the executive’s first question before the room asks it.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is “answers-first” structure: Point, Risk, Ask, Next - each one sentence.
- Requirements prevent fluffy overviews
- Objective makes the slide stand alone under questions
- Expectations produce a deck opener that can actually lead

- **Weak vs Strong Prompt**

Weak prompt:
Write an executive summary slide

Strong prompt:
Draft one slide titled “Executive Summary” with four labeled bullets: Point, Risk, Ask, Next. Each bullet must be one sentence, decision-ready, and grounded (no invented claims).

- **C.O.R.E. Breakdown**

C - Context
Deck opener for an executive room

O - Objective
Question-proof summary that stands alone

R - Requirements
Point/Risk/Ask/Next labels; one sentence each; no invented claims

E - Expectations
One slide that can lead the deck

**Pro tip**

If your executive summary can’t answer “what’s the ask?” in one line, it isn’t a summary - it’s a warm-up.

**Takeaway**

Executive summaries must answer Point, Risk, Ask, Next.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make an executive summary slide question-proof.

**Challenge — options (10)**

- [✓ correct] Require Point/Risk/Ask/Next labeled bullets
- [✓ correct] Force one-sentence bullets (no rambling)
- [✓ correct] Require decision-ready phrasing (not intro copy)
- [✓ correct] Ban invented claims/metrics
- [✓ correct] Set expectation that the slide stands alone
- [✗ incorrect] Ask for a motivational opening paragraph
- [✗ incorrect] Hide the ask to avoid pressure
- [✗ incorrect] Use vague language to sound safe
- [✗ incorrect] Add multiple sub-bullets per label
- [✗ incorrect] Let AI add supporting statistics freely

**Result — coaching note**

A question-proof opener is a structure problem, not a writing problem. Labels + one sentence each forces clarity.

**Result — assembled prompt example**

Write one “Executive Summary” slide: Point, Risk, Ask, Next. One sentence each. No invented claims.

**Result — feedback when correct**

You now control executive attention: the slide answers the room before the room asks.

**Result — polished prompt**

Draft an “Executive Summary” slide with labeled one-sentence bullets: Point, Risk, Ask, Next. Decision-ready, grounded, no invention.

---

#### Scenario 3 — Close the Deck With a Decision-Ready Commitment Slide

**Situation**

After discussion, leadership needs a clean closing slide that captures what was decided, what was deferred, and what happens next.

If you don’t capture it precisely, the decision will drift in the follow-up.

If you prompt AI weakly, it usually:
- writes a generic “next steps” slide
- hides what was not decided
- invents owners and dates to sound complete

This is why your prompt fails:
- no separation of decided vs deferred
- no constraints against inventing ownership
- no expectation for decision capture

Most teams lose decisions in the last slide.

To get a usable result, your prompt must define:
- Context - post-discussion decision capture
- Objective - lock decisions and deferrals explicitly
- Requirements - decided/deferred/next structure; no invented ownership
- Expectations - one closing slide that prevents drift

**Expert prompt**

Draft one closing slide titled “Decision + Commitments” with three sections: Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets). Use only confirmed decisions; if owners/dates are not confirmed, label as [TBD]. Keep it paste-ready and neutral.

**AI response (example)**

**Decision + Commitments**

**Decided Today**
- Approved onboarding baseline scope boundaries (mandatory vs optional)
- Confirmed ownership model (People Ops baseline; functions inserts)
- Agreed to pilot-first rollout before scaling

**Deferred**
- Success criteria per function (to be defined) [TBD]
- Review cadence and approver list [TBD]

**Next**
- Draft baseline checklist + template pack [Owner: People Ops] [TBD date]
- Collect role inserts from function leads [Owners: Function leads] [TBD date]
- Schedule pilot kickoff + checkpoint review [Owner: Program lead] [TBD date]

Notice how [TBD] protects credibility: the prompt prevents the model from “completing” the slide by inventing owners and dates.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is decision capture: Decided vs Deferred vs Next, with [TBD] where details aren’t confirmed.
- Requirements prevent invention under pressure
- Objective locks commitments so decisions don’t drift
- Expectations produce a closing slide that the org can execute

- **Weak vs Strong Prompt**

Weak prompt:
Write a final slide with next steps

Strong prompt:
Draft one closing slide titled “Decision + Commitments” with three sections: Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets). Use only confirmed decisions; if owners/dates are not confirmed, label as [TBD]. Keep it paste-ready and neutral.

- **C.O.R.E. Breakdown**

C - Context
Post-discussion decision capture

O - Objective
Lock commitments and deferrals explicitly

R - Requirements
Decided/Deferred/Next; [TBD] for unknowns; no invention

E - Expectations
One closing slide that prevents drift

**Pro tip**

If you don’t include “Deferred,” you’ll pretend everything is decided. That’s how decks create silent disagreement that explodes later.

**Takeaway**

Close decks with decided, deferred, and next - or decisions drift.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a closing commitments slide drift-proof.

**Challenge — options (10)**

- [✓ correct] Require Decided vs Deferred vs Next sections
- [✓ correct] Use [TBD] for unknown owners/dates (no invention)
- [✓ correct] Fix bullet counts to keep it tight
- [✓ correct] Require “Deferred” explicitly (prevents fake completeness)
- [✓ correct] Make it paste-ready and neutral
- [✗ incorrect] Invent owners and dates to look complete
- [✗ incorrect] Remove deferred items to avoid tension
- [✗ incorrect] Write a long narrative recap of the meeting
- [✗ incorrect] Use ambiguous language so it “covers everything”
- [✗ incorrect] Add extra “nice-to-have” next steps

**Result — coaching note**

Closing slides are where execution either starts or drifts. Make deferrals explicit and never allow invented ownership to sneak in.

**Result — assembled prompt example**

Write one closing slide with Decided Today, Deferred, Next. Use only confirmed decisions. Use [TBD] for unknown owners/dates.

**Result — feedback when correct**

You now control commitment capture - most teams lose decisions in the last slide.

**Result — polished prompt**

Draft a closing slide “Decision + Commitments”: Decided Today (3), Deferred (2), Next (3). No invention; use [TBD] for unknown owners/dates; paste-ready.

---

## Track 5 — Productivity
*Source: `lib/data/tracks/track5_communication.dart`*

### Lesson 1 — Turn Tasks Into Plans

#### Scenario 1 — Prioritize a crowded task list

**Situation**

You have eight work items mixed together: some are urgent, some are important, some are neither.

If you ask AI to “prioritize my tasks” without structure, you usually get a generic list that ignores your real constraints.

This is why your prompt fails:
- no clear Context for what “done” means this week
- no Objective for what the ranking should optimize
- weak Requirements for how to treat deadlines and dependencies
- no Expectations for the output format

To get a usable result, your prompt must define:
- Context - your role, week constraints, and what you can actually move
- Objective - rank or group tasks for execution today/this week
- Requirements - use an urgency/importance lens; name dependencies you know
- Expectations - grouped output with a one-line rationale per item

**Expert prompt**

I am a product manager with one deep-work block today (2 hours) and scattered meetings.

Here are my 8 tasks: [list].

Rank them for execution using urgency and importance. Group into: Do today, Schedule this week, Delegate/defer.

For each task, add one line explaining the grouping. Do not invent deadlines I did not provide; if a date is missing, mark it [Unknown].

**AI response (example)**

**Do today**
- Client escalation (urgent + important; blocks release)
- Brief exec summary (important; needed before EOD) [Unknown exact time]

**Schedule this week**
- Roadmap refresh (important, not urgent)
- Hiring screen review (important; can move if needed)

**Delegate/defer**
- Reformat slides (low impact)
- Research competitor blog (interesting, not time-critical)

Notice how the model stayed inside your constraints: it did not invent dates, and it explained each call with one line—Requirements and Expectations doing the real work.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The model followed your frame instead of improvising “productivity advice.”
- Context anchored role + time reality (2h deep work + meetings)
- Objective forced ranking for execution, not inspiration
- Requirements locked urgency/importance and banned invented dates
- Expectations demanded groups + one-line rationale so you can act

- **Weak vs Strong Prompt**

Weak prompt:
Prioritize these tasks

Strong prompt:
State your role and time constraints. List tasks. Rank using urgency/importance. Group into Do today / This week / Delegate-defer. One-line rationale each. Do not invent deadlines; mark missing dates [Unknown].

- **C.O.R.E. Breakdown**

C - Context
PM; limited deep work; meeting-heavy day; 8 tasks listed

O - Objective
Rank and group tasks for what to execute now vs later

R - Requirements
Urgency/importance; honest about unknown dates; no invented deadlines

E - Expectations
Three groups; one-line rationale per task

**Pro tip**

Productivity prompts fail when you hide constraints. Name your real calendar and ban invented dates—or the model will “help” with fake precision.

**Takeaway**

Plans only work when Context and Requirements match your actual week—not an idealized one.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that make this a strong prioritization prompt under real calendar constraints.

**Challenge — options (10)**

- [✓ correct] State your role and realistic time constraints for the day
- [✓ correct] Define the objective: rank/group tasks for execution, not generic advice
- [✓ correct] Require urgency/importance logic and explicit output groups
- [✓ correct] Ban inventing deadlines; require [Unknown] when a date is missing
- [✓ correct] Require a short rationale per task so choices are auditable
- [✗ incorrect] Ask AI to guess missing deadlines to keep the plan tight
- [✗ incorrect] Tell AI to “just be productive” without output structure
- [✗ incorrect] Ask for motivational quotes instead of a ranked plan
- [✗ incorrect] Let AI choose which tasks matter without your list
- [✗ incorrect] Request a 12-month life plan from an 8-task weekly list

**Result — coaching note**

Strong productivity prompts are still C.O.R.E. prompts: context, objective, constraints, and a defined “done” shape for the plan.

**Result — assembled prompt example**

I am a PM with one 2-hour deep-work block and meetings today. Here are 8 tasks: [...]. Rank them with urgency/importance. Group into Do today / This week / Delegate-defer. One-line rationale each. Do not invent deadlines; mark missing dates [Unknown].

**Result — feedback when correct**

That is operator-grade prioritization: you forced constraints and output shape, so the model cannot hide behind generic advice.

**Result — polished prompt**

I am a product manager with one 2-hour deep-work block today and several meetings. Here are my eight tasks: [paste list]. Rank and group them using urgency and importance into: Do today, Schedule this week, and Delegate or defer. Add one line of rationale per task. Do not invent deadlines I did not provide—mark any missing date as [Unknown].

---

#### Scenario 2 — Break a big project into a week-by-week plan

**Situation**

You owe a multi-week deliverable, but your brain only sees one giant blob of work.

Vague prompts produce vague timelines—usually too optimistic and missing dependencies.

To get a usable result, your prompt must define:
- Context - project type, stakeholders, and known fixed dates
- Objective - a phased plan with milestones you can track
- Requirements - weekly buckets; explicit risks/unknowns; no invented facts
- Expectations - table or bullet structure with owners if known

**Expert prompt**

Help me break a 4-week project into weekly milestones.

Context: I am leading an internal analytics dashboard rollout. Fixed date: leadership demo on week 4 Friday.

Objective: produce a week-by-week plan with milestones, dependencies, and a small “risk/unknown” line each week.

Requirements: do not invent team capacity or approvals; mark unknowns [Unknown]. Keep each week to 5 bullets max.

**AI response (example)**

**Week 1 — Discovery & scope**
- Milestones: agree metrics, audiences, data sources
- Dependencies: data access requests submitted
- Risk/unknown: source-of-truth ownership [Unknown]

**Week 2 — Design & prototype**
- Milestones: wireframe + sample queries
- Dependencies: schema documentation
- Risk/unknown: refresh cadence for data [Unknown]

**Week 3 — Build & QA**
- Milestones: v1 dashboard + test cases
- Dependencies: QA sign-off owner [Unknown]
- Risk/unknown: performance under peak load [Unknown]

**Week 4 — Demo prep**
- Milestones: dry run, storyline, fallback slides
- Dependencies: exec calendar alignment [Unknown]

Notice how “risk/unknown” lines protect you from a fairy-tale plan—Expectations + Requirements keep honesty in the schedule.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The plan is usable because the prompt demanded structure *and* uncertainty visibility.
- Context anchored a real fixed demo date
- Objective required milestones, not vibes
- Requirements capped verbosity and banned invented capacity
- Expectations forced weekly risk/unknown lines

- **Weak vs Strong Prompt**

Weak prompt:
Make a project plan

Strong prompt:
4-week rollout; fixed demo date; weekly milestones with dependencies; risk/unknown per week; max 5 bullets/week; no invented approvals/capacity; mark [Unknown].

- **C.O.R.E. Breakdown**

C - Context
Internal dashboard rollout; demo fixed week 4 Friday

O - Objective
Week-by-week milestones with dependencies

R - Requirements
No invented capacity/approvals; unknowns tagged; bullet limit

E - Expectations
Weekly section + risk/unknown line each week

**Pro tip**

If you do not force unknowns, AI will happily invent staffing and approvals. Mark [Unknown] early—you will thank yourself in week 3.

**Takeaway**

Good plans name dependencies and doubts. C.O.R.E. is how you keep both on the page.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that produce a phased plan without fake certainty.

**Challenge — options (10)**

- [✓ correct] Name the project context and any fixed external dates
- [✓ correct] State the objective as phased milestones, not a vague timeline
- [✓ correct] Require dependencies and explicit unknowns each phase/week
- [✓ correct] Ban inventing capacity, approvals, or team availability
- [✓ correct] Define output shape (weekly buckets, bullet limit, concise)
- [✗ incorrect] Ask AI to guarantee on-time delivery no matter what
- [✗ incorrect] Omit risks so the plan stays “positive”
- [✗ incorrect] Let AI add fictional stakeholder names for realism
- [✗ incorrect] Request a single paragraph with no milestones
- [✗ incorrect] Ask for a Gantt chart image without textual milestones

**Result — coaching note**

Milestone prompts need the same discipline as writing prompts: explicit structure, explicit unknowns, and a ban on invented facts.

**Result — assembled prompt example**

Break a 4-week internal dashboard rollout into weekly milestones with dependencies. Fixed demo on week 4 Friday. Each week: max 5 bullets + risk/unknown line. Do not invent capacity or approvals; mark [Unknown].

**Result — feedback when correct**

You are planning like someone who ships: milestones plus honest unknowns beat motivational timelines.

**Result — polished prompt**

Break a four-week internal analytics dashboard rollout into weekly milestones. Context: I lead the rollout; leadership demo is fixed on Friday of week four. Include dependencies for each week and a short risk/unknown line per week. Use at most five bullets per week. Do not invent team capacity, approvals, or dates—mark anything missing as [Unknown].

---

#### Scenario 3 — Design a realistic day plan around energy and meetings

**Situation**

You need a day plan, not a fantasy.

If you only list tasks, you ignore energy and transitions—and the day collapses by 3pm.

To get a usable result, your prompt must define:
- Context - meeting blocks, commute, and energy pattern
- Objective - a schedule that protects one priority outcome
- Requirements - include buffers, meal breaks, and a shutdown step
- Expectations - time-blocked output with explicit “if overrun” rule

**Expert prompt**

Build a time-blocked plan for tomorrow.

Context: meetings 9–10, 12–1, 3–4; I am sharpest mid-morning; I need 30 minutes admin.

Objective: finish a draft requirements doc (90 minutes focused work minimum).

Requirements: include buffers, lunch, and a 15-minute shutdown. If the doc slips, specify what gets cut vs moved.

Expectations: show blocks with start/end times; keep total planned work realistic.

**AI response (example)**

**Tomorrow — time blocks**
- 08:30–09:00 Admin triage (inbox + calendar)
- 10:15–11:45 Deep work: requirements doc (90 min)
- 11:45–12:00 Buffer / prep for noon call
- 13:15–14:45 Second doc pass OR split: 45m doc + 45m stakeholder msgs if overrun risk
- 14:45–15:00 Buffer before 3pm meeting
- 16:15–16:30 Shutdown: tomorrow’s top 3 + file links

**If overrun rule**
If doc not drafted by 11:45: shorten second pass to 45 minutes and move polish to Thursday deep block.

Notice how buffers and an overrun rule make the plan survivable—Requirements + Expectations, not hope.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The plan respects reality: meetings, energy, and failure modes.
- Context included fixed meetings and energy curve
- Objective protected 90 minutes on the real priority
- Requirements forced buffers, lunch, shutdown, and an overrun rule
- Expectations demanded timed blocks

- **Weak vs Strong Prompt**

Weak prompt:
Plan my day

Strong prompt:
List meetings and energy pattern. Name one priority outcome with minimum focus time. Add buffers, lunch, shutdown, and an explicit if-overrun rule. Time-blocked output.

- **C.O.R.E. Breakdown**

C - Context
Known meetings; mid-morning peak focus; admin needs

O - Objective
Schedule that delivers the requirements draft

R - Requirements
Buffers; lunch; shutdown; overrun rule

E - Expectations
Start/end times; realistic totals

**Pro tip**

Day plans fail at transitions. If you do not schedule buffers, your calendar lies to you—and AI will happily reinforce the lie.

**Takeaway**

Productivity is C.O.R.E. plus physics: time, energy, and buffers are Requirements, not extras.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a day plan executable, not aspirational.

**Challenge — options (10)**

- [✓ correct] Include fixed meetings and your energy pattern in Context
- [✓ correct] Name one priority outcome with a minimum focus-time requirement
- [✓ correct] Require buffers, meals, and a shutdown ritual in Requirements
- [✓ correct] Add an explicit if-overrun rule (what cuts or moves)
- [✓ correct] Expectations: time-blocked schedule with start/end times
- [✗ incorrect] Ask AI to assume you have no meetings tomorrow
- [✗ incorrect] Omit buffers to “maximize productivity minutes”
- [✗ incorrect] Let AI pick your priority without you naming it
- [✗ incorrect] Request a plan with only tasks and no times
- [✗ incorrect] Ask for hustle culture slogans instead of a schedule

**Result — coaching note**

Treat calendars like prompts: without Requirements for buffers and failure modes, the output looks neat and breaks instantly.

**Result — assembled prompt example**

Time-block tomorrow with meetings at [...], peak focus mid-morning, 30m admin. Objective: 90m on requirements doc. Include buffers, lunch, shutdown, overrun rule. Start/end times.

**Result — feedback when correct**

You built a plan that survives the real day—most people only prompt for an idealized one.

**Result — polished prompt**

Create a time-blocked plan for tomorrow. Context: meetings from 9–10, 12–1, and 3–4; I am sharpest mid-morning; I need 30 minutes for admin. Objective: complete at least 90 minutes of focused work on my requirements doc. Requirements: include buffers between blocks, lunch, and a 15-minute shutdown; if the doc slips, state what gets cut or moved. Output blocks with start and end times and keep the total workload realistic.

---

### Lesson 2 — Create Helpful Checklists

#### Scenario 1 — Checklist for a high-stakes team meeting

**Situation**

You are running a one-hour meeting that must end with decisions and owners.

Generic checklists miss your culture: some teams need async pre-reads, others need live debate time.

To get a usable result, your prompt must define:
- Context - meeting purpose, attendees, and decision type
- Objective - a checklist that guarantees outcomes, not just agenda fluff
- Requirements - timeboxed sections, decision capture, and follow-up mechanism
- Expectations - numbered checklist format with “done” criteria

**Expert prompt**

Create a facilitator checklist for a 60-minute decision meeting.

Context: cross-functional launch go/no-go; attendees: PM, Eng lead, Legal, Support lead.

Objective: end with a clear decision, recorded risks, and action items with owners/dates.

Requirements: timebox each segment; include pre-read reminder; ban vague action items.

Expectations: numbered checklist + what “decision captured” means.

**AI response (example)**

**Facilitator checklist (60 min)**
1) Pre-read: decision memo link sent 24h early; confirm Legal reviewed [Unknown if sent]
2) 0–5 Opening: decision question on screen; agree constraints
3) 5–20 Options: two paths with trade-offs (timebox)
4) 20–40 Risks: legal/support risks + mitigations (timebox)
5) 40–50 Decision: go/no-go with explicit criteria met/not met
6) 50–60 Actions: each item has owner + due date (no “team to follow up”)

**Decision captured means:** one sentence outcome + link/place notes will live.

Checklists work when Expectations define “done”—not when they repeat “discuss.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

This checklist is executable because it ties time to outcomes.
- Context named the decision type and roster
- Objective focused on decision + risks + owned actions
- Requirements banned vague owners and added pre-read discipline
- Expectations defined “decision captured” literally

- **Weak vs Strong Prompt**

Weak prompt:
Make a meeting checklist

Strong prompt:
60-minute go/no-go; name attendees; timebox segments; pre-read rule; decision + risks + dated owned actions; define what “decision captured” means.

- **C.O.R.E. Breakdown**

C - Context
Go/no-go launch; PM/Eng/Legal/Support

O - Objective
Decision, risks, owned follow-ups

R - Requirements
Timeboxes; pre-read; no vague actions

E - Expectations
Numbered checklist + definition of captured decision

**Pro tip**

Meetings rot when action items have no owners. Put that in Requirements up front—or AI will mirror your vagueness.

**Takeaway**

Checklists are C.O.R.E. in disguise: context, outcome, rules, and a clear finish line.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that produce a facilitator checklist that ends in owned actions.

**Challenge — options (10)**

- [✓ correct] State meeting purpose, decision type, and attendees
- [✓ correct] Objective must include decision, risks, and dated action items
- [✓ correct] Require timeboxed sections so the hour cannot sprawl
- [✓ correct] Ban vague action items without named owners
- [✓ correct] Expectations: define what “decision captured” means in one sentence
- [✗ incorrect] Ask for a checklist with only icebreakers and team bonding
- [✗ incorrect] Let AI choose attendees and meeting purpose for you
- [✗ incorrect] Omit timeboxes so the agenda can flex organically
- [✗ incorrect] Request a paragraph essay instead of a checklist
- [✗ incorrect] Tell AI to “keep it casual” with no outcomes

**Result — coaching note**

Meeting prompts fail when Objective is “have a good discussion.” Force decisions, risks, and owned next steps.

**Result — assembled prompt example**

Facilitator checklist: 60m go/no-go with PM/Eng/Legal/Support. Timebox segments. Pre-read rule. End with decision sentence, risks, action items with owners/dates. Define decision captured.

**Result — feedback when correct**

You now generate checklists that produce commitments—most meeting prompts stop at agenda titles.

**Result — polished prompt**

Create a facilitator checklist for a 60-minute cross-functional go/no-go meeting (PM, Engineering lead, Legal, Support lead). Timebox each segment, include a pre-read reminder, and end with a clear decision, recorded risks, and action items that each have an owner and due date. Define in one sentence what “decision captured” means. Do not allow vague team-level actions.

---

#### Scenario 2 — Checklist for shipping a small feature safely

**Situation**

You are about to ship a small feature, but “small” still breaks things.

A checklist prompt without Requirements becomes generic devops word salad.

To get a usable result, your prompt must define:
- Context - feature, environment, and blast radius
- Objective - reduce release risk with verifiable steps
- Requirements - include rollback, monitoring, and comms; mark unknowns
- Expectations - ordered checklist with owners or [Unknown]

**Expert prompt**

Create a release-day checklist for a small UI feature behind a flag.

Context: web app; canary to 5% traffic; support should know before customers.

Objective: verify flag behavior, metrics, and rollback path.

Requirements: include monitoring signals, comms to support, and a rollback step with a decision trigger.

Expectations: ordered checklist; if an owner is unknown, mark [Unknown].

**AI response (example)**

**Release checklist**
1) Confirm flag default OFF in prod config (owner: Eng on-call [Unknown])
2) Enable canary 5%; verify error rate dashboard + latency (signals: 5xx rate, p95) [Unknown dashboard link]
3) Validate UI strings in staging screenshots match prod
4) Notify Support with customer-facing summary + known limitations
5) Rollback trigger: error rate > baseline + X minutes sustained [Unknown baseline]
6) Rollback: disable flag; verify cache purge step [Unknown]
7) Post-release: 30-min watch window + incident channel link [Unknown]

Strong prompts admit unknowns—otherwise the checklist pretends your observability exists when it might not.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Checklist items are verifiable because the prompt demanded signals and triggers.
- Context set environment + canary + support visibility
- Objective focused on verification + rollback, not “ship fast”
- Requirements forced monitoring, comms, rollback criteria
- Expectations allowed [Unknown] instead of fabrication

- **Weak vs Strong Prompt**

Weak prompt:
Make a release checklist

Strong prompt:
Feature behind flag; canary 5%; support notified; monitoring signals; rollback with trigger; ordered steps; owners or [Unknown].

- **C.O.R.E. Breakdown**

C - Context
Web UI feature; flag; canary; support in loop

O - Objective
Verify release + safe rollback

R - Requirements
Monitoring signals; comms; rollback trigger

E - Expectations
Ordered checklist; unknown owners marked

**Pro tip**

Release checklists without rollback triggers are wishful thinking. Write the trigger in Requirements—even if the baseline is [Unknown] until you look it up.

**Takeaway**

Operational excellence is C.O.R.E.: name the system you are changing and what “safe” means.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a release checklist verifiable and reversible.

**Challenge — options (10)**

- [✓ correct] Describe feature, environment, and rollout mechanism
- [✓ correct] Objective should include verification and rollback readiness
- [✓ correct] Require monitoring signals or metrics to watch
- [✓ correct] Include stakeholder comms (e.g., support) when user-visible
- [✓ correct] Define rollback with a decision trigger; mark unknown baselines [Unknown]
- [✗ incorrect] Ask AI to skip rollback to move faster
- [✗ incorrect] Request a checklist with only motivational affirmations
- [✗ incorrect] Invent dashboard URLs and on-call names for realism
- [✗ incorrect] Omit canary/flag details and keep steps generic
- [✗ incorrect] Tell AI to “just ship it” without checks

**Result — coaching note**

Shipping prompts need the same honesty as research prompts: unknowns belong in the checklist, not hidden.

**Result — assembled prompt example**

Release checklist: flag; 5% canary; monitoring signals; support comms; rollback trigger; ordered steps; [Unknown] for missing owners/links.

**Result — feedback when correct**

You are prompting releases like someone on-call: signals, triggers, and honesty about gaps.

**Result — polished prompt**

Create an ordered release-day checklist for a small web UI feature released behind a feature flag with a 5% canary. Include verification steps, monitoring signals to watch, support communication before customers see changes, and a rollback path with an explicit decision trigger. If an owner, link, or baseline is unknown, mark it [Unknown] instead of inventing it.

---

#### Scenario 3 — Checklist for weekly personal reset

**Situation**

You want a weekly reset ritual that actually clears mental clutter.

If the prompt is mushy, you get “reflect on goals” with no behavior change.

To get a usable result, your prompt must define:
- Context - your role and where work leaks into life
- Objective - close the week and set next week’s top three
- Requirements - time limits per step; capture commitments somewhere specific
- Expectations - checklist format + definition of “closed loop”

**Expert prompt**

Create a 45-minute weekly reset checklist.

Context: knowledge worker; inbox and chat create loose ends.

Objective: end with 3 priorities for next week + calendar blocks scheduled.

Requirements: cap each step; include inbox zero-lite (not perfection); include a “waiting-on” scan.

Expectations: numbered checklist; “closed loop” means every waiting-on has a next nudge date or is dropped.

**AI response (example)**

**Weekly reset (45 min)**
1) 5m — Capture: brain dump into one list
2) 10m — Inbox zero-lite: archive obvious noise; star real tasks
3) 10m — Waiting-on scan: for each item, set nudge date or drop [Unknown tool]
4) 10m — Calendar reality check: delete/adjust 2 low-value meetings if possible [Unknown authority]
5) 5m — Top 3 priorities next week (outcome phrased)
6) 5m — Schedule blocks for top 2 priorities

**Closed loop:** no waiting-on without a next action date or an explicit drop.

Personal productivity still follows C.O.R.E.: without Expectations, “reset” becomes journaling.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The ritual is actionable because timeboxing and definitions prevent drift.
- Context named the leak sources (inbox/chat)
- Objective forced priorities + calendar blocks
- Requirements limited inbox perfectionism and added waiting-on discipline
- Expectations defined closed loop concretely

- **Weak vs Strong Prompt**

Weak prompt:
Help me reset my week

Strong prompt:
45m checklist; knowledge worker; inbox zero-lite; waiting-on scan with nudge/drop; top 3 priorities; schedule blocks; define closed loop.

- **C.O.R.E. Breakdown**

C - Context
Knowledge worker; loose ends from inbox/chat

O - Objective
Priorities + scheduled focus time

R - Requirements
Time caps; waiting-on handling; realistic inbox step

E - Expectations
Numbered checklist + closed-loop definition

**Pro tip**

If you do not define “closed loop,” your weekly review becomes emotional homework. Define it like an engineer: nudge date or drop.

**Takeaway**

Even personal rituals need Expectations—otherwise AI gives you therapy cosplay.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a weekly reset checklist behavior-changing.

**Challenge — options (10)**

- [✓ correct] Name your work context and where tasks typically leak
- [✓ correct] Objective: end with top priorities and scheduled focus blocks
- [✓ correct] Requirements: time limits per step to keep it realistic
- [✓ correct] Include a waiting-on or open-loop scan with a next action rule
- [✓ correct] Expectations: define “closed loop” in testable language
- [✗ incorrect] Ask for a 6-hour mindfulness retreat as a “quick reset”
- [✗ incorrect] Omit time limits so the ritual can expand endlessly
- [✗ incorrect] Tell AI to secretly judge your work ethic
- [✗ incorrect] Request only inspirational quotes, no steps
- [✗ incorrect] Let AI invent your priorities without your input

**Result — coaching note**

Personal productivity prompts still need C.O.R.E.: vague “self care” language produces vague outputs.

**Result — assembled prompt example**

45m weekly reset: inbox zero-lite; waiting-on nudge/drop; top 3 priorities; schedule blocks; define closed loop; timeboxed steps.

**Result — feedback when correct**

You built a reset you can execute—tight Objective and defined closed loops beat vague reflection.

**Result — polished prompt**

Create a 45-minute weekly reset checklist for a knowledge worker whose tasks leak through email and chat. End with three concrete priorities for next week and calendar blocks for the top two. Timebox each step, use an inbox zero-lite pass (not perfection), run a waiting-on scan where every item gets a nudge date or is explicitly dropped, and define what “closed loop” means in one sentence.

---

### Lesson 3 — Build Routines That Save Time

#### Scenario 1 — Routine for async standup updates

**Situation**

Your team is async across time zones.

Daily standup prompts often produce essays nobody reads.

To get a usable result, your prompt must define:
- Context - team norms and where updates post
- Objective - fast scanning for blockers
- Requirements - strict format, length limits, and what counts as a blocker
- Expectations - example skeleton you want copied

**Expert prompt**

Write instructions I can reuse each morning to post an async standup update in Slack.

Context: product squad; blockers should tag the right role.

Objective: readable in 20 seconds.

Requirements: max 5 lines; yesterday/today/blockers format; blocker definition: needs a decision or external dependency.

Expectations: include a filled example with [brackets] for placeholders.

**AI response (example)**

**Reusable prompt (copy daily)**
Yesterday: [shipped / learned]
Today: [top 1 outcome + 2 tasks max]
Blockers: [only if decision/dependency; tag @role]
Risk: [optional one line]
ETA confidence: [High/Med/Low]

**Example**
Yesterday: shipped search bugfix; learned billing edge case
Today: finish export beta + write QA checklist
Blockers: need Legal call on data retention (@legal) [Unknown date]
Risk: export may slip if QA finds P1
ETA confidence: Med

Routines become C.O.R.E. templates: once Requirements are strict, quality stops depending on willpower.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The routine is repeatable because the format is constrained.
- Context named channel and squad shape
- Objective optimized for scan speed
- Requirements capped lines and defined real blockers
- Expectations included a bracketed example for copying

- **Weak vs Strong Prompt**

Weak prompt:
Write my standup

Strong prompt:
Reusable daily instructions; 5 lines max; yesterday/today/blockers; blocker = decision/dependency; tag roles; bracket example.

- **C.O.R.E. Breakdown**

C - Context
Async product squad; Slack updates

O - Objective
Fast scan + real blocker visibility

R - Requirements
Line limits; blocker definition; tagging

E - Expectations
Bracketed example template

**Pro tip**

If blockers are undefined, people use standup as venting. Define blocker in Requirements—your future self will read less drama.

**Takeaway**

Routines that save time are really Requirements that save attention.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make an async standup routine scannable and honest.

**Challenge — options (10)**

- [✓ correct] State where updates go and the team shape (async, roles)
- [✓ correct] Objective: optimize for fast scanning, not storytelling
- [✓ correct] Requirements: length limits + fixed fields (yesterday/today/blockers)
- [✓ correct] Define what counts as a blocker (decision/dependency), not general complaints
- [✓ correct] Expectations: include a placeholder example to copy daily
- [✗ incorrect] Encourage long paragraphs for “context”
- [✗ incorrect] Ask AI to post fake accomplishments to sound busy
- [✗ incorrect] Omit blocker rules so anything can be a blocker
- [✗ incorrect] Let AI choose your tasks without your input
- [✗ incorrect] Request emojis only, no structured update

**Result — coaching note**

Great team routines are prompt templates: strict format beats daily improvisation.

**Result — assembled prompt example**

Reusable Slack standup: 5 lines max; yesterday/today/blockers; blockers only for decisions/deps; tag roles; bracket example.

**Result — feedback when correct**

You standardized communication: less reading, faster unblocking—that is real time saved.

**Result — polished prompt**

Draft reusable instructions I can paste each morning to post a five-line async standup update in Slack for a product squad. Optimize for a 20-second read. Use yesterday / today / blockers, cap tasks, define blockers only as items needing a decision or external dependency with a tagged role, and include a filled example using bracketed placeholders.

---

#### Scenario 2 — Routine for email triage in two passes

**Situation**

Email eats your morning.

If you ask AI to “handle email” you get unrealistic inbox zero fantasies.

To get a usable result, your prompt must define:
- Context - volume, tools, and what must never be auto-sent
- Objective - two-pass triage within a time box
- Requirements - classify, draft responses only when safe, escalation rules
- Expectations - step list with time limits

**Expert prompt**

Design a 30-minute email triage routine.

Context: ~40 emails/day; I use labels; I must not auto-send legal or exec threads.

Objective: clear urgent decisions and park the rest.

Requirements: Pass A (10m) sort into Reply/Waiting/Read later; Pass B (20m) draft replies only for low-risk threads; never auto-send—drafts only.

Expectations: numbered steps; define what “low-risk” means.

**AI response (example)**

**30-minute triage routine**
Pass A (10m)
1) Skim subjects/senders; tag Reply today (decision needed), Waiting (others owe you), Later
2) Star exec/legal; do not draft those in Pass B

Pass B (20m)
3) Reply today: draft max 5 emails; each max 6 sentences
4) Low-risk definition: internal coordination, no commitments, no policy interpretation
5) Waiting: add follow-up date note [Unknown tool]
6) Later: move to weekend bucket

**Hard rule:** drafts only; you send.

C.O.R.E. keeps you from delegating judgment you should not delegate.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The routine is safe and finite because guardrails are explicit.
- Context included volume and tool reality
- Objective separated sorting from drafting
- Requirements banned auto-send and capped drafts
- Expectations defined low-risk to prevent reckless replies

- **Weak vs Strong Prompt**

Weak prompt:
Help with email

Strong prompt:
30m two-pass triage; sort then draft; drafts only; cap replies; exclude exec/legal; define low-risk.

- **C.O.R.E. Breakdown**

C - Context
40/day; labels; sensitive threads exist

O - Objective
Clear urgent decisions; park rest

R - Requirements
Two passes; draft limits; no auto-send

E - Expectations
Numbered steps + low-risk definition

**Pro tip**

Never let AI auto-send on professional email. Put “drafts only” in Requirements like a seatbelt—non-negotiable.

**Takeaway**

Time-saving routines define what AI is allowed to touch. That is Requirements, not paranoia.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep email triage fast and safe.

**Challenge — options (10)**

- [✓ correct] Describe volume, tools, and sensitive thread types
- [✓ correct] Objective: time-boxed triage that separates sort vs respond
- [✓ correct] Requirements: explicit no auto-send; drafts only if used
- [✓ correct] Cap number or length of drafted replies to stay realistic
- [✓ correct] Define “low-risk” threads that are allowed for draft replies
- [✗ incorrect] Ask AI to send all replies for speed
- [✗ incorrect] Omit time limits so you can “finish email properly”
- [✗ incorrect] Tell AI to impersonate you to external clients
- [✗ incorrect] Request full inbox zero in 30 minutes guaranteed
- [✗ incorrect] Draft responses to legal questions without review

**Result — coaching note**

Email workflows need safety Requirements as much as marketing workflows need brand voice.

**Result — assembled prompt example**

30m email triage: pass A sort; pass B draft max 5 low-risk internal replies; no auto-send; define low-risk; star exec/legal.

**Result — feedback when correct**

You separated speed from recklessness—strong productivity hygiene.

**Result — polished prompt**

Design a 30-minute two-pass email triage routine for about 40 emails per day using labels. Pass A sorts into reply today, waiting, and read later in 10 minutes. Pass B spends 20 minutes drafting at most five replies, each at most six sentences, only for low-risk internal coordination threads with no policy interpretation and no external commitments. Never auto-send. Star executive and legal threads and do not draft those in Pass B. Define low-risk in one sentence.

---

#### Scenario 3 — Routine for a calm end-of-day shutdown

**Situation**

You want to end work without carrying 47 open loops into dinner.

Vague “wind down” prompts produce bubble baths, not closure.

To get a usable result, your prompt must define:
- Context - where tasks live (tool names optional)
- Objective - close loops or schedule them honestly
- Requirements - time box; capture; set tomorrow starter task
- Expectations - checklist with a hard stop rule

**Expert prompt**

Create a 15-minute shutdown routine.

Context: tasks live in a task tool + email flags.

Objective: leave with one “start tomorrow” task chosen.

Requirements: 5 steps max; each step has a minute budget; include capturing stray thoughts.

Expectations: include a hard stop rule if time runs out (what gets dropped).

**AI response (example)**

**Shutdown (15m)**
1) 3m — Scan task list: pick tomorrow starter (single task)
2) 3m — Email flags: convert to tasks or snooze with date
3) 4m — Capture stray thoughts into inbox [Unknown tool]
4) 3m — Calendar glance: move prep items if needed
5) 2m — Write first line of tomorrow starter in notes

**Hard stop:** if time hits 15m mid-step, stop at end of current minute; drop calendar glance first.

Shutdown routines work when Expectations include a triage rule—otherwise you “almost finish” forever.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Closure is engineered: minute budgets + a hard stop rule.
- Context named where work lives
- Objective forced a single tomorrow starter
- Requirements limited steps and added capture
- Expectations defined what drops if time runs out

- **Weak vs Strong Prompt**

Weak prompt:
Help me wind down

Strong prompt:
15m shutdown; pick tomorrow starter; capture stray thoughts; minute budgets; hard stop drop order.

- **C.O.R.E. Breakdown**

C - Context
Tasks + email flags; end of day

O - Objective
Close loops; choose tomorrow start

R - Requirements
5 steps; per-step minutes; capture

E - Expectations
Hard stop rule if time expires

**Pro tip**

Hard stop rules feel harsh; they are kindness. Without them, shutdown becomes another perfectionism loop.

**Takeaway**

The best routines include an Expectation for what you will not finish.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a shutdown routine actually end.

**Challenge — options (10)**

- [✓ correct] Name where tasks and loose ends currently live
- [✓ correct] Objective: pick one clear “start tomorrow” task as an output
- [✓ correct] Requirements: time box the whole routine and each step
- [✓ correct] Include capturing stray thoughts so they do not loop overnight
- [✓ correct] Expectations: hard stop rule with explicit drop priority
- [✗ incorrect] Ask for a 90-minute spa routine instead of shutdown
- [✗ incorrect] Omit time limits to allow “natural closure”
- [✗ incorrect] Tell AI to shame you for unfinished work
- [✗ incorrect] Request 20 new tasks to add before bed
- [✗ incorrect] Let AI pick tomorrow’s priorities without your review

**Result — coaching note**

Shutdown is a micro-prompt: tight Objective, tight time, explicit trade-offs.

**Result — assembled prompt example**

15m shutdown: minute-budget steps; pick tomorrow starter; capture thoughts; hard stop drop order.

**Result — feedback when correct**

You ended the day with a decision, not a fog—this is how routines compound.

**Result — polished prompt**

Create a 15-minute end-of-day shutdown checklist with at most five steps, each with a minute budget, using my task list and email flags. The objective is to pick exactly one “start tomorrow” task, capture stray thoughts into an inbox, and include a hard-stop rule that states what to skip first if time runs out.

---

### Lesson 4 — Organize Information Quickly

#### Scenario 1 — Executive summary from a long document

**Situation**

You have a 12-page document and leadership wants “the gist” without errors.

Summaries fail when the prompt does not define audience, decisions, and forbidden inventions.

To get a usable result, your prompt must define:
- Context - doc purpose and who reads the summary
- Objective - support a specific decision or alignment moment
- Requirements - fidelity rules; mark unknowns; length limit
- Expectations - bullet structure + explicit “not in doc” section if needed

**Expert prompt**

Summarize a long internal doc for an exec read in 5 bullets + 1 decision line.

Context: pricing committee pre-read; doc mixes proposals and historical notes.

Objective: help VP decide between two pricing models next meeting.

Requirements: do not invent numbers; if a number is not in the doc, write [Not in doc]; max 120 words total.

Expectations: bullets must be claims the doc actually supports; add “Open questions” with max 2 items.

**AI response (example)**

**5 bullets**
- Two models under review: usage-based vs seat-based (trade-offs described)
- Customer impact story is mixed; enterprise pushback noted on usage-based
- Billing operations complexity higher for usage-based in doc’s assessment
- Sales motion changes required either way; training cost mentioned qualitatively [Not in doc for dollar amounts]
- Legal/privacy considerations referenced but not detailed in excerpt

**Decision line**
VP should choose based on operational readiness vs revenue predictability trade-off described in sections 3–4.

**Open questions**
- What baseline churn assumption is approved? [Not in doc]
- What timeline is non-negotiable? [Not in doc]

Fidelity Requirements turn summarization from creativity into accountability.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The summary is trustworthy because invention is banned and structure is tight.
- Context named the meeting and reader
- Objective tied bullets to a real decision
- Requirements enforced [Not in doc] and word cap
- Expectations separated supported claims vs open questions

- **Weak vs Strong Prompt**

Weak prompt:
Summarize this doc

Strong prompt:
Exec pricing pre-read; 5 bullets + decision line; no invented numbers; [Not in doc]; word cap; open questions max 2.

- **C.O.R.E. Breakdown**

C - Context
12-page internal pricing doc; VP audience

O - Objective
Support model decision

R - Requirements
Fidelity; unknowns labeled; length limit

E - Expectations
Bullets + decision line + open questions

**Pro tip**

If you do not ban invented numbers, AI will “help” with plausible fiction. Use [Not in doc] like a safety rail.

**Takeaway**

Fast organization is still C.O.R.E.: decide the reader, the decision, and the fidelity rules first.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep summarization faithful and decision-useful.

**Challenge — options (10)**

- [✓ correct] Name the audience and why they are reading (decision context)
- [✓ correct] Objective tied to a specific decision or alignment outcome
- [✓ correct] Requirements: explicit fidelity rule for missing numbers/facts
- [✓ correct] Length or format limits so the summary stays scannable
- [✓ correct] Expectations: separate supported claims vs open questions
- [✗ incorrect] Ask AI to add plausible metrics to strengthen the story
- [✗ incorrect] Request a 5-page rewrite “for completeness”
- [✗ incorrect] Omit the decision context so it stays generic
- [✗ incorrect] Tell AI to hide uncomfortable risks from leadership
- [✗ incorrect] Let AI invent citations to sound rigorous

**Result — coaching note**

Summaries are prompts: without Requirements, the model optimizes for fluency—not accuracy.

**Result — assembled prompt example**

Exec summary: 5 bullets + decision line; pricing committee; ban invented numbers; [Not in doc]; 120 words; max 2 open questions.

**Result — feedback when correct**

You prioritized fidelity over polish—this is how AI stays trustworthy in real work.

**Result — polished prompt**

Summarize a long internal document for a VP pricing committee pre-read as five bullets plus one decision line, maximum 120 words. Do not invent numbers or facts; label anything missing from the document as [Not in doc]. Include at most two open questions. Each bullet must reflect claims actually supported by the document.

---

#### Scenario 2 — Turn messy notes into decisions and actions

**Situation**

After a working session, your notes are half sentences and arrows.

If you ask AI to “clean notes,” you lose decisions.

To get a usable result, your prompt must define:
- Context - meeting type and attendees (if known)
- Objective - extract decisions, actions, and open questions
- Requirements - do not invent decisions; mark unclear items [Unclear]
- Expectations - structured output with owners/dates or [Unknown]

**Expert prompt**

Transform messy meeting notes into a structured recap.

Context: roadmap working session; notes are bullets and shorthand.

Objective: produce Decisions / Actions / Open questions.

Requirements: if a decision is not explicit in notes, do not infer it—put it in Open questions as [Unclear].

Expectations: actions must have owner + due date or [Unknown].

**AI response (example)**

**Decisions**
- Prioritize onboarding reliability over new integrations this quarter (explicit in notes)

**Actions**
- Write success metrics doc — Owner: PM [Unknown] — Due: [Unknown]
- Schedule load test — Owner: Eng [Unknown] — Due: next Friday [Unclear if agreed]

**Open questions**
- Are we committing to deprecating legacy auth this quarter? [Unclear]
- Budget for extra QA hours? [Unclear]

Organizing information is not “pretty formatting.” It is protecting integrity with Requirements.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The recap is trustworthy because inference is controlled.
- Context named the session type
- Objective separated decisions vs actions vs questions
- Requirements banned inferring decisions from tone
- Expectations forced owners/dates or explicit unknowns

- **Weak vs Strong Prompt**

Weak prompt:
Clean up these notes

Strong prompt:
Decisions/actions/open questions; no inferred decisions; [Unclear]; owners/dates or [Unknown].

- **C.O.R.E. Breakdown**

C - Context
Roadmap session; messy notes

O - Objective
Extract decisions and next steps honestly

R - Requirements
No invented decisions; mark unclear

E - Expectations
Structured sections + owner/date or unknown

**Pro tip**

Notes cleanup is where AI hallucination hurts most. Ban inference on decisions—force [Unclear] instead.

**Takeaway**

Fast organization needs strict Requirements: clarity is not the same as confidence.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that convert messy notes into an honest recap.

**Challenge — options (10)**

- [✓ correct] Describe the meeting context and note quality
- [✓ correct] Objective: extract decisions, actions, and open questions separately
- [✓ correct] Requirements: do not infer decisions that are not explicit; use [Unclear]
- [✓ correct] Actions need owners and dates or explicit [Unknown]
- [✓ correct] Expectations: fixed section headings and consistent formatting
- [✗ incorrect] Ask AI to invent decisions so the recap looks complete
- [✗ incorrect] Merge everything into one narrative paragraph
- [✗ incorrect] Omit open questions to keep the doc confident
- [✗ incorrect] Tell AI to assign owners randomly for speed
- [✗ incorrect] Request jokes between sections for readability

**Result — coaching note**

Meeting recaps are liability surfaces. C.O.R.E. Requirements reduce “helpful” fabrication.

**Result — assembled prompt example**

Notes → Decisions/Actions/Open questions; no inferred decisions; [Unclear]; owner+due or [Unknown].

**Result — feedback when correct**

You organized information without inventing commitments—this is professional-grade prompting.

**Result — polished prompt**

Turn messy roadmap working-session notes into a structured recap with three sections: Decisions, Actions, and Open questions. Do not infer decisions that are not explicit in the notes—mark ambiguity as [Unclear]. Every action must list an owner and due date, or use [Unknown].

---

#### Scenario 3 — Naming scheme for files and folders

**Situation**

Your shared drive is becoming unsearchable.

Naming prompts without rules become “use clear names,” which helps nobody.

To get a usable result, your prompt must define:
- Context - team, asset types, and tools
- Objective - searchable names + stable folder logic
- Requirements - characters allowed, date format, version rules
- Expectations - examples for 5 common file types

**Expert prompt**

Propose a simple naming convention for a marketing + product shared drive.

Context: campaigns, specs, and research PDFs mixed together.

Objective: make search reliable for non-experts.

Requirements: YYYY-MM-DD dates; no spaces; use hyphens; version suffix _v01; illegal characters banned.

Expectations: show 5 example filenames + folder top-level structure (max 6 folders).

**AI response (example)**

**Filename pattern**
`<YYYY-MM-DD>_<team>-<type>-<short-slug>_v01.ext`

**Examples**
- 2025-03-10_mkt-campaign-spring-launch_v01.pdf
- 2025-03-12_prd-feature-export-beta_v03.docx
- 2025-03-15_research-competitor-pricing_v01.pdf
- 2025-03-18_legal-terms-update-summary_v01.pdf
- 2025-03-20_mkt-web-copy-homepage-hero_v02.docx

**Top-level folders (6)**
00_Inbox
10_Active_Campaigns
20_Product_Specs
30_Research
40_Legal_Compliance
90_Archive

Naming is Requirements work: without rules, “clear” means everyone’s private habit.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Searchability came from explicit mechanical rules + examples.
- Context described mixed content types
- Objective targeted non-expert search success
- Requirements pinned date format and versioning
- Expectations demanded concrete examples and bounded folder count

- **Weak vs Strong Prompt**

Weak prompt:
Suggest better file names

Strong prompt:
Shared drive; marketing+product; date format; no spaces; hyphen rules; _v01; 5 examples; <=6 top folders.

- **C.O.R.E. Breakdown**

C - Context
Mixed marketing/product assets in shared drive

O - Objective
Reliable search for generalists

R - Requirements
Date format; charset rules; version suffix

E - Expectations
5 filename examples + folder structure

**Pro tip**

Examples beat adjectives. One good filename pattern teaches more than ten synonyms for “organized.”

**Takeaway**

Information architecture prompts need Requirements like engineering prompts: explicit, testable rules.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that produce a naming system people will actually follow.

**Challenge — options (10)**

- [✓ correct] Describe what kinds of files live in the system
- [✓ correct] Objective: searchability for people who do not know your jargon
- [✓ correct] Requirements: date format, separators, versioning, banned characters
- [✓ correct] Expectations: concrete example filenames for common cases
- [✓ correct] Bound folder depth/count so structure stays maintainable
- [✗ incorrect] Tell AI to use spaces and emojis for personality
- [✗ incorrect] Ask for “whatever feels intuitive” instead of rules
- [✗ incorrect] Request 40 top-level folders for precision
- [✗ incorrect] Let AI rename confidential files without guardrails
- [✗ incorrect] Omit examples to keep the answer short

**Result — coaching note**

Conventions are prompts: rules + examples + limits. Without all three, adoption dies.

**Result — assembled prompt example**

Naming convention: YYYY-MM-DD; hyphens; no spaces; _v01; 5 examples; <=6 top folders; marketing+product drive.

**Result — feedback when correct**

You built a spec someone can follow—organization without Requirements is just vibes.

**Result — polished prompt**

Propose a shared-drive naming convention for mixed marketing and product assets. Requirements: ISO-style dates (YYYY-MM-DD), no spaces, hyphens between segments, a _v01 version suffix, and banned ambiguous characters. Include five realistic example filenames and a top-level folder structure with at most six folders optimized for non-expert search.

---

### Lesson 5 — Create Reusable Templates

#### Scenario 1 — Template for weekly status updates

**Situation**

You send a weekly status update to leadership.

Without a template prompt, every week reinvents structure and you forget risks.

To get a usable result, your prompt must define:
- Context - role, team, and what leaders care about
- Objective - progress, risks, and asks in one screen
- Requirements - word limits per section; honest risk language
- Expectations - paste-ready template with [brackets]

**Expert prompt**

Create a reusable weekly status template for an engineering manager.

Context: two squads; leaders care about delivery, risk, and hiring.

Objective: show progress, blockers/risks, and asks.

Requirements: 200 words max total; risks must include impact + mitigation or [Unknown].

Expectations: provide a bracketed template + one filled fictional example clearly labeled EXAMPLE.

**AI response (example)**

**Template (copy weekly)**
Subject: Weekly status — [Team] — [YYYY-MM-DD]

Shipped: [3 bullets max]
In flight: [top 3 initiatives + ETA confidence High/Med/Low]
Metrics: [only if changed; else “no material change”]
Risks: [max 2; each: impact + mitigation or [Unknown]]
Asks: [decisions needed + owner suggestion]
Next week focus: [one sentence]

**EXAMPLE (fictional)**
Shipped: patch for export timeout; CI stability fix
In flight: permissions refactor (Med); billing dashboard (High)
Metrics: no material change
Risks: QA capacity tight — impact: release slip — mitigation: cut scope on non-core bugs [Unknown owner]
Asks: Approve 1-week vendor eval extension — suggest owner: CTO

Templates are C.O.R.E. artifacts: once set, your weeks stop improvising.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The template is reusable because limits and risk rules are explicit.
- Context named audience concerns
- Objective balanced shipped, in-flight, risks, asks
- Requirements capped words and forced mitigation discipline
- Expectations separated bracket template from labeled example

- **Weak vs Strong Prompt**

Weak prompt:
Write a status update

Strong prompt:
EM weekly template; word cap; risk=impact+mitigation/[Unknown]; bracket template + labeled fictional example.

- **C.O.R.E. Breakdown**

C - Context
EM; two squads; exec readers

O - Objective
Progress + risks + asks

R - Requirements
Word limit; honest risk format

E - Expectations
Bracket template + EXAMPLE

**Pro tip**

Always label fictional examples EXAMPLE—otherwise they leak into real communications as “truth.”

**Takeaway**

Reusable templates are Expectations you only have to design once.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a status template safe to reuse every week.

**Challenge — options (10)**

- [✓ correct] Name role, audience, and what they optimize for
- [✓ correct] Objective: cover progress, risks, and decisions/asks
- [✓ correct] Requirements: per-section or total limits; risk includes impact + mitigation or unknown
- [✓ correct] Expectations: bracketed paste-ready template format
- [✓ correct] Include a clearly labeled fictional example separate from the template
- [✗ incorrect] Ask for unlimited length “for transparency”
- [✗ incorrect] Omit risks so leadership stays comfortable
- [✗ incorrect] Use a real person’s name in the example without labeling fiction
- [✗ incorrect] Tell AI to invent shipped items you did not provide
- [✗ incorrect] Request only emojis instead of structured sections

**Result — coaching note**

Template prompts should be boring in the best way: predictable structure, explicit limits, honest unknowns.

**Result — assembled prompt example**

EM status template: 200 words max; risks w/ mitigation/[Unknown]; bracket template; labeled EXAMPLE.

**Result — feedback when correct**

You made status updates repeatable without making them reckless—this is template mastery.

**Result — polished prompt**

Create a reusable weekly status template for an engineering manager leading two squads, aimed at leadership who care about delivery, risk, and hiring. Cap the entire update at 200 words. Include sections for shipped work, in-flight initiatives with ETA confidence, metrics only if materially changed, at most two risks each with impact and mitigation or [Unknown], and explicit asks. Provide a bracketed paste-ready template plus one clearly labeled fictional EXAMPLE.

---

#### Scenario 2 — Template for handing work to another owner

**Situation**

Handoffs fail when context lives in someone’s head.

Your template prompt must force artifacts, access, and next steps.

To get a usable result, your prompt must define:
- Context - type of work and systems involved
- Objective - enable the new owner to continue without you
- Requirements - links/checklists; decisions already made; open questions
- Expectations - one-page max; bracket template

**Expert prompt**

Create a handoff template for transitioning a feature owner.

Context: SaaS product; work spans tickets, docs, and analytics.

Objective: new owner can run standups and make tradeoff calls without re-discovery.

Requirements: include sections for goal, current state, decisions, risks, links, and open questions; ban vague “sync with me.”

Expectations: one page max; bracket template + short guidance when to use each section.

**AI response (example)**

**Handoff template**
Feature: [name]
New owner: [name] / Old owner: [name] / Handoff date: [date]
Goal: [customer outcome sentence]
Current state: [what ships today; what is partial]
Key decisions already made: [bullet list]
Open questions: [bullets; owners if known]
Risks/constraints: [max 3]
Links: [doc, board, dashboard, on-call]
Next 7 days: [3 concrete actions]
Not transferring: [explicit exclusions]

**Guidance**
Use Open questions for anything that would otherwise require “quick syncs.”

Handoffs are polite when Expectations ban mystery dependencies.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The template reduces re-discovery by requiring artifacts and decisions.
- Context named systems involved
- Objective focused on autonomous continuation
- Requirements banned vague sync culture
- Expectations limited length and structured links/next steps

- **Weak vs Strong Prompt**

Weak prompt:
Write a handoff doc

Strong prompt:
Feature owner handoff; goal/state/decisions/risks/links/open questions; ban vague sync; 1 page; bracket template + guidance.

- **C.O.R.E. Breakdown**

C - Context
SaaS feature; tickets/docs/analytics

O - Objective
New owner can operate without re-discovery

R - Requirements
Explicit sections; no “sync with me”

E - Expectations
One-page bracket template + guidance

**Pro tip**

If your handoff template does not have “decisions already made,” you are exporting anxiety, not work.

**Takeaway**

Templates turn soft knowledge into Requirements the next person can execute.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a handoff template complete.

**Challenge — options (10)**

- [✓ correct] Name systems and the type of work being transferred
- [✓ correct] Objective: new owner can continue without re-discovery
- [✓ correct] Requirements: capture decisions, links, risks, and open questions explicitly
- [✓ correct] Ban vague “let’s sync” as a substitute for written context
- [✓ correct] Expectations: concise one-page bracket template + usage guidance
- [✗ incorrect] Encourage keeping secrets to preserve team politics
- [✗ incorrect] Omit links so the doc stays “timeless”
- [✗ incorrect] Ask for a 10-page essay for thoroughness
- [✗ incorrect] Tell AI to guess passwords and access details
- [✗ incorrect] Leave ownership blank so any reader can claim it

**Result — coaching note**

Handoff prompts are operational C.O.R.E.: the output should remove ambiguity, not add polish.

**Result — assembled prompt example**

Handoff template: goal/state/decisions/risks/links/open questions/next 7 days; no vague sync; 1 page; brackets.

**Result — feedback when correct**

You standardized knowledge transfer—fewer meetings, fewer dropped balls.

**Result — polished prompt**

Create a one-page handoff template for transferring ownership of a SaaS feature across tickets, docs, and analytics. Include sections for goal, current state, decisions already made, open questions with suggested owners when known, risks, links, next seven days’ actions, and explicit non-transferred scope. Ban vague “sync with me” handoffs. Use bracketed placeholders and short guidance for when to use each section.

---

#### Scenario 3 — Template for requesting a focused working session

**Situation**

You need someone’s time, but “quick chat” creates churn.

A good request template states decisions, prep, and outcomes.

To get a usable result, your prompt must define:
- Context - relationship and urgency
- Objective - one decision or output from the session
- Requirements - duration, agenda, pre-read, and what “done” means
- Expectations - message template with brackets

**Expert prompt**

Create a reusable calendar invite + message template for requesting a 25-minute decision session.

Context: cross-functional partner busy with back-to-back meetings.

Objective: exit with an approved approach, not “more discussion.”

Requirements: max 5 agenda bullets; include pre-read link placeholder; define done as a chosen option A/B/C.

Expectations: bracket template for email/Slack + invite fields.

**AI response (example)**

**Slack/email template**
Hi [Name] — can we book 25 minutes to decide [decision]?
Pre-read (5 min): [link]
Goal: pick one approach (A/B/C) by end of session.
Agenda:
- Context (3m)
- Options A/B/C trade-offs (12m)
- Decision + owners/next steps (10m)
Done means: recorded decision + action items with dates.
Proposed times: [2 options] (adjust if needed)

**Invite fields**
Title: Decision — [topic] (A/B/C)
Duration: 25m
Notes: link pre-read; decision required

Meetings shrink when Expectations define “done” before they start.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The template reduces churn by forcing a decision product.
- Context respected partner overload
- Objective required choosing among options
- Requirements limited agenda length and added pre-read
- Expectations separated comms text vs invite metadata

- **Weak vs Strong Prompt**

Weak prompt:
Write a meeting invite

Strong prompt:
25m decision session; pre-read; <=5 agenda bullets; done = pick A/B/C + actions; bracket template.

- **C.O.R.E. Breakdown**

C - Context
Busy cross-functional partner

O - Objective
Exit with a chosen approach

R - Requirements
Timebox; pre-read; agenda cap; decision rule

E - Expectations
Bracket message + invite field guidance

**Pro tip**

If your meeting template does not define “done,” you scheduled a feelings seminar. Options A/B/C fix that.

**Takeaway**

Respectful scheduling is C.O.R.E.: context, outcome, constraints, and a clear finish.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a meeting request decision-oriented.

**Challenge — options (10)**

- [✓ correct] Acknowledge the other person’s time pressure in Context
- [✓ correct] Objective: end with a concrete decision between named options
- [✓ correct] Requirements: short agenda, pre-read, and timeboxed sections
- [✓ correct] Define done: chosen option plus owners and next steps
- [✓ correct] Expectations: paste-ready bracket template + invite fields
- [✗ incorrect] Ask for a 2-hour meeting “to be safe”
- [✗ incorrect] Omit agenda so conversation can flow naturally
- [✗ incorrect] Request a meeting with no intended outcome
- [✗ incorrect] Tell AI to pressure the person with false urgency
- [✗ incorrect] Hide the decision topic to keep the invite mysterious

**Result — coaching note**

Calendar prompts are productivity prompts: optimize for decisions per minute, not politeness per paragraph.

**Result — assembled prompt example**

25m decision session template; pre-read; agenda<=5; done=A/B/C + actions; bracket message + invite fields.

**Result — feedback when correct**

You are reclaiming calendar time by prompting meetings like products—with a defined ship artifact.

**Result — polished prompt**

Create a reusable 25-minute decision-session request template (Slack/email plus calendar invite notes) for a busy cross-functional partner. Include a five-minute pre-read link placeholder, at most five agenda bullets with time hints, explicit options A/B/C, and a definition of done: a recorded decision plus action items with owners. Provide bracketed placeholders and two proposed time options.

---

## Track 6 — Content Creation
*Source: `lib/data/tracks/track6_content_creation.dart`*

### Lesson 1 — Rewrite Content for Tone and Style

#### Scenario 1 — Rewrite for a More Professional Tone

**Situation**

You need to send a message that will be forwarded to an external stakeholder.

Your draft is accurate, but it reads casual and slightly defensive.

If the tone lands wrong, trust drops and every future update gets scrutinised.

If you prompt AI weakly, it usually:
- “polishes” by changing meaning
- adds fluff to sound professional
- softens accountability to avoid discomfort

This is why your prompt fails:
- no boundary on what must not change
- no tone target that’s specific enough
- no expectation for forward-safe phrasing

Most people ask for “make it more professional” and accidentally approve a different message.

To get a usable result, your prompt must define:
- Context - forward-safe stakeholder update
- Objective - raise professionalism without shifting meaning
- Requirements - preserve meaning/structure; remove casual/defensive language; keep it crisp
- Expectations - paste-ready rewrite in the same shape

**Expert prompt**

Rewrite the message in a more professional, forward-safe tone.

Requirements:
- Preserve the original meaning and overall structure
- Keep length within u00b115%
- Remove casual phrasing and any defensive tone
- Do not add new claims, promises, dates, or justifications

Return only the rewritten message.

**AI response (example)**

Thank you for the update. I've reviewed the draft and will prepare the revisions by tomorrow. Please let me know if you have any additional input.

What matters here is boundary control: the prompt forced a tone shift without letting the model “improve” the message by changing its substance.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *meaning preservation under tone change*.
- Requirements prevented “helpful edits” (new claims, promises, or justification)
- Expectations made it paste-ready (no commentary, no options)
- Objective kept the rewrite forward-safe instead of “more formal but different”

- **Weak vs Strong Prompt**

Weak prompt:
Make this more professional

Strong prompt:
Rewrite the message in a more professional, forward-safe tone. Preserve meaning and overall structure; keep length within u00b115%; remove casual/defensive language; do not add new claims/promises/dates/justifications. Return only the rewritten message.

- **C.O.R.E. Breakdown**

C - Context
Forward-safe stakeholder update

O - Objective
Increase professionalism without shifting meaning

R - Requirements
Preserve meaning/structure; keep length within u00b115%; remove casual/defensive phrasing; no new claims/promises/dates

E - Expectations
Return only a paste-ready rewrite

**Pro tip**

If you don’t explicitly ban “new promises,” the model will quietly write commitments you never agreed to. That’s how tone rewrites turn into liabilities.

**Takeaway**

In high-stakes rewrites, constraints protect meaning more than “good writing” does.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that keep a tone rewrite professional *without* changing meaning.

**Challenge — options (10)**

- [✓ correct] Preserve the original meaning and overall structure
- [✓ correct] Keep length within u00b115% (avoid expansion drift)
- [✓ correct] Remove casual and defensive language
- [✓ correct] Ban new claims, promises, dates, or justifications
- [✓ correct] Return only the rewritten message (paste-ready)
- [✗ incorrect] Add a persuasive paragraph to strengthen the argument
- [✗ incorrect] Improve clarity by adding helpful background assumptions
- [✗ incorrect] Make it longer to sound more professional
- [✗ incorrect] Add reassurance to reduce stakeholder concern
- [✗ incorrect] Change the structure to a new format (bullets, headings)

**Result — coaching note**

The risk isn’t grammar—it’s drift. Your prompt must lock meaning and ban “helpful” additions so the tone upgrade doesn’t rewrite the message.

**Result — assembled prompt example**

Rewrite this message to be more professional and forward-safe. Preserve meaning and structure; keep length within u00b115%; remove casual/defensive phrasing; don’t add new claims/promises/dates. Return only the rewrite.

**Result — feedback when correct**

You now control tone without content drift—most people accidentally approve a different message.

**Result — polished prompt**

Rewrite in a professional, forward-safe tone while preserving meaning and structure. Keep length within u00b115%. Remove casual/defensive phrasing. Do not add new claims, promises, dates, or justifications. Return only the rewritten message.

---

#### Scenario 2 — Rewrite for a More Concise Style

**Situation**

You need to send a quick update in a channel where people skim.

Your draft is accurate but wordy—important signals get buried.

If this stays unclear, people will act on the wrong priority.

If you prompt AI weakly, it usually:
- deletes nuance you needed
- keeps the same length with different words
- “summarises” by changing the implied commitment

This is why your prompt fails:
- no definition of what must survive compression
- no target structure for the shorter version
- no guardrails against changing commitments

To get a usable result, your prompt must define:
- Context - skim-friendly status update
- Objective - compress without losing decision signal
- Requirements - keep key facts + next action; remove filler; no new promises
- Expectations - one short paragraph or 2 bullets (your choice)

**Expert prompt**

Rewrite the text to be more concise.

Requirements:
- Keep all essential meaning (facts + next step)
- Remove redundancy and filler
- Do not change commitments, owners, dates, or scope
- Output as exactly 2 bullets: (1) Status, (2) Next

Return only the 2 bullets.

**AI response (example)**

- **Status:** The meeting has been moved to Thursday.
- **Next:** I'll share the updated agenda once it's ready.

Look at how structure creates speed: forcing Status/Next keeps the decision signal visible while everything else gets cut.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *compression with a preserved decision signal*.
- Requirements protected commitments (no scope/date drift)
- Expectations forced a stable shape (Status/Next) so the model couldn’t ramble
- Objective focused on what matters under skim pressure: what changed + what happens next

- **Weak vs Strong Prompt**

Weak prompt:
Make this shorter

Strong prompt:
Rewrite to be concise while keeping essential meaning. Remove redundancy. Do not change commitments/owners/dates/scope. Output as exactly 2 bullets: Status and Next. Return only the bullets.

- **C.O.R.E. Breakdown**

C - Context
Skim-friendly update where people act fast

O - Objective
Compress without losing the decision signal

R - Requirements
Keep facts + next step; remove filler; no commitment/date/scope drift

E - Expectations
Exactly 2 bullets: Status, Next

**Pro tip**

“Make it shorter” is how you lose accountability. Force a tiny structure (Status/Next) so the model can’t delete the one line people actually need.

**Takeaway**

Concision is safer when you specify what must remain visible.

**Challenge (goal)**

Choose the five prompt elements that compress an update *without* losing the decision signal.

**Challenge — options (10)**

- [✓ correct] Keep all essential meaning (facts + next step)
- [✓ correct] Remove redundancy and filler only
- [✓ correct] Do not change commitments, owners, dates, or scope
- [✓ correct] Force output shape: exactly 2 bullets (Status, Next)
- [✓ correct] Return only the final output (no explanations)
- [✗ incorrect] Add motivational language to keep energy high
- [✗ incorrect] Rewrite with new examples to improve clarity
- [✗ incorrect] Add assumptions to make the update feel complete
- [✗ incorrect] Change the tone to be more enthusiastic
- [✗ incorrect] Expand into a detailed paragraph so nothing is missed

**Result — coaching note**

Under skim pressure, the failure mode is deleting the one operational line. Your prompt must protect the “what changed” and “what happens next.”

**Result — assembled prompt example**

Rewrite this to be concise. Keep essential meaning (facts + next step). Remove filler. Don’t change commitments/owners/dates/scope. Output exactly 2 bullets: Status, Next.

**Result — feedback when correct**

You’re now compressing without losing accountability—most people trade clarity for brevity and regret it later.

**Result — polished prompt**

Rewrite to be concise while preserving essential meaning. Remove redundancy only. Do not change commitments/owners/dates/scope. Output exactly 2 bullets: Status and Next. Return only the bullets.

---

#### Scenario 3 — Rewrite for a Friendlier Tone

**Situation**

You need to respond to someone who feels ignored.

Your current draft is correct, but it reads cold—and the relationship cost will show up later.

If you over-correct, you can sound overly casual or apologetic for things you didn’t do.

If you prompt AI weakly, it usually:
- adds fake warmth (“hope you’re well”) that feels off
- over-apologises and creates liability
- becomes informal and loses credibility

To get a usable result, your prompt must define:
- Context - relationship-sensitive reply
- Objective - warmer tone without lowering professional standards
- Requirements - acknowledge, clarify next step, keep boundaries
- Expectations - short, paste-ready response

**Expert prompt**

Rewrite the message to be friendlier while staying professional.

Requirements:
- Preserve meaning
- Add one brief acknowledgement line (no over-apology)
- Keep it concise (max 3 sentences)
- Do not add casual slang or emojis

Return only the rewritten message.

**AI response (example)**

Thanks for checking in — I appreciate the nudge. I'm reviewing the document now and will send the updated version shortly. If there’s a specific section you want prioritised, tell me and I’ll start there.

Pay attention to how tone stays warm without surrendering control: the prompt forced acknowledgement *and* boundaries.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *warmth without liability*.
- Requirements prevented over-apology and casual drift
- Expectations capped length so warmth didn’t become fluff
- Objective kept the message professional while still human

- **Weak vs Strong Prompt**

Weak prompt:
Make this friendlier

Strong prompt:
Rewrite to be friendlier while staying professional. Preserve meaning; add one brief acknowledgement (no over-apology); max 3 sentences; no slang/emojis. Return only the rewritten message.

- **C.O.R.E. Breakdown**

C - Context
Relationship-sensitive reply that may be forwarded

O - Objective
Increase warmth without lowering professionalism

R - Requirements
Preserve meaning; one acknowledgement line; concise; no casual drift

E - Expectations
Max 3 sentences, paste-ready

**Pro tip**

If you don’t say “no over-apology,” the model will invent accountability to sound nice. That’s not friendliness—that’s risk.

**Takeaway**

Friendly tone is a constraint problem, not a personality problem.

**Challenge (goal)**

Choose the five prompt elements that make tone friendlier without becoming casual or over-apologetic.

**Challenge — options (10)**

- [✓ correct] Preserve the original meaning
- [✓ correct] Add one brief acknowledgement line (no over-apology)
- [✓ correct] Keep it concise (max 3 sentences)
- [✓ correct] Stay professional (no slang or emojis)
- [✓ correct] Return only the rewritten message (paste-ready)
- [✗ incorrect] Add playful jokes to build rapport
- [✗ incorrect] Apologise strongly to sound empathetic
- [✗ incorrect] Invent a reason for the delay to reassure them
- [✗ incorrect] Make it much longer to sound thoughtful
- [✗ incorrect] Add emojis to make it warmer

**Result — coaching note**

Warmth that invents accountability is expensive. Specify acknowledgement + boundaries so the model can’t “people-please” its way into risk.

**Result — assembled prompt example**

Rewrite to be friendlier but still professional. Preserve meaning. Add one brief acknowledgement (no over-apology). Max 3 sentences. No slang or emojis. Return only the rewrite.

**Result — feedback when correct**

You’ve learned to add warmth without creating liability—most users over-correct and lose control.

**Result — polished prompt**

Rewrite in a friendlier but still professional tone. Preserve meaning. Add one brief acknowledgement (no over-apology). Keep to max 3 sentences. No slang/emojis. Return only the rewritten message.

---

### Lesson 2 — Rewrite Content for Different Audiences

#### Scenario 1 — Rewrite for a Senior Leadership Audience

**Situation**

You’re turning an internal update into something senior leadership can read in 20 seconds.

They don’t want process—they want outcomes, risk, and the decision ask.

If you oversimplify, you hide the only thing that matters.

If you prompt AI weakly, it usually:
- strips risk to sound “confident”
- adds vague positivity
- removes the decision ask entirely

To get a usable result, your prompt must define:
- Context - exec skim update
- Objective - outcomes + risk + ask, no fluff
- Requirements - high-level, bounded certainty, no invention
- Expectations - short, forward-safe format

**Expert prompt**

Rewrite the update for senior leadership.

Requirements:
- Output exactly 3 bullets: Outcome, Risk, Ask
- Use only confirmed facts; if a detail is missing, mark it [Unknown]
- Keep it concise and forward-safe
- Do not add mitigation claims unless stated

Return only the 3 bullets.

**AI response (example)**

- **Outcome:** The project remains on track for Friday’s milestone based on confirmed progress to date.
- **Risk:** Final validation is in progress; residual risk cannot be quantified yet [Unknown].
- **Ask:** Confirm whether to proceed with the milestone pending validation, or hold until results are confirmed.

This is where you can see executive control: the prompt forced Outcome/Risk/Ask so leadership gets a decision signal, not “an update.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *decision structure under uncertainty*.
- Requirements forced bounded certainty ([Unknown] instead of confident guessing)
- Expectations locked the exec lens (Outcome/Risk/Ask)
- Objective ensured the update produces a decision, not information noise

- **Weak vs Strong Prompt**

Weak prompt:
Rewrite for senior leadership

Strong prompt:
Rewrite for senior leadership. Output exactly 3 bullets: Outcome, Risk, Ask. Facts only; mark gaps [Unknown]. Keep concise and forward-safe. Do not invent mitigation claims. Return only the bullets.

- **C.O.R.E. Breakdown**

C - Context
Exec audience, skim speed, forward-safe

O - Objective
Outcomes + risk + decision ask

R - Requirements
Facts only; [Unknown] for gaps; no invented mitigations; concise

E - Expectations
Exactly 3 bullets: Outcome, Risk, Ask

**Pro tip**

Executives don’t need more detail—they need the *decision boundary*. If you don’t force an Ask, the model will write “next steps” that don’t drive action.

**Takeaway**

For senior audiences, structure is how you earn attention.

**Challenge (goal)**

Choose the five prompt elements that produce an exec-ready Outcome/Risk/Ask without invented certainty.

**Challenge — options (10)**

- [✓ correct] Force exactly 3 bullets: Outcome, Risk, Ask
- [✓ correct] Require confirmed facts only (no guessing)
- [✓ correct] Mark missing details as [Unknown]
- [✓ correct] Keep it concise and forward-safe
- [✓ correct] Ban invented mitigation claims
- [✗ incorrect] Add a motivating intro to set tone
- [✗ incorrect] Remove risk language to sound confident
- [✗ incorrect] Add likely timelines even if not confirmed
- [✗ incorrect] Include background process detail for completeness
- [✗ incorrect] Write a long narrative paragraph

**Result — coaching note**

This is where most AI users fail: they ask for “exec tone” and get confident vagueness. Force structure + bounded certainty so the output stays decision-ready.

**Result — assembled prompt example**

Rewrite for senior leadership as exactly 3 bullets: Outcome, Risk, Ask. Facts only. Mark gaps [Unknown]. No invented mitigations. Return only the bullets.

**Result — feedback when correct**

You’re now writing exec updates that trigger decisions instead of consuming attention.

**Result — polished prompt**

Rewrite for senior leadership using exactly 3 bullets: Outcome, Risk, Ask. Facts only; mark unknowns as [Unknown]. Keep concise and forward-safe. Do not invent mitigations. Return only the bullets.

---

#### Scenario 2 — Rewrite for a Customer Audience

**Situation**

You need to update a customer using text that currently reads like an internal note.

You must be clear, calm, and transparent—without over-committing.

If you sound uncertain, you trigger escalations.

If you sound too certain, you create contractual expectations.

To get a usable result, your prompt must define:
- Context - customer-facing update
- Objective - clarity + reassurance without false promises
- Requirements - approved facts only; tone constraints; commitment boundaries
- Expectations - short, customer-ready message

**Expert prompt**

Rewrite the message for a customer.

Requirements:
- Keep tone calm, confident, and respectful
- Use only confirmed facts; do not invent timelines, causes, or guarantees
- Include: (1) what we know, (2) what we’re doing next, (3) when we’ll update them
- If a detail is unknown, say it’s being investigated (don’t guess)

Return only the rewritten message.

**AI response (example)**

Thank you for your patience. We’re currently reviewing the issue and validating the impact based on the information available so far. Next, we’ll complete our checks and share an update with the latest confirmed details by tomorrow.

The difference is controlled reassurance: the prompt forced a calm tone while banning invented certainty and over-promising.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *reassurance without guarantees*.
- Requirements prevented invented timelines/causes
- Expectations forced a complete customer structure (know / next / update)
- Objective kept the message calm and credible instead of vague or risky

- **Weak vs Strong Prompt**

Weak prompt:
Rewrite this for a customer

Strong prompt:
Rewrite for a customer: calm, confident, respectful. Facts only; no invented timelines/causes/guarantees. Include what we know, what we’re doing next, and when we’ll update. If unknown, say it’s being investigated. Return only the rewrite.

- **C.O.R.E. Breakdown**

C - Context
Customer update with uncertainty and risk of over-commitment

O - Objective
Clear, reassuring, credible communication

R - Requirements
Facts only; no guessing; tone constraints; investigation language for unknowns

E - Expectations
Message includes: what we know / next / when we’ll update

**Pro tip**

Customers escalate when you guess. If you don’t explicitly ban invented timelines, the model will “help” by writing promises you can’t keep.

**Takeaway**

Customer trust is built by credible certainty, not confident guessing.

**Challenge (goal)**

Choose the five prompt elements that make a customer update calm and clear without accidental promises.

**Challenge — options (10)**

- [✓ correct] Keep tone calm, confident, and respectful
- [✓ correct] Use confirmed facts only (no guessing)
- [✓ correct] Ban invented timelines, causes, or guarantees
- [✓ correct] Force structure: what we know / next / when we’ll update
- [✓ correct] If unknown, say it’s being investigated (don’t fill gaps)
- [✗ incorrect] Add a promise that it will be fixed soon
- [✗ incorrect] Explain internal process details for transparency
- [✗ incorrect] Use casual friendliness to reduce tension
- [✗ incorrect] Guess the root cause to sound competent
- [✗ incorrect] Add discounts or compensation language

**Result — coaching note**

The trap is “helpful certainty.” You want reassurance *inside boundaries*, not invented commitments that become someone else’s contract.

**Result — assembled prompt example**

Rewrite for a customer: calm and respectful. Facts only; no invented timelines/causes/guarantees. Include what we know, what we’re doing next, and when we’ll update. If unknown, say it’s being investigated.

**Result — feedback when correct**

You now control customer tone without over-committing—most users accidentally prompt the model into making promises.

**Result — polished prompt**

Rewrite for a customer in a calm, confident, respectful tone. Use confirmed facts only. Do not invent timelines, causes, or guarantees. Include what we know, what we’ll do next, and when we’ll update. If something is unknown, say it’s being investigated.

---

#### Scenario 3 — Rewrite for a Non-Expert Audience

**Situation**

You need to explain something to a non-expert audience without sounding condescending.

If it’s too technical, they misunderstand.

If it’s too simplified, you hide important constraints.

Weak prompting often produces:
- “explain like I’m five” tone that feels insulting
- missing caveats that matter
- invented analogies that change meaning

To get a usable result, your prompt must define:
- Context - non-expert audience with real constraints
- Objective - clarity without distortion
- Requirements - plain language, keep key caveats, no invented analogies
- Expectations - short explanation + one concrete example

**Expert prompt**

Rewrite the text for a non-expert audience.

Requirements:
- Use plain language (avoid jargon)
- Keep the key caveats/constraints (don’t oversimplify)
- Do not invent analogies or new examples
- Include: (1) a 2–3 sentence explanation, (2) one concrete example using only provided details

Return only the rewritten content.

**AI response (example)**

The project is on track, and we’re in the final testing stage to make sure everything works as expected. We’ll share the completed package once that validation is finished.

Example: We’re running the last checks now; when they pass, we’ll send the final version.

What matters here is respectful clarity: the prompt forced plain language while protecting the caveats that keep the explanation true.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *simplification without distortion*.
- Requirements kept caveats visible (validation still pending)
- Expectations demanded a specific shape (short explanation + example)
- The “no invented analogies” rule prevents the model from changing meaning to be relatable

- **Weak vs Strong Prompt**

Weak prompt:
Explain this simply

Strong prompt:
Rewrite for a non-expert audience: plain language, keep key caveats, no invented analogies. Output: 2–3 sentence explanation + one concrete example using only provided details. Return only the content.

- **C.O.R.E. Breakdown**

C - Context
Non-expert audience, real constraints still matter

O - Objective
Clarity without distortion or condescension

R - Requirements
Plain language; keep caveats; no invented analogies/examples

E - Expectations
2–3 sentence explanation + one concrete example (facts only)

**Pro tip**

Non-expert rewrites fail when the model tries to be “relatable” by inventing analogies. If you don’t ban invention, you’ll get clarity that’s wrong.

**Takeaway**

Plain language is only valuable if the constraints survive.

**Challenge (goal)**

Choose the five prompt elements that make a non-expert rewrite clear, accurate, and respectful.

**Challenge — options (10)**

- [✓ correct] Use plain language (avoid jargon)
- [✓ correct] Keep key caveats/constraints visible
- [✓ correct] Ban invented analogies and new examples
- [✓ correct] Force structure: 2–3 sentences + one concrete example
- [✓ correct] Require the example to use only provided details
- [✗ incorrect] Add jokes to keep it engaging
- [✗ incorrect] Remove caveats to keep it simple
- [✗ incorrect] Add new analogies to explain faster
- [✗ incorrect] Assume the audience is fully technical
- [✗ incorrect] Expand into a long educational lesson

**Result — coaching note**

The trap is “simple but wrong.” Protect constraints and ban invention so the non-expert version stays true and usable.

**Result — assembled prompt example**

Rewrite for a non-expert: plain language, keep key caveats, no invented analogies. Output 2–3 sentences + one concrete example using only provided details. Return only the rewrite.

**Result — feedback when correct**

You’re now simplifying without distortion—most users trade accuracy for friendliness.

**Result — polished prompt**

Rewrite for a non-expert audience using plain language. Keep key caveats/constraints. Do not invent analogies or new examples. Output: 2–3 sentences plus one concrete example using only provided details. Return only the rewritten content.

---

### Lesson 3 — Summarise Content Effectively

#### Scenario 1 — Summarise an Email Into Key Points

**Situation**

You have a long email thread with scattered decisions and implied commitments.

People are already acting on different interpretations.

If your summary misses one decision, the team will execute the wrong plan.

Weak prompting usually produces:
- a generic recap with no decisions
- invented “next steps” to look helpful
- softened language that hides risk

To get a usable result, your prompt must define:
- Context - decision extraction from noisy email
- Objective - align everyone on decisions, owners, and open questions
- Requirements - facts only; separate decisions vs open questions; no invention
- Expectations - structured bullets that are easy to forward

**Expert prompt**

Summarise the email into key points.

Requirements:
- Output 3 sections with bullets: Decisions, Action Items, Open Questions
- Use only confirmed information; do not invent owners/dates
- If an owner/date is missing, mark it [Unknown]
- Keep it concise and forward-safe

Return only the summary.

**AI response (example)**

**Decisions**
- Meeting moved to Thursday

**Action Items**
- Share the updated agenda once ready [Owner: Unknown]

**Open Questions**
- When will the agenda be ready? [Unknown]

Notice how uncertainty is handled explicitly: [Unknown] keeps the summary credible instead of “complete-looking.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *decision extraction with bounded certainty*.
- Expectations forced a decision format (Decisions / Actions / Questions)
- Requirements banned invented owners/dates and used [Unknown]
- Objective prevented a “nice recap” that still leaves the team misaligned

- **Weak vs Strong Prompt**

Weak prompt:
Summarise this email

Strong prompt:
Summarise into Decisions, Action Items, Open Questions. Facts only; no invented owners/dates. Mark missing details [Unknown]. Keep concise and forward-safe. Return only the summary.

- **C.O.R.E. Breakdown**

C - Context
Noisy email thread with implied commitments

O - Objective
Align on decisions, actions, and open questions

R - Requirements
Facts only; no invention; [Unknown] for missing owners/dates

E - Expectations
3 sections: Decisions / Action Items / Open Questions

**Pro tip**

Summaries fail when they look “complete” but aren’t. Force Open Questions and [Unknown] so missing information stays visible instead of silently guessed.

**Takeaway**

A useful summary preserves uncertainty instead of hiding it.

**Challenge (goal)**

Choose the five prompt elements that extract decisions and action items without invented completeness.

**Challenge — options (10)**

- [✓ correct] Use fixed sections: Decisions / Action Items / Open Questions
- [✓ correct] Facts only (no invented owners/dates)
- [✓ correct] Mark missing details as [Unknown]
- [✓ correct] Keep it concise and forward-safe
- [✓ correct] Return only the summary (no commentary)
- [✗ incorrect] Add recommended next steps for the team
- [✗ incorrect] Guess the owner based on context
- [✗ incorrect] Remove open questions to look decisive
- [✗ incorrect] Write a narrative paragraph to capture nuance
- [✗ incorrect] Add a friendly intro and closing

**Result — coaching note**

Most summaries break trust by hiding gaps. “Open Questions + [Unknown]” is how you keep alignment without guessing.

**Result — assembled prompt example**

Summarise into Decisions, Action Items, Open Questions. Facts only; no invented owners/dates. Mark missing details [Unknown]. Keep concise and forward-safe. Return only the summary.

**Result — feedback when correct**

You’re now extracting decisions without inventing certainty—this is where you gain an operational advantage.

**Result — polished prompt**

Summarise the email into three sections: Decisions, Action Items, Open Questions. Use confirmed facts only. Do not invent owners or dates; mark missing details as [Unknown]. Keep concise and forward-safe. Return only the summary.

---

#### Scenario 2 — Summarise Meeting Notes into Actionable Steps

**Situation**

Your meeting notes are messy: partial decisions, half-formed ideas, and unresolved debates.

If you summarise as if things are decided, you create fake alignment.

If you summarise as raw notes, nobody acts.

To get a usable result, your prompt must define:
- Context - messy notes with mixed certainty
- Objective - action plan + open decisions
- Requirements - separate decided vs proposed vs unknown; no invention
- Expectations - clear action list with owners/dates marked if missing

**Expert prompt**

Summarise the meeting notes into actionable steps.

Requirements:
- Output 3 sections: Agreed Actions, Proposed Ideas (not decided), Open Decisions
- For each action, include Owner and Due Date; if missing, mark [Owner: Unknown] / [Due: Unknown]
- Do not invent decisions, owners, or deadlines
- Keep tone neutral and operational

Return only the summary.

**AI response (example)**

**Agreed Actions**
- Share the updated agenda [Owner: Unknown] [Due: Unknown]

**Proposed Ideas (not decided)**
- Review the draft before revisions are finalised [Unknown]

**Open Decisions**
- Confirm revision scope before finalising [Unknown]

The control point is certainty hygiene: the prompt forced separation of decided vs proposed so the output doesn’t pretend the meeting was cleaner than it was.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *certainty hygiene*.
- Expectations forced three certainty buckets (Agreed / Proposed / Open)
- Requirements prevented invented owners/dates and used [Unknown]
- Objective produced actionability without fake alignment

- **Weak vs Strong Prompt**

Weak prompt:
Turn these notes into action items

Strong prompt:
Summarise into Agreed Actions, Proposed Ideas (not decided), Open Decisions. For each action include Owner/Due Date; mark missing as [Unknown]. Do not invent decisions/owners/deadlines. Return only the summary.

- **C.O.R.E. Breakdown**

C - Context
Messy meeting notes with mixed certainty

O - Objective
Actionability without pretending decisions are final

R - Requirements
Separate certainty buckets; no invention; [Unknown] for missing owner/date

E - Expectations
3 sections with structured action items

**Pro tip**

If you don’t explicitly separate “proposed” from “agreed,” the model will “clean up” by turning suggestions into commitments. That’s how teams ship the wrong work.

**Takeaway**

Meeting summaries should preserve what’s unresolved.

**Challenge (goal)**

Choose the five prompt elements that turn messy notes into action steps without inventing alignment.

**Challenge — options (10)**

- [✓ correct] Separate Agreed Actions vs Proposed Ideas vs Open Decisions
- [✓ correct] Require Owner and Due Date fields for each action
- [✓ correct] Mark missing Owner/Due Date as [Unknown]
- [✓ correct] Ban invented decisions, owners, or deadlines
- [✓ correct] Keep tone neutral and operational
- [✗ incorrect] Resolve open decisions to sound decisive
- [✗ incorrect] Invent owners based on seniority
- [✗ incorrect] Add deadlines to create urgency
- [✗ incorrect] Write a long narrative summary paragraph
- [✗ incorrect] Remove “proposed ideas” to reduce confusion

**Result — coaching note**

The highest-risk failure is “cleaning” ambiguity into fake certainty. Preserve the buckets so execution matches reality.

**Result — assembled prompt example**

Summarise notes into Agreed Actions, Proposed Ideas (not decided), Open Decisions. Include Owner and Due Date for actions; mark missing as [Unknown]. Don’t invent decisions/owners/deadlines. Return only the summary.

**Result — feedback when correct**

You’re now producing meeting outputs that drive action without creating fake commitments.

**Result — polished prompt**

Summarise meeting notes into three sections: Agreed Actions, Proposed Ideas (not decided), Open Decisions. For actions include Owner and Due Date; mark missing as [Unknown]. Do not invent decisions, owners, or deadlines. Neutral, operational tone.

---

#### Scenario 3 — Summarise a Document into One Sentence

**Situation**

You need a one-sentence summary that will be quoted.

If it’s too vague, it’s useless.

If it’s too specific, it implies certainty you don’t have.

Weak prompting often produces:
- bland statements that say nothing
- invented precision to sound smart
- a sentence that changes the intent

To get a usable result, your prompt must define:
- Context - quoteable one-liner
- Objective - accurate, decision-relevant summary
- Requirements - facts only; preserve intent; no invented specificity
- Expectations - one sentence, no qualifiers that change meaning

**Expert prompt**

Summarise the document in one sentence.

Requirements:
- Exactly one sentence
- Preserve the original intent
- Use only confirmed facts; do not invent specifics
- Keep it plain and quoteable (no hype)

Return only the one sentence.

**AI response (example)**

Final validation is underway, and we will share the completed package once checks are finished.

What matters here is disciplined brevity: the prompt forced one sentence while banning invented “precision” that would change the claim.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *quote safety*.
- Expectations forced exactly one sentence
- Requirements banned invented specificity and hype
- Objective protected intent so the sentence can be repeated without distortion

- **Weak vs Strong Prompt**

Weak prompt:
Summarise this in one sentence

Strong prompt:
Exactly one sentence. Preserve intent. Facts only; don’t invent specifics. Plain, quoteable tone; no hype. Return only the sentence.

- **C.O.R.E. Breakdown**

C - Context
One-liner that will be quoted

O - Objective
Accurate, decision-relevant summary without over-claiming

R - Requirements
Facts only; preserve intent; no invented specificity; no hype

E - Expectations
Exactly one sentence, output only

**Pro tip**

One-sentence summaries fail when the model tries to sound “smart” by adding precision you didn’t provide. Ban invention or you’ll ship a new claim.

**Takeaway**

Quoteable summaries require tighter constraints than long drafts.

**Challenge (goal)**

Choose the five prompt elements that produce a quote-safe one-sentence summary without invented specifics.

**Challenge — options (10)**

- [✓ correct] Exactly one sentence
- [✓ correct] Preserve original intent
- [✓ correct] Facts only (no invented specifics)
- [✓ correct] Plain, quoteable tone (no hype)
- [✓ correct] Return only the sentence (no extras)
- [✗ incorrect] Add a confident claim to make it strong
- [✗ incorrect] Use persuasive language to increase impact
- [✗ incorrect] Include multiple sentences for nuance
- [✗ incorrect] Add likely details to sound complete
- [✗ incorrect] Use jargon to sound professional

**Result — coaching note**

In one-liners, the danger is invented precision. Lock the sentence count and ban invention so the summary stays quote-safe.

**Result — assembled prompt example**

Summarise in exactly one sentence. Preserve intent. Facts only—don’t invent specifics. Plain, quoteable tone. Return only the sentence.

**Result — feedback when correct**

You’re now generating quote-safe summaries—most users accidentally prompt the model into creating new claims.

**Result — polished prompt**

Summarise in exactly one sentence. Preserve the original intent. Use confirmed facts only; do not invent specifics. Keep it plain and quoteable (no hype). Return only the sentence.

---

### Lesson 4 — Expand Content When Needed

#### Scenario 1 — Expand a Short Note Into a Full Paragraph

**Situation**

You have a short note that needs to become a usable paragraph for a stakeholder update.

If you expand too freely, you introduce details you can’t defend.

If you expand too conservatively, the paragraph still doesn’t help anyone.

To get a usable result, your prompt must define:
- Context - expansion for stakeholder readability
- Objective - add context without inventing facts
- Requirements - stay within provided information; add only clarifying context; keep tone professional
- Expectations - one paragraph, specific length constraint

**Expert prompt**

Expand the note into one paragraph.

Requirements:
- Keep the meaning the same
- Add only clarifying context (no new facts, dates, causes, or promises)
- Keep it professional and concrete
- Target 70–90 words

Return only the paragraph.

**AI response (example)**

The team is making steady progress on the project and is currently focused on completing the remaining work needed for the next milestone. We’re validating the latest changes to ensure the outcome is stable and ready for review. Once validation is complete, we’ll share the updated package and confirm the next steps based on the confirmed results.

Notice how the word limit and “no new facts” rule prevents the model from filling gaps with confident-sounding fiction.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *safe expansion*.
- Requirements banned new facts and promises
- Expectations set a tight word window to keep it useful (not endless)
- Objective made the paragraph readable without changing the underlying claim

- **Weak vs Strong Prompt**

Weak prompt:
Turn this into a paragraph

Strong prompt:
Expand into one paragraph (70–90 words). Preserve meaning. Add only clarifying context; no new facts/dates/causes/promises. Professional tone. Return only the paragraph.

- **C.O.R.E. Breakdown**

C - Context
Short note needs to become stakeholder-readable

O - Objective
Add context without inventing reality

R - Requirements
Preserve meaning; no new facts/dates/causes/promises; clarifying context only

E - Expectations
One paragraph, 70–90 words, output only

**Pro tip**

Expansion is where hallucination hides. If you don’t ban new facts, the model will “help” by making your paragraph sound more complete than your inputs.

**Takeaway**

Expanding safely requires tighter rules than summarising.

**Challenge (goal)**

Choose the five prompt elements that expand a note into a useful paragraph without inventing details.

**Challenge — options (10)**

- [✓ correct] Preserve the original meaning
- [✓ correct] Ban new facts, dates, causes, or promises
- [✓ correct] Allow only clarifying context (no new claims)
- [✓ correct] Set a word target (70–90 words)
- [✓ correct] Return only the paragraph
- [✗ incorrect] Add plausible examples to make it concrete
- [✗ incorrect] Invent a timeline to increase clarity
- [✗ incorrect] Make it long to cover everything
- [✗ incorrect] Add a confident conclusion to sound decisive
- [✗ incorrect] Add new commitments to reassure readers

**Result — coaching note**

This is where most AI users get burned: expansion invites invention. Your prompt must prohibit new facts and cap length.

**Result — assembled prompt example**

Expand this note into one paragraph (70–90 words). Preserve meaning. Add only clarifying context—no new facts/dates/causes/promises. Professional tone. Return only the paragraph.

**Result — feedback when correct**

You’re now expanding content without hallucinated details—this is a real professional advantage.

**Result — polished prompt**

Expand into one professional paragraph (70–90 words). Preserve meaning. Add only clarifying context. Do not add new facts, dates, causes, or promises. Return only the paragraph.

---

#### Scenario 2 — Expand Bullet Points Into a Short Explanation

**Situation**

You have bullets that are correct but too thin to be understood by someone outside the project.

If you expand with guesses, you introduce risk.

If you expand with generic filler, you waste attention.

To get a usable result, your prompt must define:
- Context - bullets need explanatory glue
- Objective - add clarity without new information
- Requirements - keep bullets’ meaning; add only connective explanation; no invention
- Expectations - short explanation with a strict sentence limit

**Expert prompt**

Expand the bullet points into a short explanation.

Requirements:
- Preserve the meaning of each bullet
- Add only connective explanation (no new facts, owners, dates)
- Use exactly 3 sentences
- Keep tone professional and clear

Return only the explanation.

**AI response (example)**

We’ve completed initial testing and the results look stable so far. The team is preparing the remaining changes for review, and we’ll share an updated package once validation is complete. The goal is to keep progress visible without claiming certainty that hasn’t been confirmed.

The difference is controlled context: the 3-sentence cap forces clarity without inviting invented detail.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *connective explanation without invention*.
- Requirements banned new facts/owners/dates
- Expectations set a strict sentence count to prevent rambling
- Objective ensured clarity is added as glue, not new substance

- **Weak vs Strong Prompt**

Weak prompt:
Expand these bullets

Strong prompt:
Expand into exactly 3 sentences. Preserve each bullet’s meaning. Add only connective explanation; no new facts/owners/dates. Professional, clear tone. Return only the explanation.

- **C.O.R.E. Breakdown**

C - Context
Bullets are correct but not self-explanatory

O - Objective
Add clarity without adding new information

R - Requirements
Preserve meaning; no new facts/owners/dates; connective glue only

E - Expectations
Exactly 3 sentences, output only

**Pro tip**

If you don’t say “connective explanation only,” the model will invent details to make the story smoother. Smoothness is not truth.

**Takeaway**

Expansion should add clarity, not new claims.

**Challenge (goal)**

Choose the five prompt elements that expand bullets into a short explanation without new facts.

**Challenge — options (10)**

- [✓ correct] Preserve each bullet’s meaning
- [✓ correct] Add only connective explanation (no new facts)
- [✓ correct] Ban new owners, dates, or commitments
- [✓ correct] Force exactly 3 sentences
- [✓ correct] Return only the explanation
- [✗ incorrect] Add examples to make it clearer
- [✗ incorrect] Make it as detailed as possible
- [✗ incorrect] Invent missing context to fill gaps
- [✗ incorrect] Add a motivating closing line
- [✗ incorrect] Change the bullets into new priorities

**Result — coaching note**

The trap is invented context. Use sentence caps and explicit “no new facts” rules to keep expansion honest.

**Result — assembled prompt example**

Expand these bullets into exactly 3 sentences. Preserve meaning. Add only connective explanation; no new facts/owners/dates. Professional tone. Return only the explanation.

**Result — feedback when correct**

You’re now expanding for clarity without hallucinating detail—most users can’t tell when the model starts guessing.

**Result — polished prompt**

Expand the bullets into a short explanation using exactly 3 sentences. Preserve meaning. Add only connective explanation. Do not add new facts, owners, dates, or commitments. Return only the explanation.

---

#### Scenario 3 — Expand a Brief Update Into a Multi-Sentence Summary

**Situation**

You have a brief update that isn’t usable by stakeholders—they need enough context to interpret progress.

The catch: you can’t invent certainty or fill in missing details.

If this goes wrong, people will read confidence where none exists and plan accordingly.

To get a usable result, your prompt must define:
- Context - stakeholder summary under uncertainty
- Objective - add interpretive context without new facts
- Requirements - preserve meaning; no invented details; keep uncertainty explicit
- Expectations - 3–4 sentences, professional tone

**Expert prompt**

Expand the update into a 3–4 sentence summary.

Requirements:
- Preserve meaning
- Add only relevant context (no new facts, dates, owners, or guarantees)
- If something is not stated, do not guess
- Keep tone professional and decision-ready

Return only the summary.

**AI response (example)**

The team is making steady progress on the project and is nearing the end of testing. So far, no major issues have been reported in the information available, but validation is still in progress. Once validation is complete, we will share the updated package and confirm next steps based on the confirmed results. I'll provide the next update after validation is finished.

What matters here is preserved uncertainty: the prompt prevented the model from turning “so far” into a guarantee.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *context without false certainty*.
- Requirements banned new facts, owners, dates, and guarantees
- Expectations set 3–4 sentences so it’s usable but contained
- Objective kept it decision-ready by anchoring the next update to a real checkpoint

- **Weak vs Strong Prompt**

Weak prompt:
Make this update longer

Strong prompt:
Expand into 3–4 professional, decision-ready sentences. Preserve meaning. Add only relevant context; no new facts/owners/dates/guarantees. Don’t guess missing details. Return only the summary.

- **C.O.R.E. Breakdown**

C - Context
Stakeholders need interpretive context without invented certainty

O - Objective
Make the update usable without changing the claim

R - Requirements
Preserve meaning; no invention; no guarantees; don’t guess

E - Expectations
3–4 sentences, professional and decision-ready

**Pro tip**

“No issues so far” is not the same as “no issues.” If you don’t enforce uncertainty language, the model will quietly upgrade your confidence level.

**Takeaway**

Decision-ready writing keeps uncertainty explicit.

**Challenge (goal)**

Choose the five prompt elements that expand an update while preserving uncertainty and avoiding invented details.

**Challenge — options (10)**

- [✓ correct] Preserve the original meaning
- [✓ correct] Ban new facts, owners, dates, or guarantees
- [✓ correct] Explicitly instruct: do not guess missing details
- [✓ correct] Set output length: 3–4 sentences
- [✓ correct] Keep tone professional and decision-ready
- [✗ incorrect] Add confident reassurance to reduce concern
- [✗ incorrect] Invent a timeline to make it actionable
- [✗ incorrect] Assume the update is positive and celebrate wins
- [✗ incorrect] Add technical detail to sound credible
- [✗ incorrect] Rewrite the scope to include more accomplishments

**Result — coaching note**

This is where writing turns into decision risk: accidental certainty. Preserve uncertainty and ban invention so stakeholders don’t plan off a story you didn’t confirm.

**Result — assembled prompt example**

Expand into 3–4 sentences. Preserve meaning. Add only relevant context—no new facts/owners/dates/guarantees. Don’t guess missing details. Professional, decision-ready tone.

**Result — feedback when correct**

You’re now adding context without upgrading certainty—most users can’t stop the model from “sounding sure.”

**Result — polished prompt**

Expand the update into 3–4 professional, decision-ready sentences. Preserve meaning. Add only relevant context. Do not add new facts, owners, dates, or guarantees. Do not guess missing details. Return only the summary.

---

### Lesson 5 — Repurpose Content for New Formats

#### Scenario 1 — Turn an Email Into a Short Announcement

**Situation**

You need to repurpose a long email into a short announcement.

The risk: announcements strip nuance, so you must choose what stays visible.

If this is unclear, people will misunderstand the ask and execution slips.

To get a usable result, your prompt must define:
- Context - announcement format with skim constraints
- Objective - keep only essential info + clear ask
- Requirements - no new details; include deadline only if provided; keep tone crisp
- Expectations - 2–3 lines, announcement voice

**Expert prompt**

Rewrite the email as a short announcement.

Requirements:
- Keep only essential points and the single call-to-action
- Max 3 lines
- Do not add new details, timelines, or reasons
- Keep tone clear and crisp

Return only the announcement.

**AI response (example)**

New onboarding materials are ready. Please review them before Friday so we can finalise the rollout next week.

The control point is format discipline: the max-lines constraint forces true repurposing instead of “the same email, shorter.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *format discipline*.
- Expectations capped length (max 3 lines)
- Requirements banned new details and reasons
- Objective kept the output announcement-shaped: essential info + one CTA

- **Weak vs Strong Prompt**

Weak prompt:
Turn this email into an announcement

Strong prompt:
Rewrite as a short announcement: keep only essentials + single CTA, max 3 lines, no new details/timelines/reasons, crisp tone. Return only the announcement.

- **C.O.R.E. Breakdown**

C - Context
Repurposing long email into skim announcement

O - Objective
Essential info + clear CTA, nothing extra

R - Requirements
No invention; keep it crisp; deadline only if provided

E - Expectations
Max 3 lines, announcement voice

**Pro tip**

Announcements fail when they include “helpful context” nobody asked for. If you don’t cap length, the model will drag the email into the announcement and ruin the format.

**Takeaway**

Repurposing is choosing what to delete without deleting what matters.

**Challenge (goal)**

Choose the five prompt elements that repurpose an email into a short announcement without adding new information.

**Challenge — options (10)**

- [✓ correct] Keep only essential points and a single call-to-action
- [✓ correct] Max 3 lines
- [✓ correct] Do not add new details, timelines, or reasons
- [✓ correct] Use crisp, announcement-style tone
- [✓ correct] Return only the announcement
- [✗ incorrect] Add background context to prevent confusion
- [✗ incorrect] Add an extra CTA to increase compliance
- [✗ incorrect] Invent benefits to persuade readers
- [✗ incorrect] Write a long paragraph to be thorough
- [✗ incorrect] Add informal friendliness to make it warm

**Result — coaching note**

Repurposing breaks when the model expands. Cap length and ban invention so the announcement stays an announcement.

**Result — assembled prompt example**

Rewrite as a short announcement: essentials + one CTA, max 3 lines, no new details/timelines/reasons, crisp tone. Return only the announcement.

**Result — feedback when correct**

You’re now controlling format under constraints—most users get “shorter email,” not an actual announcement.

**Result — polished prompt**

Rewrite as a short announcement. Keep only essential points and the single call-to-action. Max 3 lines. Do not add new details, timelines, or reasons. Crisp tone. Return only the announcement.

---

#### Scenario 2 — Turn a Status Update Into a One-Sentence Summary

**Situation**

You need a one-sentence status line for a dashboard.

Dashboards punish ambiguity: one wrong sentence becomes a false signal.

If you overstate progress, leadership thinks risk is gone.

If you understate it, teams overreact.

To get a usable result, your prompt must define:
- Context - dashboard one-liner
- Objective - accurate signal without hype
- Requirements - facts only; preserve intent; no invented confidence
- Expectations - exactly one sentence, plain tone

**Expert prompt**

Rewrite the status update as exactly one sentence.

Requirements:
- Preserve meaning
- Facts only; do not add new information
- Keep tone plain and neutral
- Avoid hype or certainty inflation

Return only the sentence.

**AI response (example)**

Testing is nearly complete, and we remain on track for Thursday's release based on current confirmed progress.

What matters here is signal integrity: the prompt prevents “confident rewriting” that quietly upgrades certainty.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *signal integrity*.
- Expectations forced exactly one sentence
- Requirements banned new info and hype
- Objective kept it dashboard-safe: accurate, neutral, and quoteable

- **Weak vs Strong Prompt**

Weak prompt:
Make this a one-line update

Strong prompt:
Exactly one sentence. Preserve meaning. Facts only—no new info. Plain neutral tone; avoid hype or certainty inflation. Return only the sentence.

- **C.O.R.E. Breakdown**

C - Context
Dashboard one-liner that becomes a decision signal

O - Objective
Accurate, neutral summary without hype

R - Requirements
Facts only; preserve intent; no certainty inflation

E - Expectations
Exactly one sentence, output only

**Pro tip**

Dashboards amplify errors. If you don’t prohibit certainty inflation, the model will turn “nearly complete” into “done” in spirit—and people will plan off it.

**Takeaway**

One sentence can’t carry nuance, so your constraints must.

**Challenge (goal)**

Choose the five prompt elements that produce a dashboard-safe one-sentence status signal.

**Challenge — options (10)**

- [✓ correct] Exactly one sentence
- [✓ correct] Preserve original meaning
- [✓ correct] Facts only (no new information)
- [✓ correct] Plain, neutral tone (no hype)
- [✓ correct] Avoid certainty inflation
- [✗ incorrect] Add a confident “all good” vibe
- [✗ incorrect] Add new details to be helpful
- [✗ incorrect] Use celebratory tone to motivate the team
- [✗ incorrect] Write two sentences for nuance
- [✗ incorrect] Invent a reason for delays to reassure

**Result — coaching note**

Dashboards are where “slight” drift becomes a decision error. Lock sentence count and ban certainty inflation.

**Result — assembled prompt example**

Rewrite as exactly one sentence. Preserve meaning. Facts only; no new info. Plain neutral tone; avoid hype and certainty inflation. Return only the sentence.

**Result — feedback when correct**

You now control status signals that people can safely act on—most users accidentally publish overconfidence.

**Result — polished prompt**

Rewrite the update as exactly one sentence. Preserve meaning. Facts only—do not add new information. Plain neutral tone. Avoid hype or certainty inflation. Return only the sentence.

---

#### Scenario 3 — Turn a List of Points Into a Short Script

**Situation**

You need to speak these points in a live setting.

If the script is too stiff, you sound robotic.

If it’s too casual, you lose credibility.

If it invents details, you can’t defend them on the spot.

To get a usable result, your prompt must define:
- Context - spoken delivery under scrutiny
- Objective - natural script that stays true
- Requirements - no invention; keep key points; professional tone
- Expectations - 20–30 seconds, 3–4 sentences

**Expert prompt**

Rewrite the points as a short spoken script.

Requirements:
- 3–4 sentences (20–30 seconds spoken)
- Preserve meaning of all points
- Keep tone natural but professional
- Do not add new facts or promises

Return only the script.

**AI response (example)**

We've completed initial testing and things look stable so far. The team is preparing the final changes for review, and we’ll share the updated package on Thursday. If anything in validation changes that picture, we’ll flag it immediately.

Notice how the prompt prevents stage-fright hallucination: it bans invention while still allowing a natural spoken rhythm.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *spoken naturalness without invention*.
- Expectations set a delivery window (20–30 seconds)
- Requirements banned new facts/promises
- Objective kept credibility: natural tone, professional boundaries

- **Weak vs Strong Prompt**

Weak prompt:
Turn this into a script

Strong prompt:
Rewrite as a spoken script: 3–4 sentences (20–30 seconds). Preserve meaning. Natural but professional tone. No new facts/promises. Return only the script.

- **C.O.R.E. Breakdown**

C - Context
Live delivery where you must defend every claim

O - Objective
Natural script that stays true to the inputs

R - Requirements
Preserve points; no invention; professional boundaries

E - Expectations
3–4 sentences, 20–30 seconds, output only

**Pro tip**

Live scripts are where invented details blow up. If you don’t ban invention, the model will add “smooth transitions” that become new claims you have to defend.

**Takeaway**

Natural tone is safe only when facts are locked.

**Challenge (goal)**

Choose the five prompt elements that produce a natural spoken script without introducing new claims.

**Challenge — options (10)**

- [✓ correct] Set structure: 3–4 sentences (20–30 seconds)
- [✓ correct] Preserve meaning of all points
- [✓ correct] Natural but professional tone
- [✓ correct] Ban new facts or promises
- [✓ correct] Return only the script
- [✗ incorrect] Add extra examples to make it engaging
- [✗ incorrect] Invent a story to make it memorable
- [✗ incorrect] Make it very casual to sound authentic
- [✗ incorrect] Expand to 2 minutes for clarity
- [✗ incorrect] Add confident guarantees to reassure

**Result — coaching note**

In a live script, any invented detail becomes your responsibility. Lock facts, cap length, and ban new promises.

**Result — assembled prompt example**

Rewrite as a spoken script: 3–4 sentences (20–30 seconds). Preserve meaning. Natural but professional tone. No new facts or promises. Return only the script.

**Result — feedback when correct**

You now get speakable scripts that don’t create new liabilities—most users can’t stop the model from “adding.”

**Result — polished prompt**

Rewrite the points as a short spoken script (3–4 sentences, ~20–30 seconds). Preserve meaning of all points. Keep tone natural but professional. Do not add new facts or promises. Return only the script.

---

## Track 7 — Root-Cause Thinking
*Source: `lib/data/tracks/track7_problem_solving_analysis.dart`*

### Lesson 1 — Turn Problems Into Clear AI Questions

#### Scenario 1 — Turn a messy problem description into a clear AI question

**Situation**

You have a long, disorganised description of a process issue.

Multiple people are blaming different steps, and the “problem” keeps shifting depending on who you ask.

If you ask AI a vague question, you’ll get a vague answer—then everyone argues about the output instead of investigating.

Weak prompting usually:
- turns noise into a generic “how to improve” answer
- invents likely causes to sound confident
- collapses competing narratives into one neat story

To get a usable result, your prompt must define:
- Context - messy description with competing viewpoints
- Objective - produce one investigable question
- Requirements - keep the core problem, timeframe, and target insight; no invented causes
- Expectations - one question + a short list of clarifying questions needed next

**Expert prompt**

Rewrite the description into a single, investigable question.

Requirements:
- Preserve the core problem and the insight needed
- Do not invent root causes or solutions
- Include the timeframe/scope if stated; if missing, mark it [Unknown]
- Output format:
  1) One clear question
  2) 3 clarifying questions we must answer next

Return only the output in that format.

**AI response (example)**

**Investigable question**
What is causing the delay in the approval workflow, and which specific step should we focus on first to reduce end-to-end processing time?

**Clarifying questions (next)**
- Which step(s) show the longest wait time vs active work time? [Unknown]
- Is the delay consistent or concentrated during specific periods (e.g., peak hours, end-of-month)? [Unknown]
- Are delays driven by policy/criteria, tooling, or handoffs between roles? [Unknown]

What matters here is disciplined ambiguity: the prompt bans invented causes and forces “what we need next,” so the question becomes investigable instead of opinionated.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *investigability*.
- Requirements banned invented causes/solutions
- Expectations forced two outputs: one question + the next clarifiers
- Objective kept the work real: you’re defining the investigation, not writing a recommendation

- **Weak vs Strong Prompt**

Weak prompt:
Turn this into a clear question

Strong prompt:
Rewrite into a single investigable question. Preserve the core problem and insight needed. Don’t invent root causes or solutions. Include timeframe/scope if stated; otherwise mark [Unknown]. Output: (1) one question, (2) 3 clarifying questions needed next.

- **C.O.R.E. Breakdown**

C - Context
Messy description with competing narratives

O - Objective
One investigable question that guides analysis

R - Requirements
Preserve core problem + desired insight; no invention; [Unknown] for missing scope

E - Expectations
One clear question + 3 clarifying questions (next)

**Pro tip**

If you don’t force “clarifying questions,” the model will fake certainty by inventing causes. That feels helpful—and it’s exactly how teams chase the wrong thing.

**Takeaway**

Good problem questions preserve uncertainty and make it actionable.

**Challenge (goal)**

Choose the five prompt elements that turn a messy description into an investigable question without invented causes.

**Challenge — options (10)**

- [✓ correct] Require one clear, investigable question (not a solution)
- [✓ correct] Ban invented root causes and solutions
- [✓ correct] Preserve the core problem and the insight needed
- [✓ correct] Include timeframe/scope if stated; otherwise mark [Unknown]
- [✓ correct] Require 3 clarifying questions needed next
- [✗ incorrect] Ask for recommendations to fix the issue
- [✗ incorrect] Let AI guess likely causes to save time
- [✗ incorrect] Remove ambiguity so it sounds confident
- [✗ incorrect] Ask for a long narrative explanation
- [✗ incorrect] Add an emotional tone to increase urgency

**Result — coaching note**

Your advantage here is refusing fake certainty. Force “investigable question + next clarifiers” so the model can’t hallucinate the analysis.

**Result — assembled prompt example**

Rewrite into one investigable question. Preserve core problem + insight needed. No invented causes/solutions. Include scope/timeframe; if missing mark [Unknown]. Output one question + 3 clarifying questions.

**Result — feedback when correct**

You now turn messy reality into an investigation instead of a debate—most people skip this and get generic answers.

**Result — polished prompt**

Rewrite the description into one investigable question. Preserve the core problem and the insight needed. Do not invent root causes or solutions. Include timeframe/scope if stated; otherwise mark [Unknown]. Output: (1) one clear question, (2) three clarifying questions needed next.

---

#### Scenario 2 — Turn complaints into actionable questions

**Situation**

You receive vague complaints like “the system is slow.”

The complaint could mean latency, timeouts, poor UX, or an upstream dependency—and different teams will interpret it differently.

If you ask AI a generic question, you’ll get generic optimisation advice.

To get a usable result, your prompt must define:
- Context - vague complaint with multiple plausible meanings
- Objective - translate it into an actionable diagnostic question
- Requirements - specify where/when it happens, what “slow” means, and what signal would confirm a cause
- Expectations - one diagnostic question + what data to collect

**Expert prompt**

Rewrite the complaint into a single, actionable diagnostic question.

Requirements:
- Define what “slow” refers to (response time, timeouts, perceived lag) as [Unknown] if not stated
- Specify when/where it happens (e.g., peak hours, specific workflow) as [Unknown] if not stated
- Do not propose solutions
- Output format:
  1) One diagnostic question
  2) 3 data points to collect next

Return only the output.

**AI response (example)**

**Diagnostic question**
What is driving slow system responsiveness during peak usage, and is the delay caused by backend processing time, network latency, or client-side rendering?

**Data to collect (next)**
- Response-time breakdown by stage (client -> network -> server -> database) [Unknown]
- Error/timeout rates and correlation with peak periods [Unknown]
- Workflow/endpoint-specific latency hotspots (top 5) [Unknown]

Look at how the question becomes actionable: the prompt forces definitions and evidence needs instead of letting “slow” remain a vibe.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *operational definition*.
- Requirements forced definitions for “slow” and when/where it occurs
- Expectations required data collection, not solutions
- Objective produced a question that multiple teams can align on (same evidence, same target)

- **Weak vs Strong Prompt**

Weak prompt:
Rewrite this complaint into a question

Strong prompt:
Rewrite into one actionable diagnostic question. Define what “slow” means and when/where it happens (mark unknowns). Do not propose solutions. Output one question + 3 data points to collect next.

- **C.O.R.E. Breakdown**

C - Context
Vague complaint with multiple plausible meanings

O - Objective
Translate into a diagnostic question teams can act on

R - Requirements
Define “slow”; specify where/when; no solutions; mark unknowns

E - Expectations
One diagnostic question + 3 data points to collect

**Pro tip**

“Actionable” means you can collect evidence. If you don’t force data points, the model will jump to solutions and you’ll waste a week “optimising” the wrong layer.

**Takeaway**

Define the problem in evidence terms before you ask for fixes.

**Challenge (goal)**

Choose the five prompt elements that turn a vague complaint into an evidence-driven diagnostic question.

**Challenge — options (10)**

- [✓ correct] Require a single diagnostic question (not generic advice)
- [✓ correct] Force definitions for “slow” (mark as [Unknown] if missing)
- [✓ correct] Force when/where it occurs (mark as [Unknown] if missing)
- [✓ correct] Ban solutions in the output
- [✓ correct] Require 3 specific data points to collect next
- [✗ incorrect] Ask for a list of optimisation tips
- [✗ incorrect] Assume the backend is the problem
- [✗ incorrect] Write a long explanation of why systems slow down
- [✗ incorrect] Remove unknowns to make it sound confident
- [✗ incorrect] Add emotional urgency to motivate action

**Result — coaching note**

Your edge is precision: definitions + evidence. This stops the model from turning complaints into generic “best practices.”

**Result — assembled prompt example**

Rewrite into one actionable diagnostic question. Define what “slow” means and when/where it occurs (mark unknowns). No solutions. Output one question + 3 data points to collect next.

**Result — feedback when correct**

You’re now converting complaints into investigations—most people skip definitions and get useless optimisation advice.

**Result — polished prompt**

Rewrite the complaint into one actionable diagnostic question. Define what “slow” refers to and when/where it happens (mark unknowns). Do not propose solutions. Output: one question plus three data points to collect next.

---

#### Scenario 3 — Turn ambiguous requests into precise questions

**Situation**

Someone asks, “Can you check what’s happening with the reports?”

That could mean missing data, a pipeline failure, a permissions issue, or “the numbers look weird.”

If you turn this into a shallow question, you’ll get a shallow answer—and then you still won’t know what to check.

To get a usable result, your prompt must define:
- Context - ambiguous request with multiple failure modes
- Objective - turn it into a precise investigative question
- Requirements - specify what “wrong” means, what to verify first, and what evidence is needed
- Expectations - one question + a triage checklist

**Expert prompt**

Rewrite the request into a precise investigative question.

Requirements:
- Do not assume the cause
- Clarify what “reports” refers to (generation failure vs incorrect numbers) as [Unknown] if not stated
- Output format:
  1) One precise question
  2) A 4-step triage checklist (what to check first)

Return only the output.

**AI response (example)**

**Precise question**
What exactly is failing with the reports (generation, delivery, or correctness of numbers), and which part of the reporting pipeline should we verify first to isolate the failure mode?

**Triage checklist (first pass)**
1) Confirm the failure mode: not generated vs generated-but-wrong vs delayed [Unknown]
2) Identify scope: which reports, which time range, which users [Unknown]
3) Check recent changes: deployments/config/data source changes [Unknown]
4) Verify pipeline checkpoints: ingestion -> transformation -> aggregation -> dashboard [Unknown]

The difference is triage control: the prompt forces a failure-mode question and a first-pass checklist, so you can act even before you have perfect information.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *failure-mode precision*.
- Requirements banned cause assumptions and forced missing fields to be marked
- Expectations produced a triage checklist, not a vague question
- Objective turned “check reports” into an investigation you can execute immediately

- **Weak vs Strong Prompt**

Weak prompt:
Rewrite this as a better question

Strong prompt:
Rewrite into one precise investigative question. Don’t assume cause. Clarify what “reports” refers to (mark [Unknown] if missing). Output one question + a 4-step triage checklist.

- **C.O.R.E. Breakdown**

C - Context
Ambiguous request with multiple failure modes

O - Objective
A precise question that drives first-pass investigation

R - Requirements
No cause assumptions; clarify “wrong”; mark unknowns

E - Expectations
One question + 4-step triage checklist

**Pro tip**

Most people try to “sound smart” by guessing the cause. Don’t. Force a failure-mode split and triage steps—this is how you look competent without pretending you know.

**Takeaway**

Precision is the ability to investigate without guessing.

**Challenge (goal)**

Choose the five prompt elements that turn an ambiguous request into a precise investigative question with triage.

**Challenge — options (10)**

- [✓ correct] Ban cause assumptions (don’t guess)
- [✓ correct] Clarify what “wrong” means (generation vs correctness) and mark unknowns
- [✓ correct] Require one precise investigative question (failure-mode focused)
- [✓ correct] Require a 4-step triage checklist (what to check first)
- [✓ correct] Return only the output in the specified format
- [✗ incorrect] Ask for likely root causes
- [✗ incorrect] Write a detailed explanation of reporting systems
- [✗ incorrect] Assume it’s a permissions issue
- [✗ incorrect] Remove unknowns to make it confident
- [✗ incorrect] Give recommendations to fix it immediately

**Result — coaching note**

The expert move is splitting failure modes and forcing triage. This prevents confident guessing and gets you to evidence faster.

**Result — assembled prompt example**

Rewrite into one precise investigative question. Don’t assume cause. Clarify what “reports” refers to; mark unknowns. Output one question + a 4-step triage checklist. Return only the output.

**Result — feedback when correct**

You now control ambiguity without guessing—this is how you move faster than “smart-sounding” analysis.

**Result — polished prompt**

Rewrite the request into one precise investigative question. Do not assume the cause. Clarify what “reports” refers to (generation failure vs incorrect numbers) and mark unknowns as [Unknown]. Output: one question plus a 4-step triage checklist. Return only the output.

---

### Lesson 2 — Turn Data Descriptions Into Questions AI Can Answer

#### Scenario 1 — Turn a long data description into a simple analytical question

**Situation**

You get a long explanation about recent trends.

It mixes observations, guesses, and emotions—so nobody is sure what to investigate.

If you ask AI “why is this happening?”, it will invent a story.

To get a usable result, your prompt must define:
- Context - trend description with mixed certainty
- Objective - turn it into an AI-ready analytical question
- Requirements - identify metric, timeframe, segmentation, and what decision it should inform
- Expectations - one question + assumptions to validate

**Expert prompt**

Rewrite the description into one analytical question.

Requirements:
- Identify the metric and timeframe; if missing, mark [Unknown]
- Ask for a segmented view (e.g., category/source) rather than one global answer
- Do not invent causes
- Output:
  1) One analytical question
  2) 3 assumptions we must validate first

Return only the output.

**AI response (example)**

**Analytical question**
Why have support tickets increased this month, and which categories are contributing most to the rise?

**Assumptions to validate (first)**
- Which ticket categories and channels are included in “support tickets”? [Unknown]
- Is the increase absolute volume, rate per customer, or backlog growth? [Unknown]
- Did ticket tagging or routing change this month (measurement shift)? [Unknown]

Notice how the prompt prevents story-time: it forces segmentation and “assumptions to validate” so the analysis stays grounded.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *measurement discipline*.
- Requirements forced metric + timeframe and banned invented causes
- Expectations required assumptions to validate, preventing false certainty
- Objective kept the question analytical (segment drivers) instead of narrative

- **Weak vs Strong Prompt**

Weak prompt:
Turn this into a question about the trend

Strong prompt:
Rewrite into one analytical question. Identify metric + timeframe (mark [Unknown] if missing). Require segmentation (category/source). No invented causes. Output one question + 3 assumptions to validate.

- **C.O.R.E. Breakdown**

C - Context
Trend description with mixed certainty

O - Objective
AI-ready analytical question that guides analysis

R - Requirements
Metric + timeframe; segmentation; no invention

E - Expectations
One question + 3 assumptions to validate

**Pro tip**

Trends lie when the measurement changed. Force “assumptions to validate” or the model will confidently explain a spike that’s just tagging drift.

**Takeaway**

Analytical questions start with measurement integrity.

**Challenge (goal)**

Choose the five prompt elements that convert a long trend description into a grounded analytical question.

**Challenge — options (10)**

- [✓ correct] Require metric and timeframe (mark [Unknown] if missing)
- [✓ correct] Require segmentation (category/source) to find drivers
- [✓ correct] Ban invented causes
- [✓ correct] Require 3 assumptions to validate first
- [✓ correct] Return only the output in a fixed format
- [✗ incorrect] Ask AI to explain likely reasons in detail
- [✗ incorrect] Assume the increase is due to product bugs
- [✗ incorrect] Remove unknowns so it sounds confident
- [✗ incorrect] Ask for a motivational summary for the team
- [✗ incorrect] Ask for solutions immediately

**Result — coaching note**

The failure mode is confident storytelling. Lock measurement fields and force assumptions to validate so analysis stays real.

**Result — assembled prompt example**

Rewrite into one analytical question. Identify metric + timeframe (mark [Unknown] if missing). Require segmentation (category/source). No invented causes. Output one question + 3 assumptions to validate.

**Result — feedback when correct**

You’re now asking analysis questions the model can answer without hallucinating a narrative.

**Result — polished prompt**

Rewrite the description into one analytical question. Identify the metric and timeframe (mark [Unknown] if missing). Require segmentation (category/source) to find drivers. Do not invent causes. Output: one question plus three assumptions to validate first.

---

#### Scenario 2 — Turn metrics into a clear question

**Situation**

You’re given numbers (traffic, conversion, revenue), but nobody agrees what they mean.

If you ask “why did conversion drop?”, the model will guess.

To get a usable result, your prompt must define:
- Context - metrics without an agreed hypothesis
- Objective - ask for an analysis that separates measurement, mix, and behaviour
- Requirements - define metric, timeframe, segments; request candidate explanations *and* what evidence would support them
- Expectations - one question + analysis plan

**Expert prompt**

Turn the metrics into one clear analytical question.

Requirements:
- Specify metric + timeframe; mark missing as [Unknown]
- Ask for segmentation by at least 2 dimensions (e.g., channel, device, region)
- Ask for 3 candidate explanations *and* the evidence needed to test each
- Do not claim a single cause

Return only one question followed by the 3 candidates with evidence.

**AI response (example)**

**Analytical question**
Given the change in conversion over the last period [Unknown timeframe], which segments (channel, device, region) are driving the shift, and what are the top candidate explanations with the evidence needed to test each?

**Candidates (with evidence to test)**
1) Traffic mix shift (more low-intent traffic)
   - Evidence: channel-level conversion changes; new campaign/source mix [Unknown]
2) UX/performance regression in a segment
   - Evidence: device/browser conversion drop; page load changes; error rates [Unknown]
3) Measurement/attribution change
   - Evidence: tracking changes; attribution model updates; event drop-offs [Unknown]

This is where you can see expert control: the prompt forces “candidates + evidence,” so AI can’t collapse uncertainty into a single story.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *hypothesis discipline*.
- Requirements forced segmentation and banned single-cause claims
- Expectations demanded candidates plus evidence, turning AI into an analysis planner
- Objective preserved uncertainty while still creating actionability

- **Weak vs Strong Prompt**

Weak prompt:
Why did conversion change?

Strong prompt:
Turn metrics into one analytical question: specify metric/timeframe (mark unknowns), require segmentation by 2+ dimensions, request 3 candidate explanations and the evidence needed to test each. Don’t claim a single cause.

- **C.O.R.E. Breakdown**

C - Context
Metrics without an agreed hypothesis

O - Objective
Actionable analysis without fake certainty

R - Requirements
Metric/timeframe; segmentation; 3 candidates + evidence; no single-cause claim

E - Expectations
One question + candidate/evidence list

**Pro tip**

If you ask “why,” you get stories. If you ask for “candidates + evidence,” you get investigation. That’s the difference between analysis and narration.

**Takeaway**

Expert analysis prompts force evidence, not certainty.

**Challenge (goal)**

Choose the five prompt elements that turn raw metrics into a hypothesis-and-evidence analytical question.

**Challenge — options (10)**

- [✓ correct] Specify metric and timeframe (mark [Unknown] if missing)
- [✓ correct] Require segmentation by at least 2 dimensions
- [✓ correct] Request 3 candidate explanations (not one cause)
- [✓ correct] Require evidence needed to test each candidate
- [✓ correct] Prohibit claiming a single definitive cause
- [✗ incorrect] Ask AI to pick the most likely cause immediately
- [✗ incorrect] Remove unknowns to make it decisive
- [✗ incorrect] Ask for general best practices for conversion
- [✗ incorrect] Request a narrative summary paragraph
- [✗ incorrect] Ask for solutions without analysis

**Result — coaching note**

Your goal is not a “why story.” It’s a testable plan. Force candidates + evidence so the output stays honest and useful.

**Result — assembled prompt example**

Turn these metrics into one analytical question. Include metric/timeframe (mark [Unknown] if missing). Require segmentation by 2+ dimensions. Ask for 3 candidate explanations and the evidence to test each. Don’t claim one cause.

**Result — feedback when correct**

You’re now prompting for investigation instead of narration—this is where you gain an advantage over most AI users.

**Result — polished prompt**

Turn the metrics into one analytical question. Specify the metric and timeframe (mark [Unknown] if missing). Require segmentation by at least two dimensions. Request three candidate explanations and the evidence needed to test each. Do not claim a single definitive cause.

---

#### Scenario 3 — Turn unclear performance descriptions into precise questions

**Situation**

You get a vague performance description: “it’s worse lately,” “customers are unhappy,” “quality is down.”

If you ask AI to analyse it as-is, it will invent metrics and causes.

To get a usable result, your prompt must define:
- Context - qualitative signals without measurement
- Objective - turn into a measurable investigative question
- Requirements - define what “worse” could mean; request measurement and segmentation; no invention
- Expectations - one question + measurement definitions

**Expert prompt**

Rewrite the description into a precise investigative question.

Requirements:
- Convert vague terms (“worse,” “unhappy,” “quality down”) into measurable definitions as options
- Ask what metric(s) and segments we should examine first
- Do not invent causes
- Output:
  1) One investigative question
  2) 3 candidate metric definitions we should choose from

Return only the output.

**AI response (example)**

**Investigative question**
What specific metric indicates performance has worsened, and which segments should we analyse first to determine where the decline is concentrated?

**Candidate metric definitions (choose one)**
- Customer experience: complaint rate, CSAT/NPS change, support ticket volume per user [Unknown]
- Product quality: defect rate, return/rework rate, incident frequency [Unknown]
- Delivery performance: cycle time, on-time rate, backlog growth [Unknown]

What matters here is measurement-first thinking: the prompt forces definitions so the model can’t “analyse” a feeling as if it were data.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *measurability*.
- Requirements forced vague words into metric definitions
- Expectations produced options rather than pretending there’s one metric
- Objective prevented the model from inventing “the metric” and then explaining it

- **Weak vs Strong Prompt**

Weak prompt:
Turn this into a precise question

Strong prompt:
Rewrite into one investigative question. Convert vague terms into measurable metric definitions as options. Ask which metric and segments to examine first. Don’t invent causes. Output one question + 3 candidate metric definitions.

- **C.O.R.E. Breakdown**

C - Context
Qualitative signals without agreed measurement

O - Objective
Turn into a measurable investigation

R - Requirements
Define vague terms as metrics; segmentation; no invented causes

E - Expectations
One question + 3 candidate metric definitions

**Pro tip**

The model can’t analyse what you haven’t defined. If you don’t force metric definitions, you’ll get confident analysis of an undefined problem.

**Takeaway**

Measurement is the gateway to root-cause thinking.

**Challenge (goal)**

Choose the five prompt elements that convert vague performance language into a measurable investigative question.

**Challenge — options (10)**

- [✓ correct] Require one investigative question (not a conclusion)
- [✓ correct] Convert vague terms into measurable metric definitions
- [✓ correct] Ask which segments to analyse first
- [✓ correct] Ban invented causes
- [✓ correct] Provide 3 candidate metric definitions to choose from
- [✗ incorrect] Ask AI to diagnose the root cause immediately
- [✗ incorrect] Assume the issue is customer service
- [✗ incorrect] Remove options so it feels decisive
- [✗ incorrect] Request a motivational summary for stakeholders
- [✗ incorrect] Ask for solutions without measurement

**Result — coaching note**

Your advantage is refusing to “analyse vibes.” Force metric definitions and segmentation so the output becomes a real investigation plan.

**Result — assembled prompt example**

Rewrite into one investigative question. Convert vague terms into measurable metric definitions as options. Ask which metric and segments to examine first. Don’t invent causes. Output one question + 3 metric definition options.

**Result — feedback when correct**

You’re now turning vague complaints into measurable investigations—this is expert-level ambiguity control.

**Result — polished prompt**

Rewrite the description into one precise investigative question. Convert vague terms into measurable metric definitions (as options). Ask which metrics and segments to examine first. Do not invent causes. Output: one question plus three candidate metric definitions.

---

### Lesson 3 — Turn Observations Into Root-Cause Questions

#### Scenario 1 — Turn general observations into root-cause questions

**Situation**

You have an observation like “handoffs are messy” or “reviews take forever.”

It’s tempting to ask AI for “root causes,” but that invites confident guessing.

To get a usable result, your prompt must define:
- Context - observation without evidence
- Objective - transform it into a root-cause question that requests evidence
- Requirements - separate symptom vs cause; ask for candidate mechanisms + what to measure
- Expectations - one question + candidate mechanisms with measurements

**Expert prompt**

Turn the observation into a root-cause investigative question.

Requirements:
- Do not claim a cause
- Separate symptom from cause explicitly
- Ask for 3 candidate mechanisms and the measurement needed for each
- Return one question + the 3 mechanisms with measurements

**AI response (example)**

**Investigative question**
What is the primary mechanism causing long review times, and how can we measure where time is being spent (waiting vs active work) across the workflow?

**Candidate mechanisms (with measurement)**
1) Queueing/wait time
   - Measure: time-in-queue per step; distribution (p50/p90)
2) Rework due to unclear requirements
   - Measure: review cycle count; revision reasons; defect rate
3) Capacity mismatch during peaks
   - Measure: throughput vs incoming volume; peak-period backlogs

This is where you can see root-cause rigor: the prompt forces mechanisms + measurement, so “cause” becomes testable instead of asserted.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *testability*.
- Requirements separated symptom from cause and banned single-cause claims
- Expectations produced candidate mechanisms plus measurement
- Objective turned “observation” into a measurable investigation

- **Weak vs Strong Prompt**

Weak prompt:
What’s the root cause of long reviews?

Strong prompt:
Turn this observation into an investigative question. Don’t claim a cause. Separate symptom vs cause. Ask for 3 candidate mechanisms and the measurement needed for each. Output one question + mechanisms with measurements.

- **C.O.R.E. Breakdown**

C - Context
Observation without evidence

O - Objective
Root-cause question that requests measurement

R - Requirements
No cause claims; symptom vs cause; 3 mechanisms + measurement

E - Expectations
One question + 3 mechanisms with measurements

**Pro tip**

“Root cause” prompts are where AI users get fooled by confidence. Demand mechanisms + measurement or you’ll get a persuasive guess.

**Takeaway**

Root-cause thinking is measurement thinking.

**Challenge (goal)**

Choose the five prompt elements that turn an observation into a testable root-cause question.

**Challenge — options (10)**

- [✓ correct] Ban claiming a definitive cause
- [✓ correct] Separate symptom vs cause explicitly
- [✓ correct] Request 3 candidate mechanisms (not one story)
- [✓ correct] Require the measurement needed for each mechanism
- [✓ correct] Return one question + mechanisms with measurements
- [✗ incorrect] Ask AI to pick the most likely cause immediately
- [✗ incorrect] Request a motivational summary
- [✗ incorrect] Remove measurement to keep it simple
- [✗ incorrect] Ask for solutions first
- [✗ incorrect] Write a long narrative explanation

**Result — coaching note**

Your edge is forcing testability. Mechanisms + measurement prevents confident guessing disguised as analysis.

**Result — assembled prompt example**

Turn this observation into a root-cause question. Don’t claim a cause. Separate symptom vs cause. Ask for 3 candidate mechanisms and the measurement needed for each. Output one question + mechanism/measurement list.

**Result — feedback when correct**

You’re now prompting for testable root-cause work instead of persuasive guesses.

**Result — polished prompt**

Turn the observation into a root-cause investigative question. Do not claim a definitive cause. Separate symptom from cause. Request three candidate mechanisms and the measurement needed to test each. Output one question plus the mechanism/measurement list.

---

#### Scenario 2 — Turn symptoms into investigative questions

**Situation**

You have symptoms: “tickets spike,” “errors increase,” “users complain.”

Symptoms don’t tell you where to look.

To get a usable result, your prompt must define:
- Context - symptom description with unknown drivers
- Objective - create a question that narrows the search space
- Requirements - segment the symptom; request leading indicators; ban invented causes
- Expectations - one question + the top segments to compare

**Expert prompt**

Rewrite the symptoms into an investigative question.

Requirements:
- Do not invent causes
- Ask for segmentation (time, user cohort, feature area)
- Ask for leading indicators that would narrow likely mechanisms
- Output: one question + 3 segment comparisons to run first

Return only the output.

**AI response (example)**

**Investigative question**
Which segments are driving the spike in tickets and errors (time window, user cohort, feature area), and what leading indicators can narrow the likely mechanism?

**First comparisons to run**
- Peak vs non-peak periods (rates, not just counts)
- New vs existing users (cohort difference)
- Top feature areas/endpoints by error contribution

The difference is narrowed search: the prompt forces comparisons so you stop “analysing everything” and start isolating where the symptom lives.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *search-space reduction*.
- Requirements forced segmentation and banned invented causes
- Expectations demanded first comparisons, creating a concrete analysis start
- Objective turned symptoms into a question that narrows where to look

- **Weak vs Strong Prompt**

Weak prompt:
What’s causing these symptoms?

Strong prompt:
Rewrite into an investigative question. Don’t invent causes. Require segmentation (time, cohort, feature area). Ask for leading indicators. Output one question + 3 segment comparisons to run first.

- **C.O.R.E. Breakdown**

C - Context
Symptoms with unknown drivers

O - Objective
Narrow where to look first

R - Requirements
Segmentation + leading indicators; no invented causes

E - Expectations
One question + 3 first comparisons

**Pro tip**

Symptoms feel urgent, so people rush to “cause.” Don’t. Force segmentation first or you’ll spend your time explaining the average of three different problems.

**Takeaway**

Segment first, explain second.

**Challenge (goal)**

Choose the five prompt elements that turn symptoms into a segmented investigative question.

**Challenge — options (10)**

- [✓ correct] Ban invented causes
- [✓ correct] Require segmentation (time/cohort/feature area)
- [✓ correct] Ask for leading indicators to narrow mechanisms
- [✓ correct] Require 3 first comparisons to run
- [✓ correct] Return one question + comparison list
- [✗ incorrect] Ask AI to identify the root cause immediately
- [✗ incorrect] Write a long narrative about possible causes
- [✗ incorrect] Assume the biggest team is at fault
- [✗ incorrect] Remove segmentation to keep it simple
- [✗ incorrect] Jump straight to solutions

**Result — coaching note**

Your advantage is discipline under urgency. Segmentation prevents “average analysis” and helps you isolate the real problem faster.

**Result — assembled prompt example**

Rewrite symptoms into an investigative question. Don’t invent causes. Require segmentation (time/cohort/feature area). Ask for leading indicators. Output one question + 3 segment comparisons to run first.

**Result — feedback when correct**

You’re now isolating problems instead of analysing noise—this is expert-level speed.

**Result — polished prompt**

Rewrite the symptoms into an investigative question. Do not invent causes. Require segmentation (time window, user cohort, feature area). Ask for leading indicators to narrow mechanisms. Output: one question plus three segment comparisons to run first.

---

#### Scenario 3 — Turn unclear performance feedback into diagnostic questions

**Situation**

You receive unclear feedback like “the team is slow” or “quality is slipping.”

Feedback is politically charged—if your question blames people, you lose cooperation.

If your question is too soft, nothing changes.

To get a usable result, your prompt must define:
- Context - sensitive feedback under ambiguity
- Objective - diagnostic question that’s neutral and measurable
- Requirements - avoid blame; define observable signals; request segmentation; no invented causes
- Expectations - one question + neutral data/observation checklist

**Expert prompt**

Rewrite the feedback into a neutral, diagnostic question.

Requirements:
- Keep tone non-blaming and professional
- Convert vague terms into observable/measurable signals
- Ask for segmentation (work type, team, time period)
- Do not invent causes
- Output: one question + a 5-item observation checklist

Return only the output.

**AI response (example)**

**Diagnostic question**
Which observable signals indicate performance has slowed (cycle time, throughput, rework), and where is the change concentrated by work type and time period?

**Observation checklist (neutral)**
- Cycle time distribution (p50/p90) by work type [Unknown]
- Throughput vs incoming demand over time [Unknown]
- Rework rate and review cycle count [Unknown]
- Blocker frequency and top blocker categories [Unknown]
- Work-in-progress levels vs capacity [Unknown]

Pay attention to how tone is protected: the prompt forces measurable signals and neutral language so you can investigate without triggering defensiveness.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *neutral measurability*.
- Requirements converted vague feedback into observable signals
- Expectations created a checklist that avoids blame and enables investigation
- Objective made the question politically safe *and* operationally useful

- **Weak vs Strong Prompt**

Weak prompt:
Turn this feedback into a question

Strong prompt:
Rewrite into a neutral diagnostic question. Non-blaming tone. Convert vague terms into measurable signals. Ask for segmentation by work type/time. No invented causes. Output one question + a 5-item observation checklist.

- **C.O.R.E. Breakdown**

C - Context
Sensitive feedback under ambiguity

O - Objective
Investigate without blame, with measurable signals

R - Requirements
Neutral tone; observable metrics; segmentation; no invented causes

E - Expectations
One question + 5-item observation checklist

**Pro tip**

If your question implies blame, you lose data. Force neutral language and measurable signals so people can engage without defensiveness.

**Takeaway**

Diagnostic questions must be safe enough to answer truthfully.

**Challenge (goal)**

Choose the five prompt elements that translate sensitive feedback into neutral, measurable diagnostic questions.

**Challenge — options (10)**

- [✓ correct] Require non-blaming, professional tone
- [✓ correct] Convert vague terms into observable/measurable signals
- [✓ correct] Request segmentation (work type/time period)
- [✓ correct] Ban invented causes
- [✓ correct] Require an observation checklist (5 items)
- [✗ incorrect] Ask who is responsible for the slowdown
- [✗ incorrect] Assume the team lacks motivation
- [✗ incorrect] Demand immediate solutions first
- [✗ incorrect] Remove measurement to keep it simple
- [✗ incorrect] Use strong language to create urgency

**Result — coaching note**

Your advantage is getting truth under sensitivity. Neutral language + measurable signals keeps the investigation real and cooperative.

**Result — assembled prompt example**

Rewrite feedback into a neutral diagnostic question. Non-blaming tone. Convert vague terms into measurable signals. Ask for segmentation. No invented causes. Output one question + a 5-item observation checklist.

**Result — feedback when correct**

You now ask questions that people can answer honestly—this is expert-level judgment under ambiguity.

**Result — polished prompt**

Rewrite the feedback into a neutral diagnostic question. Keep tone non-blaming and professional. Convert vague terms into observable/measurable signals. Ask for segmentation by work type and time period. Do not invent causes. Output: one question plus a 5-item observation checklist.

---

### Lesson 4 — Turn Processes Into Diagnostic Questions

#### Scenario 1 — Turn process issues into targeted questions

**Situation**

A process is “broken,” but nobody agrees where.

If you ask AI for a generic process improvement plan, you get a template.

To get a usable result, your prompt must define:
- Context - process with suspected bottleneck
- Objective - targeted diagnostic question about where the bottleneck is
- Requirements - require step-level breakdown and evidence; ban invented process steps
- Expectations - one question + step-level data request

**Expert prompt**

Rewrite the process issue into a targeted diagnostic question.

Requirements:
- Do not invent process steps not stated
- Ask for a step-by-step breakdown of time and rework
- Output: one diagnostic question + 4 data fields to collect per step

Return only the output.

**AI response (example)**

**Diagnostic question**
Which step in the process is the primary bottleneck, and is the delay driven by waiting time, rework, or capacity constraints at that step?

**Per-step data fields to collect**
- Average wait time vs active time [Unknown]
- Rework/loop count [Unknown]
- Throughput capacity and backlog [Unknown]
- Primary blocker category [Unknown]

Notice how the prompt avoids “process theatre”: it forces step-level evidence so the analysis can’t be generic.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *step-level evidence*.
- Requirements banned invented steps and demanded breakdown
- Expectations produced per-step data fields (not generic advice)
- Objective narrowed “broken process” into a bottleneck investigation

- **Weak vs Strong Prompt**

Weak prompt:
How do we improve this process?

Strong prompt:
Rewrite into a targeted diagnostic question. Don’t invent steps. Ask for step-level breakdown of time and rework. Output one question + 4 data fields to collect per step.

- **C.O.R.E. Breakdown**

C - Context
Process issues with suspected bottleneck

O - Objective
Identify where delay lives and what mechanism drives it

R - Requirements
No invented steps; step-by-step evidence request

E - Expectations
One question + per-step data fields

**Pro tip**

Templates feel productive. They’re not. Force step-level evidence or AI will give you “best practices” that don’t diagnose anything.

**Takeaway**

Diagnosis beats improvement plans when you don’t know the cause.

**Challenge (goal)**

Choose the five prompt elements that diagnose a process bottleneck with step-level evidence.

**Challenge — options (10)**

- [✓ correct] Ban invented process steps
- [✓ correct] Require step-by-step breakdown
- [✓ correct] Ask for waiting vs active time per step
- [✓ correct] Ask for rework/loop counts per step
- [✓ correct] Require per-step data fields (evidence) not generic advice
- [✗ incorrect] Ask for a process improvement template
- [✗ incorrect] Assume the bottleneck is approvals
- [✗ incorrect] Ask for solutions first
- [✗ incorrect] Remove evidence to keep it simple
- [✗ incorrect] Ask for motivational messaging

**Result — coaching note**

The advantage is evidence-first thinking. Step-level fields prevent generic outputs and help you find where delay actually lives.

**Result — assembled prompt example**

Rewrite into a targeted diagnostic question. Don’t invent steps. Ask for step-by-step breakdown of time and rework. Output one question + 4 data fields to collect per step. Return only the output.

**Result — feedback when correct**

You’re now diagnosing processes with evidence instead of running templates—this is expert-level problem framing.

**Result — polished prompt**

Rewrite the process issue into a targeted diagnostic question. Do not invent process steps. Ask for a step-by-step breakdown of waiting time, active time, and rework. Output: one question plus four data fields to collect per step.

---

#### Scenario 2 — Turn timeline concerns into diagnostic questions

**Situation**

A delivery timeline is slipping and stakeholders want answers.

If you guess causes, you lose credibility.

If you stay vague, you lose trust.

To get a usable result, your prompt must define:
- Context - timeline slippage with uncertainty
- Objective - diagnostic question that isolates where slippage accumulates
- Requirements - compare plan vs actual; identify variance drivers; no invented causes
- Expectations - one question + variance breakdown request

**Expert prompt**

Rewrite the timeline concern into a diagnostic question.

Requirements:
- Do not invent causes
- Ask for plan vs actual variance breakdown by phase/step
- Ask for the top 3 variance drivers with evidence needed
- Output: one question + the breakdown structure

Return only the output.

**AI response (example)**

**Diagnostic question**
Where is timeline variance accumulating (which phase/step), and what evidence-based drivers explain the variance (scope change, rework, waiting, capacity)?

**Breakdown structure**
- Plan vs actual duration by phase/step
- Variance contribution by phase (top contributors)
- Top 3 candidate drivers + evidence to confirm each

The difference is variance discipline: the prompt forces plan-vs-actual breakdown so the analysis doesn’t become a blame story.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *variance discipline*.
- Requirements forced plan vs actual breakdown
- Expectations demanded drivers + evidence (not opinions)
- Objective kept it credible under pressure: isolate where slippage accumulates first

- **Weak vs Strong Prompt**

Weak prompt:
Why are we behind schedule?

Strong prompt:
Rewrite into a diagnostic question. Don’t invent causes. Ask for plan vs actual breakdown by phase/step and top variance drivers with evidence needed. Output one question + breakdown structure.

- **C.O.R.E. Breakdown**

C - Context
Timeline slipping; pressure for answers

O - Objective
Isolate where variance accumulates and why (evidence)

R - Requirements
No invention; plan vs actual; variance drivers + evidence

E - Expectations
One question + variance breakdown structure

**Pro tip**

Schedule questions fail when they start with blame. Force plan-vs-actual variance first; then ask for evidence-based drivers.

**Takeaway**

Credible timeline analysis starts with variance, not opinions.

**Challenge (goal)**

Choose the five prompt elements that diagnose timeline slippage with plan-vs-actual evidence.

**Challenge — options (10)**

- [✓ correct] Ban invented causes
- [✓ correct] Require plan vs actual breakdown by phase/step
- [✓ correct] Ask where variance accumulates (top contributors)
- [✓ correct] Request top 3 candidate drivers + evidence to confirm
- [✓ correct] Return one question + breakdown structure
- [✗ incorrect] Ask who is responsible for the slip
- [✗ incorrect] Assume scope creep is the cause
- [✗ incorrect] Request solutions without analysis
- [✗ incorrect] Remove evidence to keep it concise
- [✗ incorrect] Ask for motivational messaging

**Result — coaching note**

Under pressure, teams guess. Your advantage is forcing variance evidence so the conversation stays credible and actionable.

**Result — assembled prompt example**

Rewrite into a diagnostic question about timeline slippage. Don’t invent causes. Ask for plan vs actual breakdown by phase/step and top variance drivers with evidence needed. Output one question + breakdown structure.

**Result — feedback when correct**

You’re now asking timeline questions that stay credible under scrutiny—this is an operator-level advantage.

**Result — polished prompt**

Rewrite the timeline concern into a diagnostic question. Do not invent causes. Require plan vs actual variance breakdown by phase/step. Ask for top candidate drivers with the evidence needed to confirm each. Output: one question plus the breakdown structure.

---

#### Scenario 3 — Turn unclear technical feedback into precise questions

**Situation**

You receive unclear technical feedback: “it’s flaky,” “it times out,” “it’s unstable.”

If you ask AI for fixes, you’ll get generic troubleshooting advice.

To get a usable result, your prompt must define:
- Context - vague technical symptoms
- Objective - precise diagnostic question with reproducibility criteria
- Requirements - define symptom, conditions, impact; no invented causes
- Expectations - one question + reproduction checklist

**Expert prompt**

Rewrite the feedback into a precise diagnostic question.

Requirements:
- Define the symptom and conditions as [Unknown] if missing
- Include impact (user-facing vs internal) as [Unknown] if missing
- Do not invent causes or solutions
- Output: one question + a 6-item reproduction checklist

Return only the output.

**AI response (example)**

**Diagnostic question**
Under what conditions does the issue reproduce (inputs, environment, timing), and is the flakiness driven by timeouts, intermittent errors, or inconsistent outputs?

**Reproduction checklist**
- Environment (prod/stage/local) [Unknown]
- Triggering workflow/endpoint [Unknown]
- Inputs/data characteristics [Unknown]
- Frequency (always/intermittent) [Unknown]
- Error/timeout signatures (logs) [Unknown]
- User impact and scope [Unknown]

What matters here is reproducibility control: the prompt forces conditions and impact so you can diagnose instead of guessing.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *reproducibility*.
- Requirements forced missing fields to be explicit [Unknown]
- Expectations produced a reproduction checklist, not advice
- Objective kept the question diagnostic under ambiguity

- **Weak vs Strong Prompt**

Weak prompt:
Help me debug this flaky issue

Strong prompt:
Rewrite into a precise diagnostic question. Define symptom/conditions/impact (mark [Unknown] if missing). No invented causes or solutions. Output one question + a 6-item reproduction checklist.

- **C.O.R.E. Breakdown**

C - Context
Vague technical symptoms

O - Objective
Make diagnosis possible via reproducibility

R - Requirements
Explicit symptom + conditions + impact; mark unknowns; no invention

E - Expectations
One question + 6-item reproduction checklist

**Pro tip**

If you don’t force reproduction details, you’ll get “debugging tips,” not diagnosis. Precise questions beat generic troubleshooting every time.

**Takeaway**

Reproducibility is the fastest path out of ambiguity.

**Challenge (goal)**

Choose the five prompt elements that turn vague technical feedback into a precise diagnostic question with reproduction criteria.

**Challenge — options (10)**

- [✓ correct] Require symptom + conditions (mark [Unknown] if missing)
- [✓ correct] Require impact/scope (mark [Unknown] if missing)
- [✓ correct] Ban invented causes and solutions
- [✓ correct] Require a reproduction checklist (6 items)
- [✓ correct] Return only the diagnostic output format
- [✗ incorrect] Ask for fixes immediately
- [✗ incorrect] Assume the database is the cause
- [✗ incorrect] Remove unknowns to sound confident
- [✗ incorrect] Request general debugging best practices
- [✗ incorrect] Write a narrative explanation

**Result — coaching note**

Your advantage is forcing reproduction fields. That’s how you turn “flaky” into something the team can actually diagnose.

**Result — assembled prompt example**

Rewrite into a precise diagnostic question. Define symptom, conditions, and impact; mark unknowns as [Unknown]. Don’t invent causes/solutions. Output one question + a 6-item reproduction checklist.

**Result — feedback when correct**

You now turn vague technical feedback into reproducible investigation—most users get generic troubleshooting.

**Result — polished prompt**

Rewrite the technical feedback into a precise diagnostic question. Define the symptom, conditions, and impact; mark missing details as [Unknown]. Do not invent causes or solutions. Output: one question plus a 6-item reproduction checklist.

---

### Lesson 5 — Turn Scattered Notes Into Analytical Questions

#### Scenario 1 — Turn scattered notes into one analytical question

**Situation**

You have scattered notes from multiple sources.

Some are facts, some are opinions, some conflict.

If you ask AI to “make sense of it,” it will merge them into one confident narrative.

To get a usable result, your prompt must define:
- Context - mixed notes with conflicts
- Objective - one analytical question + conflict visibility
- Requirements - preserve conflicting claims; tag [Disputed]/[Unknown]; no invention
- Expectations - one question + conflict list

**Expert prompt**

Turn the scattered notes into one analytical question.

Requirements:
- Preserve conflicting claims; tag them [Disputed]
- Tag missing information as [Unknown]
- Do not invent a unified story
- Output:
  1) One analytical question
  2) 3 disputed or unknown points that must be resolved

Return only the output.

**AI response (example)**

**Analytical question**
What is the true driver behind the observed changes, and which disputed inputs must be validated before we draw conclusions?

**Disputed/unknown points to resolve**
- Which notes are evidence vs interpretation? [Unknown]
- Do sources agree on timeframe and scope? [Disputed]
- Are changes due to behaviour, measurement, or mix? [Unknown]

This is where you can see expert ambiguity control: [Disputed]/[Unknown] tags keep the analysis honest instead of “clean.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *conflict visibility*.
- Requirements forced [Disputed]/[Unknown] instead of a unified narrative
- Expectations surfaced what must be resolved next
- Objective turned scattered notes into an analysis plan without pretending certainty

- **Weak vs Strong Prompt**

Weak prompt:
Make sense of these notes

Strong prompt:
Turn notes into one analytical question. Preserve conflicts and tag [Disputed]. Tag missing info [Unknown]. Don’t invent a unified story. Output one question + 3 disputed/unknown points to resolve.

- **C.O.R.E. Breakdown**

C - Context
Scattered notes with conflicts and gaps

O - Objective
Analytical question + visibility of what must be resolved

R - Requirements
[Disputed]/[Unknown] tags; no unified story invention

E - Expectations
One question + list of disputed/unknown points

**Pro tip**

Clean outputs are seductive. They’re also how ambiguity disappears. Force [Disputed]/[Unknown] tags so the model can’t “help” by rewriting reality.

**Takeaway**

The fastest analysis is the one that doesn’t lie.

**Challenge (goal)**

Choose the five prompt elements that turn scattered notes into an honest analytical question without collapsing conflicts.

**Challenge — options (10)**

- [✓ correct] Preserve conflicting claims and tag them [Disputed]
- [✓ correct] Tag missing information as [Unknown]
- [✓ correct] Ban inventing a unified narrative
- [✓ correct] Require one analytical question
- [✓ correct] Require a list of disputed/unknown points to resolve
- [✗ incorrect] Ask AI to pick the correct version
- [✗ incorrect] Remove disputes to make it concise
- [✗ incorrect] Invent missing context to complete the story
- [✗ incorrect] Ask for recommendations immediately
- [✗ incorrect] Write a long narrative summary

**Result — coaching note**

Your advantage is truth-preserving structure. [Disputed]/[Unknown] tags keep analysis credible and prevent confident fiction.

**Result — assembled prompt example**

Turn notes into one analytical question. Preserve conflicts; tag [Disputed]. Tag gaps [Unknown]. Don’t invent a unified story. Output one question + 3 disputed/unknown points to resolve.

**Result — feedback when correct**

You now preserve ambiguity without losing actionability—this is expert-level judgment mastery.

**Result — polished prompt**

Turn the scattered notes into one analytical question. Preserve conflicting claims and tag them [Disputed]. Tag missing information as [Unknown]. Do not invent a unified story. Output: one question plus three disputed/unknown points that must be resolved.

---

#### Scenario 2 — Turn brainstorm notes into a clean question

**Situation**

Brainstorm notes are ideas, not truths.

If you ask AI to “answer” brainstorm notes, you get confident speculation.

To get a usable result, your prompt must define:
- Context - brainstorm ideas with uncertainty
- Objective - turn into a testable question
- Requirements - separate hypothesis vs evidence; request experiments/validation
- Expectations - one question + validation plan

**Expert prompt**

Turn the brainstorm notes into one testable question.

Requirements:
- Do not treat ideas as facts
- Separate hypothesis from evidence (mark evidence as [Unknown] if missing)
- Output:
  1) One testable question
  2) 3 validation steps (how to test)

Return only the output.

**AI response (example)**

**Testable question**
Which proposed hypothesis best explains the observed outcome, and what evidence would confirm or refute it?

**Validation steps**
- Define the observable outcome and metric baseline [Unknown]
- Identify the minimal experiment or comparison needed for each hypothesis [Unknown]
- Specify decision criteria: what evidence would change the decision [Unknown]

The difference is epistemic discipline: the prompt forces validation instead of letting brainstorm ideas masquerade as analysis.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *hypothesis vs evidence separation*.
- Requirements banned treating ideas as facts
- Expectations required validation steps, not answers
- Objective produced a question that can be tested instead of debated

- **Weak vs Strong Prompt**

Weak prompt:
Turn these brainstorm notes into an answer

Strong prompt:
Turn notes into one testable question. Don’t treat ideas as facts. Separate hypothesis from evidence (mark missing evidence [Unknown]). Output one question + 3 validation steps.

- **C.O.R.E. Breakdown**

C - Context
Brainstorm ideas with uncertainty

O - Objective
Turn into a testable question with a validation plan

R - Requirements
No idea-as-fact; hypothesis vs evidence; [Unknown] for missing evidence

E - Expectations
One question + 3 validation steps

**Pro tip**

Brainstorms are where models sound the smartest and are the least grounded. Force validation steps or you’ll get confident speculation dressed as insight.

**Takeaway**

Testability is how you turn ideas into decisions.

**Challenge (goal)**

Choose the five prompt elements that turn brainstorm notes into a testable question without treating ideas as facts.

**Challenge — options (10)**

- [✓ correct] Explicitly state: ideas are not facts
- [✓ correct] Separate hypothesis from evidence
- [✓ correct] Mark missing evidence as [Unknown]
- [✓ correct] Require one testable question
- [✓ correct] Require 3 validation steps (how to test)
- [✗ incorrect] Ask AI to pick the best hypothesis immediately
- [✗ incorrect] Remove uncertainty to be decisive
- [✗ incorrect] Invent evidence to support the best idea
- [✗ incorrect] Ask for solutions without testing
- [✗ incorrect] Write a persuasive summary

**Result — coaching note**

Your edge is refusing speculation. Validation steps stop the model from “finishing the thought” with invented evidence.

**Result — assembled prompt example**

Turn brainstorm notes into one testable question. Don’t treat ideas as facts. Separate hypothesis vs evidence; mark missing evidence [Unknown]. Output one question + 3 validation steps.

**Result — feedback when correct**

You now convert brainstorming into decisions without letting AI hallucinate certainty.

**Result — polished prompt**

Turn the brainstorm notes into one testable question. Do not treat ideas as facts. Separate hypothesis from evidence and mark missing evidence as [Unknown]. Output: one question plus three validation steps to test it.

---

#### Scenario 3 — Turn mixed observations into a useful question

**Situation**

You have mixed observations: some point one way, some another.

The temptation is to ask AI to “conclude.”

But conclusions without resolved conflicts are just well-written guesses.

To get a usable result, your prompt must define:
- Context - mixed observations with partial conflict
- Objective - useful question that clarifies what to resolve
- Requirements - preserve conflict, request decision-relevant resolution
- Expectations - one question + resolution plan

**Expert prompt**

Turn the mixed observations into a useful analytical question.

Requirements:
- Preserve conflicting observations; tag [Disputed]
- Identify what must be resolved before a conclusion
- Do not invent a conclusion
- Output: one question + 3 resolution steps

Return only the output.

**AI response (example)**

**Analytical question**
Given the mixed observations, what must we validate first to determine which interpretation is correct and what decision should follow?

**Resolution steps**
- List the conflicting observations and what evidence would resolve each [Disputed]
- Identify the minimal additional data needed to break the tie [Unknown]
- Define the decision rule: what outcome triggers which decision [Unknown]

What matters here is decision hygiene: the prompt refuses premature conclusions and forces the resolution plan that makes a conclusion legitimate.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *premature-conclusion prevention*.
- Requirements preserved conflict and banned conclusions
- Expectations demanded a resolution plan (what to validate next)
- Objective kept the question decision-relevant instead of “interesting”

- **Weak vs Strong Prompt**

Weak prompt:
Make a conclusion from these observations

Strong prompt:
Turn into one analytical question. Preserve conflicts and tag [Disputed]. Identify what must be resolved before concluding. Don’t invent conclusions. Output one question + 3 resolution steps.

- **C.O.R.E. Breakdown**

C - Context
Mixed observations with partial conflict

O - Objective
A decision-relevant question that guides resolution

R - Requirements
Preserve conflict; no conclusions; identify what must be resolved

E - Expectations
One question + 3 resolution steps

**Pro tip**

If you let AI “conclude,” it will reward you with confidence. Don’t take the bait. Force the resolution plan instead.

**Takeaway**

Good judgment is delaying conclusions until evidence exists.

**Challenge (goal)**

Choose the five prompt elements that keep mixed observations honest and drive a resolution plan.

**Challenge — options (10)**

- [✓ correct] Preserve conflicting observations and tag [Disputed]
- [✓ correct] Ban inventing a conclusion
- [✓ correct] Require identifying what must be resolved before concluding
- [✓ correct] Require 3 resolution steps (what to validate next)
- [✓ correct] Return only the specified output format
- [✗ incorrect] Ask AI to pick the correct interpretation
- [✗ incorrect] Remove disputes for clarity
- [✗ incorrect] Invent missing evidence to break the tie
- [✗ incorrect] Request recommendations immediately
- [✗ incorrect] Write a persuasive argument

**Result — coaching note**

Your advantage is resisting confidence theatre. Preserve disputes and force resolution steps so conclusions stay legitimate.

**Result — assembled prompt example**

Turn mixed observations into one analytical question. Preserve conflicts and tag [Disputed]. Don’t invent a conclusion. Identify what must be resolved. Output one question + 3 resolution steps.

**Result — feedback when correct**

You now control ambiguity without collapsing it into fake certainty—this is expert mastery.

**Result — polished prompt**

Turn the mixed observations into one analytical question. Preserve conflicts and tag [Disputed]. Do not invent a conclusion. Identify what must be resolved before concluding. Output: one question plus three resolution steps to validate next.

---

## Track 8 — Marketing & Social
*Source: `lib/data/tracks/track8_decision_support.dart`*

### Lesson 1 — Generate Marketing Ideas

#### Scenario 1 — Campaign ideas for a product launch

**Situation**

You need launch campaign concepts that can actually be produced—not a list of slogans.

Weak prompts return generic “awareness” ideas with no channel and no test.

To get a usable result, your prompt must define:
- Context - product, audience, and launch window
- Objective - ideas you can execute and measure
- Requirements - channel + message + hook + quick test per idea; no invented budgets
- Expectations - fixed count and structured output

**Expert prompt**

Generate 6 launch campaign ideas for a B2B workflow tool for ops teams.

Context: Q2 launch; primary audience is ops managers; we can produce blog, email, LinkedIn, and a short webinar.

Objective: each idea must be executable in 2 weeks or less.

Requirements: for each idea include Channel, Core message, Hook, and a Quick test (what you would measure in 7 days). Do not invent budget numbers; mark [Unknown] if needed.

Expectations: return only the 6 ideas in a consistent format.

**AI response (example)**

**Idea 1**
- Channel: LinkedIn
- Core message: cut weekly reporting prep time
- Hook: “before/after prep time” story prompt
- Quick test: 2 posts, compare saves + demo requests [Unknown baseline]

**Idea 2**
- Channel: Customer email
- Core message: fewer approval rounds
- Hook: subject line A/B on “approvals” vs “handoffs”
- Quick test: open rate + reply-to-learn-more rate

**Idea 3**
- Channel: Blog
- Core message: one dashboard for approvals + status, fewer tool hops
- Hook: screenshot walkthrough of a Friday close-out in under 10 minutes
- Quick test: publish once; track scroll depth + CTA clicks to demo [Unknown baseline]

**Idea 4**
- Channel: Short webinar (30 min)
- Core message: live build of a weekly ops report from messy inputs
- Hook: “bring your messiest spreadsheet” positioning (anonymised examples only)
- Quick test: registration vs attendance vs follow-up resource downloads [Unknown baseline]

**Idea 5**
- Channel: LinkedIn
- Core message: audit trail without slowing teams down
- Hook: carousel on three mistakes teams make when they “just CC everyone”
- Quick test: carousel completion rate + comments asking for the checklist

**Idea 6**
- Channel: Customer email
- Core message: scheduling reliability for recurring reports
- Hook: subject line that names the pain (“missed Monday send”) vs benefit (“retry + alert”)
- Quick test: click-through to beta waitlist + replies with “same problem” [Unknown baseline]

Notice how each idea is a bet: channel, message, hook, and a measurement—Requirements and Expectations prevent slogan soup.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The ideas are actionable because the prompt banned hand-wavy awareness.
- Context pinned product type and audience
- Objective forced a 2-week execution constraint
- Requirements demanded hook + test for each idea
- Expectations fixed count and format

- **Weak vs Strong Prompt**

Weak prompt:
Give me marketing ideas

Strong prompt:
6 ideas; each with channel, message, hook, 7-day test; B2B ops audience; no invented budgets; [Unknown]; fixed format only.

- **C.O.R.E. Breakdown**

C - Context
B2B workflow tool; ops managers; Q2 launch; known channels

O - Objective
Executable ideas with measurement

R - Requirements
Channel/message/hook/test; no fake budgets

E - Expectations
Exactly 6; consistent structure

**Pro tip**

If there is no “quick test,” you do not have a campaign idea—you have a mood board.

**Takeaway**

C.O.R.E. turns brainstorming into marketing engineering: context, outcome, rules, and a defined deliverable.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that generate testable campaign ideas.

**Challenge — options (10)**

- [✓ correct] Name the audience and realistic channel constraints
- [✓ correct] Objective: ideas must be executable within a stated time window
- [✓ correct] Requirements: each idea includes channel, message, hook, and a quick test
- [✓ correct] Ban inventing budgets or metrics; use [Unknown] when missing
- [✓ correct] Expectations: fixed number of ideas and a strict output format
- [✗ incorrect] Ask for “viral” ideas without channels or tests
- [✗ incorrect] Let AI invent customer segments you did not specify
- [✗ incorrect] Request only adjectives like bold, innovative, disruptive
- [✗ incorrect] Omit measurement so ideas stay creative
- [✗ incorrect] Tell AI to copy a competitor campaign verbatim

**Result — coaching note**

Marketing ideation prompts still follow C.O.R.E.: without Requirements, you get untestable fluff.

**Result — assembled prompt example**

6 launch ideas for B2B ops tool: channel, message, hook, 7-day test; 2-week execution cap; no invented budgets; [Unknown]; consistent format.

**Result — feedback when correct**

You are generating campaigns you can ship and measure—not slogans you can only admire.

**Result — polished prompt**

Generate six launch campaign ideas for a B2B workflow product aimed at operations managers during Q2. For each idea specify channel, core message, hook, and a quick test measurable within seven days. Each idea must be executable within two weeks. Do not invent budget or performance numbers—mark unknowns as [Unknown]. Return only the six ideas in a consistent labeled format.

---

#### Scenario 2 — Quarterly content themes aligned to pipeline

**Situation**

Leadership wants quarterly themes, not random topics.

Without C.O.R.E., AI produces a content calendar that ignores how you actually sell.

To get a usable result, your prompt must define:
- Context - product motion, segments, and sales stages
- Objective - themes that map to pipeline needs
- Requirements - audience + formats + example titles per theme; no invented revenue claims
- Expectations - fixed theme count

**Expert prompt**

Propose 5 quarterly content themes aligned to pipeline stages: educate → evaluate → adopt.

Context: mid-market SaaS; buyers are ops + IT; we publish blog, case study, and webinar.

Requirements: each theme lists Primary audience, Formats (pick from allowed), and 3 example working titles. Do not invent customer results; mark [Unknown] if quant proof is missing.

Expectations: output only the 5 themes in the same structure.

**AI response (example)**

**Theme 1 — Educate: invisible work**
- Audience: ops managers
- Formats: blog, LinkedIn
- Titles: The hidden cost of approval chains; How to spot reporting drag; A 20-minute audit for weekly prep time [Unknown data]

**Theme 2 — Educate: from data to decisions**
- Audience: ops leads + analysts
- Formats: blog, case study
- Titles: When your report is “right” but still ignored; Defining one source of truth without a six-month project; How teams cut rework after handoffs [Unknown proof]

**Theme 3 — Evaluate: prove the workflow**
- Audience: IT + ops buyers
- Formats: webinar, case study
- Titles: Security review pack for ops tools; Before/after: time-to-close a weekly pack [Unknown metric]; Checklist: what procurement actually asks for

**Theme 4 — Evaluate: compare and choose**
- Audience: economic buyers (VP Ops / CFO office)
- Formats: case study, blog
- Titles: Build vs buy for internal reporting stacks; TCO worksheet for workflow automation [Unknown template]; How to run a 30-day pilot without breaking production

**Theme 5 — Adopt: rollout without chaos**
- Audience: IT + ops sponsors
- Formats: webinar, checklist download
- Titles: Permissions model that scales; Training plan that sticks; Go-live week playbook

Themes work when Requirements tie content to motion—otherwise it is just SEO karaoke.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Themes map to revenue motion because the prompt forced pipeline alignment.
- Context named buyer roles and formats you can ship
- Objective tied themes to educate/evaluate/adopt
- Requirements separated audience, formats, and example titles
- Expectations blocked invented proof with [Unknown]

- **Weak vs Strong Prompt**

Weak prompt:
Give content themes

Strong prompt:
5 themes across pipeline stages; audience; formats from allowed set; 3 titles each; no invented ROI; [Unknown]; consistent structure.

- **C.O.R.E. Breakdown**

C - Context
Mid-market SaaS; ops+IT buyers; known formats

O - Objective
Quarterly themes aligned to pipeline

R - Requirements
Audience + formats + titles; honest proof rules

E - Expectations
Five themes; identical structure

**Pro tip**

If example titles do not sound like something your team would ship, your Requirements are still too loose.

**Takeaway**

Content strategy prompts need Expectations as tight as product specs.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that align themes to pipeline reality.

**Challenge — options (10)**

- [✓ correct] Describe buyer roles and allowed content formats
- [✓ correct] Objective: map themes across educate → evaluate → adopt
- [✓ correct] Requirements: audience, formats, and example titles per theme
- [✓ correct] Forbid invented customer outcomes; require [Unknown] without proof
- [✓ correct] Expectations: fixed theme count and parallel structure
- [✗ incorrect] Ask for fifty themes to maximize creativity
- [✗ incorrect] Let AI invent case study metrics for punch
- [✗ incorrect] Omit pipeline stages so themes stay evergreen
- [✗ incorrect] Request only hashtags, no titles
- [✗ incorrect] Tell AI to ignore sales motion and chase trends

**Result — coaching note**

Pipeline-aligned content is a C.O.R.E. problem: connect context to measurable buyer stages.

**Result — assembled prompt example**

5 themes; educate/evaluate/adopt; audience; allowed formats; 3 titles; no invented metrics; [Unknown]; parallel sections.

**Result — feedback when correct**

You built themes sales can recognize—that is the difference between marketing and noise.

**Result — polished prompt**

Propose five quarterly content themes for a mid-market SaaS motion serving operations and IT buyers across educate, evaluate, and adopt stages. For each theme specify primary audience, formats chosen from blog, case study, webinar, and LinkedIn, and three example working titles. Do not invent quantified customer results; mark missing proof as [Unknown]. Use the same section structure for every theme.

---

#### Scenario 3 — Social angles for a live event

**Situation**

You are promoting an event across pre, live, and post phases.

Without structure, AI collapses everything into generic “join us” posts.

To get a usable result, your prompt must define:
- Context - event type, date window, and CTA reality
- Objective - coverage across phases with distinct jobs
- Requirements - phase tag + message + asset type + CTA per angle
- Expectations - fixed angle count

**Expert prompt**

Create 8 social angles for a 60-minute live product demo webinar.

Context: LinkedIn + X; registration link exists; we have speaker quotes and 3 product screenshots.

Objective: drive registrations before, engagement during, and replay views after.

Requirements: each angle must include Phase (pre/live/post), Message (1 sentence), Suggested asset (e.g., quote card, screenshot, thread), and CTA.

Expectations: return only the 8 angles in a table-like bullet format.

**AI response (example)**

**Pre**
1) Phase: pre — Message: what you will learn in 20 minutes — Asset: screenshot 1 — CTA: register
2) Phase: pre — Message: speaker credibility + who it is for — Asset: quote card — CTA: register

**Live**
3) Phase: live — Message: key takeaway tease — Asset: thread starter — CTA: join now
4) Phase: live — Message: audience question prompt — Asset: poll text [Unknown tool feature] — CTA: reply

**Post**
5) Phase: post — Message: top 3 learnings — Asset: screenshot 2 — CTA: watch replay
6) Phase: post — Message: the one setting teams forget when scheduling reports — Asset: screenshot 3 — CTA: watch replay
7) Phase: post — Message: quote from live Q&A on failure modes — Asset: quote card — CTA: watch replay + comment question
8) Phase: post — Message: “if you missed it” recap with timestamps — Asset: thread summary — CTA: register interest for next demo

Phased Requirements stop “evergreen” posts that say nothing at the moment people decide.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Angles map to the event lifecycle because the prompt required phase-specific jobs.
- Context named platforms and available assets
- Objective separated registration, live engagement, replay
- Requirements forced asset + CTA per angle
- Expectations fixed count and format

- **Weak vs Strong Prompt**

Weak prompt:
Write social posts for our webinar

Strong prompt:
8 angles; pre/live/post; message+asset+CTA each; platforms; known creative assets; structured bullets only.

- **C.O.R.E. Breakdown**

C - Context
Webinar; LinkedIn+X; reg link; quotes+screenshots

O - Objective
Registrations, live engagement, replay

R - Requirements
Phase; message; asset; CTA

E - Expectations
Eight angles; consistent bullet structure

**Pro tip**

If every post has the same CTA, you are not running phases—you are spamming one ask.

**Takeaway**

Event social is C.O.R.E. choreography: each phase needs its own Objective.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that produce phased event social coverage.

**Challenge — options (10)**

- [✓ correct] State platforms, assets, and the event format
- [✓ correct] Objective: separate pre-registration, live engagement, post replay goals
- [✓ correct] Requirements: each angle includes phase, message, asset, and CTA
- [✓ correct] Tie messages to available proof (quotes, screenshots), not fantasy creative
- [✓ correct] Expectations: fixed angle count and consistent formatting
- [✗ incorrect] Use one generic CTA for every phase to save time
- [✗ incorrect] Omit asset types so the team can improvise later
- [✗ incorrect] Invent celebrity guests for attention
- [✗ incorrect] Ask only for pre-event posts
- [✗ incorrect] Request 40 angles with no structure

**Result — coaching note**

Social prompts fail when they ignore lifecycle. Phase is a Requirement, not a label.

**Result — assembled prompt example**

8 webinar angles: pre/live/post; message+asset+CTA; LinkedIn+X; quotes+screenshots; bullet structure only.

**Result — feedback when correct**

You mapped creative work to the event clock—this is how social actually converts.

**Result — polished prompt**

Create eight social media angles for a 60-minute live product demo webinar on LinkedIn and X. Include pre-event, live, and post-event phases. For each angle specify phase, one-sentence message, suggested asset type using available speaker quotes and product screenshots, and a clear CTA. Output only the eight angles in a consistent bullet structure.

---

### Lesson 2 — Write Social Posts Easily

#### Scenario 1 — LinkedIn post for a product update

**Situation**

You shipped a meaningful update and need a credible LinkedIn post.

Weak prompts produce hype without specifics—or leaks without context.

To get a usable result, your prompt must define:
- Context - product, audience, and what changed
- Objective - inform and drive one action
- Requirements - tone, length, hashtags count, and what not to claim
- Expectations - include a clear CTA and optional disclaimer

**Expert prompt**

Write a LinkedIn post announcing a product update.

Context: reporting tool for ops teams; update improves scheduled report reliability.

Objective: drive trials of the new scheduling beta.

Requirements: 5–7 short lines; professional tone; max 3 hashtags; do not claim uptime percentages unless I paste them—otherwise write [No data provided].

Expectations: one CTA: comment “beta” to get access; include a one-line “what changed” upfront.

**AI response (example)**

We shipped a big reliability upgrade for scheduled reports—fewer missed sends when your data sources hiccup.

If weekly reporting has ever been “mostly fine except Mondays,” this beta is for you.

What changed: smarter retries + clearer failure signals so you fix issues faster.

Want access? Comment “beta” and we will DM the link.

[No data provided] on uptime—ask if you need the latest numbers.

#operations #reporting #SaaS

Specificity came from Requirements: the model could not invent stats, so it used honest framing.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The post is credible because claims are bounded.
- Context named user type and feature area
- Objective focused on beta trials, not vague “awareness”
- Requirements capped length and hashtags; blocked invented metrics
- Expectations forced a single CTA pattern

- **Weak vs Strong Prompt**

Weak prompt:
Post about our update

Strong prompt:
Ops reporting tool; reliability update; 5–7 lines; beta CTA via comment; max 3 hashtags; no fake uptime; [No data provided].

- **C.O.R.E. Breakdown**

C - Context
Ops reporting; scheduling reliability update

O - Objective
Drive beta trial interest

R - Requirements
Length; tone; hashtag limit; honesty on metrics

E - Expectations
Lead with what changed; one CTA

**Pro tip**

If you do not block fake metrics, LinkedIn will “help” you lie politely.

**Takeaway**

Social copy is still C.O.R.E.: define what you will not claim as hard as what you will.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep a LinkedIn update honest and actionable.

**Challenge — options (10)**

- [✓ correct] Name the audience and the specific change shipped
- [✓ correct] Objective: one primary action (e.g., beta sign-up path)
- [✓ correct] Requirements: length, tone, and hashtag limits
- [✓ correct] Explicit rule for metrics/claims when data is not pasted
- [✓ correct] Expectations: lead with “what changed” and a single CTA
- [✗ incorrect] Encourage invented customer counts for social proof
- [✗ incorrect] Ask for ten different CTAs in one post
- [✗ incorrect] Omit the product context so it sounds mysterious
- [✗ incorrect] Request aggressive hype regardless of facts
- [✗ incorrect] Tell AI to attack competitors by name

**Result — coaching note**

Brand-safe social prompts need Requirements for claims—otherwise fluency beats truth.

**Result — assembled prompt example**

LinkedIn update: ops reporting reliability; 5–7 lines; comment “beta” CTA; <=3 hashtags; [No data provided] for missing stats.

**Result — feedback when correct**

You can ship posts without accidentally inventing numbers—most teams cannot say that.

**Result — polished prompt**

Write a LinkedIn post for operations teams announcing a reliability improvement to scheduled reporting in our analytics product. Use five to seven short lines, professional tone, at most three hashtags, lead with what changed, and use a single call-to-action asking interested readers to comment “beta” for access. Do not invent uptime or performance statistics; if I did not provide numbers, write [No data provided] instead.

---

#### Scenario 2 — X thread from a single insight

**Situation**

You want a thread that teaches one insight without turning into a rant.

Threads sprawl when Expectations are missing.

To get a usable result, your prompt must define:
- Context - audience expertise level
- Objective - one takeaway readers can use today
- Requirements - post count, tone, and no invented statistics
- Expectations - numbered thread outline + CTA

**Expert prompt**

Write a 5-post X thread.

Context: marketers learning prompt basics.

Objective: teach one idea: “Expectations prevent mushy AI outputs.”

Requirements: each post <= 240 characters; friendly expert tone; no statistics unless marked [Example]; include one mini exercise in post 4.

Expectations: posts numbered 1/5 … 5/5; final post CTA: follow for more prompts.

**AI response (example)**

1/5 Most AI flops are not “bad models.” They are missing Expectations—what “done” looks like.

2/5 If you say “write an email,” you get mush. If you say “3 short paragraphs + deadline,” you get structure.

3/5 Think of Expectations as the acceptance test for the output.

4/5 Mini exercise: rewrite “summarize this” to include format + what to exclude. [Example only]

5/5 If you want more C.O.R.E. breakdowns like this, follow—next week: Requirements vs nice-to-haves.

Character limits are Requirements; without them, threads become essays.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The thread stayed coherent because constraints were numeric and sequential.
- Context set reader skill level
- Objective forced a single lesson
- Requirements capped characters and banned fake stats
- Expectations demanded numbering and a final CTA

- **Weak vs Strong Prompt**

Weak prompt:
Write a Twitter thread about AI

Strong prompt:
5 posts; <=240 chars; one lesson; [Example] for stats; mini exercise post 4; numbered; follow CTA.

- **C.O.R.E. Breakdown**

C - Context
Marketers learning prompting

O - Objective
Teach Expectations concept

R - Requirements
Post count; char cap; honest stats rule

E - Expectations
Numbered thread + follow CTA

**Pro tip**

Character limits belong in Requirements, not hope. AI will always write long unless you forbid it.

**Takeaway**

Threads need C.O.R.E. too—especially Expectations for length and structure.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep a social thread tight and teachable.

**Challenge — options (10)**

- [✓ correct] Define reader level and the one lesson to deliver
- [✓ correct] Objective: a single takeaway, not a topic cluster
- [✓ correct] Requirements: post count and per-post character limits
- [✓ correct] Honesty rule for statistics (example-only labels or bans)
- [✓ correct] Expectations: numbering scheme + final CTA
- [✗ incorrect] Ask for 40 posts to cover every subtopic
- [✗ incorrect] Remove character limits for depth
- [✗ incorrect] Invent study percentages to sound authoritative
- [✗ incorrect] Combine five unrelated lessons into one thread
- [✗ incorrect] End without a CTA to stay humble

**Result — coaching note**

Micro-format content punishes vague prompts fastest—Requirements are non-optional.

**Result — assembled prompt example**

5-part X thread; <=240 chars; one lesson; [Example] stats; exercise post 4; numbered; follow CTA.

**Result — feedback when correct**

You can teach in public without rambling—discipline in the prompt becomes discipline on the feed.

**Result — polished prompt**

Write a five-post X thread for marketers learning prompting basics. Each post must be at most 240 characters, numbered 1/5 through 5/5, teaching a single idea: clear Expectations define what a finished AI output looks like. Label any illustrative numbers as [Example]. Include a mini exercise in post four and a follow CTA in post five.

---

#### Scenario 3 — Instagram caption for a customer quote graphic

**Situation**

Design gave you a quote card; you need caption copy that matches brand voice.

Caption prompts fail when voice and compliance are undefined.

To get a usable result, your prompt must define:
- Context - brand voice traits and industry
- Objective - reinforce trust and prompt saves
- Requirements - emoji limit, line breaks, banned phrases
- Expectations - first-line hook + soft CTA

**Expert prompt**

Write an Instagram caption for a customer quote graphic.

Context: B2B SaaS for finance ops; voice is calm, precise, non-hype.

Objective: increase saves/shares from finance managers.

Requirements: max 2 emojis; no “game-changer” or “rocket ship”; include [Customer name] placeholder; 90–130 words; line breaks for readability.

Expectations: first line is the hook; last line CTA: comment “template” for resource.

**AI response (example)**

Close books faster without adding headcount—[Customer name] says the win was fewer manual reconciliations each week.

That is the difference between automation that sounds good and automation your controllers trust.

If you are standardising month-end, start by mapping where time actually goes.

Comment “template” and we will send the reconciliation checklist we use with new teams.

📎✅

Voice Requirements filtered hype words the model loves to add.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The caption matches brand because Requirements banned hype vocabulary.
- Context set industry + tone adjectives
- Objective targeted saves/shares with substantive hook
- Requirements limited emojis and enforced placeholders
- Expectations defined hook + CTA placement

- **Weak vs Strong Prompt**

Weak prompt:
Caption for this quote

Strong prompt:
Finance ops SaaS; calm voice; <=2 emojis; ban hype words; [Customer name]; 90–130 words; hook first; comment CTA.

- **C.O.R.E. Breakdown**

C - Context
Finance ops; quote card creative

O - Objective
Trust + saves/shares

R - Requirements
Emoji cap; banned phrases; placeholder; length; breaks

E - Expectations
Hook first line; CTA last line

**Pro tip**

Banned-phrases lists are Requirements for brand voice—otherwise every caption sounds like a billboard.

**Takeaway**

Creative channels still need C.O.R.E.: voice is a Requirement, not a vibe check afterward.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep Instagram copy on-brand.

**Challenge — options (10)**

- [✓ correct] Describe industry, audience, and voice adjectives
- [✓ correct] Objective: desired engagement outcome (saves, comments, etc.)
- [✓ correct] Requirements: emoji limits, length, and banned hype phrases
- [✓ correct] Include placeholder tokens for customer-specific facts
- [✓ correct] Expectations: hook placement and closing CTA pattern
- [✗ incorrect] Ask for fifteen emojis minimum for fun
- [✗ incorrect] Use slang that contradicts a precise finance brand
- [✗ incorrect] Omit customer placeholder to sound more personal
- [✗ incorrect] Tell AI to invent a customer name and quote
- [✗ incorrect] Request a wall of hashtags instead of readable lines

**Result — coaching note**

Social brand prompts are compliance + creativity: Requirements carry the brand guardrails.

**Result — assembled prompt example**

IG caption: finance ops; calm voice; <=2 emojis; ban hype; [Customer name]; 90–130 words; hook+CTA positions.

**Result — feedback when correct**

You can scale social without diluting voice—Requirements did the enforcement.

**Result — polished prompt**

Write an Instagram caption for a customer quote graphic for a calm, precise B2B finance operations SaaS brand. Use at most two emojis, between 90 and 130 words with line breaks, ban hype phrases like “game-changer,” include a [Customer name] placeholder, open with a hook line, and close with a comment “template” CTA.

---

### Lesson 3 — Create Simple Landing Page Copy

#### Scenario 1 — Homepage hero for a niche product

**Situation**

Your hero must say who it is for, what it does, and why it matters—in one glance.

Hero prompts without Requirements become generic “innovation” language.

To get a usable result, your prompt must define:
- Context - category, buyer, and primary pain
- Objective - communicate value + credibility in one screen
- Requirements - max words for hero + subhead; banned clichés
- Expectations - include proof line rules (real vs [Unknown])

**Expert prompt**

Write homepage hero copy (headline + subhead + proof line).

Context: workflow automation for healthcare admin teams; buyers are clinic operations leads.

Objective: communicate time saved on intake paperwork with HIPAA-aware positioning (not legal advice).

Requirements: headline <=8 words; subhead <=22 words; ban “revolutionary,” “AI-powered magic,” “world-class.”

Expectations: proof line must be either a real metric I paste or the words “Customer results vary” if none provided.

**AI response (example)**

**Headline**
Less paperwork. Faster intake.

**Subhead**
Ops teams reduce manual intake steps while keeping PHI handling disciplined—built for clinics that cannot afford sloppy handoffs.

**Proof line**
Customer results vary

Clean heroes come from Requirements on word count and proof discipline—not from asking for “punchy.”

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The hero is specific because context and bans removed generic SaaS language.
- Context named industry and buyer
- Objective tied value to a real operational pain
- Requirements enforced word caps and cliché bans
- Expectations forced honest proof handling

- **Weak vs Strong Prompt**

Weak prompt:
Write a headline

Strong prompt:
Healthcare admin ops; HIPAA-aware tone; headline<=8; subhead<=22; ban clichés; proof line rule for missing metrics.

- **C.O.R.E. Breakdown**

C - Context
Healthcare admin workflow automation

O - Objective
Clear value + cautious compliance tone

R - Requirements
Word limits; banned phrases

E - Expectations
Proof line policy

**Pro tip**

Ban lists are Requirements for heroes—models love “revolutionary” more than users do.

**Takeaway**

Landing copy is C.O.R.E. compressed: every word is a constraint problem.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that produce a credible hero block.

**Challenge — options (10)**

- [✓ correct] Name industry, buyer, and the pain you solve
- [✓ correct] Objective: headline job (value + differentiation) stated clearly
- [✓ correct] Requirements: word limits for headline and subhead
- [✓ correct] Ban vague superlatives and magic buzzwords explicitly
- [✓ correct] Expectations: proof line rules when metrics are absent
- [✗ incorrect] Ask for as many adjectives as possible
- [✗ incorrect] Invent customer logos and metrics for credibility
- [✗ incorrect] Omit industry context to keep copy universal
- [✗ incorrect] Promise legal compliance as guaranteed in copy
- [✗ incorrect] Request ten alternative heroes without limits

**Result — coaching note**

Hero prompts need hard Requirements: length, proof, and banned phrases—soft adjectives do not substitute.

**Result — assembled prompt example**

Hero+subhead+proof; healthcare admin; HIPAA-aware; word caps; ban clichés; honest proof line if no metric.

**Result — feedback when correct**

You can ship landing copy that survives legal and buyer scrutiny—because Requirements did the filtering.

**Result — polished prompt**

Write homepage hero copy with a headline of at most eight words, a subhead of at most twenty-two words, and a proof line for workflow automation aimed at clinic operations leaders. Keep HIPAA-aware positioning without giving legal advice. Ban words like “revolutionary,” “AI-powered magic,” and “world-class.” If I provide no metric, the proof line must read exactly: Customer results vary.

---

#### Scenario 2 — Feature section with three bullets

**Situation**

Feature sections bloat when AI lists everything the product could do.

You need selection discipline in the prompt.

To get a usable result, your prompt must define:
- Context - persona and job-to-be-done
- Objective - three differentiated benefits
- Requirements - parallel bullet structure; no fake integrations
- Expectations - each bullet ties to an outcome metric type

**Expert prompt**

Write a 3-bullet feature section for the product page.

Context: analytics tool for ecommerce ops teams.

Objective: explain why it improves gross margin visibility, not “more dashboards.”

Requirements: each bullet = Benefit headline + 1 sentence + outcome type (time saved / risk reduced / revenue protected); integrations only from this list: Shopify, BigCommerce, [Unknown].

Expectations: return only the 3 bullets.

**AI response (example)**

• **Margin alerts that fire before promos bleed profit** — Surfaces skew between discounting and contribution margin so you adjust campaigns the same week. Outcome: revenue protected.

• **Faster close on inventory exceptions** — Flags mismatches between sales and stock movements with a short explain line ops can action. Outcome: time saved.

• **Cleaner refund/chargeback signals** — Groups noisy payment events so finance sees patterns, not tickets. Outcome: risk reduced.

Parallel structure came from Requirements; without it, bullets read like three random products.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Bullets are comparable because structure was mandated.
- Context anchored ecommerce ops outcomes
- Objective forced margin story, not feature soup
- Requirements enforced parallel fields + integration honesty
- Expectations limited scope to three bullets

- **Weak vs Strong Prompt**

Weak prompt:
List features

Strong prompt:
3 bullets; benefit+sentence+outcome type; ecommerce ops; integrations only from allowed list; [Unknown].

- **C.O.R.E. Breakdown**

C - Context
Ecommerce ops analytics buyer

O - Objective
Margin visibility story

R - Requirements
Parallel bullet schema; honest integrations

E - Expectations
Exactly three bullets

**Pro tip**

Parallel bullet schemas are hidden Requirements—they keep comparisons honest.

**Takeaway**

Feature copy is C.O.R.E. plus symmetry: same shape, sharper choices.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that prevent feature bloat.

**Challenge — options (10)**

- [✓ correct] Define persona and the job-to-be-done for the section
- [✓ correct] Objective: a focused story, not an encyclopedia of features
- [✓ correct] Requirements: identical fields per bullet for easy scanning
- [✓ correct] Restrict integrations/partners to an approved list or [Unknown]
- [✓ correct] Expectations: explicit bullet count
- [✗ incorrect] Ask for twelve bullets so nothing is left out
- [✗ incorrect] Invent enterprise clients to sound established
- [✗ incorrect] Use a different structure in every bullet for variety
- [✗ incorrect] Omit outcome types so bullets stay vague
- [✗ incorrect] Claim certifications that are not provided

**Result — coaching note**

When every bullet has the same skeleton, readers trust you are comparing apples to apples.

**Result — assembled prompt example**

3 feature bullets; benefit+sentence+outcome type; ecommerce ops; allowed integrations only; [Unknown].

**Result — feedback when correct**

You guided the model to edit, not enumerate—this is how landing pages stay readable.

**Result — polished prompt**

Write a three-bullet feature section for ecommerce operations teams using an analytics product focused on gross margin visibility. Each bullet must include a benefit headline, one supporting sentence, and an outcome label of time saved, risk reduced, or revenue protected. Only mention integrations from Shopify, BigCommerce, or mark unknown platforms as [Unknown]. Return only the three bullets.

---

#### Scenario 3 — Signup module copy with clear constraints

**Situation**

Signup copy creates legal and trust issues when prompts are loose.

To get a usable result, your prompt must define:
- Context - offer (trial length), billing transparency, and audience sensitivity
- Objective - increase qualified signups
- Requirements - disclose credit card rule accurately; no false scarcity
- Expectations - headline, supporting line, button label, microcopy under button

**Expert prompt**

Write signup module copy (headline, subline, primary button, microcopy).

Context: 14-day trial; credit card required; SMB admins who hate surprise charges.

Objective: increase qualified signups without misleading urgency.

Requirements: explicitly state card required before trial ends; ban fake “only 2 seats left” claims; button <=3 words.

Expectations: microcopy includes cancel anytime + link placeholder [Billing FAQ URL].

**AI response (example)**

**Headline**
Try workflows free for 14 days

**Subline**
Card required to start—cancel anytime before day 15 and you will not be charged. Questions? [Billing FAQ URL]

**Button**
Start trial

**Microcopy**
We will email before the first charge. No hidden add-ons.

Trust wins when Requirements ban dark-pattern language up front.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Copy is compliant-leaning because billing facts were Requirements, not footnotes.
- Context named trial terms and audience fear
- Objective balanced conversion with honesty
- Requirements banned false scarcity and forced card disclosure
- Expectations separated UI fields for implementation

- **Weak vs Strong Prompt**

Weak prompt:
Write signup text

Strong prompt:
14-day trial; card required; cancel rule; ban fake scarcity; button<=3 words; billing FAQ placeholder.

- **C.O.R.E. Breakdown**

C - Context
SMB admins; sensitive to billing surprises

O - Objective
Qualified signups with transparency

R - Requirements
Accurate billing statements; ban manipulative scarcity

E - Expectations
Headline/subline/button/microcopy pattern

**Pro tip**

Put billing Requirements in the prompt, not the apology email after chargebacks.

**Takeaway**

Conversion copy is C.O.R.E. under regulation: clarity is a Requirement.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep signup copy transparent.

**Challenge — options (10)**

- [✓ correct] State trial length and credit-card rules accurately
- [✓ correct] Objective: qualified signups, not misleading urgency
- [✓ correct] Requirements: ban false scarcity and fake inventory claims
- [✓ correct] Disclose cancellation/charging timing in plain language
- [✓ correct] Expectations: separate fields for headline, button, microcopy
- [✗ incorrect] Hide credit card requirement until the last step
- [✗ incorrect] Invent countdown timers and seat limits
- [✗ incorrect] Promise a money-back guarantee you did not approve
- [✗ incorrect] Use a ten-word button label for clarity
- [✗ incorrect] Tell AI to shame users who do not sign up

**Result — coaching note**

Ethical growth prompts explicitly ban manipulation—Requirements are your brand policy.

**Result — assembled prompt example**

Signup module: 14-day trial; card required; cancel clarity; no fake scarcity; short button; FAQ placeholder.

**Result — feedback when correct**

You can optimize conversion without dark patterns—Requirements keep marketing honest.

**Result — polished prompt**

Write signup module copy with headline, supporting line, primary button (maximum three words), and microcopy for a 14-day trial that requires a credit card upfront. Clearly explain when charging begins and that users can cancel before day fifteen to avoid charges. Ban false scarcity claims. Include a [Billing FAQ URL] placeholder and a line that you will email before the first charge.

---

### Lesson 4 — Write Emails for Marketing

#### Scenario 1 — Welcome email after signup

**Situation**

Welcome emails set habit and trust.

To get a usable result, your prompt must define:
- Context - product type and first value moment
- Objective - one clear first action
- Requirements - word count, tone, and link placeholders
- Expectations - subject line + body + PS rule

**Expert prompt**

Write a welcome email for new signups.

Context: productivity app for consultants; first value is importing a client list template.

Objective: get them to import within 24 hours.

Requirements: <=130 words; friendly-direct tone; include [Import URL] and [Help URL]; no fake “we have been watching you” personalization.

Expectations: provide subject line; body; PS with human support contact placeholder [Support email].

**AI response (example)**

Subject: Your fastest win: import your clients in minutes

Hi [Name],

Welcome—if you do one thing today, import your client list using our consultant template. Most people finish in under 10 minutes.

Start here: [Import URL]
Stuck? [Help URL]

PS: Prefer a human? Email [Support email] and we will point you to the right step.

Welcome emails work when Objective names a single behavior, not ten tips.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The email drives one action because Objective and word cap collided.
- Context set persona and first value moment
- Objective picked a single 24h behavior
- Requirements controlled tone and link honesty
- Expectations separated subject/body/PS components

- **Weak vs Strong Prompt**

Weak prompt:
Welcome email

Strong prompt:
Consultants; first value import; <=130 words; one CTA; placeholders; no creepy personalization; subject+body+PS.

- **C.O.R.E. Breakdown**

C - Context
Consultant productivity app signup

O - Objective
Import within 24 hours

R - Requirements
Word cap; tone; real links as placeholders

E - Expectations
Subject, body, PS pattern

**Pro tip**

If your welcome email lists seven features, you listed seven ways to do nothing.

**Takeaway**

Email marketing runs on C.O.R.E.: one Context, one Objective, strict Requirements.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a welcome email drive the first habit.

**Challenge — options (10)**

- [✓ correct] Describe the product and the first meaningful win
- [✓ correct] Objective: single primary action within a time window
- [✓ correct] Requirements: length limit and tone constraints
- [✓ correct] Use placeholders for URLs and support contacts instead of inventing links
- [✓ correct] Expectations: subject line + body + PS structure
- [✗ incorrect] Pack every feature into the first email
- [✗ incorrect] Fake personalization using private user behavior
- [✗ incorrect] Omit the CTA to keep the email friendly
- [✗ incorrect] Use manipulative guilt for not onboarding
- [✗ incorrect] Write a 400-word essay for “authority”

**Result — coaching note**

Welcome sequences start with C.O.R.E. discipline: one action beats ten mentions.

**Result — assembled prompt example**

Welcome email: consultants; import in 24h; <=130 words; [Import URL] [Help URL]; subject+body+PS; [Support email].

**Result — feedback when correct**

You directed attention instead of spraying it—this is how onboarding emails actually convert.

**Result — polished prompt**

Write a welcome email under 130 words for new signups to a productivity app for consultants. Objective: complete the client list import within twenty-four hours using the provided template. Friendly-direct tone. Include placeholders [Import URL], [Help URL], and [Support email]. Provide subject line, body, and a PS offering human help. Do not invent creepy personalization.

---

#### Scenario 2 — Promotional email with a single offer

**Situation**

Promo emails fail when they ask for three purchases at once.

To get a usable result, your prompt must define:
- Context - segment, offer mechanics, and deadline truth
- Objective - one purchase or upgrade action
- Requirements - subject line variants count; body sections; honesty on deadline
- Expectations - include snippet text for preview pane

**Expert prompt**

Write a promotional email for an annual plan discount.

Context: existing free users; offer is 20% off annual if upgraded by Friday (real deadline).

Objective: upgrade to annual.

Requirements: 3 subject line options; body <=180 words; include [Upgrade URL]; do not stack other offers; preview snippet <=40 characters.

Expectations: list subject options labeled A/B/C, then body, then snippet.

**AI response (example)**

**A** Save 20% when you go annual (ends Friday)
**B** Friday deadline: annual plan discount
**C** Upgrade now: lock in a year for less

Snippet: 20% off annual ends Fri

Body: Hi [Name], you have been using [Product] on the free plan—thanks. If you want uninterrupted access for the next year, you can move to annual now for 20% off. The offer ends Friday at midnight UTC and does not stack with other promotions.

Upgrade: [Upgrade URL]

Why annual? Fewer billing surprises and priority email support when you need it.

Deadline truth in Requirements prevents “extended forever” embarrassment.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The promo stays legible because only one offer exists and deadline is explicit.
- Context targeted free users with a real end date
- Objective singled out annual upgrade
- Requirements separated subject variants, snippet cap, and URL placeholder
- Expectations enforced output ordering for implementation

- **Weak vs Strong Prompt**

Weak prompt:
Sale email

Strong prompt:
20% annual; ends Friday; free users; 3 subjects; <=180 words; preview snippet<=40; [Upgrade URL]; no stacking.

- **C.O.R.E. Breakdown**

C - Context
Free users; timed annual discount

O - Objective
Single upgrade action

R - Requirements
Subject variants; word caps; honest deadline; no stacked promos

E - Expectations
Labeled subjects + body + snippet

**Pro tip**

Preview snippets are Expectations too—if you forget them, mobile readers see random first lines.

**Takeaway**

Promotional email is C.O.R.E. plus packaging: subjects, body, snippet are all specified outputs.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep a promo email focused.

**Challenge — options (10)**

- [✓ correct] Define segment, offer mechanics, and real deadline
- [✓ correct] Objective: one purchase/upgrade path only
- [✓ correct] Requirements: subject line count, word limits, snippet limit
- [✓ correct] Use a placeholder for the checkout/upgrade URL
- [✓ correct] Expectations: labeled deliverables for production handoff
- [✗ incorrect] Stack three unrelated offers for urgency
- [✗ incorrect] Extend deadlines dynamically to “help” conversion
- [✗ incorrect] Omit preview snippet as unnecessary
- [✗ incorrect] Write six different CTAs in one email
- [✗ incorrect] Invent a higher discount to beat competitors

**Result — coaching note**

Focused promos win because Requirements remove option overload—C.O.R.E. applies to incentives too.

**Result — assembled prompt example**

Promo: 20% annual; Friday end; 3 subjects; <=180 words; snippet<=40; [Upgrade URL]; no stacking.

**Result — feedback when correct**

You kept the promo honest and scannable—Requirements prevented discount soup.

**Result — polished prompt**

Write a promotional email to existing free users offering twenty percent off an annual plan with a real deadline of Friday at midnight UTC. Include three labeled subject line options, a body of at most 180 words with a single upgrade call-to-action using [Upgrade URL], a preview snippet of at most 40 characters, and explicit language that the offer does not stack with other promotions.

---

#### Scenario 3 — Re-engagement email for dormant users

**Situation**

Reactivation needs empathy plus a concrete reason to return.

To get a usable result, your prompt must define:
- Context - product value prop and why users ghost
- Objective - one return action tied to a product improvement
- Requirements - tone non-guilt-tripping; include [Product name]; mention improvement factually
- Expectations - P.S. with feedback link placeholder

**Expert prompt**

Write a re-engagement email for users inactive 30 days.

Context: habit tracker app; common drop-off is notification fatigue; we shipped granular notification controls last week.

Objective: open settings and tune notifications.

Requirements: no guilt language (“you failed,” “you quit”); <=150 words; include [Settings URL] and [Feedback URL].

Expectations: subject + body + PS inviting honest feedback.

**AI response (example)**

Subject: We fixed the noisy notifications (want a calmer week?)

Hi [Name],

A lot of people paused [Product name] when alerts felt constant—not because the habit mattered less. We shipped finer notification controls so you can keep reminders without the noise.

If you have 2 minutes, open settings and tune what you want to see: [Settings URL]

PS: Tell us what still feels off—[Feedback URL]. We read these.

Tone Requirements kept the email respectful—reactivation is not punishment marketing.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Empathy plus a concrete product reason beats shame.
- Context explained a real churn driver
- Objective focused on notification settings, not vague “come back”
- Requirements banned guilt language and capped length
- Expectations added feedback loop via PS

- **Weak vs Strong Prompt**

Weak prompt:
Win back email

Strong prompt:
30d inactive; notification fatigue; new controls; no guilt; <=150 words; [Settings URL] [Feedback URL]; subject+body+PS.

- **C.O.R.E. Breakdown**

C - Context
Habit app; dormant users; notification pain

O - Objective
Return to tune notifications

R - Requirements
Respectful tone; factual improvement; link placeholders

E - Expectations
Subject, body, PS feedback invite

**Pro tip**

Ban guilt phrases in Requirements—models default to emotional pressure because it “works” in fiction.

**Takeaway**

Retention copy is C.O.R.E. with empathy: Context includes why people left.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that re-engage users without shame tactics.

**Challenge — options (10)**

- [✓ correct] Explain why users drifted and what changed in the product
- [✓ correct] Objective: one concrete return action in the product
- [✓ correct] Requirements: respectful tone rules banning guilt trips
- [✓ correct] Include factual improvement statements, not invented roadmap
- [✓ correct] Expectations: subject, body, PS with feedback placeholder
- [✗ incorrect] Accuse users of quitting because they lack discipline
- [✗ incorrect] Promise features that are not shipped
- [✗ incorrect] Hide the settings link to reduce clutter
- [✗ incorrect] Ask them to invite ten friends as the only CTA
- [✗ incorrect] Use fake countdowns to manufacture panic

**Result — coaching note**

Ethical retention is a Requirements problem: ban shame, demand facts, specify the return path.

**Result — assembled prompt example**

Re-engage: 30d inactive; notification controls shipped; no guilt; <=150 words; settings+feedback URLs; subject+body+PS.

**Result — feedback when correct**

You invited people back with dignity—this is how brands keep trust while chasing activation.

**Result — polished prompt**

Write a re-engagement email for users inactive thirty days in a habit tracker app. Explain notification fatigue as a common reason people pause, mention that granular notification controls shipped last week, and ask them to spend two minutes tuning settings using [Settings URL]. Maximum 150 words, no guilt language, include [Product name], and end with a PS linking to [Feedback URL] for honest input. Provide subject line and body.

---

### Lesson 5 — Boost Engagement

#### Scenario 1 — LinkedIn poll that yields usable insights

**Situation**

Polls flop when questions are vague or options overlap.

To get a usable result, your prompt must define:
- Context - audience and what decision the poll informs
- Objective - learn one specific thing
- Requirements - mutually exclusive options; neutral wording; option count
- Expectations - include how you will use results in a follow-up post

**Expert prompt**

Draft a LinkedIn poll + follow-up plan.

Context: marketing to ops leaders about reporting pain.

Objective: identify the top bottleneck category.

Requirements: question <=140 characters; exactly 4 options; options mutually exclusive; neutral wording (no “obviously bad” choices).

Expectations: poll text, then 2-sentence plan for a follow-up post referencing results without shaming voters.

**AI response (example)**

**Poll question**
What slows your weekly reporting most?

**Options**
Data cleanup
Approvals/handoffs
Tool switching
Unclear requests

**Follow-up plan**
I will summarize the leading option and share a short checklist targeting that bottleneck. framing is about systems, not individual blame.

Mutual exclusivity is a Requirement—otherwise the poll measures confusion, not reality.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Insights are readable because options cannot all be true at once.
- Context targeted ops leaders and reporting pain
- Objective narrowed to bottleneck category
- Requirements enforced exclusivity and neutrality
- Expectations connected poll to a respectful follow-up

- **Weak vs Strong Prompt**

Weak prompt:
Make a poll

Strong prompt:
Ops leaders; reporting bottleneck; <=140 char question; 4 mutually exclusive neutral options; follow-up plan without shaming.

- **C.O.R.E. Breakdown**

C - Context
Ops leaders; reporting workflow pains

O - Objective
Identify primary bottleneck category

R - Requirements
Exclusive options; neutral tone; char cap

E - Expectations
Poll + follow-up usage plan

**Pro tip**

If two poll options can be true together, fix the options—not the ad budget.

**Takeaway**

Engagement prompts still need C.O.R.E.: clarity beats gimmicks.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make a poll statistically meaningful.

**Challenge — options (10)**

- [✓ correct] Name audience and the decision the poll supports
- [✓ correct] Objective: one measurable insight, not general “engagement”
- [✓ correct] Requirements: mutually exclusive answer choices
- [✓ correct] Neutral wording requirements (no loaded options)
- [✓ correct] Expectations: character limits and option count
- [✗ incorrect] Add comedic insult options to go viral
- [✗ incorrect] Ask unrelated personal questions for spice
- [✗ incorrect] Use eight overlapping options for nuance
- [✗ incorrect] Omit follow-up plan and hope for magic
- [✗ incorrect] Phrase the poll to embarrass people who pick an option

**Result — coaching note**

Polls are instruments: Requirements about exclusivity and neutrality are measurement hygiene.

**Result — assembled prompt example**

LinkedIn poll: ops leaders; reporting bottleneck; <=140 char Q; 4 exclusive neutral options; follow-up plan.

**Result — feedback when correct**

You designed engagement that can inform content—data beats vibes.

**Result — polished prompt**

Draft a LinkedIn poll targeted at operations leaders about weekly reporting delays. Provide a question of at most 140 characters and exactly four mutually exclusive, neutrally worded options. Add a two-sentence plan describing how you will follow up with a post that uses the results constructively without shaming respondents.

---

#### Scenario 2 — Comment-to-unlock lead magnet reply

**Situation**

Comment workflows need brand-safe, non-spammy auto-replies.

To get a usable result, your prompt must define:
- Context - platform norms and offer
- Objective - deliver asset + capture email optionally
- Requirements - no DMs before consent language; include placeholders
- Expectations - two variants: short vs detailed auto-reply

**Expert prompt**

Write two auto-reply comment templates for LinkedIn when someone comments “guide.”

Context: we offer a PDF checklist; we want email optional.

Objective: send the asset and set expectations on timing.

Requirements: friendly tone; no fake “limited slots”; include [Asset link] and [Privacy URL]; mention reply time [Support SLA].

Expectations: Variant S (<=280 characters) and Variant L (<=650 characters).

**AI response (example)**

**Variant S**
Thanks! Here is the checklist: [Asset link]. We will never share your email—details: [Privacy URL]. Questions? We reply within [Support SLA].

**Variant L**
Thanks for commenting “guide.” Here is the checklist we promised: [Asset link]. It walks through the same steps we use with new teams.

If you want more, you can join our newsletter, but no pressure—this link is the full PDF. Privacy basics are here: [Privacy URL]. If something looks off, email us and we will respond within [Support SLA].

Auto-replies still need Requirements—otherwise they become sketchy DMs.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Trust stays intact because scarcity lies and consent gaps are banned.
- Context respected LinkedIn comment-to-unlock norms
- Objective clarified asset delivery + timing expectations
- Requirements added privacy link and SLA placeholder
- Expectations demanded two length variants for automation

- **Weak vs Strong Prompt**

Weak prompt:
Auto reply

Strong prompt:
Comment keyword guide; [Asset link] [Privacy URL]; [Support SLA]; no fake scarcity; short+long variants with char caps.

- **C.O.R.E. Breakdown**

C - Context
LinkedIn comment unlock workflow

O - Objective
Deliver asset + set expectations

R - Requirements
No deceptive scarcity; privacy link; SLA honesty

E - Expectations
Two template lengths

**Pro tip**

Auto-replies are marketing infrastructure—write Requirements like legal-lite copy.

**Takeaway**

Engagement automation without C.O.R.E. becomes spam with extra steps.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep comment auto-replies trustworthy.

**Challenge — options (10)**

- [✓ correct] Describe platform context and what the user receives
- [✓ correct] Objective: deliver asset and set response-time expectations
- [✓ correct] Requirements: ban deceptive scarcity or fake exclusivity
- [✓ correct] Include privacy policy and help/SLA placeholders
- [✓ correct] Expectations: multiple variants with explicit character caps
- [✗ incorrect] Ask users to share passwords to get the PDF
- [✗ incorrect] Promise instant human replies 24/7 regardless of truth
- [✗ incorrect] Use fear-mongering about competitors
- [✗ incorrect] Send only emoji responses without the link
- [✗ incorrect] Hide the asset link behind unrelated clickbait

**Result — coaching note**

Comment growth tactics need ethical Requirements—your brand pays for spammy shortcuts.

**Result — assembled prompt example**

LinkedIn auto-reply: keyword guide; [Asset link] [Privacy URL]; [Support SLA]; Variant S<=280; Variant L<=650; no fake scarcity.

**Result — feedback when correct**

You scaled replies without sounding predatory—Requirements protected trust.

**Result — polished prompt**

Write two LinkedIn comment auto-reply templates for users who comment “guide” to receive a PDF checklist. Variant S must be at most 280 characters, Variant L at most 650 characters. Include placeholders [Asset link], [Privacy URL], and [Support SLA]. Ban false scarcity claims, keep tone friendly, and explain that email capture is optional if referenced.

---

#### Scenario 3 — Community challenge post with guardrails

**Situation**

Challenges can backfire if prompts encourage unsafe comparisons.

To get a usable result, your prompt must define:
- Context - community values and skill level
- Objective - drive constructive participation
- Requirements - ban harmful comparisons; include moderation note; deadline truth
- Expectations - post copy + comment instructions + reporting line placeholder

**Expert prompt**

Write a community challenge post for a beginner marketer group.

Objective: participants share a before/after prompt rewrite using C.O.R.E.

Requirements: forbid weight/diet/finance flexing; forbid naming real clients without consent; include deadline [Date]; include reporting instructions with [Mod email].

Expectations: main post + pinned comment with rules summary.

**AI response (example)**

**Main post**
Challenge (ends [Date]): share a before/after prompt rewrite using C.O.R.E. (Context, Objective, Requirements, Expectations).

Keep it kind: no personal attacks, no flexing about money/body/clients. If you mention a client story, anonymize it or say you have consent.

Best wins = clearer Requirements, not longer prompts.

**Pinned comment**
How to join: comment with BEFORE + AFTER + one line on what changed.
Report issues: [Mod email]

Guardrails belong in Requirements—community health is part of engagement strategy.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Participation stays safe because banned content and reporting paths are explicit.
- Context named skill level and community type
- Objective focused on educational rewrites
- Requirements blocked harmful flex topics and non-consensual client naming
- Expectations split main post and pinned rule comment

- **Weak vs Strong Prompt**

Weak prompt:
Fun challenge post

Strong prompt:
Beginner marketers; C.O.R.E. rewrite challenge; ban harmful flex; anonymize clients; deadline [Date]; [Mod email]; main+pinned comment.

- **C.O.R.E. Breakdown**

C - Context
Beginner marketer community

O - Objective
Share constructive prompt rewrites

R - Requirements
Safety/moderation rules; consent for client stories

E - Expectations
Main post + pinned instructions

**Pro tip**

Moderation Requirements are not buzzkill—they are how challenges scale without PR fires.

**Takeaway**

Viral prompts still need C.O.R.E.: define what participants must not do.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that run a safe community challenge.

**Challenge — options (10)**

- [✓ correct] Define community level and challenge learning goal
- [✓ correct] Objective: structured participation format (before/after)
- [✓ correct] Requirements: ban harmful comparison topics and non-consensual stories
- [✓ correct] Include accurate deadline placeholder and reporting path
- [✓ correct] Expectations: main post plus pinned rule summary
- [✗ incorrect] Encourage dunking on bad prompts with personal insults
- [✗ incorrect] Ask people to share confidential client names
- [✗ incorrect] Omit moderation contact to keep things casual
- [✗ incorrect] Promise prizes you will not fulfill
- [✗ incorrect] Run the challenge indefinitely without a deadline

**Result — coaching note**

Community engagement is brand risk management: Requirements list the failures you refuse to host.

**Result — assembled prompt example**

Challenge post: C.O.R.E. rewrites; ban harmful flex; anonymize clients; [Date]; [Mod email]; main + pinned comment.

**Result — feedback when correct**

You scaled participation with guardrails—engagement without Requirements is liability.

**Result — polished prompt**

Write a community challenge post for beginner marketers asking participants to share before-and-after prompt rewrites using C.O.R.E. Include a real deadline placeholder [Date], forbid harmful flexing about money, body, or clients without consent, require anonymization or consent for client stories, provide reporting instructions with [Mod email], supply main post copy, and a pinned comment summarizing participation and safety rules.

---

## Track 9 — Brainstorming & Strategy
*Source: `lib/data/tracks/track9_brainstorming_strategy.dart`*

### Lesson 1 — Generate Ideas Quickly

#### Scenario 1 — Generate ideas for improving a process

**Situation**

You’re asked for ways to improve an existing process, but your initial thoughts are scattered.

The pressure is real: leadership wants “quick wins,” but the process is tied to compliance and risk.

If you generate generic ideas, nothing changes.

If you generate aggressive ideas, you accidentally remove controls and create downstream failure.

Weak prompts usually:
- produce safe, obvious suggestions
- ignore constraints and trade-offs
- sound confident while inventing feasibility

To get a usable result, your prompt must define:
- Context - process improvement under constraints
- Objective - generate ideas with explicit trade-offs
- Requirements - classify ideas by impact/effort/risk; no invented facts; preserve uncertainty
- Expectations - 10 ideas with guardrails + what to validate

**Expert prompt**

Generate practical process-improvement ideas.

Requirements:
- Provide exactly 10 ideas
- For each idea include: Impact (High/Med/Low), Effort (High/Med/Low), Risk (High/Med/Low)
- For any idea that could reduce controls, add a “Guardrail” line
- Do not assume facts not provided; if a dependency is unknown, mark it [Unknown]
- Keep ideas actionable and specific (no generic “improve communication”)

Return only the list.

**AI response (example)**

- Reduce unnecessary approval steps (Impact: Med, Effort: Med, Risk: High)
  - Guardrail: keep mandatory compliance checkpoints; document any removed step rationale
- Automate routine data handling tasks (Impact: High, Effort: Med, Risk: Med)
- Standardise templates to reduce errors (Impact: Med, Effort: Low, Risk: Low)
- Introduce weekly review checkpoints (Impact: Med, Effort: Low, Risk: Low)
- Improve documentation for onboarding (Impact: Med, Effort: Low, Risk: Low)
- Add a “definition of done” checklist per step (Impact: Med, Effort: Low, Risk: Low)
- Create a fast-path for low-risk cases (Impact: High, Effort: Med, Risk: Med)
  - Guardrail: define eligibility criteria; audit a sample weekly
- Add an exception log for edge cases (Impact: Med, Effort: Low, Risk: Low)
- Identify the top 3 recurring delays and instrument them (Impact: High, Effort: Med, Risk: Low)
- Clarify ownership per step (Impact: Med, Effort: Low, Risk: Low)

Notice how this stays decision-grade: Impact/Effort/Risk + Guardrails prevents “quick wins” from becoming hidden liabilities.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *trade-off enforcement*.
- Requirements forced Impact/Effort/Risk per idea, preventing generic fluff
- Guardrails stop “efficiency” ideas from quietly deleting controls
- Expectations locked quantity (10) and specificity, so the output is usable immediately

- **Weak vs Strong Prompt**

Weak prompt:
Generate ideas to improve this process

Strong prompt:
Generate exactly 10 process-improvement ideas. For each include Impact/Effort/Risk. Add Guardrails for any control-reducing idea. Don’t assume unknown facts; mark [Unknown]. Keep ideas specific and actionable.

- **C.O.R.E. Breakdown**

C - Context
Process improvement under constraints and risk

O - Objective
Generate actionable ideas with explicit trade-offs

R - Requirements
Impact/Effort/Risk per idea; guardrails for risky ideas; no invented facts; mark unknowns

E - Expectations
Exactly 10 ideas, output only

**Pro tip**

“Brainstorm” prompts fail when they ignore risk. Force Impact/Effort/Risk + Guardrails or the model will optimise for sounding clever instead of being safe.

**Takeaway**

Elite ideation makes trade-offs explicit, not implicit.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that generate actionable ideas with explicit trade-offs and guardrails.

**Challenge — options (10)**

- [✓ correct] Fix the number of ideas (exactly 10)
- [✓ correct] Require Impact/Effort/Risk for each idea
- [✓ correct] Require guardrails for control-reducing ideas
- [✓ correct] Ban invented facts and mark unknowns as [Unknown]
- [✓ correct] Demand specificity (no generic advice)
- [✗ incorrect] Ask for the “best idea” only
- [✗ incorrect] Remove risk to keep momentum
- [✗ incorrect] Assume compliance constraints don’t matter
- [✗ incorrect] Let the model add plausible details for realism
- [✗ incorrect] Ask for inspirational slogans

**Result — coaching note**

The advantage isn’t “more ideas.” It’s ideas that won’t create hidden risk. Trade-off fields and guardrails force professional-grade thinking.

**Result — assembled prompt example**

Generate exactly 10 process-improvement ideas. For each include Impact/Effort/Risk. Add guardrails for any control-reducing idea. Don’t assume facts; mark unknowns [Unknown]. Keep ideas specific and actionable.

**Result — feedback when correct**

You now brainstorm like a strategist: every idea carries its trade-offs and safety boundaries.

**Result — polished prompt**

Generate exactly 10 practical process-improvement ideas. For each idea include Impact/Effort/Risk (High/Med/Low). Add a Guardrail line for any idea that could reduce controls. Do not assume facts; mark unknown dependencies as [Unknown]. Keep ideas specific and actionable. Return only the list.

---

#### Scenario 2 — Brainstorm ways to solve a recurring problem

**Situation**

Your team keeps running into the same issue, but you’re out of ideas.

The constraint: you can’t add headcount, and you can’t “just fix everything.”

If you ask for solutions, you’ll get a grab bag.

If you ask for the one best solution, you’ll get a confident guess.

To get a usable result, your prompt must define:
- Context - recurring issue with constraints
- Objective - generate diverse solution strategies
- Requirements - avoid duplicates; include failure modes; specify what to test first
- Expectations - options grouped by strategy with a small test for each

**Expert prompt**

Brainstorm ways to solve the recurring problem.

Requirements:
- Provide exactly 8 options
- Group options by strategy type: Prevent, Detect, Respond, Learn
- For each option include: “Small test” (1 sentence) and “Failure mode” (1 sentence)
- Keep ideas practical (no headcount increases unless explicitly stated)

Return only the grouped list.

**AI response (example)**

**Prevent**
- Standardise templates to reduce errors
  - Small test: pilot the template for one week on the highest-volume workflow
  - Failure mode: templates become ignored without enforcement or training

**Detect**
- Add real-time monitoring to catch issues early
  - Small test: instrument the top 2 failure points and alert on thresholds
  - Failure mode: noisy alerts create alert fatigue and get muted

**Respond**
- Create a standard troubleshooting guide
  - Small test: run a tabletop exercise using the guide on last week’s incident
  - Failure mode: guide becomes outdated without ownership

**Learn**
- Run a short root-cause workshop on the most recent recurrence
  - Small test: produce 3 testable hypotheses and assign evidence collection
  - Failure mode: workshop outputs opinions without data follow-through

This is where you can see expert ideation: grouping by strategy + tests + failure modes prevents “idea lists” from turning into wishlists.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *execution realism*.
- Requirements forced strategy grouping to avoid duplicate “same idea” lists
- Tests and failure modes make options decision-grade, not inspirational
- Expectations fixed quantity (8) and structure, keeping output tight and usable

- **Weak vs Strong Prompt**

Weak prompt:
Brainstorm ways to fix this problem

Strong prompt:
Provide exactly 8 options grouped by Prevent/Detect/Respond/Learn. For each: Small test + Failure mode. Practical constraints (no headcount assumptions). Return only the grouped list.

- **C.O.R.E. Breakdown**

C - Context
Recurring problem under constraints

O - Objective
Generate diverse strategies, not a grab bag

R - Requirements
Group by strategy; include small test and failure mode; keep practical

E - Expectations
Exactly 8 options, grouped output only

**Pro tip**

If you don’t force tests and failure modes, you get a “smart-sounding” list nobody can execute. Professionals don’t just ideate—they pre-mortem.

**Takeaway**

Strategy without a small test is just opinion.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that produce diverse, executable solutions with small tests and failure modes.

**Challenge — options (10)**

- [✓ correct] Group options by strategy type (Prevent/Detect/Respond/Learn)
- [✓ correct] Fix quantity (exactly 8 options)
- [✓ correct] Require a “Small test” for each option
- [✓ correct] Require a “Failure mode” for each option
- [✓ correct] Enforce practical constraints (no assumed headcount)
- [✗ incorrect] Ask for the most creative ideas possible
- [✗ incorrect] Skip tests to keep it fast
- [✗ incorrect] Avoid failure modes so it stays positive
- [✗ incorrect] Add long explanations per idea
- [✗ incorrect] Assume unlimited budget and resources

**Result — coaching note**

Your edge is decision-grade ideation: tests + failure modes turn ideas into options you can actually choose between.

**Result — assembled prompt example**

Brainstorm exactly 8 options grouped by Prevent/Detect/Respond/Learn. For each include a Small test and a Failure mode. Keep practical (no assumed headcount). Return only the grouped list.

**Result — feedback when correct**

You’re now brainstorming like a strategist: every option includes how to validate it and how it can fail.

**Result — polished prompt**

Provide exactly 8 practical options to solve the recurring problem. Group by Prevent/Detect/Respond/Learn. For each option include: Small test (1 sentence) and Failure mode (1 sentence). Do not assume extra headcount/budget unless stated. Return only the grouped list.

---

#### Scenario 3 — Brainstorm new features or offerings

**Situation**

You want fresh ideas for a product or service but don’t know where to start.

The risk: “feature lists” are easy—coherent strategy isn’t.

If ideas ignore positioning, they won’t sell.

If ideas ignore feasibility, they won’t ship.

To get a usable result, your prompt must define:
- Context - product ideas under constraints
- Objective - generate features aligned to a strategic hypothesis
- Requirements - include target user, value proposition, and risk; no invented market facts
- Expectations - ideas with differentiation + trade-offs + a test

**Expert prompt**

Generate new feature or offering ideas.

Requirements:
- Provide exactly 6 ideas
- For each idea include: Target user, Value proposition (1 sentence), Differentiator, Risk/Trade-off, Quick test
- Keep ideas realistic (no magical capabilities)
- Do not invent market data; mark unknowns [Unknown]

Return only the list.

**AI response (example)**

- Quick-start templates for new users
  - Target user: new users
  - Value proposition: reduce setup time by providing ready-to-use starting points
  - Differentiator: templates tailored to common workflows
  - Risk/Trade-off: may constrain advanced users if templates become the default
  - Quick test: release 3 templates and measure activation lift vs baseline [Unknown baseline]

- Integrated analytics dashboard
  - Target user: team leads
  - Value proposition: make outcomes visible without exporting data
  - Differentiator: decision-grade views with “unknowns” explicitly tagged
  - Risk/Trade-off: complexity and maintenance cost
  - Quick test: prototype top 3 metrics and validate with 5 power users

Notice how this avoids “idea soup”: forcing user/value/differentiator/risk/test makes each feature a strategic bet with a validation path.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The control point is *strategic completeness without fake data*.
- Requirements forced positioning elements (user/value/differentiator)
- Risk/Trade-off prevents “only upside” thinking
- Quick tests make ideas testable bets, not brainstorm wallpaper

- **Weak vs Strong Prompt**

Weak prompt:
Generate feature ideas

Strong prompt:
Generate exactly 6 realistic ideas. For each: target user, value proposition, differentiator, risk/trade-off, quick test. Don’t invent market data; mark unknowns [Unknown]. Return only the list.

- **C.O.R.E. Breakdown**

C - Context
Need new offerings without inventing market reality

O - Objective
Generate strategy-aligned ideas with validation paths

R - Requirements
User/value/differentiator; risk/trade-off; quick test; no fake data

E - Expectations
Exactly 6 ideas with the specified fields

**Pro tip**

If you don’t force a risk/trade-off, you get fantasy features. Professionals treat ideas as bets with downsides and tests—make the model do that work.

**Takeaway**

Strong strategy prompts turn ideas into testable bets.

**Challenge (goal)**

C.O.R.E. skill check: choose the five prompt elements that produce feature ideas as strategic bets—not just a feature list.

**Challenge — options (10)**

- [✓ correct] Fix quantity (exactly 6 ideas)
- [✓ correct] Require target user + value proposition
- [✓ correct] Require differentiator (why this is distinct)
- [✓ correct] Require risk/trade-off for each idea
- [✓ correct] Require a quick test (validation path)
- [✗ incorrect] Ask for the most innovative ideas possible
- [✗ incorrect] Skip risks to keep it positive
- [✗ incorrect] Invent market numbers to quantify impact
- [✗ incorrect] Write long essays for each idea
- [✗ incorrect] Focus on features only, no positioning

**Result — coaching note**

Your edge is forcing strategic fields (user/value/differentiator/risk/test). This stops “feature soup” and produces bets you can actually evaluate.

**Result — assembled prompt example**

Generate exactly 6 realistic feature/offer ideas. For each include target user, value proposition (1 sentence), differentiator, risk/trade-off, and a quick test. Don’t invent market data; mark unknowns [Unknown]. Return only the list.

**Result — feedback when correct**

You’re now using AI for strategy, not brainstorming theater—ideas come with trade-offs and tests.

**Result — polished prompt**

Generate exactly 6 realistic feature or offering ideas. For each include: Target user, Value proposition (1 sentence), Differentiator, Risk/Trade-off, Quick test. Do not invent market data; mark unknowns [Unknown]. Return only the list.

---

### Lesson 2 — Explore Scenarios and Alternatives

#### Scenario 1 — Compare two strategic growth paths

**Situation**

Leadership wants growth, but “grow faster” is not a strategy.

If you ask AI to compare options without constraints, you get whichever story sounds smartest.

To get a usable result, your prompt must define:
- Context - market, capabilities, and non-negotiables
- Objective - choose between two named strategies with explicit trade-offs
- Requirements - same comparison dimensions for each path; no invented market statistics
- Expectations - output: comparison table + “signals to watch” list

**Expert prompt**

Compare Strategy A (expand SKU line) vs Strategy B (double down on one vertical) for a B2B SaaS company.

Context: mid-market; product works today; engineering capacity is tight.

Objective: decide which path is the better 12-month bet.

Requirements: evaluate both on the same six dimensions: revenue potential, time-to-cash, execution risk, differentiation, support burden, and strategic option value. Do not invent revenue or churn numbers—use [Unknown] if needed.

Expectations: return a comparison table plus five early warning signals that would change the recommendation.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The comparison is usable because dimensions are fixed and symmetric.
- Context grounded capacity reality
- Objective forced a decision framing, not a lecture
- Requirements blocked fake precision with [Unknown]
- Expectations added signals so the choice can update with evidence

- **Weak vs Strong Prompt**

Weak prompt:
Which strategy is better?

Strong prompt:
Compare A vs B on six named dimensions; tight capacity context; no invented metrics; table + five signals that would flip the call.

- **C.O.R.E. Breakdown**

C - Context
B2B SaaS; mid-market; engineering constrained

O - Objective
12-month bet between SKU expansion vs vertical focus

R - Requirements
Same six dimensions; honest unknowns

E - Expectations
Comparison table + monitoring signals

**Pro tip**

If each strategy is scored on different criteria, you did not compare—you wrote two ads.

**Takeaway**

Alternatives stay legible when Requirements force symmetry.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that compare strategies without fake data.

**Challenge — options (10)**

- [✓ correct] Name capabilities and constraints in Context
- [✓ correct] Objective: evaluate two named strategies against a decision
- [✓ correct] Requirements: identical comparison dimensions for each path
- [✓ correct] Ban invented quant metrics; use [Unknown] when needed
- [✓ correct] Expectations: structured table plus signals that update the choice
- [✗ incorrect] Let AI pick whichever strategy sounds more exciting
- [✗ incorrect] Use different criteria for A than for B
- [✗ incorrect] Invent market shares to sound rigorous
- [✗ incorrect] Ask for a single paragraph with no structure
- [✗ incorrect] Omit early-warning signals as unnecessary theory

**Result — coaching note**

Strategic comparison prompts are measurement contracts: define dimensions before you let the model narrate.

**Result — assembled prompt example**

Compare SKU expansion vs vertical focus on six shared dimensions; capacity context; [Unknown] for missing numbers; table + five flip signals.

**Result — feedback when correct**

You now stress-test strategies instead of choosing the best story.

**Result — polished prompt**

Compare expanding the SKU line versus doubling down on a single vertical for a mid-market B2B SaaS product with tight engineering capacity. Score both strategies on the same six dimensions: revenue potential, time-to-cash, execution risk, differentiation, support burden, and strategic option value. Do not invent quantitative market statistics—use [Unknown]. Output a comparison table and five early-warning signals that could change the recommendation.

---

#### Scenario 2 — Pair a pre-mortem with a success scenario

**Situation**

Teams plan for success and get blindsided by failure modes—or plan for fear and never ship.

Pairing scenarios forces balance.

To get a usable result, your prompt must define:
- Context - initiative, timeline, and stakeholders
- Objective - surface failure AND success mechanics with equal rigor
- Requirements - no invented metrics; each scenario lists causes/drivers and indicators
- Expectations - two labeled sections + “implications for this quarter”

**Expert prompt**

For a new partner channel pilot (90 days), write two scenarios:
(1) Pre-mortem: it fails despite effort.
(2) Success scenario: it works better than expected.

Context: small partnerships team; depends on partner enablement quality.

Requirements: each scenario must include 4 concrete drivers, 3 observable indicators, and 1 decision you would make if that scenario is unfolding. No invented conversion rates—use [Unknown].

Expectations: label sections PRE-MORTEM and SUCCESS; end with implications for the next 30 days.

**AI response (example)**

**PRE-MORTEM**
Drivers: weak enablement materials; unclear lead routing; partner prioritisation drift; internal sales skepticism
Indicators: low activated partners; long time-to-first-op; partner NPS not tracked [Unknown]
Decision: pause scale; fix enablement + routing before adding partners

**SUCCESS**
Drivers: crisp ICP match; repeatable onboarding; tight co-selling motions; fast feedback loops
Indicators: rising qualified opps; shortening cycle in partner-sourced deals [Unknown]
Decision: double down on top 2 partner profiles; hire temporary enablement support [Unknown]

**Next 30 days**
Build enablement v1 + define routing metrics before recruiting more partners.

Balanced scenarios are C.O.R.E. in motion: Requirements keep both sides equally specific.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The exercise stayed balanced because structure was duplicated across scenarios.
- Context set pilot scope and dependency
- Objective required both failure and success rigor
- Requirements forced drivers, indicators, and decisions without fake stats
- Expectations pulled implications into a near-term plan

- **Weak vs Strong Prompt**

Weak prompt:
What could go wrong?

Strong prompt:
Pre-mortem + success scenario; same scaffolding (drivers/indicators/decision); [Unknown]; 30-day implications.

- **C.O.R.E. Breakdown**

C - Context
90-day partner pilot; small team; enablement dependent

O - Objective
Understand failure and success paths symmetrically

R - Requirements
Parallel structure; observable indicators; honest unknowns

E - Expectations
Labeled sections + quarterly implication

**Pro tip**

If your pre-mortem is vivid and your success scenario is vague, you are managing fear, not strategy.

**Takeaway**

Exploring alternatives means giving success the same Requirements as failure.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that balance pre-mortem and success planning.

**Challenge — options (10)**

- [✓ correct] Define the initiative scope and key dependency in Context
- [✓ correct] Objective: explicitly pair failure and success exploration
- [✓ correct] Requirements: parallel structure (drivers, indicators, decisions)
- [✓ correct] Forbid invented KPIs; require [Unknown] without data
- [✓ correct] Expectations: labeled sections plus near-term implications
- [✗ incorrect] Write only catastrophic failure with no success path
- [✗ incorrect] Use vague optimism for success and detail only failure
- [✗ incorrect] Skip decisions “to stay open-minded”
- [✗ incorrect] Invent partner revenue guarantees
- [✗ incorrect] Ask for twelve unrelated future headlines

**Result — coaching note**

Scenario planning without symmetry becomes propaganda. Mirror Requirements across futures.

**Result — assembled prompt example**

Partner pilot: pre-mortem + success; 4 drivers, 3 indicators, 1 decision each; [Unknown] metrics; 30-day implications.

**Result — feedback when correct**

You can see both futures clearly—most prompts only see the scary one.

**Result — polished prompt**

For a 90-day partner channel pilot with a small partnerships team dependent on enablement quality, produce labeled PRE-MORTEM and SUCCESS scenarios. Each must list four concrete drivers, three observable indicators, and one decision you would make if that scenario were unfolding. Do not invent conversion rates or pipeline metrics—use [Unknown]. Close with implications for the next 30 days.

---

#### Scenario 3 — Branches with kill criteria for a pricing move

**Situation**

Pricing scenarios are sensitive: small wording changes swing outcomes.

To get a usable result, your prompt must define:
- Context - segment, product, and current pricing model
- Objective - explore three branches with explicit kill rules
- Requirements - no fake elasticity numbers; mark [Unknown]
- Expectations - branch A/B/C each ends with kill criteria + next review date placeholder

**Expert prompt**

Outline three pricing scenarios for moving from flat seats to usage-based for SMB customers.

Branches:
A) Big-bang switch
B) Grandfather existing + usage for new
C) Hybrid bundle with caps

Requirements: for each branch summarise trade-offs, implementation complexity (Low/Med/High), and three kill criteria tied to observable signals (no invented percentages—use [Unknown]).

Expectations: include [Review date] placeholder for when leadership revisits the decision.

**AI response (example)**

**A — Big-bang**
Trade-offs: simplest story; highest churn risk if value unclear
Complexity: High
Kill criteria: support volume spike; sales cycle elongation; competitive win-rate drop [Unknown baselines]
Review: [Review date]

**B — Grandfather**
Trade-offs: slower revenue lift; lowest immediate shock
Complexity: Med
Kill criteria: new-logo mix collapses; finance reporting burden; dual-model confusion in sales
Review: [Review date]

**C — Hybrid bundle**
Trade-offs: balances predictability + usage story; packaging complexity
Complexity: Med/High
Kill criteria: customers game caps; finance cannot reconcile; product cannot enforce limits
Review: [Review date]

Kill criteria turn scenarios into decisions, not theatre.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Branches became actionable because each ended with observable kill rules.
- Context anchored segment + model change
- Objective forced three real strategic paths
- Requirements banned fake elasticity and used [Unknown]
- Expectations added review cadence placeholders

- **Weak vs Strong Prompt**

Weak prompt:
What pricing should we do?

Strong prompt:
Three branches; trade-offs; complexity; three kill criteria each; no fake elasticities; [Review date].

- **C.O.R.E. Breakdown**

C - Context
SMB segment; seat → usage migration

O - Objective
Compare branching strategies with exits

R - Requirements
Honest metrics; kill criteria tied to signals

E - Expectations
Structured A/B/C + review placeholder

**Pro tip**

A scenario without kill criteria is fan fiction. Write the exits in Requirements.

**Takeaway**

Alternatives explore space; kill criteria close it when reality bites.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make strategic branches decision-ready.

**Challenge — options (10)**

- [✓ correct] State segment, model change, and stakeholder stakes
- [✓ correct] Objective: compare multiple named strategic branches
- [✓ correct] Requirements: trade-offs and complexity per branch
- [✓ correct] Each branch needs explicit kill criteria tied to observable signals
- [✓ correct] Expectations: review timing placeholder and no fake statistics
- [✗ incorrect] Recommend one branch without analyzing others
- [✗ incorrect] Invent precise churn elasticities to impress executives
- [✗ incorrect] Omit kill criteria to avoid negativity
- [✗ incorrect] Merge all branches into one vague compromise
- [✗ incorrect] Ask AI to set final prices without guardrails

**Result — coaching note**

Pricing prompts need kill criteria like product prompts need acceptance tests.

**Result — assembled prompt example**

Three pricing branches; trade-offs; complexity; 3 kill criteria each; [Unknown] metrics; [Review date].

**Result — feedback when correct**

You turned pricing debate into a governed experiment—C.O.R.E. for high-stakes calls.

**Result — polished prompt**

Outline three strategic branches for migrating SMB pricing from flat seats to usage-based pricing: big-bang switch, grandfathering existing customers, or a hybrid bundle with caps. For each branch summarize trade-offs, rate implementation complexity as Low, Medium, or High, and list three kill criteria based on observable operational or sales signals without inventing elasticities—use [Unknown] when needed. Include a [Review date] placeholder for leadership to revisit the decision.

---

### Lesson 3 — Break Down Problems Step-by-Step

#### Scenario 1 — From vague growth goal to ordered levers

**Situation**

“Grow revenue” is not a plan.

To get a usable result, your prompt must define:
- Context - business model and current motion
- Objective - translate the goal into ordered strategic levers
- Requirements - each lever must have a definition, dependency, and validation hint; no invented benchmarks
- Expectations - numbered 5-step chain from diagnosis to scale

**Expert prompt**

Break down “increase net revenue retention” into a five-step strategic chain for a product-led B2B SaaS company.

Context: strong activation; expansion revenue inconsistent; CS team small.

Requirements: each step states lever, what must be true before moving on, and what evidence would validate it (use [Unknown] if metrics not provided).

Expectations: numbered steps 1–5; no jumping to tactics without completing earlier steps.

**AI response (example)**

1) Define expansion cohorts (who can expand vs who cannot) — gate: agreed ICP for expansion — evidence: cohort list + usage thresholds [Unknown]
2) Map value moments that predict upsell — gate: product telemetry aligned to value — evidence: feature-use → expansion correlation [Unknown]
3) Standardise success plays (packages, not one-offs) — gate: pricing/packaging clarity — evidence: win stories repeatable across accounts [Unknown]
4) Instrument leading indicators (usage, seats, workflows) — gate: dashboard ownership — evidence: weekly review happens [Unknown]
5) Scale motions only after playbooks hit hit-rate bar — gate: playbook ROI — evidence: expansion win-rate trend [Unknown]

Sequencing is an Expectation: without it, AI gives you 50 tactics at once.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The chain is navigable because gates block premature tactics.
- Context explained motion constraints (PLG + small CS)
- Objective turned NRR into ordered levers
- Requirements added evidence language and [Unknown] honesty
- Expectations enforced strict step order

- **Weak vs Strong Prompt**

Weak prompt:
How do we grow NRR?

Strong prompt:
5-step chain; each with gate + evidence; PLG context; [Unknown] metrics; no skipping steps.

- **C.O.R.E. Breakdown**

C - Context
PLG B2B SaaS; activation strong; CS limited

O - Objective
Ordered path to improve NRR

R - Requirements
Gates + validation hints; honest metrics

E - Expectations
Five numbered steps in sequence

**Pro tip**

If step 5 appears before step 2, you do not have a strategy—you have a wishlist.

**Takeaway**

Step-by-step strategy prompts use Requirements as gates, not suggestions.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that sequence strategic work correctly.

**Challenge — options (10)**

- [✓ correct] Anchor Context with motion, constraints, and current strengths
- [✓ correct] Objective: decompose one outcome into ordered levers
- [✓ correct] Requirements: each step includes prerequisites/gates before advancing
- [✓ correct] Ask for evidence or validation hints per step; allow [Unknown]
- [✓ correct] Expectations: enforce numbered sequencing without skipping
- [✗ incorrect] Dump every tactic in one unordered brainstorm list
- [✗ incorrect] Start with scale before diagnosing who can expand
- [✗ incorrect] Invent benchmark NRR numbers for each step
- [✗ incorrect] Let AI choose a different goal mid-chain
- [✗ incorrect] Omit gates so steps stay flexible

**Result — coaching note**

Strategic decomposition is C.O.R.E. choreography: Objective names the outcome; Requirements enforce order.

**Result — assembled prompt example**

NRR: 5-step chain; gates + evidence each; PLG + lean CS; [Unknown] metrics; numbered only.

**Result — feedback when correct**

You can move from slogan goals to sequenced bets—this is operating discipline.

**Result — polished prompt**

Break down increasing net revenue retention into five numbered strategic steps for a product-led B2B SaaS company with strong activation, inconsistent expansion revenue, and a small customer success team. Each step must name the lever, what must be true before advancing, and what evidence would validate readiness, using [Unknown] when metrics are not provided. Do not skip steps or jump to scaling tactics before earlier gates are satisfied.

---

#### Scenario 2 — Phase a new market entry

**Situation**

Market entry fails when teams confuse research with scaling.

To get a usable result, your prompt must define:
- Context - geography/segment and current proof at home
- Objective - phased plan with go/no-go gates
- Requirements - each phase lists goal, max spend placeholder [Budget], and exit criteria
- Expectations - exactly three phases

**Expert prompt**

Create a 3-phase market entry plan for selling an HR analytics tool into Japan from a US base.

Context: no local office yet; product is English-first; you have strong US case studies.

Objective: learn fast without committing a big team.

Requirements: each phase includes goal, activities, risks, exit criteria, and [Budget] placeholder. No invented legal facts—mark [Unknown] for compliance detail.

Expectations: label phases DISCOVER, PILOT, SCALE.

**AI response (example)**

**DISCOVER**
Goal: validate buyer pain + procurement reality
Activities: interviews; partner conversations; compliance checklist with counsel [Unknown]
Risks: misleading anecdotes; translation gaps
Exit: 10+ consistent pain stories + understood buying process
Budget: [Budget]

**PILOT**
Goal: 3 paid pilots with measurable outcomes
Activities: localised onboarding; success metrics; support coverage plan
Risks: support hours; data residency questions [Unknown]
Exit: 2/3 renew + referenceable results
Budget: [Budget]

**SCALE**
Goal: repeatable sales + CS motion
Activities: hire/regional partner; local marketing; roadmap inputs
Risks: feature gaps for local HR law reporting [Unknown]
Exit: CAC/payback within leadership thresholds [Unknown]

Phased prompts are C.O.R.E. with time travel: Expectations name the eras.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Phases stay honest because exits and unknowns are explicit.
- Context named distance from market and product language limits
- Objective optimized for learning before scaling
- Requirements used [Budget] and [Unknown] instead of fake compliance certainty
- Expectations enforced three named phases

- **Weak vs Strong Prompt**

Weak prompt:
How do we enter Japan?

Strong prompt:
3 phases Discover/Pilot/Scale; goals/activities/risks/exit; [Budget]; compliance [Unknown].

- **C.O.R.E. Breakdown**

C - Context
US HR analytics; Japan entry; English-first product

O - Objective
Learn before scaling investment

R - Requirements
Exit criteria; budget placeholders; honest compliance unknowns

E - Expectations
Three labeled phases

**Pro tip**

If SCALE shows up before DISCOVER, you are not expanding—you are gambling.

**Takeaway**

Breaking down problems means naming the era you are in and the exit that moves you forward.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that phase risky market entry.

**Challenge — options (10)**

- [✓ correct] Describe starting position and market distance in Context
- [✓ correct] Objective: learn before scaling; name that explicitly
- [✓ correct] Requirements: goals, activities, risks, and exit criteria per phase
- [✓ correct] Use placeholders like [Budget] instead of inventing spend
- [✓ correct] Expectations: fixed number of named phases in order
- [✗ incorrect] Start with a full local hiring plan in week one
- [✗ incorrect] Invent legal approvals you do not have
- [✗ incorrect] Collapse all phases into one “big launch”
- [✗ incorrect] Omit exit criteria to stay agile
- [✗ incorrect] Promise revenue targets without evidence

**Result — coaching note**

International strategy prompts need unknowns: compliance and motion are Requirements, not vibes.

**Result — assembled prompt example**

Japan entry: Discover/Pilot/Scale; goals/activities/risks/exit; [Budget]; legal [Unknown].

**Result — feedback when correct**

You sequenced market entry like a portfolio of bets—not a vacation itinerary.

**Result — polished prompt**

Create a three-phase market entry plan labeled DISCOVER, PILOT, and SCALE for introducing a US-built English-first HR analytics product into Japan without a local office. For each phase specify goal, key activities, risks, exit criteria, and a [Budget] placeholder. Do not invent compliance or data-residency facts—mark [Unknown] where legal detail is missing.

---

#### Scenario 3 — Turn a vision line into quarterly bets

**Situation**

Vision without bets is poetry.

To get a usable result, your prompt must define:
- Context - company stage and current quarter constraints
- Objective - translate one vision statement into 3 quarterly bets
- Requirements - each bet has metric type (not fake numbers), owner role placeholder, and dependency
- Expectations - bets must be mutually exclusive focuses (no three versions of the same bet)

**Expert prompt**

Vision: “Become the default analytics layer for distributed operations teams.”

Break it into 3 distinct quarterly strategic bets for a Series B company.

Context: engineering hiring is slow; revenue needs expansion motion.

Requirements: label bets A/B/C; each includes hypothesis, leading indicator type, risky assumption, and [Owner role] placeholder. No invented ARR impact—use [Unknown].

Expectations: explain how each bet differs from the others in one line.

**AI response (example)**

**Bet A — Workflow depth**
Hypothesis: deeper integrations drive expansion
Leading indicator: integration-adoption rate among active teams [Unknown]
Risky assumption: integrations ship on time with small eng team
Owner: [Owner role]
Differs: focuses on product embed vs brand

**Bet B — Use-case packaging**
Hypothesis: packaged ops “jobs” improve win-rate
Leading indicator: win-rate on packaged deals vs custom [Unknown]
Risky assumption: packaging matches real buying centers
Owner: [Owner role]
Differs: focuses on GTM offer, not integrations

**Bet C — Community-led proof**
Hypothesis: ops community referrals shorten cycles
Leading indicator: referral-sourced pipeline % [Unknown]
Risky assumption: community investment pays back within quarter
Owner: [Owner role]
Differs: focuses on distribution, not core product scope

Distinct bets require Expectations that force differentiation.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Bets became plural without collapsing into duplicates because differentiation was mandatory.
- Context set Series B constraints
- Objective translated vision into testable wagers
- Requirements used indicator types and [Unknown] for financials
- Expectations forced one-line distinction per bet

- **Weak vs Strong Prompt**

Weak prompt:
Turn this vision into strategy

Strong prompt:
3 bets; hypothesis + leading indicator + risky assumption + owner placeholder; [Unknown] ARR; one-line differentiation each.

- **C.O.R.E. Breakdown**

C - Context
Series B; hiring bottleneck; expansion need

O - Objective
Quarterly bets from vision

R - Requirements
Structured bet cards; honest financials

E - Expectations
Three mutually distinct focuses

**Pro tip**

If all three bets rhyme, you wrote one bet with synonyms.

**Takeaway**

Step-by-step thinking includes a step that forbids duplicates.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that split vision into distinct bets.

**Challenge — options (10)**

- [✓ correct] State stage and resource constraints in Context
- [✓ correct] Objective: translate vision into a small set of testable bets
- [✓ correct] Requirements: hypothesis, leading indicator type, risky assumption per bet
- [✓ correct] Use [Owner role] placeholders instead of inventing headcount
- [✓ correct] Expectations: bets must be materially different with explicit differentiation line
- [✗ incorrect] Copy the same bet three times with new adjectives
- [✗ incorrect] Attach fake ARR uplift to each bet
- [✗ incorrect] Omit risky assumptions to stay confident
- [✗ incorrect] Ask for twelve simultaneous bets
- [✗ incorrect] Let AI rename the vision and drop the bets

**Result — coaching note**

Portfolio thinking needs Expectations that enforce variety—otherwise AI repeats itself confidently.

**Result — assembled prompt example**

Vision → 3 bets; hypothesis + leading indicator + risk + [Owner role]; [Unknown] revenue; differentiate each bet.

**Result — feedback when correct**

You split vision into real choices—not three slogans wearing hats.

**Result — polished prompt**

Translate the vision “Become the default analytics layer for distributed operations teams” into three distinct quarterly strategic bets for a Series B company with slow engineering hiring and a need for expansion revenue. For each bet provide hypothesis, leading indicator type (no invented financial impact—use [Unknown]), risky assumption, and an [Owner role] placeholder, plus one line stating how that bet differs from the others.

---

### Lesson 4 — Turn Thinking Into Frameworks

#### Scenario 1 — SWOT with evidence discipline

**Situation**

SWOT collapses into opinions unless you force evidence rules.

To get a usable result, your prompt must define:
- Context - product, segment, and competitive set (named or [Unknown])
- Objective - produce a SWOT that leadership can challenge constructively
- Requirements - each bullet must cite evidence type (customer quote, metric, competitor move) or [Unknown]
- Expectations - max 3 bullets per quadrant

**Expert prompt**

Build a SWOT for our AI meeting-notes assistant aimed at sales teams.

Competitors: [Unknown full list].

Requirements: max 3 bullets per quadrant; each bullet tags evidence as (Data), (Customer), (Competitor), or [Unknown].

Expectations: include a “Blind spots” line listing what evidence we still need.

**AI response (example)**

**Strengths**
- Fast time-to-value for reps who hate CRM hygiene (Customer) [Unknown sample size]
- Differentiated live-capture mode vs static summaries (Data) [Unknown benchmark]

**Weaknesses**
- Privacy review slows enterprise rollout (Customer)
- Accuracy drops on noisy calls (Data) [Unknown rate]

**Opportunities**
- CRMs pushing deeper call intelligence (Competitor) [Unknown]
- Managers want coaching insights, not transcripts (Customer)

**Threats**
- Incumbents bundle similar features (Competitor) [Unknown]

**Blind spots**
Win/loss data on pricing, legal blockers in regulated industries [Unknown]

Frameworks work when Requirements turn quadrants into evidence lists.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

SWOT stopped being vibes because bullets carried evidence types.
- Context scoped product + audience
- Objective aimed at challengeable output
- Requirements capped count and tagged proof or [Unknown]
- Expectations surfaced blind spots explicitly

- **Weak vs Strong Prompt**

Weak prompt:
SWOT for our product

Strong prompt:
Sales meeting AI; <=3 bullets/quadrant; evidence tags; [Unknown]; blind spots list.

- **C.O.R.E. Breakdown**

C - Context
AI notes for sales; partial competitor info

O - Objective
Actionable SWOT leadership can test

R - Requirements
Evidence tags; caps; honest unknowns

E - Expectations
Blind spots section

**Pro tip**

If every SWOT bullet starts with “we believe,” you skipped Requirements for evidence.

**Takeaway**

Frameworks are fancy tables until Requirements demand proof types.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that keep SWOT evidence-based.

**Challenge — options (10)**

- [✓ correct] Name product, segment, and competitor context (or [Unknown])
- [✓ correct] Objective: make SWOT items challengeable with evidence, not slogans
- [✓ correct] Requirements: cap bullets per quadrant for focus
- [✓ correct] Tag each bullet with evidence type or [Unknown]
- [✓ correct] Expectations: list blind spots / missing evidence explicitly
- [✗ incorrect] Fill every quadrant with unstoppable hype
- [✗ incorrect] Omit weaknesses to keep the slide investor-safe
- [✗ incorrect] Use fifty bullets per quadrant for completeness
- [✗ incorrect] Invent competitor pricing to sound informed
- [✗ incorrect] Let AI choose a different framework without asking

**Result — coaching note**

Strategy frameworks need the same honesty as analytics prompts: tag unknowns or you get confident fiction.

**Result — assembled prompt example**

SWOT: sales meeting AI; <=3/quadrant; evidence tags; [Unknown]; blind spots.

**Result — feedback when correct**

You made SWOT operational—evidence tags turn meetings into decisions.

**Result — polished prompt**

Create a SWOT for an AI meeting-notes assistant aimed at sales teams. Use at most three bullets per quadrant. Each bullet must label its support as (Data), (Customer), (Competitor), or [Unknown] when evidence is missing. Competitors may be partially unknown—mark gaps explicitly. Finish with a short “Blind spots” list of evidence you still need to collect.

---

#### Scenario 2 — Assumption–evidence–risk grid

**Situation**

Strategic plans hide fragile assumptions in smooth prose.

A grid prompt makes them visible.

To get a usable result, your prompt must define:
- Context - initiative and time horizon
- Objective - surface the assumptions that could invalidate the plan
- Requirements - each row: assumption, evidence status, risk if wrong, mitigation test
- Expectations - exactly 6 rows

**Expert prompt**

Build a 6-row assumption grid for launching an AI copilot inside an existing analytics product.

Horizon: next 2 quarters.

Requirements: columns Assumption | Evidence (Strong/Med/Weak/[Unknown]) | Risk if false | Mitigation test.

Expectations: no duplicate assumptions; tests must be executable in <2 weeks each.

**AI response (example)**

| Assumption | Evidence | Risk | Mitigation test |
| Users trust suggestions on production data | Weak [Unknown] | Low adoption / backlash | Shadow-mode + opt-in cohort (2 weeks) |
| Latency stays under interactive threshold | [Unknown] | UX collapse | Load test top 5 workflows (2 weeks) |
| Legal approves retention of prompts | Med | Launch blocker | Redline workshop + DPA checklist (2 weeks) |
| Sales can demo without engineer | Weak | Pipeline stalls | Scripted demo + guardrail script (2 weeks) |
| Pricing metric matches value | [Unknown] | Revenue leak | Interview 8 customers on WTP (2 weeks) |
| Support can answer top 10 failure modes | Weak | Churn spike | Draft macro answers + escalate path (2 weeks) |

Grids beat paragraphs when Requirements define columns and row count.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

The plan became testable because every assumption had a mitigation experiment.
- Context anchored product-surface risk
- Objective exposed fragility instead of hiding it
- Requirements fixed schema and evidence strength labels
- Expectations capped rows and test duration

- **Weak vs Strong Prompt**

Weak prompt:
List risks

Strong prompt:
6-row assumption grid; evidence strength; risk; <2 week mitigation test; no duplicates.

- **C.O.R.E. Breakdown**

C - Context
AI copilot inside analytics; 2-quarter horizon

O - Objective
Surface killer assumptions

R - Requirements
Table schema; evidence labels; mitigations

E - Expectations
Six unique rows; fast tests

**Pro tip**

If mitigation tests are not time-boxed, you wrote a research agenda, not a plan.

**Takeaway**

Frameworks compress C.O.R.E. into rows: Context and Requirements become column headers.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make assumption grids testable.

**Challenge — options (10)**

- [✓ correct] State initiative scope and time horizon in Context
- [✓ correct] Objective: expose assumptions that could invalidate the plan
- [✓ correct] Requirements: fixed columns including evidence strength
- [✓ correct] Each row links a risk to a concrete mitigation test
- [✓ correct] Expectations: row count and no duplicate assumptions
- [✗ incorrect] Write assumptions without tests “to save time”
- [✗ incorrect] Mark every evidence as Strong without proof
- [✗ incorrect] Use twenty rows with no structure
- [✗ incorrect] Hide legal risks to keep the grid upbeat
- [✗ incorrect] Let AI invent customer interview results

**Result — coaching note**

Assumption work is C.O.R.E. for strategists: Requirements are the schema; Expectations are the row budget.

**Result — assembled prompt example**

6-row grid: assumption/evidence strength/risk/mitigation <2 weeks; copilot in analytics; no dupes.

**Result — feedback when correct**

You can now see which assumptions will kill you early—before budget does.

**Result — polished prompt**

Build a six-row assumption grid for launching an embedded AI copilot inside an existing analytics product over the next two quarters. Columns: Assumption, Evidence (Strong/Med/Weak/[Unknown]), Risk if false, Mitigation test. Each mitigation test must be executable within two weeks. No duplicate assumptions.

---

#### Scenario 3 — One-page strategy memo outline

**Situation**

Executives skim.

Your outline prompt must match how they read.

To get a usable result, your prompt must define:
- Context - decision requested and timeframe
- Objective - align execs on problem, choice, and next step
- Requirements - each section max lines stated; include “non-goals”
- Expectations - section headings only + bullet budget per section

**Expert prompt**

Create an outline for a 1-page strategy memo proposing we pause new features for one quarter to pay down reliability debt.

Context: enterprise customers; renewal season in 4 months.

Objective: secure approval for a reliability quarter.

Requirements: sections Context, Problem signal, Strategic choice, Plan (30/60/90), Non-goals, Ask. Each section max 3 bullets. No invented churn numbers—use [Unknown].

Expectations: output headings with bullets only (no prose paragraphs).

**AI response (example)**

**Context**
- Enterprise base; renewal window approaching [Unknown timing detail]
- Reliability incidents trending topic in QBRs [Unknown]

**Problem signal**
- P1/P2 incident frequency vs last quarter [Unknown]
- Expansion deals waiting on stability commitments [Unknown]

**Strategic choice**
- Pause net-new features for 90 days (exceptions: regulatory/security)
- Invest in observability + release hygiene

**Plan (30/60/90)**
- 30: incident taxonomy + top drivers
- 60: SLO drafts + error budget policy
- 90: customer-visible reliability report

**Non-goals**
- No rebranding; no major pricing changes

**Ask**
- Exec approval + comms to CS/sales

Outlines work when Requirements cap bullets—density without essays.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Exec skim-friendliness came from bullet budgets and explicit non-goals.
- Context tied to renewal pressure without fake stats
- Objective framed a clear approval ask
- Requirements enforced section template + max bullets
- Expectations banned paragraph prose at outline stage

- **Weak vs Strong Prompt**

Weak prompt:
Write a strategy memo

Strong prompt:
1-page outline; defined sections; <=3 bullets each; non-goals; [Unknown] metrics; headings only.

- **C.O.R.E. Breakdown**

C - Context
Enterprise renewals; reliability pain

O - Objective
Approve reliability quarter

R - Requirements
Section template; bullet caps; honest metrics

E - Expectations
Outline-only output

**Pro tip**

Non-goals are Requirements for executives—without them, every strategy becomes “do everything.”

**Takeaway**

Framework outlines are Expectations for density: headings, bullets, limits.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that make strategy outlines executive-ready.

**Challenge — options (10)**

- [✓ correct] State decision, audience, and timeframe in Context
- [✓ correct] Objective: secure a specific approval or alignment outcome
- [✓ correct] Requirements: named sections including explicit non-goals
- [✓ correct] Cap bullets per section to match skim reading
- [✓ correct] Expectations: outline-only output (no long prose)
- [✗ incorrect] Write five pages of narrative for thoroughness
- [✗ incorrect] Omit non-goals to avoid saying no
- [✗ incorrect] Invent churn percentages to justify the plan
- [✗ incorrect] Hide the Ask section to sound collaborative
- [✗ incorrect] Let AI change the decision to something safer

**Result — coaching note**

Executive prompts are C.O.R.E. compressed: the outline is the contract for the final memo.

**Result — assembled prompt example**

1-page memo outline: reliability quarter; sections w/ <=3 bullets; non-goals; [Unknown] metrics; headings only.

**Result — feedback when correct**

You can brief leaders without drowning them—Expectations did the editing.

**Result — polished prompt**

Draft a one-page strategy memo outline proposing a 90-day pause on net-new product features (except regulatory or security work) to pay down reliability debt before enterprise renewals. Include sections Context, Problem signal, Strategic choice, Plan for 30/60/90 days, Non-goals, and Ask. Each section may have at most three bullets. Do not invent churn or incident statistics—use [Unknown]. Output headings with bullets only, no paragraphs.

---

### Lesson 5 — Improve Ideas Through Iteration

#### Scenario 1 — Three passes on a positioning line

**Situation**

First drafts sound like category clichés.

Iteration prompts must change specific C.O.R.E. slots each pass.

To get a usable result, your prompt must define:
- Context - product and crowded category
- Objective - tighten positioning across iterations
- Requirements - pass 1 breadth, pass 2 specificity, pass 3 proof hooks; each <=12 words
- Expectations - label passes clearly

**Expert prompt**

Iterate a positioning line for “AI inbox assistant for founders.”

Pass 1: creative breadth (3 options).
Pass 2: rewrite best option with sharper Objective (what outcome in 7 days).
Pass 3: add proof hook placeholders [Metric], [Customer type] without inventing numbers—use [Unknown] if needed.

Requirements: each final line <=12 words; ban “revolutionary.”

Expectations: label PASS1/PASS2/PASS3.

**AI response (example)**

PASS1
1) Your inbox, summarized
2) Founder inbox autopilot
3) AI turns email into tasks

PASS2
Turns inbox noise into a daily priority list in 7 days

PASS3
Cuts daily inbox time for [Customer type]—target save [Unknown] minutes; measured via [Metric]

Iteration works when each pass edits a named C.O.R.E. dimension.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Each pass had a job: explore, sharpen outcome, attach honest proof hooks.
- Context named crowded category
- Objective evolved line-by-line instead of rewriting randomly
- Requirements enforced word cap and banned clichés
- Expectations labeled passes for reuse as a template

- **Weak vs Strong Prompt**

Weak prompt:
Improve this tagline

Strong prompt:
3-pass iteration; breadth then 7-day outcome then proof placeholders; <=12 words; ban revolutionary.

- **C.O.R.E. Breakdown**

C - Context
Founders; noisy inbox category

O - Objective
Sharper positioning each pass

R - Requirements
Word limits; proof placeholders; honesty

E - Expectations
Labeled passes

**Pro tip**

If every pass changes everything, you are not iterating—you are dice-rolling.

**Takeaway**

Iteration prompts name which C.O.R.E. layer changes next.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that structure productive iteration.

**Challenge — options (10)**

- [✓ correct] Describe product and competitive noise in Context
- [✓ correct] Objective: improve one artifact across defined passes
- [✓ correct] Requirements: each pass edits a specific dimension (breadth, outcome, proof)
- [✓ correct] Keep length/style constraints consistent across passes
- [✓ correct] Expectations: clearly label passes for template reuse
- [✗ incorrect] Rewrite randomly with no pass structure
- [✗ incorrect] Add invented customer metrics for punch
- [✗ incorrect] Remove proof hooks to keep copy short
- [✗ incorrect] Merge all passes into one vague sentence
- [✗ incorrect] Use banned hype words for “energy”

**Result — coaching note**

Teach iteration as C.O.R.E. diffs: change one layer per pass, measure the delta.

**Result — assembled prompt example**

Positioning: PASS1 breadth; PASS2 7-day outcome; PASS3 proof placeholders; <=12 words; ban revolutionary.

**Result — feedback when correct**

You iterate like a pro: each pass edits on purpose, not by vibe.

**Result — polished prompt**

Run three labeled passes to refine a positioning line for an AI inbox assistant for founders. Pass 1 generates three broad options. Pass 2 sharpens the strongest option around a concrete seven-day user outcome. Pass 3 adds proof hooks using placeholders [Customer type] and [Metric], marking unknown measurements as [Unknown]. Keep each final line at most twelve words and ban the word “revolutionary.”

---

#### Scenario 2 — Roadmap themes: breadth, trade-offs, sequencing

**Situation**

Roadmaps lie when everything is “P0.”

Iteration can force trade-offs and order.

To get a usable result, your prompt must define:
- Context - capacity and customer pressure
- Objective - refine themes across three iterations
- Requirements - pass 2 must cut one theme; pass 3 must sequence what ships first with rationale
- Expectations - show before/after each pass

**Expert prompt**

Start with 5 roadmap themes for a developer tool.

Pass 1: brainstorm themes (list 5).
Pass 2: cut one theme and explain trade-off in 2 bullets.
Pass 3: sequence remaining 4 into Q1–Q4 suggestion with one-line rationale each; no invented revenue impact—use [Unknown].

Expectations: label PASS1/PASS2/PASS3.

**AI response (example)**

PASS1
1) Reliability hardening
2) New IDE integrations
3) Enterprise SSO polish
4) Usage-based billing
5) Community templates marketplace

PASS2
Cut: Community templates marketplace
- Trade-off: slower ecosystem growth vs focus on revenue-critical features
- Gain: frees eng for billing + SSO

PASS3
Q1 Reliability — unblocks enterprise deals [Unknown]
Q2 SSO polish — removes security blockers in pipeline [Unknown]
Q3 Billing — unlocks expansion revenue experiments [Unknown]
Q4 IDE integrations — acquisition feature parity [Unknown]

Iteration turned a wishlist into a sequence with visible cuts.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Cuts and sequencing appeared because passes had explicit jobs.
- Context implied capacity tension
- Objective moved from list → choice → timeline
- Requirements forced a theme death and honest [Unknown] business links
- Expectations made diffs visible pass to pass

- **Weak vs Strong Prompt**

Weak prompt:
Improve this roadmap

Strong prompt:
5 themes; pass2 cut one w/ trade-off; pass3 quarterly sequence w/ rationale; [Unknown] revenue.

- **C.O.R.E. Breakdown**

C - Context
Developer tool; competing priorities

O - Objective
Refine roadmap across iterations

R - Requirements
Explicit cut + sequencing rules

E - Expectations
Labeled passes with before/after

**Pro tip**

If pass 2 does not hurt, you are not prioritizing—you are decorating.

**Takeaway**

Iteration without forced trade-offs is just formatting.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that iterate roadmaps toward choices.

**Challenge — options (10)**

- [✓ correct] Anchor Context with capacity and customer pressure
- [✓ correct] Objective: move from brainstorm to decision to sequence
- [✓ correct] Requirements: explicit cut/kill step with trade-off explanation
- [✓ correct] Later pass adds ordering with rationale, not flat lists
- [✓ correct] Expectations: label passes so changes are auditable
- [✗ incorrect] Keep all themes because they are all important
- [✗ incorrect] Sequence randomly for surprise
- [✗ incorrect] Attach fake revenue ranks to each quarter
- [✗ incorrect] Skip trade-off explanation to save space
- [✗ incorrect] Add new themes in pass 3 without cutting

**Result — coaching note**

Roadmap iteration is C.O.R.E. under scarcity: Requirements force the painful cuts.

**Result — assembled prompt example**

Roadmap: PASS1 5 themes; PASS2 cut 1 + trade-off; PASS3 quarterly sequence + rationale; [Unknown] rev links.

**Result — feedback when correct**

You graduated from listing themes to owning sequencing—iteration with teeth.

**Result — polished prompt**

Iteratively refine a roadmap for a developer tool. Pass 1 lists five strategic themes. Pass 2 removes one theme and explains the trade-off in two bullets. Pass 3 sequences the remaining four themes across four quarters with a one-line rationale each, without inventing revenue impact—use [Unknown] when needed. Label outputs PASS1, PASS2, and PASS3.

---

#### Scenario 3 — Stress-test a strategic bet with kill metrics

**Situation**

Iteration should harden decisions, not decorate them.

To get a usable result, your prompt must define:
- Context - bet description and owner
- Objective - add kill metrics and review triggers across iterations
- Requirements - pass 1 draft bet; pass 2 add risks; pass 3 add kill metrics with [Unknown] baselines allowed
- Expectations - final output fits a 1-screen exec brief

**Expert prompt**

Strategic bet: “We will win mid-market data teams by shipping a governed semantic layer in 6 months.”

Pass 1: state bet + success definition.
Pass 2: add top 4 risks with mitigations.
Pass 3: add 3 kill metrics with thresholds expressed as [Unknown] until data arrives + quarterly review trigger.

Requirements: each pass <=120 words.

Expectations: label PASS1/2/3.

**AI response (example)**

PASS1
Bet: governed semantic layer wins mid-market data teams in 6 months.
Success: repeatable enterprise deals cite governance + self-serve metrics [Unknown]

PASS2
Risks: scope creep; data connector long-tail; performance at scale; unclear ownership between data + product eng
Mitigations: phase delivery; top-N connectors first; perf budget; named DRI roles [Unknown]

PASS3
Kill metrics:
- <[Unknown] win-rate vs baseline after 90d of GA
- >[Unknown] P1 incidents/month sustained two months
- <[Unknown] weekly active projects in target segment after launch +12 weeks
Review: freeze new scope if any kill trips; exec review each quarter

Iteration converted optimism into governed risk.

**Learn — refinements (tabs)**

- What Made This Work
- Weak vs Strong Prompt
- C.O.R.E. Breakdown

**Learn — tab content**

- **What Made This Work**

Each pass layered accountability: bet, risks, kill metrics.
- Context embedded a concrete strategic wager
- Objective moved from slogan to instrumented decision
- Requirements capped verbosity and allowed honest baselines
- Expectations kept exec-brief length discipline

- **Weak vs Strong Prompt**

Weak prompt:
Critique this strategy

Strong prompt:
3 passes; bet definition; risks; kill metrics w/ [Unknown] thresholds; <=120 words each.

- **C.O.R.E. Breakdown**

C - Context
Mid-market data teams; semantic layer bet

O - Objective
Harden bet with governance

R - Requirements
Risks, mitigations, kill metrics

E - Expectations
Brief word caps + reviews

**Pro tip**

Kill metrics belong in the prompt before the quarter goes off the rails.

**Takeaway**

Strong iteration adds Requirements that can stop the work—on purpose.

**Challenge (goal)**

C.O.R.E. skill check: choose the five elements that iterate strategy into killable bets.

**Challenge — options (10)**

- [✓ correct] Name the bet and owning context up front
- [✓ correct] Objective: evolve from definition to risks to stop rules
- [✓ correct] Requirements: explicit risk and mitigation pass
- [✓ correct] Add kill metrics with honest [Unknown] baselines when needed
- [✓ correct] Expectations: length caps suitable for exec review
- [✗ incorrect] Skip kill metrics to stay motivational
- [✗ incorrect] Invent precise thresholds to sound decisive
- [✗ incorrect] Add unrelated SWOT in pass 3
- [✗ incorrect] Remove review triggers to reduce bureaucracy
- [✗ incorrect] Let AI cancel the bet without criteria

**Result — coaching note**

Iteration on strategy without kill metrics is decoration. Requirements must include exits.

**Result — assembled prompt example**

Semantic layer bet: PASS1 success def; PASS2 risks; PASS3 kill metrics [Unknown]; <=120 words each.

**Result — feedback when correct**

You now iterate toward decisions that can reverse—adult strategy.

**Result — polished prompt**

Run three passes on the strategic bet: “Win mid-market data teams by shipping a governed semantic layer within six months.” Pass 1 states the bet and success definition. Pass 2 lists four risks with mitigations. Pass 3 adds three kill metrics with threshold placeholders expressed as [Unknown] until baselines exist, plus a quarterly executive review trigger if any kill metric trips. Keep each pass at most 120 words and label PASS1, PASS2, PASS3.

---

## Lesson counts (this export)

- Track 1 — Everyday Communication: **5** lessons
- Track 2 — Productivity & Workflow: **5** lessons
- Track 3 — Spreadsheets & Data: **5** lessons
- Track 4 — Presentations: **5** lessons
- Track 5 — Productivity: **5** lessons
- Track 6 — Content Creation: **5** lessons
- Track 7 — Root-Cause Thinking: **5** lessons
- Track 8 — Marketing & Social: **5** lessons
- Track 9 — Brainstorming & Strategy: **5** lessons
- **Total lessons: 45**
