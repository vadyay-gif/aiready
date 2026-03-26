# Tracks 1–9 — user-facing content (clean export)

Derived from the same Dart sources as `exports/tracks_1_9_full_user_experience_RAW.md` (track definition files under `lib/data/tracks/`). Flutter/Dart code, imports, and widgets are omitted.

---

## Track 1 — Everyday Communication

*Source:* `lib/data/tracks/track1_everyday_communication.dart`

### Lesson 1: Write Clearly From Scratch

#### Scenario 1: Write a Professional Email
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: the model is following your structure, not polishing your writing.
- Context pins who this is for
- Objective pins the deadline ask
- Requirements cap length and tone
- Expectations demand send-ready text

##### Weak vs Strong Prompt

Weak prompt:
Write an email about a document

Strong prompt:
Write a professional email explaining that the draft policy document is ready for review and asking if they can share feedback by Thursday. Keep it to two or three short paragraphs.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a colleague email—report ready for review and comments by Wednesday.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The email should clearly state that the report is ready for review
- ✓ (correct choice) — The email should ask for comments by Wednesday
- ✓ (correct choice) — The tone should be polite and professional
- ✓ (correct choice) — The email should be written in two short paragraphs
- ✓ (correct choice) — The final output should be clear and ready to send
- ✗ (distractor) — Add extra background details to make the email longer
- ✗ (distractor) — Let the AI decide what the email should focus on
- ✗ (distractor) — Include unrelated project updates
- ✗ (distractor) — Add creative phrasing to make it more interesting
- ✗ (distractor) — Choose the best AI model before writing

**Coaching note (if selections are wrong)**

A premium prompt names Context, Objective, Requirements, and Expectations—what the output should include—so the model can deliver something you can send.

**Assembled prompt example**

Write a professional email to a colleague explaining that the report is ready for review. The objective is to clearly request comments by Wednesday. Write the email in two short paragraphs using a polite and professional tone. The final output should be clear, concise, and ready to send.

**Feedback when correct (after Check my answer)**

That score is the gap between “sounds fine” and send-ready: miss one C.O.R.E. slot and the model fills it with guesswork.

#### Scenario 2: Rewrite a Messy Message Into a Clear Update
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: messy notes do not get “fixed” by magic—they get routed by your format rules.
- Objective forces the one job: align the team
- Requirements force sections or bullets
- Expectations force done / pending / next without narrative drift

##### Weak vs Strong Prompt

Weak prompt:
Summarise these notes

Strong prompt:
Rewrite the following notes into a clear team update message.

The goal is to explain the current project status and make the next steps clear.

Structure the message with short sections or bullet points. Use a professional but simple tone.

The final output should clearly show what is done, what is pending, and what happens next.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning rough notes into a structured team update with clear next steps.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The update should clearly explain the current status of the project
- ✓ (correct choice) — The output should organize information into sections or bullet points
- ✓ (correct choice) — The update should highlight what is completed and what is still pending
- ✓ (correct choice) — The message should clearly state the next steps
- ✓ (correct choice) — The final output should be structured, easy to read, and ready to send
- ✗ (distractor) — Add extra details to make the update more comprehensive
- ✗ (distractor) — Let the AI decide how to structure the message
- ✗ (distractor) — Include all notes exactly as written
- ✗ (distractor) — Add creative language to make the update more engaging
- ✗ (distractor) — Focus only on completed work

**Coaching note (if selections are wrong)**

When input is messy, C.O.R.E. is what keeps the model aligned: context, objective, format requirements, and explicit expectations for the final message.

**Assembled prompt example**

Rewrite the following meeting notes into a clear team update. The objective is to explain the current project status and align the team on next steps. Structure the message using clear sections or bullet points. The output should clearly show what is completed, what is pending, and what happens next, and should be ready to send.

**Feedback when correct (after Check my answer)**

Full marks here means you see the rails: without format + expectations, messy notes collapse into noise—this is where most AI users lose control.

#### Scenario 3: Handle a Sensitive Update with the Right Tone
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: delay emails blow up when Objective is fuzzy—you need one prompt to do three jobs at once.
- Objective balances bad news + relationship
- Requirements pin the tone so it cannot slide into panic or coldness
- Expectations force a forward path, not just an apology

##### Weak vs Strong Prompt

Weak prompt:
Write an email saying the project is delayed

Strong prompt:
Write a professional email to a client explaining that the project is slightly delayed due to internal adjustments.

The objective is to clearly communicate the delay while maintaining trust and keeping the relationship positive.

Use a calm, confident, and professional tone.

The email should briefly explain the situation, reassure progress, and provide a revised expectation.

The final output should be clear, honest, and ready to send.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong client email about a delay—clear, calm, and trust-building.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The email should clearly explain that there is a delay in the project
- ✓ (correct choice) — The message should maintain a calm, confident, and professional tone
- ✓ (correct choice) — The email should reassure the client that progress is still being made
- ✓ (correct choice) — The message should provide a revised expectation or next step
- ✓ (correct choice) — The final output should be clear, honest, and ready to send
- ✗ (distractor) — Minimise mention of the delay to keep the message positive
- ✗ (distractor) — Let the AI decide how to communicate the situation
- ✗ (distractor) — Add extra technical details to justify the delay
- ✗ (distractor) — Make the message more casual to sound friendly
- ✗ (distractor) — Focus only on positive updates

**Coaching note (if selections are wrong)**

Sensitive updates need every element of C.O.R.E.: situation, competing objectives, tone requirements, and a concrete picture of the message the client should receive.

**Assembled prompt example**

Write a professional email to a client explaining that the project is slightly delayed due to internal adjustments. The objective is to clearly communicate the delay while maintaining trust and keeping the relationship positive. Use a calm, confident, and professional tone. The email should briefly explain the situation, reassure that progress is ongoing, and provide a revised expectation or next step. The final output should be clear, honest, and ready to send.

**Feedback when correct (after Check my answer)**

You nailed the tension: delay copy fails when Objective or tone is implicit—this is the edge over one-line “be professional” prompts.

### Lesson 2: Rewrite for Clarity

#### Scenario 1: Fix a Confusing Email So It's Clear and Concise
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: rewrites go wrong when Objective is missing—the model decorates instead of deleting.
- Context anchors the messy draft
- Objective locks the single takeaway
- Requirements force paragraph count and repetition cuts
- Expectations demand subject line + send-ready

##### Weak vs Strong Prompt

Weak prompt:
Make this email better

Strong prompt:
Rewrite my colleague's draft into a clear internal email about the training schedule. State plainly that the schedule is not ready today and will be sent tomorrow afternoon, without changing any facts. Use a professional tone in exactly two short paragraphs, cut repetition, and add a subject line so the message is ready to send.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for telling the team the client roadmap review moved to Thursday at 10:00 a.m.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The message should clearly state the new meeting time (Thursday, 10:00 a.m.)
- ✓ (correct choice) — The objective should be to inform attendees and avoid confusion about the old time
- ✓ (correct choice) — The tone should stay professional and direct for a team channel or email
- ✓ (correct choice) — The output should briefly note that the calendar invite will be updated (or equivalent next step)
- ✓ (correct choice) — The final output should be short, accurate, and ready to post or send
- ✗ (distractor) — Add a joke to keep the update light
- ✗ (distractor) — Include unrelated project gossip for context
- ✗ (distractor) — Let the model pick whichever time sounds reasonable
- ✗ (distractor) — Pad the message so it feels more important
- ✗ (distractor) — Ask the model to choose the best AI tool first

**Coaching note (if selections are wrong)**

Strong rewrite prompts still need full C.O.R.E.: audience and channel, the factual change, tone and length, and what "done" looks like.

**Assembled prompt example**

Write a short team update for email or chat explaining that the client roadmap review has moved to Thursday at 10:00 a.m., so nobody relies on the old time. Use a professional, direct tone in two or three sentences, note that the calendar invite will be updated, and keep the message accurate and ready to send.

**Feedback when correct (after Check my answer)**

Perfect: this is the rewrite edge—Objective + Expectations stop the model from “improving” you into new facts.

#### Scenario 2: Rewrite Fragmented Notes Into One Clean Update
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: leadership fragments need anti-hallucination rules in the prompt, not after the fact.
- Objective is “status only, no implied decision”
- Requirements lock tone and bullet budget
- Expectations demand paste-ready without invented facts

##### Weak vs Strong Prompt

Weak prompt:
Summarise these chats

Strong prompt:
Rewrite the following fragmented notes into one leadership-channel update for Slack. The Q3 budget discussion is active, Legal is still reviewing a vendor contract clause, and leadership wants a same-day line in channel. Communicate current status only—do not imply a final decision or a new deadline. Use a neutral executive tone in either one short paragraph or up to three bullet lines. Do not invent owners, percentages, or dates that the notes do not support, and do not add tasks unless the notes explicitly include them. Keep it factual and ready to paste.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning rough handoff notes into a structured handoff message for the incoming owner.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should state that the notes are messy handoff bullets from the departing owner
- ✓ (correct choice) — The objective should be to give the incoming owner a clear snapshot of status and blockers
- ✓ (correct choice) — The requirements should force a structured format (for example labeled sections or bullets)
- ✓ (correct choice) — The prompt should forbid inventing deadlines, approvals, or tool names not in the notes
- ✓ (correct choice) — The expectation should be a message the new owner can act on without follow-up clarification
- ✗ (distractor) — Encourage creative storytelling to make it memorable
- ✗ (distractor) — Let the model assume the project is already finished
- ✗ (distractor) — Add emotional language about how stressful the week was
- ✗ (distractor) — Paste the raw notes twice so the model "notices" them more
- ✗ (distractor) — Ask which large language model to use before rewriting

**Coaching note (if selections are wrong)**

Handoffs need the same structure as messy chat: name the mess, define the job, require a schema, ban guesses, and describe the finished artifact.

**Assembled prompt example**

Rewrite these rough handoff notes into a structured handoff message for the incoming project owner. Summarise current status, owners, and blockers using clear section labels or bullets. Keep a neutral professional tone, do not invent dates, budgets, or tool names that are not in the notes, and deliver something the new owner can act on without follow-up questions.

**Feedback when correct (after Check my answer)**

Strong: you spotted the guardrails—this is where prompts break when leadership visibility meets half-finished facts.

#### Scenario 3: Handle a Vague Ask With the Right Tone
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: the model cannot read your manager's mind—you have to script the trade-off between rapport and clarity.
- Objective forces acknowledge + clarify + next step without stalling
- Requirements cap length and ban sarcasm so tone cannot drift
- Expectations demand one send-ready message, not a thread

##### Weak vs Strong Prompt

Weak prompt:
Help me reply to my boss

Strong prompt:
Draft a reply to my manager's DM: "Just circle back on the onboarding stuff later today — keep it tight." I am unsure which onboarding package they mean and what time "later" implies, and the tone should stay positive. Acknowledge the note, ask one focused question about scope and timing, and suggest a concrete next step without over-committing. Keep a respectful, calm, professional voice in about ninety words or fewer, with no sarcasm or passive aggression and no invented deliverables. Give me a single message that is ready to send.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for asking a product lead for a short extension on a Friday deadline without sounding negative.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should state the existing Friday deadline and the channel (email or Slack)
- ✓ (correct choice) — The objective should be to request a brief extension with a specific new target time
- ✓ (correct choice) — The requirements should keep the tone constructive, respectful, and non-defensive
- ✓ (correct choice) — The prompt should mention one factual reason for the slip without blame or drama
- ✓ (correct choice) — The expectation should be a concise message ready to send in one pass
- ✗ (distractor) — Suggest exaggerating the risk to force a yes
- ✗ (distractor) — Tell the model to guess why the deadline was unrealistic
- ✗ (distractor) — Add humour about working weekends
- ✗ (distractor) — Ask for a long essay explaining team history
- ✗ (distractor) — Instruct the model to compare AI vendors first

**Coaching note (if selections are wrong)**

Sensitive timing asks need context, a crisp objective, tone rules, and a defined artifact — otherwise the model swings between apologetic novels and blunt demands.

**Assembled prompt example**

Draft a short Slack message to the product lead asking for a small extension on the Friday 5 p.m. deliverable because one dependency landed late. Propose Monday 10 a.m. with a brief outline of what ships when. Keep a constructive, respectful tone, avoid blame, stay under ninety words, do not invent metrics, and make the message ready to send without editing.

**Feedback when correct (after Check my answer)**

That is the difference between “polite” and in control: you picked the C.O.R.E. levers that stop the model from over-promising or under-clarifying.

### Lesson 3: Adjust Tone for Any Situation

#### Scenario 1: Polish a Casual Update for a Formal Audience
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: tone prompts fail when “professional” is the only instruction—the model will rewrite meaning.
- Context names leadership email so register shifts correctly
- Objective keeps timing + no-reply as the only job
- Requirements lock facts and sentence count
- Expectations demand send-ready lines, not a new pitch

##### Weak vs Strong Prompt

Weak prompt:
Make this sound professional

Strong prompt:
Rewrite this line for a leadership email without changing facts: I'll drop the revised budget memo later today—no need to reply yet. Keep the meaning identical, use a professional tone, and limit the output to two short sentences.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning a casual client chat into a polite email that confirms a Tuesday wire transfer without adding new promises.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should name the audience (client) and channel (email)
- ✓ (correct choice) — The objective should be to confirm the Tuesday transfer without creating new obligations
- ✓ (correct choice) — The requirements should keep a courteous, professional tone in two or three sentences
- ✓ (correct choice) — The prompt should forbid inventing amounts, dates, or bank details
- ✓ (correct choice) — The expectation should be a message the user can send immediately
- ✗ (distractor) — Tell the model to sound more excited than professional
- ✗ (distractor) — Let the model choose the payment day
- ✗ (distractor) — Add a joke to relax the client
- ✗ (distractor) — Paste unrelated invoice numbers for realism
- ✗ (distractor) — Ask which AI model to use before drafting

**Coaching note (if selections are wrong)**

When tone is the job, C.O.R.E. still matters: audience, outcome, tone and length rules, and a defined send-ready artifact.

**Assembled prompt example**

Turn this casual client chat into a short polite email confirming the wire transfer is scheduled for Tuesday. Name the audience and email format, keep a courteous professional tone in two or three sentences, do not invent amounts or bank details, and deliver text ready to send.

**Feedback when correct (after Check my answer)**

Full marks is the advantage: most people lose here because “tone” without fact-lock drifts—your picks keep meaning and register under control.

**Polished prompt on result screen**

Draft a brief client email confirming the wire transfer is on track for Tuesday. Keep a courteous professional tone in two or three sentences, do not invent amounts or banking details, and leave the message ready to send.

#### Scenario 2: Shape Mixed Snippets Into One Consistent Tone
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: conflicting snippets need a single narrative contract—otherwise the model averages opinions.
- Objective forces miss + fix + relationship in one arc
- Requirements cap tone and length so empathy cannot bloat
- Expectations demand one email, not a committee draft

##### Weak vs Strong Prompt

Weak prompt:
Combine these notes

Strong prompt:
Draft a customer email responding to a missed SLA. The message must acknowledge the miss, reference that Legal reviewed the wording, and describe the corrective step already taken. Use a firm but respectful tone, keep it under one hundred and twenty words, and avoid blame-shifting or emotional padding.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for turning conflicting bullet feedback into one internal memo about a delayed product launch.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should state that the input bullets conflict and must be reconciled
- ✓ (correct choice) — The objective should be to inform internal stakeholders of the new launch window
- ✓ (correct choice) — The requirements should enforce neutral executive tone and a fixed length
- ✓ (correct choice) — The prompt should forbid inventing causes, owners, or dates not in the notes
- ✓ (correct choice) — The expectation should be a memo ready to circulate without edits
- ✗ (distractor) — Let each bullet become its own paragraph
- ✗ (distractor) — Add dramatic language to show urgency
- ✗ (distractor) — Include a paragraph apologising for the company culture
- ✗ (distractor) — Guess which team caused the delay
- ✗ (distractor) — Recommend a favourite AI assistant

**Coaching note (if selections are wrong)**

Fragmented input needs guardrails: reconcile conflicts in the prompt, define the output type, and ban guessed facts.

**Assembled prompt example**

Reconcile these conflicting bullets into one internal memo announcing the delayed product launch and the new target window. Use neutral executive tone, keep under two hundred words, do not invent causes or owners, and deliver a memo ready to circulate.

**Feedback when correct (after Check my answer)**

Solid: mixed notes break prompts that lack a spine—your picks show you know how to lock one story before the model “smooths” facts away.

**Polished prompt on result screen**

Turn these conflicting notes into a single internal memo that announces the delayed launch and the revised window. Keep an executive-neutral voice, stay under two hundred words, do not invent causes or owners, and make it ready to circulate.

#### Scenario 3: Hold a Boundary on Timing Without Sounding Dismissive
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: boundary emails need competing objectives named up front—otherwise the model picks apology or aggression.
- Objective pairs decline with an alternate path
- Requirements cap promises so you cannot “helpfully” lie
- Expectations force send-ready structure with a next step

##### Weak vs Strong Prompt

Weak prompt:
Say no politely

Strong prompt:
Write a short email to a stakeholder who asked for a full analysis by 9 a.m. tomorrow. Explain that a reviewable draft needs until Thursday morning, offer a concise interim summary tomorrow if helpful, and keep the tone respectful and confident. Do not promise legal sign-off or resources you cannot guarantee. Limit to about ninety words.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for asking a vendor for a one-week extension on a contract review while keeping the partnership positive.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should name the current review deadline and the channel (email)
- ✓ (correct choice) — The objective should request one additional week with a clear new date
- ✓ (correct choice) — The requirements should keep tone collaborative and avoid blame
- ✓ (correct choice) — The prompt should give one factual reason without exaggerating risk
- ✓ (correct choice) — The expectation should be a concise email ready to send
- ✗ (distractor) — Threaten to switch vendors in the opening line
- ✗ (distractor) — Let the model invent legal citations
- ✗ (distractor) — Ask for humour to soften the ask
- ✗ (distractor) — Request a ten-page appendix
- ✗ (distractor) — Tell the model to compare LLM providers

**Coaching note (if selections are wrong)**

Boundary-setting emails need context, a crisp ask, tone rules, and a no-fabrication line—otherwise the model swings between groveling and blunt refusals.

**Assembled prompt example**

Email the vendor asking for a one-week extension on the contract review, propose a new return date, cite one factual scheduling constraint without drama, keep the tone collaborative, and keep the message under a hundred words.

**Feedback when correct (after Check my answer)**

That is high-signal: boundary prompts fail when Objective is mush—your answers show you can trade time without trading away credibility.

**Polished prompt on result screen**

Write a concise vendor email requesting one more week for the contract review, propose a specific new date, reference one factual scheduling constraint without blame, stay collaborative, and keep it ready to send at under a hundred words.

### Lesson 4: Expand or Shorten With Purpose

#### Scenario 1: Strip a Long Email Down to the Essential Fact
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: shortening is not summarising—it is deletion with a target.
- Objective names the only fact that may survive
- Requirements cap sentences and tone
- Expectations ban backstory so the model cannot “help” with context

##### Weak vs Strong Prompt

Weak prompt:
Shorten this email

Strong prompt:
Condense the message so it states only that the design review moves from Tuesday at 2 p.m. to Wednesday at 2 p.m. Use one or two clear sentences in a practical tone. Do not include meeting history or reasons unless provided in the source text.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for shrinking a long status thread into one sentence about a budget approval delay to next Monday.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should state the single fact to preserve (approval moved to Monday)
- ✓ (correct choice) — The objective should be to replace noise with that fact only
- ✓ (correct choice) — The requirements should cap length (one or two sentences)
- ✓ (correct choice) — The prompt should forbid inventing reasons or new dates
- ✓ (correct choice) — The expectation should be language ready to paste into chat
- ✗ (distractor) — Keep every stakeholder name for politeness
- ✗ (distractor) — Let the model summarise "the vibe" of the thread
- ✗ (distractor) — Add a motivational closing quote
- ✗ (distractor) — Expand with a paragraph of context
- ✗ (distractor) — Ask the reader to pick a model first

**Coaching note (if selections are wrong)**

Shortening prompts still need C.O.R.E.: name the fact, ban extra content, and describe the finished line.

**Assembled prompt example**

Compress this thread into one or two sentences stating only that budget approval now lands next Monday; drop history; do not invent reasons; keep a practical tone.

**Feedback when correct (after Check my answer)**

Exactly: this is where prompts break under noise—your picks show you know the one fact to keep and what to forbid.

**Polished prompt on result screen**

Provide one or two sentences for chat stating only that budget approval is now expected next Monday—no backstory, no invented causes, practical tone, ready to paste.

#### Scenario 2: Turn Chaotic Bullets Into a Tight Status Brief
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: incident chaos needs negative constraints—tell the model what it is not allowed to sound sure about.
- Objective is steady status, not heroics
- Requirements cap bullets and tone
- Expectations forbid invented metrics so leadership cannot quote fiction

##### Weak vs Strong Prompt

Weak prompt:
Fix these notes

Strong prompt:
Turn these bullets into a leadership brief of at most three bullet lines. Report only what the notes support: intermittent API errors, vendor ticket open, next diagnostic checkpoint end of day. Do not invent ticket numbers, customer impact percentages, or fix times. Keep a neutral, steady tone.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for converting messy workshop feedback into a three-bullet executive summary.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should say feedback is messy and must be consolidated
- ✓ (correct choice) — The objective should be a three-bullet executive summary of themes
- ✓ (correct choice) — The requirements should ban quoting individuals by name
- ✓ (correct choice) — The prompt should forbid inventing scores or attendance numbers
- ✓ (correct choice) — The expectation should be slides-ready phrasing
- ✗ (distractor) — Include every attendee complaint verbatim
- ✗ (distractor) — Add a humorous anecdote to lighten the tone
- ✗ (distractor) — Let the model infer strategic priorities
- ✗ (distractor) — Turn bullets into a five-page essay
- ✗ (distractor) — Recommend an AI writing suite

**Coaching note (if selections are wrong)**

Chaotic notes need consolidation rules: what to merge, what to forbid, and the executive shape of the output.

**Assembled prompt example**

Consolidate messy workshop feedback into three executive bullets summarising themes, anonymise individuals, do not invent scores, and make the lines ready for slides.

**Feedback when correct (after Check my answer)**

Nailed it: this scenario punishes lazy “clean this up” prompts—your picks show you know structure beats panic.

**Polished prompt on result screen**

Distil messy workshop comments into three executive bullets—themes only, no names, no invented metrics—worded for a slide deck.

#### Scenario 3: Explain a Setback in Plain Language for Executives
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: executive explanations fail when Objective is “sound smart.” You need cause + mitigation + next checkpoint in plain English.
- Requirements kill jargon and name-counting
- Expectations force lines you can actually read aloud

##### Weak vs Strong Prompt

Weak prompt:
Explain the delay

Strong prompt:
Write two sentences in plain language for executives explaining that the pilot slipped by two weeks because an upstream dependency delivered late, and that mitigation work is underway with a revised checkpoint next Friday. Keep the tone confident and calm, avoid jargon, and do not name individuals.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a two-sentence customer email about a service outage that emphasises restoration without overpromising future uptime.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should name the audience (customers) and channel
- ✓ (correct choice) — The objective should be to confirm service restoration and next monitoring step
- ✓ (correct choice) — The requirements should keep tone calm and avoid blaming teams
- ✓ (correct choice) — The prompt should forbid guaranteeing future uptime percentages
- ✓ (correct choice) — The expectation should be two short sentences ready to send
- ✗ (distractor) — Add a coupon code not approved by legal
- ✗ (distractor) — Name the engineer who caused the outage
- ✗ (distractor) — Promise a full postmortem in two hours
- ✗ (distractor) — Use sarcasm to sound human
- ✗ (distractor) — Ask which chatbot to use

**Coaching note (if selections are wrong)**

Sensitive plain-language updates need explicit tone, honesty limits, and a hard cap on promises.

**Assembled prompt example**

Draft two customer-facing sentences confirming the outage is resolved, note active monitoring, do not guarantee uptime figures, stay calm, and avoid blame.

**Feedback when correct (after Check my answer)**

Sharp: this is where trust breaks—your picks show you can cap promises and tone before the model writes a speech.

**Polished prompt on result screen**

Write two calm customer sentences: service is restored, monitoring continues, no uptime guarantees, no blame, ready to send.

### Lesson 5: Create Useful Everyday Templates

#### Scenario 1: Build a Reusable Document Handoff Email
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: templates are not “nice copy”—they are slot machines.
- Objective is reuse, not one send
- Requirements force bracketed fields so you cannot accidentally ship fake names
- Expectations demand the ask stays visible

##### Weak vs Strong Prompt

Weak prompt:
Give me an email template

Strong prompt:
Create a reusable email template for sharing a policy draft internally. Include placeholders for recipient name, document title, version date, and feedback deadline. Use two or three short paragraphs with a professional tone, state what review you need, and keep optional lines for attaching links versus files.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a reusable meeting recap template with decisions, owners, and due dates.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should name the template purpose (meeting recap)
- ✓ (correct choice) — The objective should capture decisions, owners, and due dates
- ✓ (correct choice) — The requirements should include placeholders, not fake names
- ✓ (correct choice) — The prompt should limit length so the template stays scannable
- ✓ (correct choice) — The expectation should be something reusable every week
- ✗ (distractor) — Embed a full sample meeting transcript
- ✗ (distractor) — Add jokes in each section header
- ✗ (distractor) — Let the model invent attendee personalities
- ✗ (distractor) — Require a poem at the top
- ✗ (distractor) — Ask which AI vendor built the template

**Coaching note (if selections are wrong)**

Template prompts must declare sections, placeholders, tone, and reuse—otherwise you get a one-off paragraph.

**Assembled prompt example**

Build a weekly meeting recap template with sections for decisions, owners, and due dates; use bracket placeholders; keep it under half a page; professional tone.

**Feedback when correct (after Check my answer)**

Yes: this is leverage—most users cannot name what must be a slot versus what is prose; your picks show that skill.

**Polished prompt on result screen**

Produce a weekly meeting recap template: Decisions, Owners, Due dates—bracket placeholders only, professional tone, scannable half page, reusable every week.

#### Scenario 2: Merge Rough Ideas Into One Scannable Template
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: merged ideas need architecture, not enthusiasm.
- Objective is a repeatable weekly shape
- Requirements cap sections and ban numeric examples
- Expectations demand scan speed, not essay density

##### Weak vs Strong Prompt

Weak prompt:
Merge these ideas

Strong prompt:
Design a weekly project snapshot template with at most four labeled sections covering progress, KPI focus, risks, and asks. Use bracket placeholders only, keep instructions under the headings minimal, and do not insert numeric examples. Make it easy to scan in under thirty seconds.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a customer onboarding checklist template with ordered steps and owner placeholders.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should define onboarding checklist purpose and audience
- ✓ (correct choice) — The objective should produce ordered steps with owner placeholders
- ✓ (correct choice) — The requirements should ban filling in real company data
- ✓ (correct choice) — The prompt should cap the number of steps for usability
- ✓ (correct choice) — The expectation should be a reusable checklist skeleton
- ✗ (distractor) — Embed lorem ipsum filler paragraphs
- ✗ (distractor) — Add a section for favourite emojis
- ✗ (distractor) — Let the model invent customer personas
- ✗ (distractor) — Turn the checklist into a narrative essay
- ✗ (distractor) — Recommend software brands by name

**Coaching note (if selections are wrong)**

Checklist templates need ordered steps, owner slots, and rules against invented data.

**Assembled prompt example**

Create a numbered onboarding checklist template with owner placeholders, no fake customer data, at most eight steps, and reusable for every new account.

**Feedback when correct (after Check my answer)**

Clean win: template prompts fail when “merge” replaces limits—your picks show you know how to cap structure and data.

**Polished prompt on result screen**

Build an eight-step onboarding checklist template—numbered, owner placeholders in brackets, no sample data, reusable for every new account.

#### Scenario 3: Design a Neutral Escalation Template for Stakeholders
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

**Learn (variant tabs)**

##### What Made This Work

This is what changes the output: escalations are not “tone”—they are structured asks with risk shown cleanly.
- Objective is a decision or resource, not a feelings report
- Requirements ban blame language and cap boilerplate
- Expectations force paste-ready fields so nothing inflammatory sneaks in

##### Weak vs Strong Prompt

Weak prompt:
Write an escalation email

Strong prompt:
Create a concise escalation template individual contributors can send to a director when blocked by a dependency. Include placeholders for blocker summary, business impact, timeline risk, and the specific decision or resource needed. Keep guidance text neutral, avoid blame language, and limit boilerplate to ninety words total.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a polite follow-up template when a cross-team request has gone unanswered for five business days.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — The prompt should state the scenario (unanswered request, five business days)
- ✓ (correct choice) — The objective should be to nudge for a response without accusing anyone
- ✓ (correct choice) — The requirements should include placeholders for ticket ID and needed action
- ✓ (correct choice) — The prompt should forbid emotional language and blame
- ✓ (correct choice) — The expectation should be a short template reusable on any thread
- ✗ (distractor) — Encourage ALL CAPS for urgency
- ✗ (distractor) — Name the colleague you think is lazy
- ✗ (distractor) — Offer unrelated project updates
- ✗ (distractor) — Turn the template into a legal threat
- ✗ (distractor) — Ask which LLM wrote the template

**Coaching note (if selections are wrong)**

Follow-up templates need neutral tone rules, explicit placeholders, and a ban on accusatory language.

**Assembled prompt example**

Draft a short follow-up template for cross-team requests unanswered after five business days—placeholders for ticket ID and ask, polite tone, no blame, reusable.

**Feedback when correct (after Check my answer)**

Strong: tone problems here are really missing asks—your picks show you can separate facts, impact, and the decision you need.

**Polished prompt on result screen**

Create a concise follow-up template for requests idle five business days: ticket placeholder, clear ask, polite neutral tone, no blame, ready to paste on any thread.

---

## Track 2 — Productivity & Workflow

*Source:* `lib/data/tracks/track2_productivity_workflow.dart`

### Lesson 1: Summarise Quickly and Clearly

#### Scenario 1: Summarise a Tense Alignment Meeting for Leadership
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

**Learn (variant tabs)**

##### What Made This Work

The control point is extraction discipline: the model follows your rules, not meeting noise.
- Objective locks signal selection
- Requirements lock format and truth boundaries
- Expectations lock leadership-ready quality

##### Weak vs Strong Prompt

Weak prompt:
Summarise this meeting

Strong prompt:
Summarise these notes into exactly four leadership-ready bullet points. Include only confirmed decisions, one high-risk dependency, and immediate next actions with owners where stated. Remove side debates, do not imply consensus where disagreement remains, and keep output ready to paste into a leadership channel.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for a leadership meeting summary under pressure.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require only confirmed decisions from the notes
- ✓ (correct choice) — Include one explicit high-risk dependency
- ✓ (correct choice) — Cap output to a fixed bullet count
- ✓ (correct choice) — Forbid implied agreement when disagreement exists
- ✓ (correct choice) — Expect a paste-ready leadership update
- ✗ (distractor) — Add confidence percentages
- ✗ (distractor) — Include side debates for nuance
- ✗ (distractor) — Infer owners when missing
- ✗ (distractor) — Soften risk language by default
- ✗ (distractor) — Expand into narrative recap

**Coaching note (if selections are wrong)**

Meeting summaries fail when truth boundaries are vague. Define extraction scope and certainty rules before output format.

**Assembled prompt example**

Summarise these notes into four leadership-ready bullets covering confirmed decisions, one active high-risk dependency, and immediate next actions with stated owners only.

**Feedback when correct (after Check my answer)**

You now control leadership signal extraction - most people ship noise and call it an update.

**Polished prompt on result screen**

Create four leadership-ready bullets from these notes with confirmed decisions, one active high-risk dependency, and immediate next actions. Do not imply consensus where disagreement remains.

#### Scenario 2: Compress a Long Partner Email Without Losing Risk
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

**Learn (variant tabs)**

##### What Made This Work

What matters here is survival rules: compression works only when what must stay is explicit.
- Objective protects critical facts
- Requirements protect caveats and length
- Expectations protect forward-ready quality

##### Weak vs Strong Prompt

Weak prompt:
Summarise this in two lines

Strong prompt:
Rewrite this partner email into one or two internal-update sentences. Preserve only overall status, delayed dependency, and revised-date timing. Keep wording factual, do not add mitigation claims not in source text, and keep output safe to forward to leadership unchanged.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for compressing a mixed-signal partner email.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Cap output to one or two sentences
- ✓ (correct choice) — Preserve status plus delay caveat
- ✓ (correct choice) — Include revised-date timing signal
- ✓ (correct choice) — Forbid mitigation claims not in source text
- ✓ (correct choice) — Expect forward-safe wording for leadership
- ✗ (distractor) — Replace caveats with optimism
- ✗ (distractor) — Add probable causes
- ✗ (distractor) — Expand into full background
- ✗ (distractor) — Insert extra action items
- ✗ (distractor) — Infer timeline confidence

**Coaching note (if selections are wrong)**

Compression breaks when source boundaries are loose. Define what must survive and what cannot be invented.

**Assembled prompt example**

Rewrite this partner email into one or two internal-update sentences preserving overall status, delayed dependency caveat, and revised-date timing only.

**Feedback when correct (after Check my answer)**

You kept the decision-critical caveat intact - this is where most short summaries quietly fail.

**Polished prompt on result screen**

Compress this partner email into one or two forward-safe sentences preserving status, delay caveat, and revised-date timing. Do not invent mitigation.

#### Scenario 3: Translate Policy Guidance Into Plain-Language Execution
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

**Learn (variant tabs)**

##### What Made This Work

The difference is fidelity rules: plain language only works if legal intent stays intact.
- Objective locks obligations and timing
- Requirements remove jargon and block invented exceptions
- Expectations lock announcement-ready fidelity

##### Weak vs Strong Prompt

Weak prompt:
Simplify this paragraph

Strong prompt:
Rewrite this policy paragraph into exactly two plain-language sentences for frontline teams. Include what must be done, when it takes effect, and any explicit boundary condition from source text. Avoid legal jargon, do not invent exceptions, and keep wording announcement-ready.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for policy-to-execution translation.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Enforce exactly two sentences
- ✓ (correct choice) — Include mandatory action and effective timing
- ✓ (correct choice) — Remove legal jargon
- ✓ (correct choice) — Preserve explicit boundary conditions from source
- ✓ (correct choice) — Expect announcement-ready wording without drift
- ✗ (distractor) — Add illustrative examples
- ✗ (distractor) — Infer likely exceptions
- ✗ (distractor) — Expand into legal prose
- ✗ (distractor) — Add optional recommendations
- ✗ (distractor) — Reinterpret policy intent

**Coaching note (if selections are wrong)**

Policy translation fails when fidelity constraints are missing. Pair plain-language requirements with boundary preservation.

**Assembled prompt example**

Rewrite this policy paragraph into exactly two plain-language announcement sentences preserving mandatory action, effective timing, and explicit boundary conditions only.

**Feedback when correct (after Check my answer)**

You now control simplification without policy drift - that is the compliance advantage.

**Polished prompt on result screen**

Create exactly two plain-language execution sentences from this policy text, preserving mandatory action, timing, and explicit boundaries only.

### Lesson 2: Create Structure from Messy Input

#### Scenario 1: Convert Fragmented Handoff Notes Into an Ownership Checklist
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

**Learn (variant tabs)**

##### What Made This Work

The control point is accountability rules: handoff quality depends on what stays visible.
- Objective targets ownership and blocker clarity
- Requirements force [Owner TBD] and action format
- Expectations keep risk visible for next team

##### Weak vs Strong Prompt

Weak prompt:
Organize these handoff notes

Strong prompt:
Turn these fragmented handoff notes into a checklist of up to five critical action items. Keep action-first phrasing, attach stated owners, use [Owner TBD] when ownership is missing, preserve unresolved blockers explicitly, and remove duplicates. Output should be ready for a direct handoff message.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong handoff checklist prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Cap output to five critical actions
- ✓ (correct choice) — Use action-first phrasing
- ✓ (correct choice) — Use [Owner TBD] when owner is missing
- ✓ (correct choice) — Keep unresolved blockers explicit
- ✓ (correct choice) — Expect direct handoff-message readiness
- ✗ (distractor) — Infer likely owners
- ✗ (distractor) — Include nice-to-have tasks
- ✗ (distractor) — Hide blocker language
- ✗ (distractor) — Expand each line with rationale
- ✗ (distractor) — Average urgency labels

**Coaching note (if selections are wrong)**

Handoffs fail on hidden ownership and blockers. Define accountability and visibility rules directly.

**Assembled prompt example**

Convert these fragmented handoff notes into up to five critical action items with stated owners, using [Owner TBD] for gaps and preserving unresolved blockers explicitly.

**Feedback when correct (after Check my answer)**

You now control handoff accountability - most teams polish the list and lose the blockers.

**Polished prompt on result screen**

Build a five-item handoff checklist from these notes with action-first phrasing, owner tags, [Owner TBD] for gaps, and explicit blocker visibility.

#### Scenario 2: Turn Conflicting Project Narrative Into One Weekly Action Plan
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

**Learn (variant tabs)**

##### What Made This Work

What matters here is conflict rules: plans from contradictory input need tension to stay visible.
- Objective includes action plus trade-off visibility
- Requirements enforce specificity and anti-invention
- Expectations avoid clean-looking but unsafe closure

##### Weak vs Strong Prompt

Weak prompt:
Turn this into an action plan

Strong prompt:
Convert this narrative into up to four weekly action bullets. Keep only executable actions, include owner role and deadline when explicitly stated, preserve one unresolved trade-off as a flagged line, and avoid invented dependencies. Output must be ready for standup planning.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong weekly plan prompt under conflicting input.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Cap output to four executable actions
- ✓ (correct choice) — Include owner role when stated
- ✓ (correct choice) — Include deadline when stated
- ✓ (correct choice) — Preserve one unresolved trade-off
- ✓ (correct choice) — Expect standup-ready output without invented dependencies
- ✗ (distractor) — Resolve contradictions automatically
- ✗ (distractor) — Infer owners for missing roles
- ✗ (distractor) — Replace risk with positive framing
- ✗ (distractor) — Add strategy recommendations
- ✗ (distractor) — Rewrite as narrative prose

**Coaching note (if selections are wrong)**

Plans fail when unresolved trade-offs are smoothed away. Define conflict carry-through and specificity together.

**Assembled prompt example**

Convert this conflicting narrative into up to four executable weekly actions with owner role/deadline where stated, preserving one unresolved trade-off and avoiding invented dependencies.

**Feedback when correct (after Check my answer)**

You kept the unresolved trade-off explicit - that is where you gain execution advantage.

**Polished prompt on result screen**

Turn this narrative into four standup-ready actions with stated owner role and deadlines, plus one explicit unresolved trade-off line. No invented dependencies.

#### Scenario 3: Prioritize Mixed-Urgency Tasks Before a Hard Friday Deadline
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

**Learn (variant tabs)**

##### What Made This Work

The difference is the ranking rule: prioritization depends on logic, not formatting.
- Objective defines impact logic
- Requirements enforce concise execution language
- Expectations make order immediately usable

##### Weak vs Strong Prompt

Weak prompt:
Prioritize these tasks

Strong prompt:
Turn these mixed-urgency tasks into an ordered list of up to five items. Prioritize by schedule impact and unblock sequence, not wording intensity. Keep each line concise and actionable, do not add tasks, and make output immediately usable in standup.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for high-pressure task prioritization.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Define priority as schedule impact + unblock sequence
- ✓ (correct choice) — Cap output to five or fewer tasks
- ✓ (correct choice) — Require concise actionable lines
- ✓ (correct choice) — Forbid adding new tasks
- ✓ (correct choice) — Expect standup-ready execution order
- ✗ (distractor) — Prioritize by emotional urgency words
- ✗ (distractor) — Add strategic options beyond scope
- ✗ (distractor) — Infer missing deadlines
- ✗ (distractor) — Average all priorities into buckets
- ✗ (distractor) — Expand into long rationale paragraphs

**Coaching note (if selections are wrong)**

Prioritization prompts need explicit ranking logic. Without it, AI sorts by language cues, not operational impact.

**Assembled prompt example**

Order these tasks into up to five standup-ready actions prioritized by schedule impact and unblock sequence only, with concise actionable wording and no added tasks.

**Feedback when correct (after Check my answer)**

You now control prioritization logic under pressure - that is an operational advantage.

**Polished prompt on result screen**

Rank these tasks into five or fewer actionable standup items using schedule impact and unblock sequence as the ordering rule. Do not add tasks.

### Lesson 3: Turn Information Into Schedules & Timelines

#### Scenario 1: Build a Chronological Day Plan With Dependency Timing
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

**Learn (variant tabs)**

##### What Made This Work

What matters here is execution logic: schedules need blocker sequencing, not timestamps alone.
- Objective enforces blocker-first sequencing
- Requirements preserve hard time anchors
- Expectations target run-ready output

##### Weak vs Strong Prompt

Weak prompt:
Create a daily schedule

Strong prompt:
Turn these notes into a chronological day plan that is executable, not just ordered. Preserve stated time anchors, put dependency-blocking tasks before dependent tasks where timing allows, keep line items concise, and do not invent additional work.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for dependency-aware day planning.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve all stated time anchors
- ✓ (correct choice) — Place blocker tasks before dependent tasks
- ✓ (correct choice) — Keep lines concise and actionable
- ✓ (correct choice) — Use only provided activities
- ✓ (correct choice) — Expect immediate team execution readiness
- ✗ (distractor) — Re-sequence by writing style
- ✗ (distractor) — Add optional stretch tasks
- ✗ (distractor) — Replace times with broad windows
- ✗ (distractor) — Expand each line with explanation
- ✗ (distractor) — Infer missing tasks from context

**Coaching note (if selections are wrong)**

Daily plans fail when prompts optimize formatting over dependency logic. Define both explicitly.

**Assembled prompt example**

Create a concise day plan from these notes preserving exact time anchors and sequencing blocker tasks before dependent work, with no invented tasks.

**Feedback when correct (after Check my answer)**

You now build run-ready schedules - most people get a tidy timeline that breaks by midday.

**Polished prompt on result screen**

Build a concise execution-ready day plan from these notes with exact time anchors and blocker-first ordering. Use only provided tasks.

#### Scenario 2: Map Unordered Work Into a Weekly Plan With Deadline Risk
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

**Learn (variant tabs)**

##### What Made This Work

The difference is capacity realism: weekly plans need sequencing plus pressure-point signaling.
- Objective enforces feasible order under constraints
- Requirements prevent invented work and verbosity
- Expectations force pressure-point visibility

##### Weak vs Strong Prompt

Weak prompt:
Turn this into a weekly plan

Strong prompt:
Convert these unordered notes into a Monday-Friday plan based on feasible sequence under stated constraints. Keep daily lines concise, do not add tasks or dates, and explicitly surface where risk concentration is highest.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for risk-aware weekly planning.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Force Monday-Friday structure
- ✓ (correct choice) — Require sequencing based on stated constraints
- ✓ (correct choice) — Keep daily lines concise and factual
- ✓ (correct choice) — Forbid invented tasks or dates
- ✓ (correct choice) — Require explicit pressure-point visibility
- ✗ (distractor) — Distribute workload evenly for readability
- ✗ (distractor) — Add extra buffer days
- ✗ (distractor) — Shift dependencies to lower-stress days
- ✗ (distractor) — Add long explanations under each day
- ✗ (distractor) — Insert strategic options beyond scope

**Coaching note (if selections are wrong)**

Weekly planning prompts need realism constraints. Define sequence logic and risk visibility, not just calendar shape.

**Assembled prompt example**

Turn these notes into a concise Monday-Friday plan using feasible sequence under stated constraints, surfacing pressure points, with no invented tasks or dates.

**Feedback when correct (after Check my answer)**

You now force planning realism - this is where "pretty" weekly plans quietly fail.

**Polished prompt on result screen**

Create a concise Monday-Friday plan from these notes using feasible sequencing under stated constraints, with explicit pressure-point visibility and no invented tasks or dates.

#### Scenario 3: Convert Milestones Into a Decision-Safe Timeline
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

**Learn (variant tabs)**

##### What Made This Work

This is the trust lever: timeline quality depends on certainty controls.
- Objective includes confidence clarity
- Requirements prevent false commitment language
- Expectations keep coordination safe

##### Weak vs Strong Prompt

Weak prompt:
Create a timeline from these notes

Strong prompt:
Convert these milestone notes into a concise chronological timeline of four to five bullets. Preserve stated dates, mark conditional checkpoints explicitly, and keep each line short. Do not convert uncertainty into fixed commitments.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for coordination-safe milestone timelines.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require chronological bullet timeline
- ✓ (correct choice) — Preserve stated dates exactly
- ✓ (correct choice) — Mark conditional checkpoints explicitly
- ✓ (correct choice) — Keep lines concise
- ✓ (correct choice) — Expect coordination-safe output without false commitments
- ✗ (distractor) — Convert uncertain dates to firm promises
- ✗ (distractor) — Insert extra milestones for completeness
- ✗ (distractor) — Reorder milestones for readability
- ✗ (distractor) — Expand each point into prose
- ✗ (distractor) — Add causal speculation

**Coaching note (if selections are wrong)**

Timeline prompts must control certainty, not just sequence. Preserve conditionality explicitly.

**Assembled prompt example**

Turn these milestone notes into four or five concise chronological bullets preserving stated dates and explicit conditional checkpoints.

**Feedback when correct (after Check my answer)**

You protected timeline trust by preserving uncertainty - that is the coordination advantage.

**Polished prompt on result screen**

Produce a concise four-to-five-bullet chronology from these milestones, preserving stated dates and explicit conditionality only.

### Lesson 4: Turn Information Into Structured Formats

#### Scenario 1: Convert Cross-Team Notes Into a Decision Table
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

**Learn (variant tabs)**

##### What Made This Work

The difference is visibility design: table structure tells leaders what to notice.
- Objective defines leadership-visible fields
- Requirements preserve unknowns and ban invention
- Expectations produce scan-ready decision support

##### Weak vs Strong Prompt

Weak prompt:
Make this a table

Strong prompt:
Turn these notes into a concise table with columns Workstream, Owner, Deadline, and Risk Flag. Use only stated information, keep unknown owner as [Owner TBD], and mark risk when timing is uncertain or tight. Do not invent owners, dates, or status.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for leadership decision tables.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Specify decision-relevant columns including risk
- ✓ (correct choice) — Preserve owner and deadline clarity per workstream
- ✓ (correct choice) — Keep rows concise and factual
- ✓ (correct choice) — Use [Owner TBD] for unknown ownership
- ✓ (correct choice) — Expect leadership scan-ready output
- ✗ (distractor) — Infer missing owners from context
- ✗ (distractor) — Normalize all risk flags to Medium
- ✗ (distractor) — Add confidence percentages
- ✗ (distractor) — Append paragraph commentary
- ✗ (distractor) — Add suggested new workstreams

**Coaching note (if selections are wrong)**

Decision tables need field discipline. Define what must be visible and what must never be invented.

**Assembled prompt example**

Convert these notes into a concise Workstream/Owner/Deadline/Risk table, preserving unknowns as [Owner TBD] and avoiding invented values.

**Feedback when correct (after Check my answer)**

You now design for decision visibility - most tables look clean and hide the risk.

**Polished prompt on result screen**

Create a concise decision table from these notes with Workstream, Owner, Deadline, and Risk Flag. Preserve unknown owner as [Owner TBD] and avoid invented data.

#### Scenario 2: Synthesize Contradictory Feedback Into Actionable Themes
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

**Learn (variant tabs)**

##### What Made This Work

This is the control point: synthesis quality depends on contradiction handling.
- Objective balances grouping and tension preservation
- Requirements block invented consensus
- Expectations keep decision utility

##### Weak vs Strong Prompt

Weak prompt:
Group this into themes

Strong prompt:
Group this feedback into three to five themes for leadership discussion. Merge overlap, but preserve one explicit contradiction where stakeholder priorities conflict. Keep theme labels concise, avoid invented consensus language, and make output directly usable for decision review.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for contradiction-aware feedback synthesis.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Cap output to three to five themes
- ✓ (correct choice) — Merge overlap while preserving one key contradiction
- ✓ (correct choice) — Use concise factual theme labels
- ✓ (correct choice) — Forbid invented consensus language
- ✓ (correct choice) — Expect decision-discussion readiness
- ✗ (distractor) — Remove all contradictions
- ✗ (distractor) — Add inferred themes
- ✗ (distractor) — Rewrite themes as long paragraphs
- ✗ (distractor) — Blend conflicts into neutral average
- ✗ (distractor) — Add recommendations outside source

**Coaching note (if selections are wrong)**

Theme synthesis should compress overlap, not conflict. Define contradiction handling or the model erases decision signal.

**Assembled prompt example**

Synthesize this feedback into three to five concise themes, preserving one explicit contradiction and avoiding invented consensus language.

**Feedback when correct (after Check my answer)**

You now preserve decision tension instead of smoothing it away - that is the advantage.

**Polished prompt on result screen**

Group these comments into three to five concise themes while preserving one explicit contradiction and avoiding invented consensus language.

#### Scenario 3: Transform Unordered Instructions Into an Auditable Workflow
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

**Learn (variant tabs)**

##### What Made This Work

The difference is governance visibility: workflow quality needs dependency order plus checkpoints.
- Objective targets auditable sequence
- Requirements block invented transitions
- Expectations target operating-doc readiness

##### Weak vs Strong Prompt

Weak prompt:
Turn this into a workflow

Strong prompt:
Convert these unordered instructions into an auditable workflow outline with up to four main steps and optional sub-steps. Order steps by execution dependency, include explicit checkpoint lines where source indicates review/approval, and do not invent transitions or actions.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong prompt for auditable workflow conversion.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Cap workflow to a small step count
- ✓ (correct choice) — Order by execution dependency
- ✓ (correct choice) — Include explicit review/approval checkpoints
- ✓ (correct choice) — Allow optional sub-steps for clarity
- ✓ (correct choice) — Expect operating-doc-ready auditable output
- ✗ (distractor) — Insert likely transitions for flow
- ✗ (distractor) — Remove checkpoints to keep it short
- ✗ (distractor) — Reorder for readability only
- ✗ (distractor) — Add rationale paragraphs
- ✗ (distractor) — Generalize into principles

**Coaching note (if selections are wrong)**

Workflow prompts need dependency order and checkpoint visibility together. Missing either one reduces audit safety.

**Assembled prompt example**

Convert these unordered instructions into up to four dependency-ordered workflow steps with optional sub-steps and explicit review/approval checkpoints, with no invented transitions.

**Feedback when correct (after Check my answer)**

You preserved auditability - this is where most workflow prompts quietly become unsafe.

**Polished prompt on result screen**

Build an auditable workflow from these instructions using up to four dependency-ordered steps, optional sub-steps, and explicit checkpoints only.

### Lesson 5: Create Reusable Prompts for Daily Work

#### Scenario 1: Design a Reusable Daily Update Prompt for Leadership Visibility
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

**Learn (variant tabs)**

##### What Made This Work

The control point is stability controls: reusable prompts need more than placeholders.
- Objective locks recurring signal categories
- Requirements lock tone and anti-invention
- Expectations lock daily consistency

##### Weak vs Strong Prompt

Weak prompt:
Create a daily summary template

Strong prompt:
Create a reusable prompt that converts bullet notes into a one-paragraph leadership update with fixed sections for progress, active risks, and next-day actions. Keep tone factual and concise, forbid invented metrics or confidence claims, and include a [Notes] placeholder for repeated use.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong reusable daily update prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Define fixed sections for progress, risk, and next actions
- ✓ (correct choice) — Require one paragraph output
- ✓ (correct choice) — Include reusable [Notes] placeholder
- ✓ (correct choice) — Forbid invented metrics or confidence claims
- ✓ (correct choice) — Expect stable copy/paste-ready structure
- ✗ (distractor) — Allow style shifts by note tone
- ✗ (distractor) — Add default motivational language
- ✗ (distractor) — Include optional strategy recommendations
- ✗ (distractor) — Expand on complex days by default
- ✗ (distractor) — Let model choose sections dynamically

**Coaching note (if selections are wrong)**

Reusable update prompts need consistency controls plus anti-invention rules, or quality drifts exactly when pressure rises.

**Assembled prompt example**

Create a reusable one-paragraph leadership update prompt with [Notes] placeholder and fixed sections for progress, active risks, and next-day actions. Keep factual and ban invented metrics.

**Feedback when correct (after Check my answer)**

You now have repeatable leadership-quality updates - not just a template that works on easy days.

**Polished prompt on result screen**

Build a reusable one-paragraph leadership update prompt with [Notes], fixed progress/risk/next-action sections, factual tone, and no invented metrics.

#### Scenario 2: Create a Reusable Prompt for Risk-Sensitive Stakeholder Emails
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

**Learn (variant tabs)**

##### What Made This Work

This is the control point: reusable email prompts need commitment guardrails.
- Objective targets clarity plus commitment discipline
- Requirements lock structure and anti-invention rules
- Expectations lock stable send-ready quality

##### Weak vs Strong Prompt

Weak prompt:
Create an email template from notes

Strong prompt:
Create a reusable prompt that turns rough notes into a stakeholder email in two or three short paragraphs. Include placeholders for audience, purpose, key facts, and next step, require professional tone, and explicitly forbid invented commitments, approvals, or dates not in the notes. Output must be send-ready.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong reusable prompt for risk-sensitive stakeholder emails.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Include placeholders for audience, purpose, facts, and next step
- ✓ (correct choice) — Require two or three short paragraphs
- ✓ (correct choice) — Forbid invented commitments, approvals, or dates
- ✓ (correct choice) — Require professional calm tone
- ✓ (correct choice) — Expect stable send-ready quality across inputs
- ✗ (distractor) — Infer likely commitments for confidence
- ✗ (distractor) — Allow informal tone shifts
- ✗ (distractor) — Expand to four paragraphs when complex
- ✗ (distractor) — Insert strategic recommendations
- ✗ (distractor) — Add anticipated dates when missing

**Coaching note (if selections are wrong)**

Reusable stakeholder prompts need structure and commitment guardrails together. Without both, risk control varies by day.

**Assembled prompt example**

Create a reusable stakeholder email prompt with placeholders for audience, purpose, key facts, and next step, 2-3 short paragraphs, and strict no-invented-commitment rules.

**Feedback when correct (after Check my answer)**

You now control commitment boundaries in reusable form - that is real stakeholder leverage.

**Polished prompt on result screen**

Build a reusable stakeholder email prompt with structured placeholders, 2-3 short paragraph limit, professional tone, and strict no-invented-commitment rules.

#### Scenario 3: Create a Reusable Task Update Prompt for Escalation Readiness
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

**Learn (variant tabs)**

##### What Made This Work

The difference is escalation fields: short templates still need risk discipline.
- Objective includes status plus risk signal
- Requirements lock concise neutral format
- Expectations keep forwarding safety

##### Weak vs Strong Prompt

Weak prompt:
Create a quick task template

Strong prompt:
Create a reusable one- or two-sentence task update prompt with placeholders for task name, current status, risk level, and next action. Keep tone neutral and professional, forbid invented progress claims, and make output suitable for forwarding to leadership without reformatting.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a strong reusable prompt for escalation-ready task updates.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Cap output to one or two sentences
- ✓ (correct choice) — Require placeholders for task/status/risk/next action
- ✓ (correct choice) — Use neutral professional tone
- ✓ (correct choice) — Forbid invented progress or completion claims
- ✓ (correct choice) — Expect forward-safe output for leadership visibility
- ✗ (distractor) — Drop risk field to keep it lighter
- ✗ (distractor) — Add motivational language by default
- ✗ (distractor) — Include optional sentiment field
- ✗ (distractor) — Expand into paragraph format
- ✗ (distractor) — Infer next actions when missing

**Coaching note (if selections are wrong)**

Escalation-ready templates require risk field discipline and anti-invention constraints even when output is very short.

**Assembled prompt example**

Create a reusable one- or two-sentence task update prompt with placeholders for task, status, risk, and next action; keep neutral and forbid invented progress claims.

**Feedback when correct (after Check my answer)**

You now have a compact update that scales upward without cleanup - most templates break at escalation.

**Polished prompt on result screen**

Build a reusable 1-2 sentence task update prompt with placeholders for task, status, risk, and next action. Keep neutral, concise, and forward-safe.

---

## Track 3 — Spreadsheets & Data

*Source:* `lib/data/tracks/track3_spreadsheets_data.dart`

### Lesson 1: Control Spreadsheet Summaries (Decision-Ready)

#### Scenario 1: Extract a Leadership-Ready Weekly Snapshot From a Raw Sheet
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

**Learn (variant tabs)**

##### What Made This Work

The control point is auditability: you told the model what to compute and what not to infer.
- Objective focuses on computation, not commentary
- Requirements lock columns, formatting, and missing-data handling
- Expectations force paste-ready output you can defend

##### Weak vs Strong Prompt

Weak prompt:
Summarise this sheet by region

Strong prompt:
Create a leadership-ready summary table from this sheet with exactly these columns: Region, Total Sales, Average Sale. Compute totals and averages from the provided values only. Do not add interpretation, do not invent missing values, and if any region data is incomplete, mark it as [Incomplete]. Keep formatting paste-ready for a leadership update.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a decision-ready, auditable spreadsheet summary prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Specify exact output columns and order
- ✓ (correct choice) — Require totals and averages computed from provided values only
- ✓ (correct choice) — Forbid interpretation or performance commentary
- ✓ (correct choice) — Define how to handle missing or incomplete data
- ✓ (correct choice) — Expect paste-ready formatting for a leadership update
- ✗ (distractor) — Ask for insights and recommendations by default
- ✗ (distractor) — Allow the model to "fill gaps" to make the table complete
- ✗ (distractor) — Add a narrative paragraph explaining why regions performed
- ✗ (distractor) — Change region names for readability
- ✗ (distractor) — Include confidence percentages for each region

**Coaching note (if selections are wrong)**

Most data summaries fail because the prompt allows inference. Lock computation scope, missing-data rules, and output shape before asking for polish.

**Assembled prompt example**

Create a paste-ready table with columns Region, Total Sales, Average Sale computed from provided values only. Do not add interpretation; mark incomplete regions as [Incomplete].

**Feedback when correct (after Check my answer)**

You now control auditability - this is how you ship numbers leadership can trust.

**Polished prompt on result screen**

Build a leadership-ready regional summary table with exactly: Region, Total Sales, Average Sale. Compute from provided values only; do not interpret; mark incomplete regions as [Incomplete]; keep formatting paste-ready.

#### Scenario 2: Reconcile Messy Inputs Into One Clean Summary Without Silent Assumptions
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

**Learn (variant tabs)**

##### What Made This Work

This is the difference between tidy and trustworthy: you required anomaly reporting and banned silent cleanup.
- Objective targets safe aggregation
- Requirements define dedupe and missing-data rules
- Expectations force a review list so risk doesn't disappear

##### Weak vs Strong Prompt

Weak prompt:
Summarise this export by region

Strong prompt:
Create a regional summary table (Region, Total Sales, Average Sale) from this messy export using only provided values. Do not guess missing values or drop rows silently. If duplicates exist, combine them by exact region name match only. If blanks or mixed currency symbols appear, keep the row but mark it as [Needs review] in an Anomalies list after the table.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a safe, anomaly-aware summary prompt for messy spreadsheet exports.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Ban guessing or inventing missing values
- ✓ (correct choice) — Require no silent row drops
- ✓ (correct choice) — Define duplicate-handling rules explicitly
- ✓ (correct choice) — Require an anomalies/review list after the summary
- ✓ (correct choice) — Use only provided values for calculations
- ✗ (distractor) — Auto-correct region labels to a standard naming scheme
- ✗ (distractor) — Merge across currencies to get one clean total
- ✗ (distractor) — Drop blank rows without mentioning them
- ✗ (distractor) — Add explanations for why the data is messy
- ✗ (distractor) — Provide recommendations based on the numbers

**Coaching note (if selections are wrong)**

In messy data, the win is not "clean output" - it's controlled cleanup with visible exceptions. Force anomaly reporting and ban silent drops.

**Assembled prompt example**

Summarise by region into a table using provided values only. Do not guess missing values or drop rows silently; define dedupe rules; include an anomalies list after the table.

**Feedback when correct (after Check my answer)**

You now control safe aggregation - the anomalies list is what keeps your summary credible.

**Polished prompt on result screen**

Create a regional summary table (Region, Total Sales, Average Sale) from this export using provided values only. No guessing, no silent drops, explicit duplicate/blank handling, and an Anomalies list after the table.

#### Scenario 3: Summarise Sensitive Performance Data Without Overstating Conclusions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is claim discipline: you forced a split between facts and what needs confirmation.
- Objective targets decision-safe signal
- Requirements ban invented causes and enforce sectioning
- Expectations make it forward-safe without overselling

##### Weak vs Strong Prompt

Weak prompt:
Give me insights from this data

Strong prompt:
Write a forward-safe performance snapshot from these numbers. Use two sections: Observations (facts only) and Open Questions (what we would need to confirm before acting). Keep tone controlled and professional. Do not invent causes, do not claim statistical significance, and keep it paste-ready for a leadership thread.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this decision-safe, tone-controlled performance summary prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require separate sections for facts vs. open questions
- ✓ (correct choice) — Forbid invented causes or speculation
- ✓ (correct choice) — Require controlled, professional tone
- ✓ (correct choice) — Expect forward-safe, paste-ready formatting
- ✓ (correct choice) — Use only the provided numbers as evidence
- ✗ (distractor) — Ask the model to explain root causes for the trend
- ✗ (distractor) — Add confidence scores for each observation
- ✗ (distractor) — Assume missing context and fill it in
- ✗ (distractor) — Use persuasive language to drive urgency
- ✗ (distractor) — Recommend interventions based on limited data

**Coaching note (if selections are wrong)**

Decision-safe summaries require claim discipline. Force structure (facts vs. questions), ban invented causes, and keep tone controlled.

**Assembled prompt example**

Write a forward-safe snapshot with Observations (facts only) and Open Questions. Use only provided numbers, avoid invented causes, keep tone controlled, and format paste-ready.

**Feedback when correct (after Check my answer)**

You now control claim discipline - this is how you communicate risk without losing credibility.

**Polished prompt on result screen**

Create a paste-ready performance snapshot with Observations (facts only) and Open Questions. Use only provided values; no invented causes; controlled professional tone; decision-safe wording.

### Lesson 2: Find Exceptions and High-Leverage Rows

#### Scenario 1: Extract the Top Values With a Tie-Break Rule
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

**Learn (variant tabs)**

##### What Made This Work

The control point is ordering rules: rankings fail when ties are undefined.
- Objective targets extraction, not explanation
- Requirements define order, tie behavior, and values-only output
- Expectations make it paste-ready for prioritization

##### Weak vs Strong Prompt

Weak prompt:
What are the top values?

Strong prompt:
From this list, return the top three values in descending order. If there is a tie, include both tied values and label them as a tie. Show values only, no commentary, and keep output paste-ready.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a reliable top-values extraction prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Specify descending order
- ✓ (correct choice) — Specify how to handle ties
- ✓ (correct choice) — Require exactly the top three values
- ✓ (correct choice) — Forbid extra commentary
- ✓ (correct choice) — Expect paste-ready formatting
- ✗ (distractor) — Explain why the values are high
- ✗ (distractor) — Sort in a visually pleasing order
- ✗ (distractor) — Add predictions based on the top values
- ✗ (distractor) — Change the list to remove outliers
- ✗ (distractor) — Recommend tools to analyze further

**Coaching note (if selections are wrong)**

Extraction prompts fail when ranking rules are underspecified. Define ordering, tie behavior, and output scope.

**Assembled prompt example**

Return the top three values in descending order with an explicit tie rule. Values only, paste-ready.

**Feedback when correct (after Check my answer)**

You now control ranking reliability - this is how you avoid escalating the wrong item.

**Polished prompt on result screen**

Extract the top three values from this list in descending order. If ties occur, include tied values and label as a tie. Output values only, paste-ready, no commentary.

#### Scenario 2: Find Max/Min in Messy Data Without Smuggling In Extra Metrics
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

**Learn (variant tabs)**

##### What Made This Work

The control point is exclusion rules: max/min is easy until the column isn't clean.
- Objective targets max/min only
- Requirements define numeric-only and force exclusions visibility
- Expectations keep output minimal and defensible

##### Weak vs Strong Prompt

Weak prompt:
What are the max and min?

Strong prompt:
From this column, return only the Maximum and Minimum numeric values. Ignore blanks and non-numeric cells. After the two-line summary, add one line listing how many cells were excluded and why. Do not compute any other metrics.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a safe max/min prompt for messy columns.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Specify numeric-only inclusion
- ✓ (correct choice) — Ignore blanks and non-numeric cells
- ✓ (correct choice) — Require an exclusions count/reason line
- ✓ (correct choice) — Limit output to max/min only
- ✓ (correct choice) — Keep output paste-ready
- ✗ (distractor) — Compute range and standard deviation
- ✗ (distractor) — Interpret why min/max occurred
- ✗ (distractor) — Fill blanks with averages
- ✗ (distractor) — Convert text to numbers without noting it
- ✗ (distractor) — Add recommendations based on min/max

**Coaching note (if selections are wrong)**

In messy columns, max/min is only trustworthy if you define what counts as numeric and require exclusion visibility.

**Assembled prompt example**

Return only Maximum and Minimum numeric values; ignore blanks/non-numeric; include an exclusions note; no other metrics.

**Feedback when correct (after Check my answer)**

You now produce defensible max/min - the exclusions note is what keeps it credible.

**Polished prompt on result screen**

Compute Maximum and Minimum numeric values from this column. Ignore blanks and non-numeric cells. Output two lines for max/min plus one exclusions line. No other metrics.

#### Scenario 3: Return Top Values by Category Without Creating False Comparability
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

**Learn (variant tabs)**

##### What Made This Work

The control point is coverage honesty: category tables mislead when missing data is hidden.
- Objective targets per-category maxima only
- Requirements preserve names and define missing coverage handling
- Expectations add a caveat so leadership doesn't over-read the table

##### Weak vs Strong Prompt

Weak prompt:
Show the highest value by category

Strong prompt:
Create a two-column table (Category, Highest Value) with the maximum numeric value per category using only provided data. Preserve category names exactly. If any category has missing/blank values, still include it and mark Highest Value as [Insufficient data]. After the table, add one line noting whether coverage gaps exist.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a decision-safe max-per-category prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require a two-column Category/Highest Value table
- ✓ (correct choice) — Use only provided data
- ✓ (correct choice) — Preserve category names exactly
- ✓ (correct choice) — Define how to handle missing/blank category values
- ✓ (correct choice) — Require a one-line coverage caveat after the table
- ✗ (distractor) — Rank categories by performance
- ✗ (distractor) — Add interpretations about why categories differ
- ✗ (distractor) — Drop categories with missing values
- ✗ (distractor) — Normalize values across categories automatically
- ✗ (distractor) — Recommend next steps based on the winners

**Coaching note (if selections are wrong)**

Category maxima are dangerous when coverage gaps are hidden. Force missing-data handling plus a coverage note to keep leadership from over-reading the table.

**Assembled prompt example**

Make a Category/Highest Value table using only provided rows, preserve names, mark missing coverage as [Insufficient data], and add a one-line coverage note.

**Feedback when correct (after Check my answer)**

You now control comparability risk - that coverage line is what keeps the table decision-safe.

**Polished prompt on result screen**

Build a two-column table (Category, Highest Value) with maxima per category from provided data only. Preserve category names; handle missing coverage explicitly; add a one-line coverage caveat.

### Lesson 3: Analyze Data Without Making Things Up

#### Scenario 1: Turn Monthly Numbers Into Observations You Can Defend
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

**Learn (variant tabs)**

##### What Made This Work

The control point is evidence boundaries: you forced observation, not explanation.
- Objective targets trend + anomaly + stability
- Requirements lock format and ban causes/predictions
- Expectations keep it paste-ready for leadership

##### Weak vs Strong Prompt

Weak prompt:
Give me insights from these numbers

Strong prompt:
From these monthly values, write 3-5 paste-ready bullets with: (1) the overall trend you can see, (2) one notable dip/spike, and (3) one stability signal if present. Use only the provided numbers as evidence. Do not invent causes, recommendations, or predictions.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a defensible observations prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require a fixed bullet count (3-5)
- ✓ (correct choice) — Require trend + one anomaly + one stability signal
- ✓ (correct choice) — Use only provided numbers as evidence
- ✓ (correct choice) — Forbid invented causes/predictions
- ✓ (correct choice) — Expect paste-ready wording
- ✗ (distractor) — Explain why February dipped
- ✗ (distractor) — Recommend next actions
- ✗ (distractor) — Rewrite all numbers as a paragraph
- ✗ (distractor) — Add confidence ratings for each insight
- ✗ (distractor) — Make the tone persuasive and urgent

**Coaching note (if selections are wrong)**

The strongest analysis prompt is often a constraint prompt. Force what counts as evidence and ban invented explanations.

**Assembled prompt example**

Write 3-5 evidence-only observation bullets covering trend, one anomaly, and one stability signal. No causes, no predictions.

**Feedback when correct (after Check my answer)**

You now control evidence boundaries - that's how you produce insights you can defend.

**Polished prompt on result screen**

Produce 3-5 paste-ready observation bullets from these monthly values covering the overall trend, one notable dip/spike, and one stability signal (if present). Use numbers only; no invented causes, recommendations, or predictions.

#### Scenario 2: Compare Two Periods With Clear Wins/Losses (No Cause Guessing)
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

**Learn (variant tabs)**

##### What Made This Work

The control point is comparison scaffolding: you forced Improved/Declined/Stable and banned causes.
- Objective targets change detection
- Requirements enforce evidence-only grouped output
- Expectations make it agenda-ready

##### Weak vs Strong Prompt

Weak prompt:
Compare these two periods

Strong prompt:
Compare Period 1 vs Period 2 and return 3-5 paste-ready bullets grouped as Improved, Declined, Stable. Use only the provided numbers. Do not invent causes. Keep wording specific to what changed.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a clean, evidence-only period comparison prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require Improved/Declined/Stable grouping
- ✓ (correct choice) — Use only provided numbers
- ✓ (correct choice) — Forbid invented causes
- ✓ (correct choice) — Keep output to 3-5 bullets
- ✓ (correct choice) — Expect paste-ready phrasing for an agenda
- ✗ (distractor) — Predict next period performance
- ✗ (distractor) — Explain root causes for the declines
- ✗ (distractor) — Add recommendations automatically
- ✗ (distractor) — Rewrite the numbers as a narrative
- ✗ (distractor) — Include emotional tone to motivate the team

**Coaching note (if selections are wrong)**

Comparisons get risky when prompts allow causes. Force grouped change signals and keep language anchored to what the numbers show.

**Assembled prompt example**

Compare Period 1 vs Period 2 with 3-5 grouped bullets: Improved/Declined/Stable. Evidence-only; no causes; paste-ready.

**Feedback when correct (after Check my answer)**

You now control comparison clarity - the grouping is what makes it decision-useful without speculation.

**Polished prompt on result screen**

Produce 3-5 paste-ready bullets comparing Period 1 vs Period 2 grouped as Improved, Declined, Stable. Use only provided numbers; no invented causes; focus on what changed.

#### Scenario 3: Summarize KPIs With Controlled Tone (No Shaming, No Spin)
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

**Learn (variant tabs)**

##### What Made This Work

The control point is tone constraints plus scope: you forced honest structure without speculation.
- Objective targets strength + risk + notable
- Requirements lock bullet count, tone, and evidence-only language
- Expectations keep it forward-safe across teams

##### Weak vs Strong Prompt

Weak prompt:
Summarise these KPIs

Strong prompt:
Write a cross-team KPI snapshot in 3-5 bullets. Include one strength, one risk/weakness, and one notable value. Keep tone controlled and professional (no blame, no spin). Use only the provided KPI values; do not invent causes or recommendations.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a controlled-tone, evidence-only KPI snapshot prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require 3-5 bullets
- ✓ (correct choice) — Require one strength, one risk, and one notable value
- ✓ (correct choice) — Specify controlled professional tone (no blame/spin)
- ✓ (correct choice) — Use only provided KPI values
- ✓ (correct choice) — Forbid invented causes or recommendations
- ✗ (distractor) — Use motivational language to inspire the team
- ✗ (distractor) — Explain why resolution time is low
- ✗ (distractor) — Add predictions for next quarter
- ✗ (distractor) — Turn it into a long narrative summary
- ✗ (distractor) — Make it persuasive and urgent

**Coaching note (if selections are wrong)**

Tone is a requirement, not a nice-to-have. Define structure (strength/risk/notable), keep bullets tight, and ban invented causes to avoid politicized reporting.

**Assembled prompt example**

Write a 3-5 bullet KPI snapshot with one strength, one risk, one notable value. Controlled professional tone; use provided values only; no causes or recommendations.

**Feedback when correct (after Check my answer)**

You now control cross-team tone and truth - that's how you communicate risk without creating defensiveness.

**Polished prompt on result screen**

Create a 3-5 bullet cross-team KPI snapshot including one strength, one risk, and one notable value. Keep tone controlled and professional. Use only provided KPI values; no invented causes or recommendations.

### Lesson 4: Make Charts and Narratives Decision-Safe

#### Scenario 1: Choose a Chart Type Based on the Decision, Not Preference
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

**Learn (variant tabs)**

##### What Made This Work

The control point is decision framing: chart advice is only useful when it's tied to what someone must decide.
- Objective targets trend reading
- Requirements force one option, one rationale, one caveat
- Expectations keep it slide-ready and non-fluffy

##### Weak vs Strong Prompt

Weak prompt:
What chart should I use?

Strong prompt:
Recommend one chart type to show the trend in these monthly values for a leadership slide. In one sentence, explain why it best supports a trend-reading decision. Add one short caveat about what the chart will not show well. Do not add design advice or extra chart options.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a decision-aligned chart recommendation prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Provide decision context (trend-reading for leadership)
- ✓ (correct choice) — Require exactly one chart recommendation
- ✓ (correct choice) — Require a one-sentence rationale
- ✓ (correct choice) — Require a short caveat
- ✓ (correct choice) — Ban design advice and extra options
- ✗ (distractor) — Suggest three alternative charts to choose from
- ✗ (distractor) — Add colors and styling recommendations
- ✗ (distractor) — Explain the history of line charts
- ✗ (distractor) — Predict the next month based on the trend
- ✗ (distractor) — Add recommendations for improving the numbers

**Coaching note (if selections are wrong)**

Chart prompts feel generic unless you anchor them to the decision and force a caveat. One option, one rationale, one limitation keeps it credible.

**Assembled prompt example**

Recommend one chart type for a leadership trend slide with one-sentence rationale and one caveat. No design advice, no extra options.

**Feedback when correct (after Check my answer)**

You now control chart advice quality - the caveat is what makes it credible in real meetings.

**Polished prompt on result screen**

Choose one chart type to show the trend in these monthly values for a leadership slide. Give one-sentence rationale tied to the decision and one short caveat. No design tips, no extra chart options.

#### Scenario 2: Produce Chart-Ready Labels and Series Without Reformatting Mistakes
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

**Learn (variant tabs)**

##### What Made This Work

The control point is alignment: charts break when labels and series get out of sync.
- Objective targets extraction, not cleanup
- Requirements preserve order and exact labels
- Expectations deliver paste-ready blocks

##### Weak vs Strong Prompt

Weak prompt:
Make this chart-ready

Strong prompt:
Extract chart-ready inputs from this list as two blocks: Labels and Values. Preserve the original row order and preserve label text exactly. Do not add commentary, do not reorder, and do not change numbers.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a reliable chart-prep extraction prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Output separate Labels and Values blocks
- ✓ (correct choice) — Preserve original row order
- ✓ (correct choice) — Preserve label text exactly
- ✓ (correct choice) — Do not change numbers
- ✓ (correct choice) — Ban commentary and extra suggestions
- ✗ (distractor) — Alphabetize labels for readability
- ✗ (distractor) — Standardize labels to shorter names
- ✗ (distractor) — Add a suggested chart type
- ✗ (distractor) — Round values aggressively to simplify
- ✗ (distractor) — Reorder values from highest to lowest

**Coaching note (if selections are wrong)**

Chart prep is mostly about alignment discipline. Separate blocks, preserve order, preserve labels, and ban reformatting that changes meaning.

**Assembled prompt example**

Extract Labels and Values blocks preserving original order and exact label text. No number changes, no commentary.

**Feedback when correct (after Check my answer)**

You now control chart accuracy - alignment rules are what prevent silent chart errors.

**Polished prompt on result screen**

Create two paste-ready blocks: Labels and Values. Preserve original row order and exact label text; do not change numbers; no commentary.

#### Scenario 3: Write a Chart Caption That Signals Uncertainty Without Undermining Confidence
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

**Learn (variant tabs)**

##### What Made This Work

The control point is confident honesty: you required trend + caveat without inviting causes.
- Objective targets pattern + limitation
- Requirements lock 1-2 sentences and evidence-only language
- Expectations keep it slide-ready and credible

##### Weak vs Strong Prompt

Weak prompt:
Write a caption for this chart

Strong prompt:
Write a 1-2 sentence caption for this chart. State the visible trend based on provided values only, and add one short caveat about what the chart does not confirm. Do not invent causes or recommendations.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a slide-ready, decision-safe chart caption prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Limit caption to 1-2 sentences
- ✓ (correct choice) — Require trend statement based on provided values only
- ✓ (correct choice) — Require one short caveat/limitation clause
- ✓ (correct choice) — Forbid invented causes or recommendations
- ✓ (correct choice) — Expect slide-ready wording
- ✗ (distractor) — Explain why the trend happened
- ✗ (distractor) — Add motivational language
- ✗ (distractor) — Include multiple caveats and disclaimers
- ✗ (distractor) — Add design tips for the chart
- ✗ (distractor) — Predict future values

**Coaching note (if selections are wrong)**

Decision-safe captions require two things: a visible pattern and a controlled limitation. Keep it short, evidence-only, and ban causes.

**Assembled prompt example**

Write a 1-2 sentence caption stating the visible trend and one caveat. Evidence-only; no causes; slide-ready.

**Feedback when correct (after Check my answer)**

You now write chart captions that hold up under scrutiny - that caveat is what keeps them credible.

**Polished prompt on result screen**

Create a 1-2 sentence chart caption stating the visible trend from provided values and one short caveat about what is not confirmed. No invented causes or recommendations; slide-ready.

### Lesson 5: Create Reusable Data Prompts (Automation-Ready)

#### Scenario 1: Design a Reusable Data Cleaning Prompt With Guardrails
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

**Learn (variant tabs)**

##### What Made This Work

The control point is guardrails: reusable cleaning prompts fail when they allow meaning edits.
- Objective targets normalization, not rewriting
- Requirements specify rules + do-not-change boundaries
- Expectations include a placeholder and audit reminder for repeatable use

##### Weak vs Strong Prompt

Weak prompt:
Make this data cleaner

Strong prompt:
Create a reusable prompt that cleans spreadsheet data with these rules: trim extra spaces in all text fields, normalize capitalization to Title Case (preserve acronyms), and replace missing/blank values with [Missing]. Do not change meaning or rewrite content. Include a [Data] placeholder and end with: "List any changes beyond formatting as [Needs review]."

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a safe, reusable data-cleaning prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Define exact cleaning rules (spaces/case/missing)
- ✓ (correct choice) — Forbid meaning changes or rewriting
- ✓ (correct choice) — Preserve numeric values explicitly
- ✓ (correct choice) — Include a reusable [Data] placeholder
- ✓ (correct choice) — Require an audit reminder or review flag
- ✗ (distractor) — Infer missing values when possible
- ✗ (distractor) — Standardize categories by renaming them
- ✗ (distractor) — Fix typos by rewriting text freely
- ✗ (distractor) — Add new columns for enrichment
- ✗ (distractor) — Recommend tools to clean the data

**Coaching note (if selections are wrong)**

Reusable cleaning prompts must protect meaning. Specify the rules, ban content edits, and add an audit reminder so changes don't become invisible.

**Assembled prompt example**

Create a reusable cleaning prompt for [Data] with trim spaces, Title Case (preserve acronyms), [Missing] for blanks, no meaning changes, and an audit reminder.

**Feedback when correct (after Check my answer)**

You now control repeatable data hygiene without corruption - that is operator-level reuse.

**Polished prompt on result screen**

Write a reusable prompt to clean [Data] by trimming spaces, normalizing capitalization to Title Case (preserve acronyms), and replacing blanks with [Missing]. Do not rewrite content or change numeric values. Include an audit reminder for anything beyond formatting.

#### Scenario 2: Create a Reusable Formatting Prompt That Doesn't Change Values
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

**Learn (variant tabs)**

##### What Made This Work

The control point is value integrity: formatting prompts fail when they allow rounding or date guessing.
- Objective targets display standardization only
- Requirements preserve decimals and force ambiguity flags
- Expectations make it reusable with placeholders

##### Weak vs Strong Prompt

Weak prompt:
Format this spreadsheet

Strong prompt:
Create a reusable prompt that standardizes formatting for [Data] without changing values: numbers with thousand separators (preserve decimals), dates to YYYY-MM-DD (flag ambiguous dates like 03/04/2026 as [Ambiguous]), and currency with a single specified symbol. Do not round, do not infer missing dates, and include a [Currency] placeholder.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a safe, reusable formatting prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve numeric values and decimals (no rounding)
- ✓ (correct choice) — Standardize dates to YYYY-MM-DD
- ✓ (correct choice) — Flag ambiguous dates instead of guessing
- ✓ (correct choice) — Use a consistent currency symbol via placeholder
- ✓ (correct choice) — State display-only; values unchanged
- ✗ (distractor) — Convert currencies to a common base
- ✗ (distractor) — Round numbers to make them cleaner
- ✗ (distractor) — Assume US date format for all ambiguous dates
- ✗ (distractor) — Infer missing dates from context
- ✗ (distractor) — Add commentary explaining the data

**Coaching note (if selections are wrong)**

Safe formatting requires explicit integrity rules: no rounding, no date guessing, and ambiguity flags. Otherwise you silently change meaning.

**Assembled prompt example**

Create a reusable formatting prompt for [Data] that standardizes number separators, dates (YYYY-MM-DD with ambiguity flags), and currency symbol without changing values.

**Feedback when correct (after Check my answer)**

You now control report integrity - the ambiguity flag is what keeps formatting from becoming fiction.

**Polished prompt on result screen**

Write a reusable prompt to format [Data] for reports: thousand separators with preserved decimals, dates to YYYY-MM-DD with [Ambiguous] flags, and a consistent [Currency] symbol. Display-only; no rounding; no guessing.

#### Scenario 3: Define an Automation Workflow That Surfaces Risk Instead of Hiding It
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

**Learn (variant tabs)**

##### What Made This Work

The control point is auditability: automation is dangerous when exclusions disappear.
- Objective includes sort/filter/summarize plus visibility
- Requirements force explicit rules and ban non-summary edits
- Expectations add an audit summary so you can trust the output

##### Weak vs Strong Prompt

Weak prompt:
Make an automation workflow for this sheet

Strong prompt:
Create a reusable automation workflow for [Data] with three steps: (1) sort by a specified column, (2) filter out rows matching an explicit exclusion rule, and (3) add a summary row with totals or averages for specified columns. Require an Audit Summary after the workflow describing what was excluded (count + rule) and what was summarized. Do not change any non-summary values.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make this a safe, auditable spreadsheet automation workflow prompt.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Define explicit sort inputs via placeholders
- ✓ (correct choice) — Define explicit filter/exclusion rule
- ✓ (correct choice) — Restrict edits to summary row only
- ✓ (correct choice) — Require an Audit Summary describing exclusions and summaries
- ✓ (correct choice) — Make it reusable with [Data] and rule placeholders
- ✗ (distractor) — Filter out anything that looks unusual automatically
- ✗ (distractor) — Remove rows but do not mention them
- ✗ (distractor) — Add new columns to enrich the data
- ✗ (distractor) — Rewrite values to make them consistent
- ✗ (distractor) — Recommend tools instead of providing steps

**Coaching note (if selections are wrong)**

Reusable automation prompts should include an audit summary by default. Otherwise you get clean output with invisible exclusions.

**Assembled prompt example**

Create a reusable sort/filter/summarize workflow with placeholders and a required Audit Summary (excluded count + rule, summarized columns + method). No edits beyond a summary row.

**Feedback when correct (after Check my answer)**

You now control automation risk - audit summaries are what separate operators from spreadsheet gamblers.

**Polished prompt on result screen**

Write a reusable workflow to sort by a specified column, filter by an explicit rule, and add a summary row for specified columns. Require an Audit Summary reporting excluded rows (count + rule) and summarized columns/method. Do not change non-summary values.

---

## Track 4 — Presentations

*Source:* `lib/data/tracks/track4_presentations.dart`

### Lesson 1: Build a Decision-Ready Deck Narrative

#### Scenario 1: Turn a Vague Request Into a Decision Deck Outline
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

**Learn (variant tabs)**

##### What Made This Work

The control point is decision framing. You didn’t ask for “slides” - you defined the decision, the trade-offs that must stay visible, and the ownership model.
- The Objective prevents generic outlines
- Requirements ban invented metrics and force slide purposes
- Expectations make the output paste-ready for leadership

##### Weak vs Strong Prompt

Weak prompt:
Create a 5-slide outline about the new onboarding process

Strong prompt:
Create a 6-slide decision deck outline for leadership to approve the new onboarding rollout. Make the decision explicit. For each slide, provide a title and 3–5 bullets. Include: current problem signal, proposed approach, trade-offs/risks, rollout plan with owners, what leadership must decide today, and next steps. Do not invent metrics or benefits; if something is unknown, label it [TBD]. Keep it concise and executive-ready.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that force a decision-ready deck outline (not a generic slide list).

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Name the decision leadership must make today
- ✓ (correct choice) — Require a risks/trade-offs slide so uncertainty stays visible
- ✓ (correct choice) — Require owners for rollout steps (not just a timeline)
- ✓ (correct choice) — Ban invented metrics/benefits; label unknowns as [TBD]
- ✓ (correct choice) — Specify slide-by-slide output shape (title + 3–5 bullets)
- ✗ (distractor) — Ask for “a persuasive deck that sells the change”
- ✗ (distractor) — Tell AI to add impressive statistics to build confidence
- ✗ (distractor) — Let AI choose the number of slides and structure
- ✗ (distractor) — Remove risks to keep the deck “positive”
- ✗ (distractor) — Write a full script for every slide with long paragraphs

**Coaching note (if selections are wrong)**

Decision decks fail when the prompt optimizes for “nice slides” instead of decision signal. Lock the decision, force trade-offs to stay visible, and prevent invented certainty.

**Assembled prompt example**

Create a 6-slide decision deck outline for leadership approval. Include a decision slide, a risks/trade-offs slide, rollout steps with owners, and ban invented metrics (use [TBD] for unknowns).

**Feedback when correct (after Check my answer)**

You now control what leadership sees first: decision signal, not slide polish.

**Polished prompt on result screen**

Draft a 6-slide executive decision deck outline to approve the onboarding rollout. Make the decision explicit; include risks/trade-offs; include rollout steps with owners; no invented claims; mark unknowns as [TBD]. For each slide: title + 3–5 bullets.

#### Scenario 2: Convert Messy Inputs Into a Single Cohesive Story
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

**Learn (variant tabs)**

##### What Made This Work

This is the control point: narrative coherence without consensus fabrication. You required explicit tagging for conflict and missing data.
- Requirements stop “helpful smoothing”
- Expectations add an Open Questions slide so risk stays visible
- Objective produces a usable outline without pretending the inputs agree

##### Weak vs Strong Prompt

Weak prompt:
Turn these notes into a clean deck outline

Strong prompt:
Build a 7-slide outline from these messy inputs. For each slide: title + 3–5 bullets. Keep narrative coherent, but do not invent agreement: if inputs conflict, include both views and tag as [Disputed]. If something is missing, tag as [Unknown]. Include one slide called “Open Questions” and one slide called “Decision Needed”. Keep it executive-neutral and safe to forward.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that prevent “clean deck” drift when inputs conflict.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require tagging conflicting claims as [Disputed]
- ✓ (correct choice) — Require tagging missing info as [Unknown]
- ✓ (correct choice) — Require an “Open Questions” slide to keep gaps visible
- ✓ (correct choice) — Require a “Decision Needed” slide so leadership knows the ask
- ✓ (correct choice) — Set a fixed slide output shape (title + 3–5 bullets)
- ✗ (distractor) — Ask AI to “make it sound confident and aligned”
- ✗ (distractor) — Remove caveats so the story feels clean
- ✗ (distractor) — Let AI infer the timeline and owners from context
- ✗ (distractor) — Replace disputes with a single recommended view
- ✗ (distractor) — Add inspirational framing and slogans

**Coaching note (if selections are wrong)**

Messy input is where most users lose control. Your job is to preserve truth boundaries and make disagreement visible in a decision-ready way.

**Assembled prompt example**

Build a 7-slide outline. Tag conflicts as [Disputed], missing as [Unknown], and include “Open Questions” + “Decision Needed”. Keep it executive-neutral.

**Feedback when correct (after Check my answer)**

You now control truth boundaries under pressure - that’s what keeps decks credible.

**Polished prompt on result screen**

Create a 7-slide executive outline from fragmented notes. Keep coherence without inventing agreement: tag conflicts [Disputed], missing info [Unknown]. Include “Open Questions” and “Decision Needed”. Title + 3–5 bullets per slide.

#### Scenario 3: Write the Slide That Handles Politics Without Sounding Political
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

**Learn (variant tabs)**

##### What Made This Work

The difference is structure under sensitivity: options + trade-offs + a neutral recommendation. You constrained tone without sacrificing decision clarity.
- Requirements ban blame and vague softness
- Expectations force a paste-ready slide that still commits
- Objective keeps the outcome decision-focused, not debate-focused

##### Weak vs Strong Prompt

Weak prompt:
Make a diplomatic slide about onboarding scope

Strong prompt:
Draft one executive slide titled “Scope Options” with three options for onboarding standardization. For each option: 2–3 bullets describing what it includes and the trade-off. Then add a short “Recommendation” section with one recommended option and the reasoning in neutral language. Do not assign blame, do not use emotional language, and do not hide the trade-offs. Keep it paste-ready.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that produce a politically safe slide without hiding the real decision.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require multiple options with explicit trade-offs
- ✓ (correct choice) — Require a short recommendation section (one option + why)
- ✓ (correct choice) — Ban blame/emotional wording to keep tone controlled
- ✓ (correct choice) — Force a paste-ready slide structure (title + bullets)
- ✓ (correct choice) — Require trade-offs to stay visible (no “softening”)
- ✗ (distractor) — Ask AI to “handle the politics creatively”
- ✗ (distractor) — Avoid mentioning trade-offs to keep everyone happy
- ✗ (distractor) — Use strong persuasive language to win the room
- ✗ (distractor) — Only present one option so it’s “clear”
- ✗ (distractor) — Add humor to reduce tension

**Coaching note (if selections are wrong)**

In tone-sensitive rooms, structure is your safety system. Options + trade-offs + a neutral recommendation keeps the discussion productive.

**Assembled prompt example**

Create one slide with three scope options. For each: what it includes + trade-off. Add a neutral recommendation. No blame language; do not hide trade-offs.

**Feedback when correct (after Check my answer)**

You now control sensitive decision framing without getting pulled into the politics.

**Polished prompt on result screen**

Draft a single slide titled “Scope Options” with three options. For each: includes + trade-off. Add a short neutral “Recommendation” with one option and why. No blame, no emotional language, no hidden downsides.

### Lesson 2: Summarize Complex Work for Executives (No Drift)

#### Scenario 1: Turn a Status Update Into an Executive Snapshot Slide
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

**Learn (variant tabs)**

##### What Made This Work

The control point is signal separation. Executive slides fail when risk and decisions get blended into “status.”
- Requirements enforce labeled sections and bullet counts
- Objective forces decision signal, not rewrite
- Expectations produce paste-ready slide text (not prose)

##### Weak vs Strong Prompt

Weak prompt:
Make this a slide summary for executives

Strong prompt:
Convert this status update into a single executive slide with exactly these sections: Status (2 bullets), Risks (2 bullets), Decisions Needed (1 bullet), Next (1 bullet). Use only confirmed facts from the input. Do not invent actions or owners. Keep tone controlled and decision-ready.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that turn a status blob into a decision-ready exec slide.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require labeled sections (Status/Risks/Decisions/Next)
- ✓ (correct choice) — Fix bullet counts per section (forces compression)
- ✓ (correct choice) — Ban invented actions/owners (use input only)
- ✓ (correct choice) — Require a “Decisions Needed” section explicitly
- ✓ (correct choice) — Set expectation: paste-ready slide text, not prose
- ✗ (distractor) — Ask for “a more positive tone”
- ✗ (distractor) — Let AI add helpful next steps automatically
- ✗ (distractor) — Allow the model to expand details for completeness
- ✗ (distractor) — Ask for a narrative paragraph before the bullets
- ✗ (distractor) — Remove risk language to keep the slide upbeat

**Coaching note (if selections are wrong)**

Your job is not to “summarize nicely.” Your job is to produce decision signal under a bullet budget and prevent the model from inventing progress.

**Assembled prompt example**

Create one executive slide with labeled sections and fixed bullet counts. Use only confirmed facts. Include “Decisions Needed”. No invented actions or owners.

**Feedback when correct (after Check my answer)**

You now control executive signal compression instead of shipping a polished status blob.

**Polished prompt on result screen**

Rewrite this update into one executive slide with fixed sections and bullet counts: Status (2), Risks (2), Decisions Needed (1), Next (1). Input facts only; no invented actions/owners; paste-ready.

#### Scenario 2: Reconcile Conflicting Signals Into a Credible Exec Narrative
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

**Learn (variant tabs)**

##### What Made This Work

The control point is credibility under conflict: you preserved disagreement and forced open questions.
- Requirements stop timeline invention
- Objective keeps decision signal visible
- Expectations produce a slide that leadership can act on without false confidence

##### Weak vs Strong Prompt

Weak prompt:
Make this update consistent for executives

Strong prompt:
Create a single executive slide with two sections: “Current Signal” (4 bullets) and “Open Questions” (3 bullets). When inputs conflict, include both views and tag as [Disputed]. If information is missing, tag as [Unknown]. Do not invent dates or certainty. Keep tone controlled and decision-ready.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that keep an exec slide credible when signals conflict.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require [Disputed] tagging for conflicting inputs
- ✓ (correct choice) — Require [Unknown] tagging for missing info
- ✓ (correct choice) — Ban invented dates/certainty
- ✓ (correct choice) — Force an “Open Questions” section (not just a summary)
- ✓ (correct choice) — Keep to a single-slide structure with fixed bullet counts
- ✗ (distractor) — Ask AI to “make it sound reassuring”
- ✗ (distractor) — Let the model infer the most likely timeline
- ✗ (distractor) — Remove disagreements to avoid confusion
- ✗ (distractor) — Replace unknowns with confident placeholders
- ✗ (distractor) — Add extra background context paragraphs

**Coaching note (if selections are wrong)**

Executive trust is fragile. Your prompt must prevent “helpful smoothing” and keep uncertainty visible in a controlled format.

**Assembled prompt example**

Create one exec slide with Current Signal + Open Questions. Tag conflicts [Disputed], missing info [Unknown]. Do not invent dates. Keep bullet counts fixed.

**Feedback when correct (after Check my answer)**

You now control executive credibility when inputs don’t match - that’s a real advantage.

**Polished prompt on result screen**

Write a single exec slide with “Current Signal” (4 bullets) + “Open Questions” (3 bullets). Preserve conflict with [Disputed], mark gaps [Unknown], and do not invent dates/certainty.

#### Scenario 3: Write a Stakeholder-Safe “Bad News” Slide Without Panic
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

**Learn (variant tabs)**

##### What Made This Work

The control point is bounded certainty: factual risk + impact range + explicit ask.
- Requirements prevent “mitigation theater”
- Objective keeps the slide decision-ready
- Expectations enforce a single-slide structure with minimal room for drift

##### Weak vs Strong Prompt

Weak prompt:
Make a slide about this risk for leadership

Strong prompt:
Draft one executive slide titled “Risk Update” with three sections: Risk (2 bullets), Impact (2 bullets with a range if uncertain), and Ask (1 bullet). Keep tone controlled and factual. Do not invent mitigations; if mitigation is in progress, label it clearly. Make the ask decision-ready.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that communicate risk with control (not panic, not sugarcoating).

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require an explicit Ask (decision-ready next step)
- ✓ (correct choice) — Require an Impact section with ranges when uncertain
- ✓ (correct choice) — Ban invented mitigations/claims
- ✓ (correct choice) — Require controlled, factual tone
- ✓ (correct choice) — Force a single-slide structure with fixed bullet counts
- ✗ (distractor) — Ask AI to “make it urgent and dramatic”
- ✗ (distractor) — Remove the impact details to avoid concern
- ✗ (distractor) — Let the model add reassuring mitigation steps
- ✗ (distractor) — Add a long narrative explanation of background
- ✗ (distractor) — State certainty even when the input is unclear

**Coaching note (if selections are wrong)**

Risk slides are judged on credibility. Use ranges, ban invention, and always end with a decision-ready ask so leadership can respond.

**Assembled prompt example**

Write one slide: Risk (2), Impact (2 with range), Ask (1). Controlled tone. No invented mitigations. Make the ask decision-ready.

**Feedback when correct (after Check my answer)**

You now control risk communication without losing credibility - that’s an operator skill.

**Polished prompt on result screen**

Draft one exec slide “Risk Update” with Risk (2 bullets), Impact (2 bullets with range if uncertain), Ask (1 bullet). Factual tone; no invented mitigations; decision-ready.

### Lesson 3: Design Slides That Preserve Truth Under Pressure

#### Scenario 1: Create a One-Slide “Decision Frame” for a Complex Choice
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

**Learn (variant tabs)**

##### What Made This Work

The control point is decision criteria placement. Criteria first forces shared evaluation before persuasion.
- Requirements prevent “options without consequences”
- Objective keeps the trade-off explicit
- Expectations enforce one-slide clarity and no invented data

##### Weak vs Strong Prompt

Weak prompt:
Make a slide comparing two options

Strong prompt:
Draft one slide titled “Decision Frame” comparing Option A vs Option B. Include: Decision criteria (3 bullets), Option A (3 bullets), Option B (3 bullets), and Recommendation (1 bullet). Keep language precise and neutral. Do not hide risks. No invented data.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that produce a criteria-first decision frame slide.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require decision criteria section before options
- ✓ (correct choice) — Fix bullets per section to force compression
- ✓ (correct choice) — Require risks/trade-offs to stay explicit
- ✓ (correct choice) — Ban invented data/metrics
- ✓ (correct choice) — Require a short recommendation tied to criteria
- ✗ (distractor) — Ask for a persuasive pitch to sell Option A
- ✗ (distractor) — Hide risks to keep the slide optimistic
- ✗ (distractor) — Let AI pick criteria automatically without constraints
- ✗ (distractor) — Write long paragraphs for nuance
- ✗ (distractor) — Use vague language (“consider”, “maybe”) throughout

**Coaching note (if selections are wrong)**

Decision slides fail when they persuade before aligning criteria. Force criteria-first structure and keep trade-offs explicit.

**Assembled prompt example**

Draft one slide with criteria first, then options, then a criteria-linked recommendation. Fixed bullet counts. No invented data.

**Feedback when correct (after Check my answer)**

You now control decision framing - the room can’t “slide” into a choice by tone alone.

**Polished prompt on result screen**

Create a one-slide “Decision Frame”: criteria (3 bullets) → Option A (3) → Option B (3) → recommendation (1). Neutral language; risks explicit; no invented data.

#### Scenario 2: Extract the “One Chart That Matters” Without Misleading
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

**Learn (variant tabs)**

##### What Made This Work

The control point is honest framing: chart spec + caption + limits. Without limits, AI will add causal language by default.
- Requirements ban invented numbers and force a “Limits” guardrail
- Objective selects decision-driving signal, not the prettiest metric
- Expectations produce slide-ready output quickly

##### Weak vs Strong Prompt

Weak prompt:
Pick the best chart for this deck

Strong prompt:
Given these metrics, propose ONE chart for an executive deck. Output: chart type, x/y axes, one-sentence chart caption, and one “Limits” bullet stating what the chart does NOT prove. Do not invent numbers or interpretation.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that keep a one-chart slide honest and decision-ready.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require chart type + axes
- ✓ (correct choice) — Require a one-sentence caption
- ✓ (correct choice) — Require a “Limits” bullet (what it does NOT prove)
- ✓ (correct choice) — Ban invented numbers and causal interpretation
- ✓ (correct choice) — Frame selection around the decision-driving metric
- ✗ (distractor) — Ask for the most impressive chart to increase buy-in
- ✗ (distractor) — Let AI add insights and recommendations freely
- ✗ (distractor) — Include multiple charts “for completeness”
- ✗ (distractor) — Write a long narrative explanation under the chart
- ✗ (distractor) — Use speculative language about causes

**Coaching note (if selections are wrong)**

Slide credibility is built by boundaries: what the chart shows, what it doesn’t, and what decision it supports.

**Assembled prompt example**

Propose one exec-chart: chart type + axes, caption, and a “Limits” bullet. No invented numbers or causal claims.

**Feedback when correct (after Check my answer)**

You now control chart honesty - most decks skip limits and accidentally mislead.

**Polished prompt on result screen**

Recommend ONE chart for an exec slide: type, axes, one-sentence caption, and one “Limits” bullet. Tie to decision signal. No invented numbers or causality.

#### Scenario 3: Write a Slide That Says “No” Without Starting a Fight
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

**Learn (variant tabs)**

##### What Made This Work

The control point is boundary framing: in-scope vs out-of-scope vs conditions to revisit.
- Requirements prevent vague “we’ll try” commitments
- Expectations make it stakeholder-safe and paste-ready
- Objective sets scope without blame or defensiveness

##### Weak vs Strong Prompt

Weak prompt:
Make a slide that says we can’t do everything

Strong prompt:
Draft one executive slide titled “Scope Boundary” with three sections: In Scope (3 bullets), Out of Scope (3 bullets), and Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame language. Make it safe to share with stakeholders.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that create a stakeholder-safe boundary slide.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require In Scope / Out of Scope / Conditions to Revisit sections
- ✓ (correct choice) — Fix bullet counts so it stays crisp
- ✓ (correct choice) — Require neutral tone and ban blame language
- ✓ (correct choice) — Make it safe to share externally (stakeholder-safe)
- ✓ (correct choice) — Explicitly prevent accidental commitments
- ✗ (distractor) — Use aggressive language to “hold the line”
- ✗ (distractor) — Leave out-of-scope vague to avoid confrontation
- ✗ (distractor) — Promise outcomes to reduce pushback
- ✗ (distractor) — Turn the slide into a long narrative explanation
- ✗ (distractor) — Assign blame to another team for constraints

**Coaching note (if selections are wrong)**

Scope slides are negotiation tools. Structure prevents tone drift and makes boundaries feel professional instead of personal.

**Assembled prompt example**

Draft one slide “Scope Boundary” with In Scope, Out of Scope, Conditions to Revisit. Controlled tone. Fixed bullets. Stakeholder-safe.

**Feedback when correct (after Check my answer)**

You now control scope pressure without accidental commitments - most teams lose leverage here.

**Polished prompt on result screen**

Write one exec slide “Scope Boundary”: In Scope (3), Out of Scope (3), Conditions to Revisit (2). Neutral tone; no blame; stakeholder-safe; prevents accidental commitments.

### Lesson 4: Create High-Stakes Stakeholder Alignment Slides

#### Scenario 1: Align on Definitions Before the Debate Starts
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

**Learn (variant tabs)**

##### What Made This Work

The control point is edge cases. Definitions without edge cases are still ambiguous.
- Requirements force operational language and examples
- Objective prevents semantic debate from consuming the meeting
- Expectations produce a single slide that anchors the room

##### Weak vs Strong Prompt

Weak prompt:
Create a slide defining key terms

Strong prompt:
Draft one slide titled “Definitions (so we debate the same thing)” with 4 terms. For each term: definition (1 bullet) and an example/edge case (1 bullet). Keep it operational and concrete. No aspirational language.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make a definitions slide actually prevent misalignment.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require operational (not aspirational) definitions
- ✓ (correct choice) — Require an edge case/example for each term
- ✓ (correct choice) — Fix the structure (terms + 2 bullets each)
- ✓ (correct choice) — Tie definitions to decision boundaries (what counts / doesn’t)
- ✓ (correct choice) — Keep it one slide and meeting-ready
- ✗ (distractor) — Use inspirational language to increase buy-in
- ✗ (distractor) — Avoid edge cases to keep it “positive”
- ✗ (distractor) — Write long paragraphs for nuance
- ✗ (distractor) — Let AI choose which terms matter without input
- ✗ (distractor) — Make the slide visually flashy with design advice

**Coaching note (if selections are wrong)**

Alignment slides are pre-meeting control. Operational definitions + edge cases prevent semantic drift and stop “agreement that isn’t agreement.”

**Assembled prompt example**

Draft a one-slide definitions page with 4 terms. For each: operational definition + edge case. Concrete bullets. No aspirational language.

**Feedback when correct (after Check my answer)**

You now control alignment before debate starts - that’s how you run higher-stakes rooms.

**Polished prompt on result screen**

Write one slide “Definitions (so we debate the same thing)”: 4 terms, each with 1 operational definition bullet + 1 edge case bullet. Concrete, meeting-ready, no aspiration.

#### Scenario 2: Synthesize Divergent Feedback Into a Safe Alignment Slide
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

**Learn (variant tabs)**

##### What Made This Work

The control point is competing objectives. You didn’t theme-wash the feedback - you preserved the tensions and tied them to decisions.
- Requirements ban consensus fabrication
- Objective keeps decision implications explicit
- Expectations produce a slide leadership can act on

##### Weak vs Strong Prompt

Weak prompt:
Summarize stakeholder feedback into themes

Strong prompt:
Draft one executive slide titled “Stakeholder Tensions” with two sections: “Tensions” (4 bullets) and “Decision Implications” (3 bullets). Preserve competing objectives explicitly. If stakeholders disagree, do not merge it - write both sides neutrally. No invented consensus.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that keep stakeholder feedback decision-useful.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require competing objectives to be stated explicitly
- ✓ (correct choice) — Ban merging disagreements into one “consensus” view
- ✓ (correct choice) — Require a “Decision Implications” section
- ✓ (correct choice) — Fix bullet counts to keep it crisp
- ✓ (correct choice) — Keep tone neutral and executive-safe
- ✗ (distractor) — Ask AI to choose the “best” stakeholder view
- ✗ (distractor) — Remove tensions to avoid conflict
- ✗ (distractor) — Write a long narrative summary of every comment
- ✗ (distractor) — Add emotional language to “show empathy”
- ✗ (distractor) — Invent a compromise solution without input

**Coaching note (if selections are wrong)**

Synthesis is not averaging. Preserve tensions, then map them to decision implications. That’s how the slide becomes useful.

**Assembled prompt example**

Create one slide with “Tensions” + “Decision Implications”. Preserve competing objectives; no invented consensus; neutral tone.

**Feedback when correct (after Check my answer)**

You now control stakeholder synthesis without losing the decision signal.

**Polished prompt on result screen**

Draft an exec slide “Stakeholder Tensions”: Tensions (4 bullets) + Decision Implications (3 bullets). Preserve disagreements neutrally; no consensus invention.

#### Scenario 3: Write a Slide That Forces a Decision Between Two Bad Options
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

**Learn (variant tabs)**

##### What Made This Work

The control point is cost symmetry: both options pay a price, and assumptions are explicit.
- Requirements force Cost + Risk bullets per option
- Expectations add assumptions and a decision line
- Objective makes deferral difficult by making trade-offs unavoidable

##### Weak vs Strong Prompt

Weak prompt:
Make a slide comparing two options for leadership

Strong prompt:
Draft one executive slide titled “Forced Choice” with two columns: Option A and Option B. For each option: Cost (2 bullets) and Risk (2 bullets). Add “Assumptions” (2 bullets) and “Decision Needed Today” (1 bullet). Keep tone controlled and precise.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make a forced-choice slide actually force a choice.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require Cost + Risk bullets for each option
- ✓ (correct choice) — Require explicit Assumptions section
- ✓ (correct choice) — Require “Decision Needed Today” line
- ✓ (correct choice) — Use a two-column option structure
- ✓ (correct choice) — Keep tone controlled and precise (no “ideally”)
- ✗ (distractor) — Make one option sound obviously superior
- ✗ (distractor) — Hide costs to keep the slide positive
- ✗ (distractor) — Add emotional language to increase urgency
- ✗ (distractor) — Let AI invent assumptions to make it coherent
- ✗ (distractor) — Write a long narrative to avoid being direct

**Coaching note (if selections are wrong)**

Forced-choice slides are about honesty with structure. Costs + risks + assumptions + a decision line is how you control the room’s interpretation.

**Assembled prompt example**

Create a forced-choice slide: Option A vs B with Cost+Risk bullets, then Assumptions, then Decision Needed Today. Controlled tone.

**Feedback when correct (after Check my answer)**

You now control trade-off decisions instead of letting the room drift into deferral.

**Polished prompt on result screen**

Draft one exec slide “Forced Choice”: two columns (Option A/B) with Cost (2) + Risk (2) each; add Assumptions (2) and Decision Needed Today (1). Controlled, precise language.

### Lesson 5: Ship a Credible Executive Deck Under Ambiguity

#### Scenario 1: Create a “What We Know / What We Don’t” Slide
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

**Learn (variant tabs)**

##### What Made This Work

The control point is uncertainty structure: Confirmed vs Unknown vs What Would Change This.
- Requirements prevent invented certainty and vague hedging
- Objective preserves credibility while staying decision-ready
- Expectations keep it to one slide leadership can absorb

##### Weak vs Strong Prompt

Weak prompt:
Make a slide about what we know so far

Strong prompt:
Draft one executive slide titled “What We Know / What We Don’t” with three sections: Confirmed (4 bullets), Unknown (4 bullets), and What Would Change This (2 bullets). Keep tone controlled, factual, and decision-ready. Do not invent certainty.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that keep uncertainty credible and actionable on a slide.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require Confirmed vs Unknown separation
- ✓ (correct choice) — Add “What Would Change This” to turn unknowns into action
- ✓ (correct choice) — Ban invented certainty and hedged fiction
- ✓ (correct choice) — Fix bullet counts to keep it executive-absorptive
- ✓ (correct choice) — Keep tone controlled and factual
- ✗ (distractor) — Ask AI to “sound confident even if details are missing”
- ✗ (distractor) — Remove unknowns to avoid looking uncertain
- ✗ (distractor) — Write a long narrative explaining uncertainty
- ✗ (distractor) — Add inspirational language to offset uncertainty
- ✗ (distractor) — Invent numbers to make the slide feel concrete

**Coaching note (if selections are wrong)**

Credibility slides are a constraint system. Known/unknown is good; known/unknown/what-changes-it is better.

**Assembled prompt example**

Write one exec slide: Confirmed (4), Unknown (4), What Would Change This (2). Controlled tone. No invented certainty.

**Feedback when correct (after Check my answer)**

You now control uncertainty like an operator - most decks either hide it or dramatize it.

**Polished prompt on result screen**

Draft an exec slide “What We Know / What We Don’t”: Confirmed (4), Unknown (4), What Would Change This (2). Controlled tone, no invented certainty.

#### Scenario 2: Draft the One-Slide Executive Summary That Can Survive Questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is “answers-first” structure: Point, Risk, Ask, Next - each one sentence.
- Requirements prevent fluffy overviews
- Objective makes the slide stand alone under questions
- Expectations produce a deck opener that can actually lead

##### Weak vs Strong Prompt

Weak prompt:
Write an executive summary slide

Strong prompt:
Draft one slide titled “Executive Summary” with four labeled bullets: Point, Risk, Ask, Next. Each bullet must be one sentence, decision-ready, and grounded (no invented claims).

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make an executive summary slide question-proof.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require Point/Risk/Ask/Next labeled bullets
- ✓ (correct choice) — Force one-sentence bullets (no rambling)
- ✓ (correct choice) — Require decision-ready phrasing (not intro copy)
- ✓ (correct choice) — Ban invented claims/metrics
- ✓ (correct choice) — Set expectation that the slide stands alone
- ✗ (distractor) — Ask for a motivational opening paragraph
- ✗ (distractor) — Hide the ask to avoid pressure
- ✗ (distractor) — Use vague language to sound safe
- ✗ (distractor) — Add multiple sub-bullets per label
- ✗ (distractor) — Let AI add supporting statistics freely

**Coaching note (if selections are wrong)**

A question-proof opener is a structure problem, not a writing problem. Labels + one sentence each forces clarity.

**Assembled prompt example**

Write one “Executive Summary” slide: Point, Risk, Ask, Next. One sentence each. No invented claims.

**Feedback when correct (after Check my answer)**

You now control executive attention: the slide answers the room before the room asks.

**Polished prompt on result screen**

Draft an “Executive Summary” slide with labeled one-sentence bullets: Point, Risk, Ask, Next. Decision-ready, grounded, no invention.

#### Scenario 3: Close the Deck With a Decision-Ready Commitment Slide
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

**Learn (variant tabs)**

##### What Made This Work

The control point is decision capture: Decided vs Deferred vs Next, with [TBD] where details aren’t confirmed.
- Requirements prevent invention under pressure
- Objective locks commitments so decisions don’t drift
- Expectations produce a closing slide that the org can execute

##### Weak vs Strong Prompt

Weak prompt:
Write a final slide with next steps

Strong prompt:
Draft one closing slide titled “Decision + Commitments” with three sections: Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets). Use only confirmed decisions; if owners/dates are not confirmed, label as [TBD]. Keep it paste-ready and neutral.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make a closing commitments slide drift-proof.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require Decided vs Deferred vs Next sections
- ✓ (correct choice) — Use [TBD] for unknown owners/dates (no invention)
- ✓ (correct choice) — Fix bullet counts to keep it tight
- ✓ (correct choice) — Require “Deferred” explicitly (prevents fake completeness)
- ✓ (correct choice) — Make it paste-ready and neutral
- ✗ (distractor) — Invent owners and dates to look complete
- ✗ (distractor) — Remove deferred items to avoid tension
- ✗ (distractor) — Write a long narrative recap of the meeting
- ✗ (distractor) — Use ambiguous language so it “covers everything”
- ✗ (distractor) — Add extra “nice-to-have” next steps

**Coaching note (if selections are wrong)**

Closing slides are where execution either starts or drifts. Make deferrals explicit and never allow invented ownership to sneak in.

**Assembled prompt example**

Write one closing slide with Decided Today, Deferred, Next. Use only confirmed decisions. Use [TBD] for unknown owners/dates.

**Feedback when correct (after Check my answer)**

You now control commitment capture - most teams lose decisions in the last slide.

**Polished prompt on result screen**

Draft a closing slide “Decision + Commitments”: Decided Today (3), Deferred (2), Next (3). No invention; use [TBD] for unknown owners/dates; paste-ready.

---

## Track 5 — Strategic Communication

*Source:* `lib/data/tracks/track5_communication.dart`

### Lesson 1: Control Executive Narratives (Truth Under Pressure)

#### Scenario 1: Write a CEO-Safe Update When the Situation Is Not Stable
**Situation**

You need to send an executive update that will be forwarded.

The situation is not stable: one dependency is shaky, timelines are under scrutiny, and teams disagree on whether risk is “real” yet.

If this update drifts into false certainty, leadership will make decisions on a story that doesn’t exist.

If you prompt AI weakly, it usually:
- rounds uncertainty into confidence
- hides disagreement to sound “aligned”
- invents mitigation language to feel reassuring

This is why your prompt fails:
- no boundary on certainty
- no rule for preserving disputed inputs
- no expectation for a decision-ready ask

Most people ask for “a crisp exec update” and accidentally ship optimism as fact.

To get a usable result, your prompt must define:
- Context - exec update under uncertainty and disagreement
- Objective - preserve credibility while surfacing the decision signal
- Requirements - tag [Disputed]/[Unknown]; no invented mitigations; controlled tone
- Expectations - paste-ready update with a clear ask and next checkpoint

**Expert prompt**

Draft a forward-safe executive update with exactly these sections: Status (2 bullets), Risk (2 bullets), Ask (1 bullet), Next (1 bullet). Use only confirmed facts. If teams disagree, include both views and tag [Disputed]. If information is missing, tag [Unknown]. Do not invent mitigations or dates. Keep tone controlled and decision-ready.

**AI response (example)**

**Status**
- Core workstream remains aligned to the current milestone based on confirmed progress to date
- One dependency is being evaluated against stability requirements; impact not yet decision-ready [Unknown]

**Risk**
- View A: dependency risk is contained with current mitigation approach [Disputed]
- View B: dependency risk could affect sequencing unless checkpoint confirms viability [Disputed]

**Ask**
- Confirm whether we hold timeline pending checkpoint, or re-sequence now to de-risk.

**Next**
- Publish a single dependency checkpoint (owner + latest ETA + viability) and refresh timeline confidence.

What matters here is bounded certainty: the prompt forced [Disputed]/[Unknown] tags so the update stays credible even under pressure.

**Learn (variant tabs)**

##### What Made This Work

The control point is credibility. You forced the model to separate facts, disputed viewpoints, and unknowns - and you banned invented reassurance.
- Requirements stop certainty inflation
- Objective keeps decision signal visible
- Expectations produce a forward-safe, paste-ready structure

##### Weak vs Strong Prompt

Weak prompt:
Write a crisp executive update about this situation

Strong prompt:
Draft a forward-safe executive update with exactly these sections: Status (2 bullets), Risk (2 bullets), Ask (1 bullet), Next (1 bullet). Use only confirmed facts. If teams disagree, include both views and tag [Disputed]. If information is missing, tag [Unknown]. Do not invent mitigations or dates. Keep tone controlled and decision-ready.

##### C.O.R.E. Breakdown

C - Context
Executive update under uncertainty and disagreement

O - Objective
Preserve credibility while surfacing decision signal

R - Requirements
Fixed sections + bullets; tag [Disputed]/[Unknown]; no invented mitigations/dates; controlled tone

E - Expectations
Forward-safe, paste-ready update with clear ask + next checkpoint

**Pro tip**

If you don’t explicitly ban invented mitigation, the model will “comfort-write” your risk section. That’s how updates become liabilities.

**Takeaway**

Executive updates must be credible before they are concise.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that prevent false certainty in forward-safe executive updates.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Fix the section structure (Status/Risk/Ask/Next) with bullet counts
- ✓ (correct choice) — Require [Disputed] tagging when teams disagree
- ✓ (correct choice) — Require [Unknown] tagging for missing information
- ✓ (correct choice) — Ban invented mitigations and dates
- ✓ (correct choice) — Force a decision-ready Ask (not just “next steps”)
- ✗ (distractor) — Ask for a reassuring tone that reduces concern
- ✗ (distractor) — Remove disagreement so it sounds aligned
- ✗ (distractor) — Let AI fill gaps with plausible details
- ✗ (distractor) — Write a long narrative paragraph for context
- ✗ (distractor) — Avoid mentioning risk until it is fully confirmed

**Coaching note (if selections are wrong)**

This is where average AI use fails: it trades truth for smoothness. Your prompt must enforce truth boundaries and force the decision signal to stay visible.

**Assembled prompt example**

Write a forward-safe exec update: Status (2), Risk (2), Ask (1), Next (1). Tag disputes [Disputed], gaps [Unknown]. No invented mitigations/dates. Controlled tone.

**Feedback when correct (after Check my answer)**

You now control credibility under uncertainty - most people accidentally ship optimism as fact.

**Polished prompt on result screen**

Draft a forward-safe executive update with fixed sections and bullet counts: Status (2), Risk (2), Ask (1), Next (1). Facts only; tag [Disputed]/[Unknown]; no invented mitigations or dates; decision-ready tone.

#### Scenario 2: Compress a Messy Escalation Into a Decision Memo Slide
**Situation**

You have a messy escalation thread: partial facts, conflicting interpretations, and a lot of emotion.

Leadership wants a one-slide decision memo now.

If you over-clean it, you hide the real risk.

If you dump raw thread content, you waste executive attention.

If you prompt AI weakly, it usually:
- picks a side implicitly
- replaces uncertainty with confident phrasing
- invents “next actions” to look helpful

This is why your prompt fails:
- no rules for evidence vs interpretation
- no requirement to surface open questions
- no expectation for a one-slide decision format

Most people ask for “a summary” and get either a legal brief or a fairy tale.

To get a usable result, your prompt must define:
- Context - escalation thread with noise, conflict, and gaps
- Objective - one-slide decision memo with bounded certainty
- Requirements - evidence-only bullets, open questions, no invention
- Expectations - single slide with Problem / Options / Recommendation / Open Questions

**Expert prompt**

Create ONE executive slide that functions as a decision memo with exactly these sections: Problem (3 bullets, evidence-only), Options (2 options, 2 bullets each), Recommendation (1 bullet), Open Questions (3 bullets). If any detail is not confirmed, mark it [Unknown]. Do not invent owners, dates, or mitigations. Keep tone controlled and professional.

**AI response (example)**

**Problem (evidence-only)**
- Escalation indicates a dependency is not meeting required stability thresholds [Unknown: latest measured rate]
- Teams disagree on whether current mitigation path is viable within the planned sequence [Disputed]
- Timeline confidence is not decision-ready without a checkpoint that reconciles the disagreement

**Options**
- Option A: Hold timeline pending checkpoint
  - Preserves current plan, but risks late re-plan if dependency fails
  - Requires a fast, owner-confirmed checkpoint to avoid drift
- Option B: Re-sequence now to de-risk
  - Reduces exposure to dependency failure, but introduces coordination cost
  - May shift downstream work priorities immediately

**Recommendation**
- Recommend Option A only if a checkpoint can confirm viability by the next exec review; otherwise choose Option B.

**Open Questions**
- What is the owner-confirmed dependency ETA and stability threshold status?
- What is the earliest point we can safely re-sequence without rework?
- What decision deadline prevents downstream teams from executing on the wrong plan?

The difference is evidence discipline: the prompt forced “evidence-only” and Open Questions, so the slide stays decision-ready without inventing completeness.

**Learn (variant tabs)**

##### What Made This Work

The control point is evidence discipline + decision structure. You didn’t ask for “a summary”; you forced a memo shape that prevents invention.
- Requirements force evidence-only bullets
- Expectations add open questions and options so uncertainty stays actionable
- Objective converts noise into a decision memo without picking sides by tone

##### Weak vs Strong Prompt

Weak prompt:
Summarize this escalation for leadership

Strong prompt:
Create ONE executive slide that functions as a decision memo with exactly these sections: Problem (3 bullets, evidence-only), Options (2 options, 2 bullets each), Recommendation (1 bullet), Open Questions (3 bullets). If any detail is not confirmed, mark it [Unknown]. Do not invent owners, dates, or mitigations. Keep tone controlled and professional.

##### C.O.R.E. Breakdown

C - Context
Escalation thread with noise, conflict, and gaps

O - Objective
One-slide decision memo with bounded certainty

R - Requirements
Evidence-only problem bullets; explicit options; [Unknown] for gaps; no invention

E - Expectations
Single slide: Problem / Options / Recommendation / Open Questions

**Pro tip**

If you don’t force “evidence-only,” the model will quietly turn interpretations into facts. In escalations, that’s how you trigger the wrong decision.

**Takeaway**

Escalations need memo structure, not “summary tone.”

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that keep escalation decision memos truthful and usable.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require an explicit decision memo structure (Problem/Options/Recommendation/Open Questions)
- ✓ (correct choice) — Require evidence-only problem bullets
- ✓ (correct choice) — Require [Unknown] marking for unconfirmed details
- ✓ (correct choice) — Ban inventing owners/dates/mitigations
- ✓ (correct choice) — Require Open Questions so uncertainty stays visible
- ✗ (distractor) — Ask AI to “pick the best team’s interpretation”
- ✗ (distractor) — Use dramatic language to signal urgency
- ✗ (distractor) — Remove open questions so it looks confident
- ✗ (distractor) — Allow the model to add “helpful next actions”
- ✗ (distractor) — Write a long narrative recap of the entire thread

**Coaching note (if selections are wrong)**

Decision memos are about controlling what becomes “true.” Evidence-only + [Unknown] + explicit options is how you prevent escalation summaries from becoming fiction.

**Assembled prompt example**

Write one exec decision memo slide: Problem (evidence-only), Options, Recommendation, Open Questions. Mark gaps [Unknown]. No invented owners/dates/mitigations.

**Feedback when correct (after Check my answer)**

You now control escalation truth boundaries - that’s where real executive trust is won.

**Polished prompt on result screen**

Create one executive decision memo slide: Problem (3 evidence-only bullets), Options (2 options, 2 bullets each), Recommendation (1), Open Questions (3). Mark gaps [Unknown]. No invented owners/dates/mitigations.

#### Scenario 3: Write a Political Alignment Message Without Losing the Truth
**Situation**

Two senior stakeholders disagree, and the organization is watching how you frame it.

You need a short alignment message that keeps the trade-off visible, keeps tone neutral, and prevents the room from splitting into camps.

If you over-soften it, you hide the decision.

If you are too blunt, you escalate politics.

If you prompt AI weakly, it usually:
- “diplomatically” removes trade-offs
- makes a recommendation sound like a side
- invents consensus language

This is why your prompt fails:
- no neutral options structure
- no guardrails against consensus invention
- no expectation for controlled tone with explicit trade-offs

Most people try to sound agreeable and accidentally create vagueness.

To get a usable result, your prompt must define:
- Context - stakeholder disagreement with organizational sensitivity
- Objective - neutral alignment message with explicit trade-offs
- Requirements - options + trade-offs + recommendation; no blame; no invented agreement
- Expectations - paste-ready message safe to forward

**Expert prompt**

Draft a forward-safe alignment message with this structure: Context (1 sentence), Options (2 options, 1 sentence each with trade-off), Recommendation (1 sentence), Next Step (1 sentence). Keep tone controlled and neutral. Do not assign blame. Do not invent agreement. Keep trade-offs explicit.

**AI response (example)**

Context: We need to finalize the onboarding scope and ownership model in a way that balances speed with long-term consistency.
Options: Option A moves faster but increases rework risk if role needs emerge late; Option B moves slower but reduces drift by validating inserts early.
Recommendation: Recommend Option B if the cost of rework and credibility loss is higher than the coordination cost.
Next Step: Confirm the decision boundary (mandatory vs optional) and schedule a short checkpoint to lock the rollout plan.

Pay attention to the control point: the prompt forced trade-offs into single sentences, so neutral tone didn’t turn into non-commitment.

**Learn (variant tabs)**

##### What Made This Work

The control point is “neutral structure,” not “nice wording.” Options + trade-offs + a bounded recommendation prevents politics from hijacking the message.
- Requirements ban blame and invented agreement
- Expectations force forward-safe brevity
- Objective keeps the decision signal explicit even under sensitivity

##### Weak vs Strong Prompt

Weak prompt:
Write a diplomatic message to align stakeholders

Strong prompt:
Draft a forward-safe alignment message with this structure: Context (1 sentence), Options (2 options, 1 sentence each with trade-off), Recommendation (1 sentence), Next Step (1 sentence). Keep tone controlled and neutral. Do not assign blame. Do not invent agreement. Keep trade-offs explicit.

##### C.O.R.E. Breakdown

C - Context
Stakeholder disagreement with organizational sensitivity

O - Objective
Neutral alignment message with explicit trade-offs

R - Requirements
Options with trade-offs; controlled tone; no blame; no invented agreement

E - Expectations
Forward-safe, paste-ready message

**Pro tip**

“Diplomatic” is not a style choice - it’s a structure choice. Without explicit trade-offs, diplomacy becomes vagueness and the politics get worse.

**Takeaway**

Neutral tone with explicit trade-offs is the win condition.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that keep alignment messages neutral without losing decision clarity.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require options with explicit trade-offs
- ✓ (correct choice) — Force a fixed one-sentence-per-section structure
- ✓ (correct choice) — Ban blame language
- ✓ (correct choice) — Ban invented agreement/consensus
- ✓ (correct choice) — Require a decision-ready recommendation and next step
- ✗ (distractor) — Ask AI to “make it inspiring”
- ✗ (distractor) — Remove trade-offs to avoid tension
- ✗ (distractor) — Use strong persuasive language to “win”
- ✗ (distractor) — Only present one option to sound decisive
- ✗ (distractor) — Let AI infer consensus language to smooth conflict

**Coaching note (if selections are wrong)**

In political rooms, the risk is not “tone.” The risk is losing the trade-off. Structure protects truth while keeping you neutral.

**Assembled prompt example**

Write a forward-safe alignment message: Context, Options (2 with trade-offs), Recommendation, Next Step. One sentence each. Neutral tone. No blame. No invented agreement.

**Feedback when correct (after Check my answer)**

You now control decision framing without triggering politics - that’s a senior-level skill.

**Polished prompt on result screen**

Draft a forward-safe alignment message: Context (1 sentence), Options (2 with trade-offs), Recommendation (1), Next Step (1). Neutral tone; no blame; no invented agreement; trade-offs explicit.

### Lesson 2: Negotiate Scope, Risk, and Accountability (No Accidental Commitments)

#### Scenario 1: Set Scope Boundaries That Survive Forwarding
**Situation**

A stakeholder wants you to “just include” additional scope in a plan.

You must set boundaries without sounding obstructive and without accidentally committing.

If you’re vague, your message will be read as approval.

If you’re harsh, you trigger escalation.

If you prompt AI weakly, it usually:
- uses soft “we’ll try” language
- hides conditions
- removes out-of-scope clarity to keep tone friendly

This is why your prompt fails:
- no In/Out/Conditions structure
- no requirement for forward-safe wording
- no expectation to prevent accidental commitment

Most people try to be nice and end up committing by omission.

To get a usable result, your prompt must define:
- Context - scope pressure and expectation management
- Objective - set boundaries without blame
- Requirements - In Scope / Out of Scope / Conditions to Revisit
- Expectations - paste-ready, stakeholder-safe message

**Expert prompt**

Draft a forward-safe scope boundary message with three labeled sections: In Scope (3 bullets), Out of Scope (3 bullets), Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame. No invented promises.

**AI response (example)**

**In Scope**
- Baseline onboarding flow + source-of-truth checklist
- Function-owned inserts reviewed on a defined cadence
- Pilot-first rollout with explicit success criteria

**Out of Scope**
- Promising performance outcomes we cannot measure yet
- Expanding scope into full enablement redesign
- Adding bespoke team-specific onboarding outside the baseline + inserts model

**Conditions to Revisit**
- If pilot shows baseline misfit, adjust standard vs insert boundaries explicitly
- If leadership changes success criteria or timeline, re-plan scope with an explicit trade-off

Notice how “conditions” prevents escalation: the prompt sets boundaries without making it sound like a permanent no.

**Learn (variant tabs)**

##### What Made This Work

The control point is anti-commitment structure: In/Out/Conditions. It keeps tone neutral while preventing “we’ll try” drift.
- Requirements force clarity without blame
- Expectations make it forward-safe
- Objective prevents accidental commitment under scope pressure

##### Weak vs Strong Prompt

Weak prompt:
Write a nice message about scope

Strong prompt:
Draft a forward-safe scope boundary message with three labeled sections: In Scope (3 bullets), Out of Scope (3 bullets), Conditions to Revisit (2 bullets). Keep tone controlled and neutral. No blame. No invented promises.

##### C.O.R.E. Breakdown

C - Context
Scope pressure and expectation management

O - Objective
Set boundaries without blame or accidental commitment

R - Requirements
In/Out/Conditions; fixed bullets; neutral tone; no promises

E - Expectations
Forward-safe, paste-ready boundary message

**Pro tip**

If you don’t include “Out of Scope,” stakeholders will interpret silence as yes. Nice language without boundaries is not nice - it’s risky.

**Takeaway**

If it’s not explicitly out of scope, it will become in scope.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that prevent accidental commitments in scope boundary messages.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require In/Out/Conditions sections
- ✓ (correct choice) — Make it forward-safe (stakeholder-safe)
- ✓ (correct choice) — Ban invented promises and outcomes
- ✓ (correct choice) — Keep tone controlled and neutral
- ✓ (correct choice) — Fix bullet counts to keep it crisp
- ✗ (distractor) — Use vague language to avoid conflict
- ✗ (distractor) — Remove out-of-scope items to stay positive
- ✗ (distractor) — Add persuasive language to win buy-in
- ✗ (distractor) — Promise delivery dates to reduce pushback
- ✗ (distractor) — Assign blame for constraints

**Coaching note (if selections are wrong)**

Forward-safe messages are judged on what they prevent. Structure beats tone. In/Out/Conditions is how you keep control under pressure.

**Assembled prompt example**

Write a forward-safe scope boundary message: In Scope (3), Out of Scope (3), Conditions to Revisit (2). Neutral tone. No promises.

**Feedback when correct (after Check my answer)**

You now control scope pressure without accidental commitments - most teams lose leverage here.

**Polished prompt on result screen**

Draft a forward-safe scope boundary message with labeled sections: In Scope (3 bullets), Out of Scope (3 bullets), Conditions to Revisit (2 bullets). Neutral tone; no blame; no invented promises.

#### Scenario 2: Translate Conflicting Requirements Into a Negotiation Frame
**Situation**

You receive conflicting requirements: “ship fast,” “don’t take risk,” “keep everyone happy,” and “don’t add headcount.”

You need a negotiation frame that makes the trade-offs explicit without sounding like you’re pushing back.

If you don’t make trade-offs explicit, you’ll be held responsible for impossible constraints.

If you prompt AI weakly, it usually:
- echoes constraints without resolving them
- invents a compromise that doesn’t exist
- hides the “impossible triangle” to sound helpful

This is why your prompt fails:
- no structure for trade-offs
- no requirement to map constraints to decisions
- no expectation for a negotiation-safe tone

Most people accept impossible requirements and hope it works.

To get a usable result, your prompt must define:
- Context - conflicting constraints and unclear priorities
- Objective - make trade-offs explicit and propose decision questions
- Requirements - constraints table + decision questions; no fake compromise
- Expectations - paste-ready negotiation frame for stakeholders

**Expert prompt**

Create a negotiation frame with two sections: Constraints (4 bullets that restate the conflicting requirements) and Decision Questions (4 bullets that force prioritization trade-offs). Keep tone neutral. Do not invent a compromise solution. Make it safe to send.

**AI response (example)**

**Constraints (as stated)**
- Ship quickly, with minimal schedule impact
- Avoid operational risk and prevent downstream surprises
- Keep stakeholder experience stable (no disruptive change)
- Do not add headcount or sustained coordination load

**Decision Questions (to force prioritization)**
- Which matters more: timeline certainty or risk reduction if the dependency fails?
- What is the acceptable cost: coordination up front or rework later?
- What scope is mandatory vs optional to preserve speed without promising outcomes?
- What decision deadline avoids downstream execution on the wrong assumption?

Look at how this changes the conversation: the prompt forced questions that translate “requirements” into priorities, without pretending everything is compatible.

**Learn (variant tabs)**

##### What Made This Work

The control point is refusing fake compromise. You turned conflicting constraints into decision questions that force prioritization.
- Requirements ban invented solutions
- Objective shifts from “accept requirements” to “clarify priorities”
- Expectations produce a send-ready negotiation frame

##### Weak vs Strong Prompt

Weak prompt:
Help me respond to these requirements

Strong prompt:
Create a negotiation frame with two sections: Constraints (4 bullets that restate the conflicting requirements) and Decision Questions (4 bullets that force prioritization trade-offs). Keep tone neutral. Do not invent a compromise solution. Make it safe to send.

##### C.O.R.E. Breakdown

C - Context
Conflicting constraints and unclear priorities

O - Objective
Make trade-offs explicit and force prioritization

R - Requirements
Constraints + decision questions; neutral tone; no fake compromise

E - Expectations
Paste-ready negotiation frame safe to send

**Pro tip**

If you let the model “solve” conflicting requirements, it will invent a compromise that sounds plausible. That’s not a solution - it’s a future escalation.

**Takeaway**

Conflicting requirements are a prioritization problem, not a writing problem.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that prevent fake compromise in requirement negotiation.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require explicit restatement of constraints
- ✓ (correct choice) — Require decision questions that force prioritization
- ✓ (correct choice) — Ban invented compromise solutions
- ✓ (correct choice) — Keep tone neutral and send-safe
- ✓ (correct choice) — Tie questions to trade-offs (speed vs risk, etc.)
- ✗ (distractor) — Ask AI to propose “the best solution” anyway
- ✗ (distractor) — Hide trade-offs to avoid difficult conversation
- ✗ (distractor) — Use aggressive language to push back
- ✗ (distractor) — Assume priorities are obvious from context
- ✗ (distractor) — Add emotional framing to increase urgency

**Coaching note (if selections are wrong)**

This is senior-level communication: you translate impossible constraints into decision questions that force priorities, without sounding defensive.

**Assembled prompt example**

Write a negotiation frame: Constraints (4) + Decision Questions (4). Neutral tone. No invented compromise. Send-safe.

**Feedback when correct (after Check my answer)**

You now control requirement negotiation without accepting impossible constraints as “requirements.”

**Polished prompt on result screen**

Create a send-safe negotiation frame with Constraints (4 bullets) and Decision Questions (4 bullets) that force prioritization trade-offs. Neutral tone. No invented compromise solution.

#### Scenario 3: Deliver a “No” That Preserves Relationships and Sets Conditions
**Situation**

You must decline a stakeholder request that would break scope, risk tolerance, or credibility.

You need to say no in a way that preserves the relationship and offers a controlled path forward.

If you soften too much, it becomes a yes.

If you’re blunt, you create a political problem.

If you prompt AI weakly, it usually:
- says no without conditions
- adds vague “happy to help” language
- avoids the trade-off that drives the no

This is why your prompt fails:
- no conditions structure
- no boundaries on commitments
- no expectation for controlled tone and next step

Most people avoid no, and the scope expands anyway.

To get a usable result, your prompt must define:
- Context - declining a high-pressure request
- Objective - preserve relationship while preventing scope drift
- Requirements - clear no + rationale + conditions to revisit
- Expectations - short, forward-safe message

**Expert prompt**

Draft a forward-safe decline message with this structure: No (1 sentence), Why (1 sentence, factual), Conditions to Revisit (2 bullets), Next Step (1 sentence). Tone: controlled and professional. Do not apologize excessively or assign blame.

**AI response (example)**

No: We can’t commit to that expanded scope within the current timeline without increasing rework and risk.
Why: The current plan is calibrated to a baseline + inserts model, and adding bespoke work changes the delivery trade-offs.
Conditions to Revisit:
- If leadership approves a timeline change, we can re-scope with explicit trade-offs.
- If we reduce baseline scope, we can add one targeted bespoke item without increasing risk.
Next Step: Confirm which constraint is flexible (timeline, scope, or risk tolerance), then we’ll propose an updated plan.

This is where you can see control: the prompt forced conditions, so “no” becomes a managed path forward instead of a fight.

**Learn (variant tabs)**

##### What Made This Work

The control point is conditionality. No + factual why + conditions prevents accidental yes and keeps the relationship intact.
- Requirements prevent over-apology and blame
- Objective keeps boundaries while staying forward-safe
- Expectations create a short message that can be forwarded without escalation

##### Weak vs Strong Prompt

Weak prompt:
Write a polite no to this request

Strong prompt:
Draft a forward-safe decline message with this structure: No (1 sentence), Why (1 sentence, factual), Conditions to Revisit (2 bullets), Next Step (1 sentence). Tone: controlled and professional. Do not apologize excessively or assign blame.

##### C.O.R.E. Breakdown

C - Context
Declining a high-pressure request

O - Objective
Preserve relationship while preventing scope drift

R - Requirements
Fixed structure; factual why; conditions; controlled tone; no blame/over-apology

E - Expectations
Short, forward-safe message with a managed path forward

**Pro tip**

Most people say no without conditions, and the stakeholder hears “stonewall.” Conditions turn no into a professional negotiation, not a personal rejection.

**Takeaway**

A no without conditions becomes a political problem.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that produce a forward-safe, relationship-preserving “no”.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require No/Why/Conditions/Next structure
- ✓ (correct choice) — Require factual rationale (not emotional)
- ✓ (correct choice) — Require conditions to revisit (2 bullets)
- ✓ (correct choice) — Ban blame and excessive apology
- ✓ (correct choice) — Make it forward-safe (controlled tone)
- ✗ (distractor) — Use aggressive language to prevent pushback
- ✗ (distractor) — Leave conditions out to keep it simple
- ✗ (distractor) — Over-explain with long paragraphs
- ✗ (distractor) — Promise future delivery without constraints
- ✗ (distractor) — Shift responsibility to another team

**Coaching note (if selections are wrong)**

High-stakes no’s are about control, not politeness. Structure and conditions prevent accidental commitments while keeping the relationship intact.

**Assembled prompt example**

Write a forward-safe decline: No (1), Why (1 factual), Conditions (2 bullets), Next Step (1). Controlled tone. No blame, no over-apology.

**Feedback when correct (after Check my answer)**

You now control high-stakes “no” messages without triggering escalation - that’s rare.

**Polished prompt on result screen**

Draft a forward-safe decline: No (1 sentence), Why (1 factual), Conditions to Revisit (2 bullets), Next Step (1). Controlled tone; no blame; no excessive apology.

### Lesson 3: Handle Sensitive Messaging (Risk, Trust, and Reputation)

#### Scenario 1: Write a Trust-Preserving Customer Message (No Over-Promise)
**Situation**

You need an external message about an issue without over-promising or escalating.

If you over-promise, you create a credibility problem.

If you under-communicate, you create a trust problem.

To get a usable result, your prompt must define:
- Context - customer message under uncertainty
- Objective - preserve trust without inventing certainty
- Requirements - facts only; what’s next; support path
- Expectations - short, clear, customer-safe message

**Expert prompt**

Draft a customer-safe message with: What happened (1–2 sentences, factual), What we’re doing now (2 bullets), What you can do (1 bullet), Support (1 sentence). Do not promise timelines unless confirmed. Controlled, professional tone.

**AI response (example)**

What happened: We identified an issue affecting some users’ access to the service. We are still confirming full impact.
What we’re doing now:
- Investigating root cause and validating the mitigation path
- Monitoring for additional impact and updating internal checkpoints
What you can do:
- If you’re blocked, contact support with your account ID so we can prioritize review
Support: We’ll share an update as soon as we can confirm the next checkpoint.

Notice how credibility is protected: the prompt banned timeline invention while still giving users a clear path.

**Learn (variant tabs)**

##### What Made This Work

The control point is trust without promises: factual impact + what we’re doing + what the customer can do.
- Requirements ban timeline invention
- Expectations force support path and next checkpoint framing
- Objective keeps tone professional and calm

##### Weak vs Strong Prompt

Weak prompt:
Write an apology email to customers

Strong prompt:
Draft a customer-safe message with: What happened (1–2 sentences, factual), What we’re doing now (2 bullets), What you can do (1 bullet), Support (1 sentence). Do not promise timelines unless confirmed. Controlled, professional tone.

##### C.O.R.E. Breakdown

C - Context
Customer message under uncertainty

O - Objective
Preserve trust without invented certainty

R - Requirements
Facts only; no unconfirmed timelines; clear next actions + support path

E - Expectations
Short, customer-safe message

**Pro tip**

If you let the model “sound confident,” it will invent timelines. In external messaging, invented timelines are reputation debt.

**Takeaway**

Trust is facts + next checkpoint, not reassurance.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that prevent over-promising in customer messages.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Ban unconfirmed timelines
- ✓ (correct choice) — Require factual “what happened” section
- ✓ (correct choice) — Require “what we’re doing now” bullets
- ✓ (correct choice) — Require a customer action/support path
- ✓ (correct choice) — Keep tone controlled and professional
- ✗ (distractor) — Ask for strong reassurance language
- ✗ (distractor) — Promise resolution by a specific time
- ✗ (distractor) — Hide uncertainty to sound competent
- ✗ (distractor) — Add technical root-cause speculation
- ✗ (distractor) — Write a long narrative apology

**Coaching note (if selections are wrong)**

External messaging is where prompt drift becomes reputation risk. Facts, constraints, and support paths keep you safe.

**Assembled prompt example**

Write a customer-safe update: factual impact, what we’re doing, what the customer can do, support. No unconfirmed timelines.

**Feedback when correct (after Check my answer)**

You now control trust messaging without over-promising - most teams accidentally create credibility debt here.

**Polished prompt on result screen**

Draft a customer-safe message with fixed sections and no unconfirmed timelines. Facts only, clear next actions, support path, controlled tone.

#### Scenario 2: Reconcile Messy Incident Notes Into an Exec + Customer Pair
**Situation**

You have messy incident notes and need two aligned messages: one for executives, one for customers.

If the messages diverge, you create credibility risk internally and externally.

To get a usable result, your prompt must define:
- Context - one incident, two audiences
- Objective - consistent facts with audience-appropriate framing
- Requirements - shared facts; different emphasis; no invention
- Expectations - two outputs with consistent truth boundaries

**Expert prompt**

Create two messages from the same incident notes:
1) Exec update: Status/Risk/Ask/Next (bullets).
2) Customer update: What happened / What we’re doing / What you can do / Support.
Use only confirmed facts. Mark gaps [Unknown]. No invented timelines.

**AI response (example)**

**Exec update**
- Status: issue identified; scope still being confirmed [Unknown]
- Risk: credibility and churn risk if we over-promise timelines
- Ask: confirm whether we proactively message all users or only affected segment
- Next: publish checkpoint after impact is confirmed

**Customer update**
What happened: We identified an issue affecting some users’ access; we are confirming full impact.
What we’re doing: investigating + validating mitigation.
What you can do: contact support if blocked.
Support: we’ll update after the next checkpoint.

The difference is consistency control: one prompt produced two audience outputs without changing the truth boundaries.

**Learn (variant tabs)**

##### What Made This Work

The control point is shared facts + audience framing. You required two outputs but forced one truth boundary.
- Requirements ban invented timelines
- Expectations define both formats
- Objective preserves credibility across audiences

##### Weak vs Strong Prompt

Weak prompt:
Write messages for execs and customers

Strong prompt:
Create two messages from the same incident notes:
1) Exec update: Status/Risk/Ask/Next (bullets).
2) Customer update: What happened / What we’re doing / What you can do / Support.
Use only confirmed facts. Mark gaps [Unknown]. No invented timelines.

##### C.O.R.E. Breakdown

C - Context
One incident, two audiences

O - Objective
Consistent facts with audience-appropriate framing

R - Requirements
Use confirmed facts only; mark [Unknown]; no invented timelines; defined formats

E - Expectations
Two aligned outputs from one prompt

**Pro tip**

Two-audience messaging is where most teams contradict themselves. Make “shared facts” an explicit requirement, or AI will drift the story for each audience.

**Takeaway**

If your audiences hear different facts, you don’t have comms - you have risk.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that keep exec and customer messaging aligned.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require two explicit output formats
- ✓ (correct choice) — Force shared confirmed facts (truth boundary)
- ✓ (correct choice) — Mark gaps [Unknown]
- ✓ (correct choice) — Ban invented timelines
- ✓ (correct choice) — Specify audience-appropriate emphasis (not new facts)
- ✗ (distractor) — Let AI write “the best version” for each audience
- ✗ (distractor) — Add reassuring timelines for customers
- ✗ (distractor) — Hide uncertainty for execs to look strong
- ✗ (distractor) — Allow different facts per audience for readability
- ✗ (distractor) — Ask for technical root cause speculation

**Coaching note (if selections are wrong)**

The hard part isn’t writing; it’s consistency. Your prompt must lock truth boundaries so outputs don’t drift by audience.

**Assembled prompt example**

From one incident note set, produce exec + customer updates with defined formats. Shared facts only, gaps [Unknown], no invented timelines.

**Feedback when correct (after Check my answer)**

You now control multi-audience consistency - most teams accidentally contradict themselves.

**Polished prompt on result screen**

Create exec + customer updates from the same notes with fixed formats. Confirmed facts only; mark gaps [Unknown]; no invented timelines; audience framing without changing facts.

#### Scenario 3: Write a “We Were Wrong” Message That Preserves Authority
**Situation**

A prior message created a wrong expectation. You must correct it without sounding evasive or chaotic.

If you over-apologize, you look unstable.

If you under-correct, you look dishonest.

To get a usable result, your prompt must define:
- Context - correcting a wrong expectation
- Objective - clarify, reset expectation, preserve authority
- Requirements - what changed, what’s true now, what’s next, no blame
- Expectations - short, forward-safe correction message

**Expert prompt**

Draft a correction message with: What changed (1 sentence), What’s true now (2 bullets), What happens next (2 bullets), and a closing line that preserves authority (1 sentence). No blame. Controlled tone.

**AI response (example)**

What changed: We learned new information that invalidates the previous assumption.
What’s true now:
- The timeline confidence is not decision-ready without a dependency checkpoint
- We will not confirm a date until the checkpoint is validated
What happens next:
- We will publish the checkpoint outcome after owner confirmation
- We will update the plan with an explicit trade-off decision if sequencing changes
Closing: We’ll keep updates factual and decision-ready as the signal becomes confirmed.

Notice how authority is preserved: the prompt forced “what’s true now” and “what happens next” without blame or drama.

**Learn (variant tabs)**

##### What Made This Work

The control point is authoritative correction: what changed, what is true now, what happens next.
- Requirements ban blame and over-apology
- Expectations keep it short and forward-safe
- Objective resets expectations without losing authority

##### Weak vs Strong Prompt

Weak prompt:
Write an apology for being wrong

Strong prompt:
Draft a correction message with: What changed (1 sentence), What’s true now (2 bullets), What happens next (2 bullets), and a closing line that preserves authority (1 sentence). No blame. Controlled tone.

##### C.O.R.E. Breakdown

C - Context
Correcting a wrong expectation

O - Objective
Reset expectations while preserving authority

R - Requirements
Fixed structure; controlled tone; no blame; no drama

E - Expectations
Short, forward-safe correction message

**Pro tip**

Most corrections fail because they’re emotional. Authority is structure: what changed, what’s true, what’s next.

**Takeaway**

Correction messages must be factual and structured, not apologetic prose.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that make correction messages authoritative and safe.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require “what changed” + “what’s true now”
- ✓ (correct choice) — Require “what happens next” bullets
- ✓ (correct choice) — Ban blame language
- ✓ (correct choice) — Keep tone controlled and non-dramatic
- ✓ (correct choice) — Add an authority-preserving closing line
- ✗ (distractor) — Over-apologize to show sincerity
- ✗ (distractor) — Hide the change to avoid attention
- ✗ (distractor) — Assign fault to another team
- ✗ (distractor) — Promise a timeline to calm people down
- ✗ (distractor) — Write a long narrative explanation

**Coaching note (if selections are wrong)**

Corrections are credibility tests. Structure and bounded certainty keep you authoritative while resetting expectations.

**Assembled prompt example**

Write a correction: what changed (1), what’s true now (2 bullets), what happens next (2 bullets), authority closing (1). Controlled tone; no blame.

**Feedback when correct (after Check my answer)**

You now control expectation resets without losing authority - that’s senior-level credibility.

**Polished prompt on result screen**

Draft a structured correction message: What changed (1), What’s true now (2 bullets), What happens next (2 bullets), Closing (1). Controlled tone; no blame; no invented timelines.

### Lesson 4: Make Decisions With AI (Bounded Certainty, No Hallucination)

#### Scenario 1: Turn Inputs Into a Decision Brief (Not a Recommendation Dump)
**Situation**

You need a decision brief where AI helps structure reasoning, not invent it.

To get a usable result, your prompt must define:
- Context - decision brief with incomplete inputs
- Objective - structure the brief without hallucinating data
- Requirements - options, risks, assumptions, decision question
- Expectations - concise decision brief with bounded certainty

**Expert prompt**

Draft a decision brief with: Decision Question (1), Options (2 options, 2 bullets each), Risks (3 bullets), Assumptions (3 bullets), and Recommendation (1 bullet with condition). Mark unknowns [Unknown]. No invented data.

**AI response (example)**

**Decision Question**: Do we hold the current plan pending checkpoint, or re-sequence now to reduce risk?

**Options**
- Hold pending checkpoint: preserves plan; risk of late re-plan
- Re-sequence now: reduces dependency exposure; coordination cost

**Risks**
- Rework risk if assumptions change after commitment
- Credibility risk if we ship invented certainty
- Execution risk if teams proceed on the wrong plan

**Assumptions**
- Dependency viability can be confirmed by a checkpoint [Unknown]
- Teams can absorb coordination cost without slip [Unknown]
- Success criteria can be defined quickly enough to guide pilot

**Recommendation**
- Recommend hold only if checkpoint can confirm viability before the decision deadline; otherwise re-sequence.

Notice how bounded certainty is enforced: the prompt forced assumptions and [Unknown] tags so the model can’t “sound right” by making things up.

**Learn (variant tabs)**

##### What Made This Work

The control point is preventing recommendation theater: options, risks, assumptions, and a conditional recommendation.
- Requirements ban invented data
- Expectations force bounded certainty markers
- Objective structures reasoning without pretending the inputs are complete

##### Weak vs Strong Prompt

Weak prompt:
Recommend what we should do

Strong prompt:
Draft a decision brief with: Decision Question (1), Options (2 options, 2 bullets each), Risks (3 bullets), Assumptions (3 bullets), and Recommendation (1 bullet with condition). Mark unknowns [Unknown]. No invented data.

##### C.O.R.E. Breakdown

C - Context
Decision brief with incomplete inputs

O - Objective
Structure decision without hallucination

R - Requirements
Options/risks/assumptions; [Unknown] tags; conditional recommendation; no invented data

E - Expectations
Concise, decision-ready brief with bounded certainty

**Pro tip**

If you ask for “the best recommendation,” AI will invent justification. Force assumptions and conditionality or you’re buying confidence, not help.

**Takeaway**

A recommendation without assumptions is just confident fiction.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that prevent hallucinated decision briefs.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require options + risks + assumptions
- ✓ (correct choice) — Require [Unknown] tagging
- ✓ (correct choice) — Ban invented data
- ✓ (correct choice) — Require a conditional recommendation
- ✓ (correct choice) — Include an explicit decision question
- ✗ (distractor) — Ask for a confident recommendation without constraints
- ✗ (distractor) — Let AI add supporting metrics
- ✗ (distractor) — Remove assumptions to keep it clean
- ✗ (distractor) — Use emotional persuasion language
- ✗ (distractor) — Write a long narrative analysis

**Coaching note (if selections are wrong)**

Decision briefs are where hallucination is most dangerous. Options + risks + assumptions + [Unknown] is the safety system.

**Assembled prompt example**

Write a decision brief with decision question, options, risks, assumptions, and a conditional recommendation. Mark [Unknown]. No invented data.

**Feedback when correct (after Check my answer)**

You now control bounded certainty in decision work - that’s the final-level skill.

**Polished prompt on result screen**

Draft a decision brief: Decision Question (1), Options (2×2 bullets), Risks (3), Assumptions (3), Recommendation (1 conditional). Mark [Unknown]. No invented data.

#### Scenario 2: Synthesize Conflicting Inputs Into a Decision Threshold
**Situation**

Inputs conflict and you need a threshold that triggers a decision.

To get a usable result, your prompt must define:
- Context - conflicting inputs with time pressure
- Objective - define a decision threshold
- Requirements - trigger conditions, next action, owner
- Expectations - threshold statement that can be used operationally

**Expert prompt**

Write a decision threshold statement with: Trigger (2 bullets), Decision (1 bullet), Next Action (2 bullets). Use [Unknown] if any trigger requires data not yet confirmed. No invented numbers.

**AI response (example)**

**Trigger**
- If dependency viability is not confirmed by the next checkpoint [Unknown: checkpoint date]
- If downstream teams must commit sequencing decisions before viability is confirmed

**Decision**
- Re-sequence to remove dependency exposure from the critical path

**Next Action**
- Define the checkpoint owner and confirmation criteria [Unknown]
- Communicate the decision deadline so teams don’t execute on the wrong assumption

This is where you can see operator-level prompting: the prompt produced an operational threshold, not a “recommendation.”

**Learn (variant tabs)**

##### What Made This Work

The control point is operationalization: triggers → decision → next action.
- Requirements ban invented numbers and force [Unknown] where needed
- Objective turns ambiguity into a threshold
- Expectations produce something teams can actually run

##### Weak vs Strong Prompt

Weak prompt:
Tell me what to do

Strong prompt:
Write a decision threshold statement with: Trigger (2 bullets), Decision (1 bullet), Next Action (2 bullets). Use [Unknown] if any trigger requires data not yet confirmed. No invented numbers.

##### C.O.R.E. Breakdown

C - Context
Conflicting inputs with time pressure

O - Objective
Define a decision threshold

R - Requirements
Trigger/Decision/Next structure; [Unknown] tags; no invented numbers

E - Expectations
Operational threshold statement

**Pro tip**

If you don’t force triggers, AI will give you advice. Advice doesn’t run. Thresholds run.

**Takeaway**

Decision thresholds beat recommendations in messy reality.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five elements that turn ambiguity into an operational decision threshold.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require Trigger/Decision/Next structure
- ✓ (correct choice) — Ban invented numbers
- ✓ (correct choice) — Require [Unknown] tagging for missing trigger data
- ✓ (correct choice) — Tie triggers to a decision deadline
- ✓ (correct choice) — Make next actions explicit
- ✗ (distractor) — Ask for general advice and best practices
- ✗ (distractor) — Hide unknowns to keep it confident
- ✗ (distractor) — Add persuasive language
- ✗ (distractor) — Write long narrative analysis
- ✗ (distractor) — Assume trigger criteria without stating it

**Coaching note (if selections are wrong)**

Thresholds are how senior teams avoid endless debate. Prompting for triggers and actions forces operational clarity without hallucination.

**Assembled prompt example**

Write a decision threshold: triggers, decision, next actions. [Unknown] for missing trigger data. No invented numbers.

**Feedback when correct (after Check my answer)**

You now control decision thresholds - this is beyond “prompting”; it’s operational leverage.

**Polished prompt on result screen**

Create an operational decision threshold with Trigger (2), Decision (1), Next Action (2). Tag missing trigger data [Unknown]. No invented numbers.

#### Scenario 3: Write the “Final Call” Message That Locks the Decision
**Situation**

A decision has been made, but the organization will reinterpret it unless you lock it precisely.

To get a usable result, your prompt must define:
- Context - final decision communication
- Objective - lock scope, rationale, and next steps
- Requirements - decided vs deferred; owners; no invented details
- Expectations - forward-safe final call message

**Expert prompt**

Draft a final decision message with: Decision (1 sentence), Rationale (2 bullets), Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets with owners or [TBD]). Controlled tone; no invented details.

**AI response (example)**

Decision: We are proceeding with a baseline + inserts onboarding model and piloting before scale.
Rationale:
- Balances consistency with function realities while keeping ownership explicit
- Reduces rework and credibility risk versus a broad rollout
Decided Today:
- Scope boundary (mandatory vs optional) set
- Ownership model confirmed
- Pilot-first rollout approved
Deferred:
- Success criteria per function [TBD]
- Review cadence and approver list [TBD]
Next:
- Draft baseline checklist [Owner: People Ops]
- Collect inserts [Owners: Function leads]
- Schedule checkpoint review [Owner: Program lead]

Pay attention to how drift is prevented: the prompt forced Decided vs Deferred so the organization can’t “fill in” missing decisions later.

**Learn (variant tabs)**

##### What Made This Work

The control point is drift prevention: Decision + decided vs deferred + owned next actions.
- Requirements ban invented details
- Expectations force [TBD] where needed
- Objective locks interpretation so the org doesn’t rewrite the decision later

##### Weak vs Strong Prompt

Weak prompt:
Write a message announcing the decision

Strong prompt:
Draft a final decision message with: Decision (1 sentence), Rationale (2 bullets), Decided Today (3 bullets), Deferred (2 bullets), Next (3 bullets with owners or [TBD]). Controlled tone; no invented details.

##### C.O.R.E. Breakdown

C - Context
Final decision communication

O - Objective
Lock scope, rationale, and next steps

R - Requirements
Decided vs deferred; owners or [TBD]; controlled tone; no invention

E - Expectations
Forward-safe message that prevents drift

**Pro tip**

Most decisions drift because “deferred” isn’t stated. If you don’t label what wasn’t decided, people will decide it for you after the meeting.

**Takeaway**

Decisions drift when deferrals are unspoken.

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that lock a decision and prevent organizational drift.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require Decided vs Deferred sections
- ✓ (correct choice) — Require owners or [TBD] for next actions
- ✓ (correct choice) — Ban invented details
- ✓ (correct choice) — Include rationale bullets (not just announcement)
- ✓ (correct choice) — Keep it forward-safe and controlled tone
- ✗ (distractor) — Hide deferred items to sound complete
- ✗ (distractor) — Invent owners and dates for clarity
- ✗ (distractor) — Use emotional celebration tone
- ✗ (distractor) — Write a long narrative recap
- ✗ (distractor) — Leave next steps vague

**Coaching note (if selections are wrong)**

Final-call messages are interpretation control. Decided vs deferred + owned next steps is how you stop the org from rewriting the decision.

**Assembled prompt example**

Write a final call: Decision (1), Rationale (2 bullets), Decided Today (3), Deferred (2), Next (3 with owners or [TBD]). No invented details.

**Feedback when correct (after Check my answer)**

You now control decision lock-in - this is where senior operators outperform everyone else.

**Polished prompt on result screen**

Draft a forward-safe final decision message with Decision, Rationale, Decided Today, Deferred, Next (with owners/[TBD]). Controlled tone; no invented details.

---

## Track 6 — Content Creation

*Source:* `lib/data/tracks/track6_content_creation.dart`

### Lesson 1: Rewrite Content for Tone and Style

#### Scenario 1: Rewrite for a More Professional Tone
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *meaning preservation under tone change*.
- Requirements prevented “helpful edits” (new claims, promises, or justification)
- Expectations made it paste-ready (no commentary, no options)
- Objective kept the rewrite forward-safe instead of “more formal but different”

##### Weak vs Strong Prompt

Weak prompt:
Make this more professional

Strong prompt:
Rewrite the message in a more professional, forward-safe tone. Preserve meaning and overall structure; keep length within u00b115%; remove casual/defensive language; do not add new claims/promises/dates/justifications. Return only the rewritten message.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

C.O.R.E. skill check: choose the five prompt elements that keep a tone rewrite professional *without* changing meaning.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve the original meaning and overall structure
- ✓ (correct choice) — Keep length within u00b115% (avoid expansion drift)
- ✓ (correct choice) — Remove casual and defensive language
- ✓ (correct choice) — Ban new claims, promises, dates, or justifications
- ✓ (correct choice) — Return only the rewritten message (paste-ready)
- ✗ (distractor) — Add a persuasive paragraph to strengthen the argument
- ✗ (distractor) — Improve clarity by adding helpful background assumptions
- ✗ (distractor) — Make it longer to sound more professional
- ✗ (distractor) — Add reassurance to reduce stakeholder concern
- ✗ (distractor) — Change the structure to a new format (bullets, headings)

**Coaching note (if selections are wrong)**

The risk isn’t grammar—it’s drift. Your prompt must lock meaning and ban “helpful” additions so the tone upgrade doesn’t rewrite the message.

**Assembled prompt example**

Rewrite this message to be more professional and forward-safe. Preserve meaning and structure; keep length within u00b115%; remove casual/defensive phrasing; don’t add new claims/promises/dates. Return only the rewrite.

**Feedback when correct (after Check my answer)**

You now control tone without content drift—most people accidentally approve a different message.

**Polished prompt on result screen**

Rewrite in a professional, forward-safe tone while preserving meaning and structure. Keep length within u00b115%. Remove casual/defensive phrasing. Do not add new claims, promises, dates, or justifications. Return only the rewritten message.

#### Scenario 2: Rewrite for a More Concise Style
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *compression with a preserved decision signal*.
- Requirements protected commitments (no scope/date drift)
- Expectations forced a stable shape (Status/Next) so the model couldn’t ramble
- Objective focused on what matters under skim pressure: what changed + what happens next

##### Weak vs Strong Prompt

Weak prompt:
Make this shorter

Strong prompt:
Rewrite to be concise while keeping essential meaning. Remove redundancy. Do not change commitments/owners/dates/scope. Output as exactly 2 bullets: Status and Next. Return only the bullets.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that compress an update *without* losing the decision signal.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Keep all essential meaning (facts + next step)
- ✓ (correct choice) — Remove redundancy and filler only
- ✓ (correct choice) — Do not change commitments, owners, dates, or scope
- ✓ (correct choice) — Force output shape: exactly 2 bullets (Status, Next)
- ✓ (correct choice) — Return only the final output (no explanations)
- ✗ (distractor) — Add motivational language to keep energy high
- ✗ (distractor) — Rewrite with new examples to improve clarity
- ✗ (distractor) — Add assumptions to make the update feel complete
- ✗ (distractor) — Change the tone to be more enthusiastic
- ✗ (distractor) — Expand into a detailed paragraph so nothing is missed

**Coaching note (if selections are wrong)**

Under skim pressure, the failure mode is deleting the one operational line. Your prompt must protect the “what changed” and “what happens next.”

**Assembled prompt example**

Rewrite this to be concise. Keep essential meaning (facts + next step). Remove filler. Don’t change commitments/owners/dates/scope. Output exactly 2 bullets: Status, Next.

**Feedback when correct (after Check my answer)**

You’re now compressing without losing accountability—most people trade clarity for brevity and regret it later.

**Polished prompt on result screen**

Rewrite to be concise while preserving essential meaning. Remove redundancy only. Do not change commitments/owners/dates/scope. Output exactly 2 bullets: Status and Next. Return only the bullets.

#### Scenario 3: Rewrite for a Friendlier Tone
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *warmth without liability*.
- Requirements prevented over-apology and casual drift
- Expectations capped length so warmth didn’t become fluff
- Objective kept the message professional while still human

##### Weak vs Strong Prompt

Weak prompt:
Make this friendlier

Strong prompt:
Rewrite to be friendlier while staying professional. Preserve meaning; add one brief acknowledgement (no over-apology); max 3 sentences; no slang/emojis. Return only the rewritten message.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that make tone friendlier without becoming casual or over-apologetic.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve the original meaning
- ✓ (correct choice) — Add one brief acknowledgement line (no over-apology)
- ✓ (correct choice) — Keep it concise (max 3 sentences)
- ✓ (correct choice) — Stay professional (no slang or emojis)
- ✓ (correct choice) — Return only the rewritten message (paste-ready)
- ✗ (distractor) — Add playful jokes to build rapport
- ✗ (distractor) — Apologise strongly to sound empathetic
- ✗ (distractor) — Invent a reason for the delay to reassure them
- ✗ (distractor) — Make it much longer to sound thoughtful
- ✗ (distractor) — Add emojis to make it warmer

**Coaching note (if selections are wrong)**

Warmth that invents accountability is expensive. Specify acknowledgement + boundaries so the model can’t “people-please” its way into risk.

**Assembled prompt example**

Rewrite to be friendlier but still professional. Preserve meaning. Add one brief acknowledgement (no over-apology). Max 3 sentences. No slang or emojis. Return only the rewrite.

**Feedback when correct (after Check my answer)**

You’ve learned to add warmth without creating liability—most users over-correct and lose control.

**Polished prompt on result screen**

Rewrite in a friendlier but still professional tone. Preserve meaning. Add one brief acknowledgement (no over-apology). Keep to max 3 sentences. No slang/emojis. Return only the rewritten message.

### Lesson 2: Rewrite Content for Different Audiences

#### Scenario 1: Rewrite for a Senior Leadership Audience
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *decision structure under uncertainty*.
- Requirements forced bounded certainty ([Unknown] instead of confident guessing)
- Expectations locked the exec lens (Outcome/Risk/Ask)
- Objective ensured the update produces a decision, not information noise

##### Weak vs Strong Prompt

Weak prompt:
Rewrite for senior leadership

Strong prompt:
Rewrite for senior leadership. Output exactly 3 bullets: Outcome, Risk, Ask. Facts only; mark gaps [Unknown]. Keep concise and forward-safe. Do not invent mitigation claims. Return only the bullets.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that produce an exec-ready Outcome/Risk/Ask without invented certainty.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Force exactly 3 bullets: Outcome, Risk, Ask
- ✓ (correct choice) — Require confirmed facts only (no guessing)
- ✓ (correct choice) — Mark missing details as [Unknown]
- ✓ (correct choice) — Keep it concise and forward-safe
- ✓ (correct choice) — Ban invented mitigation claims
- ✗ (distractor) — Add a motivating intro to set tone
- ✗ (distractor) — Remove risk language to sound confident
- ✗ (distractor) — Add likely timelines even if not confirmed
- ✗ (distractor) — Include background process detail for completeness
- ✗ (distractor) — Write a long narrative paragraph

**Coaching note (if selections are wrong)**

This is where most AI users fail: they ask for “exec tone” and get confident vagueness. Force structure + bounded certainty so the output stays decision-ready.

**Assembled prompt example**

Rewrite for senior leadership as exactly 3 bullets: Outcome, Risk, Ask. Facts only. Mark gaps [Unknown]. No invented mitigations. Return only the bullets.

**Feedback when correct (after Check my answer)**

You’re now writing exec updates that trigger decisions instead of consuming attention.

**Polished prompt on result screen**

Rewrite for senior leadership using exactly 3 bullets: Outcome, Risk, Ask. Facts only; mark unknowns as [Unknown]. Keep concise and forward-safe. Do not invent mitigations. Return only the bullets.

#### Scenario 2: Rewrite for a Customer Audience
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *reassurance without guarantees*.
- Requirements prevented invented timelines/causes
- Expectations forced a complete customer structure (know / next / update)
- Objective kept the message calm and credible instead of vague or risky

##### Weak vs Strong Prompt

Weak prompt:
Rewrite this for a customer

Strong prompt:
Rewrite for a customer: calm, confident, respectful. Facts only; no invented timelines/causes/guarantees. Include what we know, what we’re doing next, and when we’ll update. If unknown, say it’s being investigated. Return only the rewrite.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that make a customer update calm and clear without accidental promises.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Keep tone calm, confident, and respectful
- ✓ (correct choice) — Use confirmed facts only (no guessing)
- ✓ (correct choice) — Ban invented timelines, causes, or guarantees
- ✓ (correct choice) — Force structure: what we know / next / when we’ll update
- ✓ (correct choice) — If unknown, say it’s being investigated (don’t fill gaps)
- ✗ (distractor) — Add a promise that it will be fixed soon
- ✗ (distractor) — Explain internal process details for transparency
- ✗ (distractor) — Use casual friendliness to reduce tension
- ✗ (distractor) — Guess the root cause to sound competent
- ✗ (distractor) — Add discounts or compensation language

**Coaching note (if selections are wrong)**

The trap is “helpful certainty.” You want reassurance *inside boundaries*, not invented commitments that become someone else’s contract.

**Assembled prompt example**

Rewrite for a customer: calm and respectful. Facts only; no invented timelines/causes/guarantees. Include what we know, what we’re doing next, and when we’ll update. If unknown, say it’s being investigated.

**Feedback when correct (after Check my answer)**

You now control customer tone without over-committing—most users accidentally prompt the model into making promises.

**Polished prompt on result screen**

Rewrite for a customer in a calm, confident, respectful tone. Use confirmed facts only. Do not invent timelines, causes, or guarantees. Include what we know, what we’ll do next, and when we’ll update. If something is unknown, say it’s being investigated.

#### Scenario 3: Rewrite for a Non-Expert Audience
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *simplification without distortion*.
- Requirements kept caveats visible (validation still pending)
- Expectations demanded a specific shape (short explanation + example)
- The “no invented analogies” rule prevents the model from changing meaning to be relatable

##### Weak vs Strong Prompt

Weak prompt:
Explain this simply

Strong prompt:
Rewrite for a non-expert audience: plain language, keep key caveats, no invented analogies. Output: 2–3 sentence explanation + one concrete example using only provided details. Return only the content.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that make a non-expert rewrite clear, accurate, and respectful.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Use plain language (avoid jargon)
- ✓ (correct choice) — Keep key caveats/constraints visible
- ✓ (correct choice) — Ban invented analogies and new examples
- ✓ (correct choice) — Force structure: 2–3 sentences + one concrete example
- ✓ (correct choice) — Require the example to use only provided details
- ✗ (distractor) — Add jokes to keep it engaging
- ✗ (distractor) — Remove caveats to keep it simple
- ✗ (distractor) — Add new analogies to explain faster
- ✗ (distractor) — Assume the audience is fully technical
- ✗ (distractor) — Expand into a long educational lesson

**Coaching note (if selections are wrong)**

The trap is “simple but wrong.” Protect constraints and ban invention so the non-expert version stays true and usable.

**Assembled prompt example**

Rewrite for a non-expert: plain language, keep key caveats, no invented analogies. Output 2–3 sentences + one concrete example using only provided details. Return only the rewrite.

**Feedback when correct (after Check my answer)**

You’re now simplifying without distortion—most users trade accuracy for friendliness.

**Polished prompt on result screen**

Rewrite for a non-expert audience using plain language. Keep key caveats/constraints. Do not invent analogies or new examples. Output: 2–3 sentences plus one concrete example using only provided details. Return only the rewritten content.

### Lesson 3: Summarise Content Effectively

#### Scenario 1: Summarise an Email Into Key Points
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *decision extraction with bounded certainty*.
- Expectations forced a decision format (Decisions / Actions / Questions)
- Requirements banned invented owners/dates and used [Unknown]
- Objective prevented a “nice recap” that still leaves the team misaligned

##### Weak vs Strong Prompt

Weak prompt:
Summarise this email

Strong prompt:
Summarise into Decisions, Action Items, Open Questions. Facts only; no invented owners/dates. Mark missing details [Unknown]. Keep concise and forward-safe. Return only the summary.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that extract decisions and action items without invented completeness.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Use fixed sections: Decisions / Action Items / Open Questions
- ✓ (correct choice) — Facts only (no invented owners/dates)
- ✓ (correct choice) — Mark missing details as [Unknown]
- ✓ (correct choice) — Keep it concise and forward-safe
- ✓ (correct choice) — Return only the summary (no commentary)
- ✗ (distractor) — Add recommended next steps for the team
- ✗ (distractor) — Guess the owner based on context
- ✗ (distractor) — Remove open questions to look decisive
- ✗ (distractor) — Write a narrative paragraph to capture nuance
- ✗ (distractor) — Add a friendly intro and closing

**Coaching note (if selections are wrong)**

Most summaries break trust by hiding gaps. “Open Questions + [Unknown]” is how you keep alignment without guessing.

**Assembled prompt example**

Summarise into Decisions, Action Items, Open Questions. Facts only; no invented owners/dates. Mark missing details [Unknown]. Keep concise and forward-safe. Return only the summary.

**Feedback when correct (after Check my answer)**

You’re now extracting decisions without inventing certainty—this is where you gain an operational advantage.

**Polished prompt on result screen**

Summarise the email into three sections: Decisions, Action Items, Open Questions. Use confirmed facts only. Do not invent owners or dates; mark missing details as [Unknown]. Keep concise and forward-safe. Return only the summary.

#### Scenario 2: Summarise Meeting Notes into Actionable Steps
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *certainty hygiene*.
- Expectations forced three certainty buckets (Agreed / Proposed / Open)
- Requirements prevented invented owners/dates and used [Unknown]
- Objective produced actionability without fake alignment

##### Weak vs Strong Prompt

Weak prompt:
Turn these notes into action items

Strong prompt:
Summarise into Agreed Actions, Proposed Ideas (not decided), Open Decisions. For each action include Owner/Due Date; mark missing as [Unknown]. Do not invent decisions/owners/deadlines. Return only the summary.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn messy notes into action steps without inventing alignment.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Separate Agreed Actions vs Proposed Ideas vs Open Decisions
- ✓ (correct choice) — Require Owner and Due Date fields for each action
- ✓ (correct choice) — Mark missing Owner/Due Date as [Unknown]
- ✓ (correct choice) — Ban invented decisions, owners, or deadlines
- ✓ (correct choice) — Keep tone neutral and operational
- ✗ (distractor) — Resolve open decisions to sound decisive
- ✗ (distractor) — Invent owners based on seniority
- ✗ (distractor) — Add deadlines to create urgency
- ✗ (distractor) — Write a long narrative summary paragraph
- ✗ (distractor) — Remove “proposed ideas” to reduce confusion

**Coaching note (if selections are wrong)**

The highest-risk failure is “cleaning” ambiguity into fake certainty. Preserve the buckets so execution matches reality.

**Assembled prompt example**

Summarise notes into Agreed Actions, Proposed Ideas (not decided), Open Decisions. Include Owner and Due Date for actions; mark missing as [Unknown]. Don’t invent decisions/owners/deadlines. Return only the summary.

**Feedback when correct (after Check my answer)**

You’re now producing meeting outputs that drive action without creating fake commitments.

**Polished prompt on result screen**

Summarise meeting notes into three sections: Agreed Actions, Proposed Ideas (not decided), Open Decisions. For actions include Owner and Due Date; mark missing as [Unknown]. Do not invent decisions, owners, or deadlines. Neutral, operational tone.

#### Scenario 3: Summarise a Document into One Sentence
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *quote safety*.
- Expectations forced exactly one sentence
- Requirements banned invented specificity and hype
- Objective protected intent so the sentence can be repeated without distortion

##### Weak vs Strong Prompt

Weak prompt:
Summarise this in one sentence

Strong prompt:
Exactly one sentence. Preserve intent. Facts only; don’t invent specifics. Plain, quoteable tone; no hype. Return only the sentence.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that produce a quote-safe one-sentence summary without invented specifics.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Exactly one sentence
- ✓ (correct choice) — Preserve original intent
- ✓ (correct choice) — Facts only (no invented specifics)
- ✓ (correct choice) — Plain, quoteable tone (no hype)
- ✓ (correct choice) — Return only the sentence (no extras)
- ✗ (distractor) — Add a confident claim to make it strong
- ✗ (distractor) — Use persuasive language to increase impact
- ✗ (distractor) — Include multiple sentences for nuance
- ✗ (distractor) — Add likely details to sound complete
- ✗ (distractor) — Use jargon to sound professional

**Coaching note (if selections are wrong)**

In one-liners, the danger is invented precision. Lock the sentence count and ban invention so the summary stays quote-safe.

**Assembled prompt example**

Summarise in exactly one sentence. Preserve intent. Facts only—don’t invent specifics. Plain, quoteable tone. Return only the sentence.

**Feedback when correct (after Check my answer)**

You’re now generating quote-safe summaries—most users accidentally prompt the model into creating new claims.

**Polished prompt on result screen**

Summarise in exactly one sentence. Preserve the original intent. Use confirmed facts only; do not invent specifics. Keep it plain and quoteable (no hype). Return only the sentence.

### Lesson 4: Expand Content When Needed

#### Scenario 1: Expand a Short Note Into a Full Paragraph
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *safe expansion*.
- Requirements banned new facts and promises
- Expectations set a tight word window to keep it useful (not endless)
- Objective made the paragraph readable without changing the underlying claim

##### Weak vs Strong Prompt

Weak prompt:
Turn this into a paragraph

Strong prompt:
Expand into one paragraph (70–90 words). Preserve meaning. Add only clarifying context; no new facts/dates/causes/promises. Professional tone. Return only the paragraph.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that expand a note into a useful paragraph without inventing details.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve the original meaning
- ✓ (correct choice) — Ban new facts, dates, causes, or promises
- ✓ (correct choice) — Allow only clarifying context (no new claims)
- ✓ (correct choice) — Set a word target (70–90 words)
- ✓ (correct choice) — Return only the paragraph
- ✗ (distractor) — Add plausible examples to make it concrete
- ✗ (distractor) — Invent a timeline to increase clarity
- ✗ (distractor) — Make it long to cover everything
- ✗ (distractor) — Add a confident conclusion to sound decisive
- ✗ (distractor) — Add new commitments to reassure readers

**Coaching note (if selections are wrong)**

This is where most AI users get burned: expansion invites invention. Your prompt must prohibit new facts and cap length.

**Assembled prompt example**

Expand this note into one paragraph (70–90 words). Preserve meaning. Add only clarifying context—no new facts/dates/causes/promises. Professional tone. Return only the paragraph.

**Feedback when correct (after Check my answer)**

You’re now expanding content without hallucinated details—this is a real professional advantage.

**Polished prompt on result screen**

Expand into one professional paragraph (70–90 words). Preserve meaning. Add only clarifying context. Do not add new facts, dates, causes, or promises. Return only the paragraph.

#### Scenario 2: Expand Bullet Points Into a Short Explanation
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *connective explanation without invention*.
- Requirements banned new facts/owners/dates
- Expectations set a strict sentence count to prevent rambling
- Objective ensured clarity is added as glue, not new substance

##### Weak vs Strong Prompt

Weak prompt:
Expand these bullets

Strong prompt:
Expand into exactly 3 sentences. Preserve each bullet’s meaning. Add only connective explanation; no new facts/owners/dates. Professional, clear tone. Return only the explanation.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that expand bullets into a short explanation without new facts.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve each bullet’s meaning
- ✓ (correct choice) — Add only connective explanation (no new facts)
- ✓ (correct choice) — Ban new owners, dates, or commitments
- ✓ (correct choice) — Force exactly 3 sentences
- ✓ (correct choice) — Return only the explanation
- ✗ (distractor) — Add examples to make it clearer
- ✗ (distractor) — Make it as detailed as possible
- ✗ (distractor) — Invent missing context to fill gaps
- ✗ (distractor) — Add a motivating closing line
- ✗ (distractor) — Change the bullets into new priorities

**Coaching note (if selections are wrong)**

The trap is invented context. Use sentence caps and explicit “no new facts” rules to keep expansion honest.

**Assembled prompt example**

Expand these bullets into exactly 3 sentences. Preserve meaning. Add only connective explanation; no new facts/owners/dates. Professional tone. Return only the explanation.

**Feedback when correct (after Check my answer)**

You’re now expanding for clarity without hallucinating detail—most users can’t tell when the model starts guessing.

**Polished prompt on result screen**

Expand the bullets into a short explanation using exactly 3 sentences. Preserve meaning. Add only connective explanation. Do not add new facts, owners, dates, or commitments. Return only the explanation.

#### Scenario 3: Expand a Brief Update Into a Multi-Sentence Summary
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *context without false certainty*.
- Requirements banned new facts, owners, dates, and guarantees
- Expectations set 3–4 sentences so it’s usable but contained
- Objective kept it decision-ready by anchoring the next update to a real checkpoint

##### Weak vs Strong Prompt

Weak prompt:
Make this update longer

Strong prompt:
Expand into 3–4 professional, decision-ready sentences. Preserve meaning. Add only relevant context; no new facts/owners/dates/guarantees. Don’t guess missing details. Return only the summary.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that expand an update while preserving uncertainty and avoiding invented details.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve the original meaning
- ✓ (correct choice) — Ban new facts, owners, dates, or guarantees
- ✓ (correct choice) — Explicitly instruct: do not guess missing details
- ✓ (correct choice) — Set output length: 3–4 sentences
- ✓ (correct choice) — Keep tone professional and decision-ready
- ✗ (distractor) — Add confident reassurance to reduce concern
- ✗ (distractor) — Invent a timeline to make it actionable
- ✗ (distractor) — Assume the update is positive and celebrate wins
- ✗ (distractor) — Add technical detail to sound credible
- ✗ (distractor) — Rewrite the scope to include more accomplishments

**Coaching note (if selections are wrong)**

This is where writing turns into decision risk: accidental certainty. Preserve uncertainty and ban invention so stakeholders don’t plan off a story you didn’t confirm.

**Assembled prompt example**

Expand into 3–4 sentences. Preserve meaning. Add only relevant context—no new facts/owners/dates/guarantees. Don’t guess missing details. Professional, decision-ready tone.

**Feedback when correct (after Check my answer)**

You’re now adding context without upgrading certainty—most users can’t stop the model from “sounding sure.”

**Polished prompt on result screen**

Expand the update into 3–4 professional, decision-ready sentences. Preserve meaning. Add only relevant context. Do not add new facts, owners, dates, or guarantees. Do not guess missing details. Return only the summary.

### Lesson 5: Repurpose Content for New Formats

#### Scenario 1: Turn an Email Into a Short Announcement
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *format discipline*.
- Expectations capped length (max 3 lines)
- Requirements banned new details and reasons
- Objective kept the output announcement-shaped: essential info + one CTA

##### Weak vs Strong Prompt

Weak prompt:
Turn this email into an announcement

Strong prompt:
Rewrite as a short announcement: keep only essentials + single CTA, max 3 lines, no new details/timelines/reasons, crisp tone. Return only the announcement.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that repurpose an email into a short announcement without adding new information.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Keep only essential points and a single call-to-action
- ✓ (correct choice) — Max 3 lines
- ✓ (correct choice) — Do not add new details, timelines, or reasons
- ✓ (correct choice) — Use crisp, announcement-style tone
- ✓ (correct choice) — Return only the announcement
- ✗ (distractor) — Add background context to prevent confusion
- ✗ (distractor) — Add an extra CTA to increase compliance
- ✗ (distractor) — Invent benefits to persuade readers
- ✗ (distractor) — Write a long paragraph to be thorough
- ✗ (distractor) — Add informal friendliness to make it warm

**Coaching note (if selections are wrong)**

Repurposing breaks when the model expands. Cap length and ban invention so the announcement stays an announcement.

**Assembled prompt example**

Rewrite as a short announcement: essentials + one CTA, max 3 lines, no new details/timelines/reasons, crisp tone. Return only the announcement.

**Feedback when correct (after Check my answer)**

You’re now controlling format under constraints—most users get “shorter email,” not an actual announcement.

**Polished prompt on result screen**

Rewrite as a short announcement. Keep only essential points and the single call-to-action. Max 3 lines. Do not add new details, timelines, or reasons. Crisp tone. Return only the announcement.

#### Scenario 2: Turn a Status Update Into a One-Sentence Summary
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *signal integrity*.
- Expectations forced exactly one sentence
- Requirements banned new info and hype
- Objective kept it dashboard-safe: accurate, neutral, and quoteable

##### Weak vs Strong Prompt

Weak prompt:
Make this a one-line update

Strong prompt:
Exactly one sentence. Preserve meaning. Facts only—no new info. Plain neutral tone; avoid hype or certainty inflation. Return only the sentence.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that produce a dashboard-safe one-sentence status signal.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Exactly one sentence
- ✓ (correct choice) — Preserve original meaning
- ✓ (correct choice) — Facts only (no new information)
- ✓ (correct choice) — Plain, neutral tone (no hype)
- ✓ (correct choice) — Avoid certainty inflation
- ✗ (distractor) — Add a confident “all good” vibe
- ✗ (distractor) — Add new details to be helpful
- ✗ (distractor) — Use celebratory tone to motivate the team
- ✗ (distractor) — Write two sentences for nuance
- ✗ (distractor) — Invent a reason for delays to reassure

**Coaching note (if selections are wrong)**

Dashboards are where “slight” drift becomes a decision error. Lock sentence count and ban certainty inflation.

**Assembled prompt example**

Rewrite as exactly one sentence. Preserve meaning. Facts only; no new info. Plain neutral tone; avoid hype and certainty inflation. Return only the sentence.

**Feedback when correct (after Check my answer)**

You now control status signals that people can safely act on—most users accidentally publish overconfidence.

**Polished prompt on result screen**

Rewrite the update as exactly one sentence. Preserve meaning. Facts only—do not add new information. Plain neutral tone. Avoid hype or certainty inflation. Return only the sentence.

#### Scenario 3: Turn a List of Points Into a Short Script
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *spoken naturalness without invention*.
- Expectations set a delivery window (20–30 seconds)
- Requirements banned new facts/promises
- Objective kept credibility: natural tone, professional boundaries

##### Weak vs Strong Prompt

Weak prompt:
Turn this into a script

Strong prompt:
Rewrite as a spoken script: 3–4 sentences (20–30 seconds). Preserve meaning. Natural but professional tone. No new facts/promises. Return only the script.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that produce a natural spoken script without introducing new claims.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Set structure: 3–4 sentences (20–30 seconds)
- ✓ (correct choice) — Preserve meaning of all points
- ✓ (correct choice) — Natural but professional tone
- ✓ (correct choice) — Ban new facts or promises
- ✓ (correct choice) — Return only the script
- ✗ (distractor) — Add extra examples to make it engaging
- ✗ (distractor) — Invent a story to make it memorable
- ✗ (distractor) — Make it very casual to sound authentic
- ✗ (distractor) — Expand to 2 minutes for clarity
- ✗ (distractor) — Add confident guarantees to reassure

**Coaching note (if selections are wrong)**

In a live script, any invented detail becomes your responsibility. Lock facts, cap length, and ban new promises.

**Assembled prompt example**

Rewrite as a spoken script: 3–4 sentences (20–30 seconds). Preserve meaning. Natural but professional tone. No new facts or promises. Return only the script.

**Feedback when correct (after Check my answer)**

You now get speakable scripts that don’t create new liabilities—most users can’t stop the model from “adding.”

**Polished prompt on result screen**

Rewrite the points as a short spoken script (3–4 sentences, ~20–30 seconds). Preserve meaning of all points. Keep tone natural but professional. Do not add new facts or promises. Return only the script.

---

## Track 7 — Root-Cause Thinking

*Source:* `lib/data/tracks/track7_problem_solving_analysis.dart`

### Lesson 1: Turn Problems Into Clear AI Questions

#### Scenario 1: Turn a messy problem description into a clear AI question
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *investigability*.
- Requirements banned invented causes/solutions
- Expectations forced two outputs: one question + the next clarifiers
- Objective kept the work real: you’re defining the investigation, not writing a recommendation

##### Weak vs Strong Prompt

Weak prompt:
Turn this into a clear question

Strong prompt:
Rewrite into a single investigable question. Preserve the core problem and insight needed. Don’t invent root causes or solutions. Include timeframe/scope if stated; otherwise mark [Unknown]. Output: (1) one question, (2) 3 clarifying questions needed next.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn a messy description into an investigable question without invented causes.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require one clear, investigable question (not a solution)
- ✓ (correct choice) — Ban invented root causes and solutions
- ✓ (correct choice) — Preserve the core problem and the insight needed
- ✓ (correct choice) — Include timeframe/scope if stated; otherwise mark [Unknown]
- ✓ (correct choice) — Require 3 clarifying questions needed next
- ✗ (distractor) — Ask for recommendations to fix the issue
- ✗ (distractor) — Let AI guess likely causes to save time
- ✗ (distractor) — Remove ambiguity so it sounds confident
- ✗ (distractor) — Ask for a long narrative explanation
- ✗ (distractor) — Add an emotional tone to increase urgency

**Coaching note (if selections are wrong)**

Your advantage here is refusing fake certainty. Force “investigable question + next clarifiers” so the model can’t hallucinate the analysis.

**Assembled prompt example**

Rewrite into one investigable question. Preserve core problem + insight needed. No invented causes/solutions. Include scope/timeframe; if missing mark [Unknown]. Output one question + 3 clarifying questions.

**Feedback when correct (after Check my answer)**

You now turn messy reality into an investigation instead of a debate—most people skip this and get generic answers.

**Polished prompt on result screen**

Rewrite the description into one investigable question. Preserve the core problem and the insight needed. Do not invent root causes or solutions. Include timeframe/scope if stated; otherwise mark [Unknown]. Output: (1) one clear question, (2) three clarifying questions needed next.

#### Scenario 2: Turn complaints into actionable questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *operational definition*.
- Requirements forced definitions for “slow” and when/where it occurs
- Expectations required data collection, not solutions
- Objective produced a question that multiple teams can align on (same evidence, same target)

##### Weak vs Strong Prompt

Weak prompt:
Rewrite this complaint into a question

Strong prompt:
Rewrite into one actionable diagnostic question. Define what “slow” means and when/where it happens (mark unknowns). Do not propose solutions. Output one question + 3 data points to collect next.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn a vague complaint into an evidence-driven diagnostic question.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require a single diagnostic question (not generic advice)
- ✓ (correct choice) — Force definitions for “slow” (mark as [Unknown] if missing)
- ✓ (correct choice) — Force when/where it occurs (mark as [Unknown] if missing)
- ✓ (correct choice) — Ban solutions in the output
- ✓ (correct choice) — Require 3 specific data points to collect next
- ✗ (distractor) — Ask for a list of optimisation tips
- ✗ (distractor) — Assume the backend is the problem
- ✗ (distractor) — Write a long explanation of why systems slow down
- ✗ (distractor) — Remove unknowns to make it sound confident
- ✗ (distractor) — Add emotional urgency to motivate action

**Coaching note (if selections are wrong)**

Your edge is precision: definitions + evidence. This stops the model from turning complaints into generic “best practices.”

**Assembled prompt example**

Rewrite into one actionable diagnostic question. Define what “slow” means and when/where it occurs (mark unknowns). No solutions. Output one question + 3 data points to collect next.

**Feedback when correct (after Check my answer)**

You’re now converting complaints into investigations—most people skip definitions and get useless optimisation advice.

**Polished prompt on result screen**

Rewrite the complaint into one actionable diagnostic question. Define what “slow” refers to and when/where it happens (mark unknowns). Do not propose solutions. Output: one question plus three data points to collect next.

#### Scenario 3: Turn ambiguous requests into precise questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *failure-mode precision*.
- Requirements banned cause assumptions and forced missing fields to be marked
- Expectations produced a triage checklist, not a vague question
- Objective turned “check reports” into an investigation you can execute immediately

##### Weak vs Strong Prompt

Weak prompt:
Rewrite this as a better question

Strong prompt:
Rewrite into one precise investigative question. Don’t assume cause. Clarify what “reports” refers to (mark [Unknown] if missing). Output one question + a 4-step triage checklist.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn an ambiguous request into a precise investigative question with triage.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Ban cause assumptions (don’t guess)
- ✓ (correct choice) — Clarify what “wrong” means (generation vs correctness) and mark unknowns
- ✓ (correct choice) — Require one precise investigative question (failure-mode focused)
- ✓ (correct choice) — Require a 4-step triage checklist (what to check first)
- ✓ (correct choice) — Return only the output in the specified format
- ✗ (distractor) — Ask for likely root causes
- ✗ (distractor) — Write a detailed explanation of reporting systems
- ✗ (distractor) — Assume it’s a permissions issue
- ✗ (distractor) — Remove unknowns to make it confident
- ✗ (distractor) — Give recommendations to fix it immediately

**Coaching note (if selections are wrong)**

The expert move is splitting failure modes and forcing triage. This prevents confident guessing and gets you to evidence faster.

**Assembled prompt example**

Rewrite into one precise investigative question. Don’t assume cause. Clarify what “reports” refers to; mark unknowns. Output one question + a 4-step triage checklist. Return only the output.

**Feedback when correct (after Check my answer)**

You now control ambiguity without guessing—this is how you move faster than “smart-sounding” analysis.

**Polished prompt on result screen**

Rewrite the request into one precise investigative question. Do not assume the cause. Clarify what “reports” refers to (generation failure vs incorrect numbers) and mark unknowns as [Unknown]. Output: one question plus a 4-step triage checklist. Return only the output.

### Lesson 2: Turn Data Descriptions Into Questions AI Can Answer

#### Scenario 1: Turn a long data description into a simple analytical question
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *measurement discipline*.
- Requirements forced metric + timeframe and banned invented causes
- Expectations required assumptions to validate, preventing false certainty
- Objective kept the question analytical (segment drivers) instead of narrative

##### Weak vs Strong Prompt

Weak prompt:
Turn this into a question about the trend

Strong prompt:
Rewrite into one analytical question. Identify metric + timeframe (mark [Unknown] if missing). Require segmentation (category/source). No invented causes. Output one question + 3 assumptions to validate.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that convert a long trend description into a grounded analytical question.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require metric and timeframe (mark [Unknown] if missing)
- ✓ (correct choice) — Require segmentation (category/source) to find drivers
- ✓ (correct choice) — Ban invented causes
- ✓ (correct choice) — Require 3 assumptions to validate first
- ✓ (correct choice) — Return only the output in a fixed format
- ✗ (distractor) — Ask AI to explain likely reasons in detail
- ✗ (distractor) — Assume the increase is due to product bugs
- ✗ (distractor) — Remove unknowns so it sounds confident
- ✗ (distractor) — Ask for a motivational summary for the team
- ✗ (distractor) — Ask for solutions immediately

**Coaching note (if selections are wrong)**

The failure mode is confident storytelling. Lock measurement fields and force assumptions to validate so analysis stays real.

**Assembled prompt example**

Rewrite into one analytical question. Identify metric + timeframe (mark [Unknown] if missing). Require segmentation (category/source). No invented causes. Output one question + 3 assumptions to validate.

**Feedback when correct (after Check my answer)**

You’re now asking analysis questions the model can answer without hallucinating a narrative.

**Polished prompt on result screen**

Rewrite the description into one analytical question. Identify the metric and timeframe (mark [Unknown] if missing). Require segmentation (category/source) to find drivers. Do not invent causes. Output: one question plus three assumptions to validate first.

#### Scenario 2: Turn metrics into a clear question
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *hypothesis discipline*.
- Requirements forced segmentation and banned single-cause claims
- Expectations demanded candidates plus evidence, turning AI into an analysis planner
- Objective preserved uncertainty while still creating actionability

##### Weak vs Strong Prompt

Weak prompt:
Why did conversion change?

Strong prompt:
Turn metrics into one analytical question: specify metric/timeframe (mark unknowns), require segmentation by 2+ dimensions, request 3 candidate explanations and the evidence needed to test each. Don’t claim a single cause.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn raw metrics into a hypothesis-and-evidence analytical question.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Specify metric and timeframe (mark [Unknown] if missing)
- ✓ (correct choice) — Require segmentation by at least 2 dimensions
- ✓ (correct choice) — Request 3 candidate explanations (not one cause)
- ✓ (correct choice) — Require evidence needed to test each candidate
- ✓ (correct choice) — Prohibit claiming a single definitive cause
- ✗ (distractor) — Ask AI to pick the most likely cause immediately
- ✗ (distractor) — Remove unknowns to make it decisive
- ✗ (distractor) — Ask for general best practices for conversion
- ✗ (distractor) — Request a narrative summary paragraph
- ✗ (distractor) — Ask for solutions without analysis

**Coaching note (if selections are wrong)**

Your goal is not a “why story.” It’s a testable plan. Force candidates + evidence so the output stays honest and useful.

**Assembled prompt example**

Turn these metrics into one analytical question. Include metric/timeframe (mark [Unknown] if missing). Require segmentation by 2+ dimensions. Ask for 3 candidate explanations and the evidence to test each. Don’t claim one cause.

**Feedback when correct (after Check my answer)**

You’re now prompting for investigation instead of narration—this is where you gain an advantage over most AI users.

**Polished prompt on result screen**

Turn the metrics into one analytical question. Specify the metric and timeframe (mark [Unknown] if missing). Require segmentation by at least two dimensions. Request three candidate explanations and the evidence needed to test each. Do not claim a single definitive cause.

#### Scenario 3: Turn unclear performance descriptions into precise questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *measurability*.
- Requirements forced vague words into metric definitions
- Expectations produced options rather than pretending there’s one metric
- Objective prevented the model from inventing “the metric” and then explaining it

##### Weak vs Strong Prompt

Weak prompt:
Turn this into a precise question

Strong prompt:
Rewrite into one investigative question. Convert vague terms into measurable metric definitions as options. Ask which metric and segments to examine first. Don’t invent causes. Output one question + 3 candidate metric definitions.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that convert vague performance language into a measurable investigative question.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require one investigative question (not a conclusion)
- ✓ (correct choice) — Convert vague terms into measurable metric definitions
- ✓ (correct choice) — Ask which segments to analyse first
- ✓ (correct choice) — Ban invented causes
- ✓ (correct choice) — Provide 3 candidate metric definitions to choose from
- ✗ (distractor) — Ask AI to diagnose the root cause immediately
- ✗ (distractor) — Assume the issue is customer service
- ✗ (distractor) — Remove options so it feels decisive
- ✗ (distractor) — Request a motivational summary for stakeholders
- ✗ (distractor) — Ask for solutions without measurement

**Coaching note (if selections are wrong)**

Your advantage is refusing to “analyse vibes.” Force metric definitions and segmentation so the output becomes a real investigation plan.

**Assembled prompt example**

Rewrite into one investigative question. Convert vague terms into measurable metric definitions as options. Ask which metric and segments to examine first. Don’t invent causes. Output one question + 3 metric definition options.

**Feedback when correct (after Check my answer)**

You’re now turning vague complaints into measurable investigations—this is expert-level ambiguity control.

**Polished prompt on result screen**

Rewrite the description into one precise investigative question. Convert vague terms into measurable metric definitions (as options). Ask which metrics and segments to examine first. Do not invent causes. Output: one question plus three candidate metric definitions.

### Lesson 3: Turn Observations Into Root-Cause Questions

#### Scenario 1: Turn general observations into root-cause questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *testability*.
- Requirements separated symptom from cause and banned single-cause claims
- Expectations produced candidate mechanisms plus measurement
- Objective turned “observation” into a measurable investigation

##### Weak vs Strong Prompt

Weak prompt:
What’s the root cause of long reviews?

Strong prompt:
Turn this observation into an investigative question. Don’t claim a cause. Separate symptom vs cause. Ask for 3 candidate mechanisms and the measurement needed for each. Output one question + mechanisms with measurements.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn an observation into a testable root-cause question.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Ban claiming a definitive cause
- ✓ (correct choice) — Separate symptom vs cause explicitly
- ✓ (correct choice) — Request 3 candidate mechanisms (not one story)
- ✓ (correct choice) — Require the measurement needed for each mechanism
- ✓ (correct choice) — Return one question + mechanisms with measurements
- ✗ (distractor) — Ask AI to pick the most likely cause immediately
- ✗ (distractor) — Request a motivational summary
- ✗ (distractor) — Remove measurement to keep it simple
- ✗ (distractor) — Ask for solutions first
- ✗ (distractor) — Write a long narrative explanation

**Coaching note (if selections are wrong)**

Your edge is forcing testability. Mechanisms + measurement prevents confident guessing disguised as analysis.

**Assembled prompt example**

Turn this observation into a root-cause question. Don’t claim a cause. Separate symptom vs cause. Ask for 3 candidate mechanisms and the measurement needed for each. Output one question + mechanism/measurement list.

**Feedback when correct (after Check my answer)**

You’re now prompting for testable root-cause work instead of persuasive guesses.

**Polished prompt on result screen**

Turn the observation into a root-cause investigative question. Do not claim a definitive cause. Separate symptom from cause. Request three candidate mechanisms and the measurement needed to test each. Output one question plus the mechanism/measurement list.

#### Scenario 2: Turn symptoms into investigative questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *search-space reduction*.
- Requirements forced segmentation and banned invented causes
- Expectations demanded first comparisons, creating a concrete analysis start
- Objective turned symptoms into a question that narrows where to look

##### Weak vs Strong Prompt

Weak prompt:
What’s causing these symptoms?

Strong prompt:
Rewrite into an investigative question. Don’t invent causes. Require segmentation (time, cohort, feature area). Ask for leading indicators. Output one question + 3 segment comparisons to run first.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn symptoms into a segmented investigative question.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Ban invented causes
- ✓ (correct choice) — Require segmentation (time/cohort/feature area)
- ✓ (correct choice) — Ask for leading indicators to narrow mechanisms
- ✓ (correct choice) — Require 3 first comparisons to run
- ✓ (correct choice) — Return one question + comparison list
- ✗ (distractor) — Ask AI to identify the root cause immediately
- ✗ (distractor) — Write a long narrative about possible causes
- ✗ (distractor) — Assume the biggest team is at fault
- ✗ (distractor) — Remove segmentation to keep it simple
- ✗ (distractor) — Jump straight to solutions

**Coaching note (if selections are wrong)**

Your advantage is discipline under urgency. Segmentation prevents “average analysis” and helps you isolate the real problem faster.

**Assembled prompt example**

Rewrite symptoms into an investigative question. Don’t invent causes. Require segmentation (time/cohort/feature area). Ask for leading indicators. Output one question + 3 segment comparisons to run first.

**Feedback when correct (after Check my answer)**

You’re now isolating problems instead of analysing noise—this is expert-level speed.

**Polished prompt on result screen**

Rewrite the symptoms into an investigative question. Do not invent causes. Require segmentation (time window, user cohort, feature area). Ask for leading indicators to narrow mechanisms. Output: one question plus three segment comparisons to run first.

#### Scenario 3: Turn unclear performance feedback into diagnostic questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *neutral measurability*.
- Requirements converted vague feedback into observable signals
- Expectations created a checklist that avoids blame and enables investigation
- Objective made the question politically safe *and* operationally useful

##### Weak vs Strong Prompt

Weak prompt:
Turn this feedback into a question

Strong prompt:
Rewrite into a neutral diagnostic question. Non-blaming tone. Convert vague terms into measurable signals. Ask for segmentation by work type/time. No invented causes. Output one question + a 5-item observation checklist.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that translate sensitive feedback into neutral, measurable diagnostic questions.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require non-blaming, professional tone
- ✓ (correct choice) — Convert vague terms into observable/measurable signals
- ✓ (correct choice) — Request segmentation (work type/time period)
- ✓ (correct choice) — Ban invented causes
- ✓ (correct choice) — Require an observation checklist (5 items)
- ✗ (distractor) — Ask who is responsible for the slowdown
- ✗ (distractor) — Assume the team lacks motivation
- ✗ (distractor) — Demand immediate solutions first
- ✗ (distractor) — Remove measurement to keep it simple
- ✗ (distractor) — Use strong language to create urgency

**Coaching note (if selections are wrong)**

Your advantage is getting truth under sensitivity. Neutral language + measurable signals keeps the investigation real and cooperative.

**Assembled prompt example**

Rewrite feedback into a neutral diagnostic question. Non-blaming tone. Convert vague terms into measurable signals. Ask for segmentation. No invented causes. Output one question + a 5-item observation checklist.

**Feedback when correct (after Check my answer)**

You now ask questions that people can answer honestly—this is expert-level judgment under ambiguity.

**Polished prompt on result screen**

Rewrite the feedback into a neutral diagnostic question. Keep tone non-blaming and professional. Convert vague terms into observable/measurable signals. Ask for segmentation by work type and time period. Do not invent causes. Output: one question plus a 5-item observation checklist.

### Lesson 4: Turn Processes Into Diagnostic Questions

#### Scenario 1: Turn process issues into targeted questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *step-level evidence*.
- Requirements banned invented steps and demanded breakdown
- Expectations produced per-step data fields (not generic advice)
- Objective narrowed “broken process” into a bottleneck investigation

##### Weak vs Strong Prompt

Weak prompt:
How do we improve this process?

Strong prompt:
Rewrite into a targeted diagnostic question. Don’t invent steps. Ask for step-level breakdown of time and rework. Output one question + 4 data fields to collect per step.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that diagnose a process bottleneck with step-level evidence.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Ban invented process steps
- ✓ (correct choice) — Require step-by-step breakdown
- ✓ (correct choice) — Ask for waiting vs active time per step
- ✓ (correct choice) — Ask for rework/loop counts per step
- ✓ (correct choice) — Require per-step data fields (evidence) not generic advice
- ✗ (distractor) — Ask for a process improvement template
- ✗ (distractor) — Assume the bottleneck is approvals
- ✗ (distractor) — Ask for solutions first
- ✗ (distractor) — Remove evidence to keep it simple
- ✗ (distractor) — Ask for motivational messaging

**Coaching note (if selections are wrong)**

The advantage is evidence-first thinking. Step-level fields prevent generic outputs and help you find where delay actually lives.

**Assembled prompt example**

Rewrite into a targeted diagnostic question. Don’t invent steps. Ask for step-by-step breakdown of time and rework. Output one question + 4 data fields to collect per step. Return only the output.

**Feedback when correct (after Check my answer)**

You’re now diagnosing processes with evidence instead of running templates—this is expert-level problem framing.

**Polished prompt on result screen**

Rewrite the process issue into a targeted diagnostic question. Do not invent process steps. Ask for a step-by-step breakdown of waiting time, active time, and rework. Output: one question plus four data fields to collect per step.

#### Scenario 2: Turn timeline concerns into diagnostic questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *variance discipline*.
- Requirements forced plan vs actual breakdown
- Expectations demanded drivers + evidence (not opinions)
- Objective kept it credible under pressure: isolate where slippage accumulates first

##### Weak vs Strong Prompt

Weak prompt:
Why are we behind schedule?

Strong prompt:
Rewrite into a diagnostic question. Don’t invent causes. Ask for plan vs actual breakdown by phase/step and top variance drivers with evidence needed. Output one question + breakdown structure.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that diagnose timeline slippage with plan-vs-actual evidence.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Ban invented causes
- ✓ (correct choice) — Require plan vs actual breakdown by phase/step
- ✓ (correct choice) — Ask where variance accumulates (top contributors)
- ✓ (correct choice) — Request top 3 candidate drivers + evidence to confirm
- ✓ (correct choice) — Return one question + breakdown structure
- ✗ (distractor) — Ask who is responsible for the slip
- ✗ (distractor) — Assume scope creep is the cause
- ✗ (distractor) — Request solutions without analysis
- ✗ (distractor) — Remove evidence to keep it concise
- ✗ (distractor) — Ask for motivational messaging

**Coaching note (if selections are wrong)**

Under pressure, teams guess. Your advantage is forcing variance evidence so the conversation stays credible and actionable.

**Assembled prompt example**

Rewrite into a diagnostic question about timeline slippage. Don’t invent causes. Ask for plan vs actual breakdown by phase/step and top variance drivers with evidence needed. Output one question + breakdown structure.

**Feedback when correct (after Check my answer)**

You’re now asking timeline questions that stay credible under scrutiny—this is an operator-level advantage.

**Polished prompt on result screen**

Rewrite the timeline concern into a diagnostic question. Do not invent causes. Require plan vs actual variance breakdown by phase/step. Ask for top candidate drivers with the evidence needed to confirm each. Output: one question plus the breakdown structure.

#### Scenario 3: Turn unclear technical feedback into precise questions
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *reproducibility*.
- Requirements forced missing fields to be explicit [Unknown]
- Expectations produced a reproduction checklist, not advice
- Objective kept the question diagnostic under ambiguity

##### Weak vs Strong Prompt

Weak prompt:
Help me debug this flaky issue

Strong prompt:
Rewrite into a precise diagnostic question. Define symptom/conditions/impact (mark [Unknown] if missing). No invented causes or solutions. Output one question + a 6-item reproduction checklist.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn vague technical feedback into a precise diagnostic question with reproduction criteria.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Require symptom + conditions (mark [Unknown] if missing)
- ✓ (correct choice) — Require impact/scope (mark [Unknown] if missing)
- ✓ (correct choice) — Ban invented causes and solutions
- ✓ (correct choice) — Require a reproduction checklist (6 items)
- ✓ (correct choice) — Return only the diagnostic output format
- ✗ (distractor) — Ask for fixes immediately
- ✗ (distractor) — Assume the database is the cause
- ✗ (distractor) — Remove unknowns to sound confident
- ✗ (distractor) — Request general debugging best practices
- ✗ (distractor) — Write a narrative explanation

**Coaching note (if selections are wrong)**

Your advantage is forcing reproduction fields. That’s how you turn “flaky” into something the team can actually diagnose.

**Assembled prompt example**

Rewrite into a precise diagnostic question. Define symptom, conditions, and impact; mark unknowns as [Unknown]. Don’t invent causes/solutions. Output one question + a 6-item reproduction checklist.

**Feedback when correct (after Check my answer)**

You now turn vague technical feedback into reproducible investigation—most users get generic troubleshooting.

**Polished prompt on result screen**

Rewrite the technical feedback into a precise diagnostic question. Define the symptom, conditions, and impact; mark missing details as [Unknown]. Do not invent causes or solutions. Output: one question plus a 6-item reproduction checklist.

### Lesson 5: Turn Scattered Notes Into Analytical Questions

#### Scenario 1: Turn scattered notes into one analytical question
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *conflict visibility*.
- Requirements forced [Disputed]/[Unknown] instead of a unified narrative
- Expectations surfaced what must be resolved next
- Objective turned scattered notes into an analysis plan without pretending certainty

##### Weak vs Strong Prompt

Weak prompt:
Make sense of these notes

Strong prompt:
Turn notes into one analytical question. Preserve conflicts and tag [Disputed]. Tag missing info [Unknown]. Don’t invent a unified story. Output one question + 3 disputed/unknown points to resolve.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn scattered notes into an honest analytical question without collapsing conflicts.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve conflicting claims and tag them [Disputed]
- ✓ (correct choice) — Tag missing information as [Unknown]
- ✓ (correct choice) — Ban inventing a unified narrative
- ✓ (correct choice) — Require one analytical question
- ✓ (correct choice) — Require a list of disputed/unknown points to resolve
- ✗ (distractor) — Ask AI to pick the correct version
- ✗ (distractor) — Remove disputes to make it concise
- ✗ (distractor) — Invent missing context to complete the story
- ✗ (distractor) — Ask for recommendations immediately
- ✗ (distractor) — Write a long narrative summary

**Coaching note (if selections are wrong)**

Your advantage is truth-preserving structure. [Disputed]/[Unknown] tags keep analysis credible and prevent confident fiction.

**Assembled prompt example**

Turn notes into one analytical question. Preserve conflicts; tag [Disputed]. Tag gaps [Unknown]. Don’t invent a unified story. Output one question + 3 disputed/unknown points to resolve.

**Feedback when correct (after Check my answer)**

You now preserve ambiguity without losing actionability—this is expert-level judgment mastery.

**Polished prompt on result screen**

Turn the scattered notes into one analytical question. Preserve conflicting claims and tag them [Disputed]. Tag missing information as [Unknown]. Do not invent a unified story. Output: one question plus three disputed/unknown points that must be resolved.

#### Scenario 2: Turn brainstorm notes into a clean question
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *hypothesis vs evidence separation*.
- Requirements banned treating ideas as facts
- Expectations required validation steps, not answers
- Objective produced a question that can be tested instead of debated

##### Weak vs Strong Prompt

Weak prompt:
Turn these brainstorm notes into an answer

Strong prompt:
Turn notes into one testable question. Don’t treat ideas as facts. Separate hypothesis from evidence (mark missing evidence [Unknown]). Output one question + 3 validation steps.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that turn brainstorm notes into a testable question without treating ideas as facts.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Explicitly state: ideas are not facts
- ✓ (correct choice) — Separate hypothesis from evidence
- ✓ (correct choice) — Mark missing evidence as [Unknown]
- ✓ (correct choice) — Require one testable question
- ✓ (correct choice) — Require 3 validation steps (how to test)
- ✗ (distractor) — Ask AI to pick the best hypothesis immediately
- ✗ (distractor) — Remove uncertainty to be decisive
- ✗ (distractor) — Invent evidence to support the best idea
- ✗ (distractor) — Ask for solutions without testing
- ✗ (distractor) — Write a persuasive summary

**Coaching note (if selections are wrong)**

Your edge is refusing speculation. Validation steps stop the model from “finishing the thought” with invented evidence.

**Assembled prompt example**

Turn brainstorm notes into one testable question. Don’t treat ideas as facts. Separate hypothesis vs evidence; mark missing evidence [Unknown]. Output one question + 3 validation steps.

**Feedback when correct (after Check my answer)**

You now convert brainstorming into decisions without letting AI hallucinate certainty.

**Polished prompt on result screen**

Turn the brainstorm notes into one testable question. Do not treat ideas as facts. Separate hypothesis from evidence and mark missing evidence as [Unknown]. Output: one question plus three validation steps to test it.

#### Scenario 3: Turn mixed observations into a useful question
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

**Learn (variant tabs)**

##### What Made This Work

The control point is *premature-conclusion prevention*.
- Requirements preserved conflict and banned conclusions
- Expectations demanded a resolution plan (what to validate next)
- Objective kept the question decision-relevant instead of “interesting”

##### Weak vs Strong Prompt

Weak prompt:
Make a conclusion from these observations

Strong prompt:
Turn into one analytical question. Preserve conflicts and tag [Disputed]. Identify what must be resolved before concluding. Don’t invent conclusions. Output one question + 3 resolution steps.

##### C.O.R.E. Breakdown

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

**Challenge / task**

**Goal**

Choose the five prompt elements that keep mixed observations honest and drive a resolution plan.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Preserve conflicting observations and tag [Disputed]
- ✓ (correct choice) — Ban inventing a conclusion
- ✓ (correct choice) — Require identifying what must be resolved before concluding
- ✓ (correct choice) — Require 3 resolution steps (what to validate next)
- ✓ (correct choice) — Return only the specified output format
- ✗ (distractor) — Ask AI to pick the correct interpretation
- ✗ (distractor) — Remove disputes for clarity
- ✗ (distractor) — Invent missing evidence to break the tie
- ✗ (distractor) — Request recommendations immediately
- ✗ (distractor) — Write a persuasive argument

**Coaching note (if selections are wrong)**

Your advantage is resisting confidence theatre. Preserve disputes and force resolution steps so conclusions stay legitimate.

**Assembled prompt example**

Turn mixed observations into one analytical question. Preserve conflicts and tag [Disputed]. Don’t invent a conclusion. Identify what must be resolved. Output one question + 3 resolution steps.

**Feedback when correct (after Check my answer)**

You now control ambiguity without collapsing it into fake certainty—this is expert mastery.

**Polished prompt on result screen**

Turn the mixed observations into one analytical question. Preserve conflicts and tag [Disputed]. Do not invent a conclusion. Identify what must be resolved before concluding. Output: one question plus three resolution steps to validate next.

---

## Track 8 — Decision Support

*Source:* `lib/data/tracks/track8_decision_support.dart`

### Lesson 1: Use AI to Compare Options Clearly

#### Scenario 1: Turn a messy comparison into a clean comparison of two options
**Situation**

You have scattered notes comparing two solutions, but they mix facts, assumptions, and personal preferences.

You need a comparison you can forward to decision-makers.

If you over-clean it, you hide the real trade-offs.

If you under-structure it, people cherry-pick the one line that supports what they already want.

If you prompt AI weakly, it usually:
- invents missing facts to make the comparison feel complete
- implies a recommendation through tone
- collapses uncertainty into confident bullets

This is why your prompt fails:
- no rules for “facts vs assumptions”
- no standard criteria to compare against
- no requirement to preserve unknowns

Most people ask for “compare Option A and B” and get a tidy story—then decisions get made on invented certainty.

To get a usable result, your prompt must define:
- Context - decision comparison under incomplete inputs
- Objective - a forward-safe comparison that doesn’t invent certainty
- Requirements - fixed criteria; separate Facts/Assumptions; tag [Unknown]/[Disputed]
- Expectations - scan-friendly table + a neutral risk note

**Expert prompt**

Create a forward-safe comparison of Option A vs Option B.

Requirements:
- Use this exact structure:
  1) Comparison table with criteria rows: Time-to-Implement, Scalability, Maintenance, Cost, Risk
  2) Facts/Assumptions section: list what is confirmed vs assumed
  3) Unknowns section: list any missing inputs as [Unknown]
- Do not invent data or outcomes
- Keep tone neutral (no recommendation)

Return only the output in that structure.

**AI response (example)**

**Option A vs Option B (decision comparison)**

| Criteria | Option A | Option B |
|---|---|---|
| Time-to-Implement | Faster implementation (minimal configuration) | Longer setup (more customisation) |
| Scalability | Weaker long-term scalability | Better long-term growth support |
| Maintenance | Higher long-term maintenance cost | Lower maintenance cost over time |
| Cost | Lower upfront effort; long-term cost higher | Higher upfront effort; long-term cost lower |
| Risk | Risk: short-term fit may create long-term drag | Risk: longer setup delays near-term value |

**Facts / Assumptions**
- Confirmed: Option A is quicker to set up with minimal configuration
- Confirmed: Option B supports greater customisation
- Assumption: “maintenance cost” differences remain stable over time [Unknown: drivers]

**Unknowns**
- [Unknown] Required feature set and non-negotiable constraints
- [Unknown] Timeline deadline and cost tolerance
- [Unknown] Operational ownership and change-management capacity

Notice how uncertainty stays visible: the prompt forces [Unknown]s instead of letting the model “complete the comparison” by guessing.

**Learn (variant tabs)**

##### What Made This Work

The control point is *bounded certainty*.
- Requirements forced fixed criteria and banned invention
- Expectations separated Facts/Assumptions/Unknowns so decision-makers can trust the comparison
- Objective prevented tone from turning into a hidden recommendation

##### Weak vs Strong Prompt

Weak prompt:
Compare Option A and Option B

Strong prompt:
Create a forward-safe comparison with a fixed criteria table (Time-to-Implement, Scalability, Maintenance, Cost, Risk), then separate Facts vs Assumptions, then list [Unknown]s. No invented data. Neutral tone. Return only the structured output.

##### C.O.R.E. Breakdown

C - Context
Two options compared under incomplete inputs

O - Objective
Forward-safe comparison that doesn’t invent certainty

R - Requirements
Fixed criteria; facts vs assumptions; [Unknown]/[Disputed] tagging; neutral tone

E - Expectations
Table + Facts/Assumptions + Unknowns (output only)

**Pro tip**

If you don’t force an “Unknowns” section, the model will quietly turn missing inputs into confident bullets. That’s not analysis—it’s fiction with formatting.

**Takeaway**

Decision-grade comparisons preserve uncertainty; they don’t hide it.

**Challenge / task**

**Goal**

Elite check: choose the five prompt elements that make an Option A vs B comparison forward-safe under incomplete information.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Force fixed comparison criteria (Time/Scale/Maintenance/Cost/Risk)
- ✓ (correct choice) — Require a Facts vs Assumptions section (separate certainty levels)
- ✓ (correct choice) — Require an Unknowns section with [Unknown] tags
- ✓ (correct choice) — Ban invented data/outcomes
- ✓ (correct choice) — Enforce neutral tone (no recommendation)
- ✗ (distractor) — Ask AI to pick the best option
- ✗ (distractor) — Fill in missing information to make it complete
- ✗ (distractor) — Use persuasive language to build momentum
- ✗ (distractor) — Remove risk so it feels confident
- ✗ (distractor) — Add extra features the options should include

**Coaching note (if selections are wrong)**

This is where “smart-looking” outputs fool teams. Your advantage is forcing certainty boundaries (Facts/Assumptions/Unknowns) so decisions don’t get made on invented completeness.

**Assembled prompt example**

Create a forward-safe Option A vs B comparison with a fixed criteria table, then list Facts vs Assumptions, then list Unknowns as [Unknown]. Neutral tone. No invented data. Return only the structured output.

**Feedback when correct (after Check my answer)**

You now control decision-grade comparisons—most users accidentally prompt the model into guessing and calling it “analysis.”

**Polished prompt on result screen**

Create a forward-safe comparison of Option A vs Option B. Use a fixed criteria table (Time-to-Implement, Scalability, Maintenance, Cost, Risk). Separate confirmed Facts vs Assumptions. List missing inputs as [Unknown]. Do not invent data or outcomes. Neutral tone. Return only the structured output.

#### Scenario 2: Turn mixed pros/cons into a clear evaluation list
**Situation**

You have a mixed set of pros/cons that include trade-offs and hidden constraints.

A simple “Pros/Cons” list often creates false symmetry: it makes every point look equally important.

If this goes wrong, stakeholders optimise for what looks tidy instead of what is true.

Weak prompting usually:
- rewrites points into generic “benefits/drawbacks”
- removes caveats
- sneaks in a recommendation

To get a usable result, your prompt must define:
- Context - evaluation under competing objectives
- Objective - clarity + weighting without pretending precision
- Requirements - group by impact area; note severity/uncertainty; no invention
- Expectations - Pros/Cons plus “Decision Risks” and “Unknowns”

**Expert prompt**

Rewrite the content into a decision-grade evaluation.

Requirements:
- Output sections in this order:
  1) Pros
  2) Cons
  3) Decision Risks (items that could cause failure)
  4) Unknowns ([Unknown] tagging)
- Keep bullets short and factual
- Do not invent new pros/cons
- Neutral tone (no recommendation)

Return only the output.

**AI response (example)**

**Pros**
- Easy to use
- Quick setup
- Works well for small teams

**Cons**
- Limited customisation
- Not ideal for large-scale projects
- Higher cost for advanced features

**Decision Risks**
- Scale mismatch could force rework if usage grows faster than expected
- Cost exposure if “advanced features” become required

**Unknowns**
- [Unknown] Expected growth and scaling requirements
- [Unknown] Which advanced features are truly required vs optional

Look at how this avoids false symmetry: adding Decision Risks + Unknowns keeps the evaluation honest under uncertainty.

**Learn (variant tabs)**

##### What Made This Work

The control point is *risk separation*.
- Requirements banned invention and kept bullets factual
- Expectations added Decision Risks + Unknowns so the output doesn’t pretend everything is equally important
- Objective kept the list decision-grade without forcing fake numbers

##### Weak vs Strong Prompt

Weak prompt:
Make a pros and cons list

Strong prompt:
Rewrite into Pros, Cons, Decision Risks, and Unknowns ([Unknown] tagging). Keep bullets factual. Don’t invent new points. Neutral tone. Return only the structured output.

##### C.O.R.E. Breakdown

C - Context
Mixed pros/cons under competing objectives

O - Objective
Clarify trade-offs without hiding risk or inventing precision

R - Requirements
Facts only; no invention; risk separation; [Unknown] tagging

E - Expectations
Pros / Cons / Decision Risks / Unknowns

**Pro tip**

Pros/Cons is where nuance goes to die. If you don’t force “Decision Risks” and “Unknowns,” the model will smooth the sharp edges—then the sharp edges hit you later.

**Takeaway**

Good evaluation distinguishes drawbacks from failure risks.

**Challenge / task**

**Goal**

Elite check: choose the five prompt elements that turn mixed pros/cons into a decision-grade evaluation without hidden recommendations.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Add Decision Risks as a separate section
- ✓ (correct choice) — Add Unknowns with [Unknown] tagging
- ✓ (correct choice) — Ban inventing new pros/cons
- ✓ (correct choice) — Keep bullets short, factual, and scan-friendly
- ✓ (correct choice) — Neutral tone (no recommendation)
- ✗ (distractor) — Ask AI to rank the pros and cons numerically
- ✗ (distractor) — Fill in missing details so it looks complete
- ✗ (distractor) — Rewrite into a persuasive pitch for adoption
- ✗ (distractor) — Remove uncertainty to avoid confusion
- ✗ (distractor) — Add emotional framing to increase urgency

**Coaching note (if selections are wrong)**

Decision-grade lists preserve risk and unknowns. The “pretty” version that hides uncertainty is exactly how teams get surprised later.

**Assembled prompt example**

Rewrite into Pros, Cons, Decision Risks, and Unknowns ([Unknown]). Bullets short and factual. Don’t invent new points. Neutral tone. Return only the output.

**Feedback when correct (after Check my answer)**

You’re now evaluating like an operator: risks and unknowns stay visible, so decisions don’t rely on “clean” fiction.

**Polished prompt on result screen**

Rewrite into a decision-grade evaluation with sections: Pros, Cons, Decision Risks, Unknowns. Use [Unknown] tags for missing inputs. Keep bullets factual and scan-friendly. Do not invent new points. Neutral tone. Return only the structured output.

#### Scenario 3: Turn option notes into a clear comparison matrix
**Situation**

You have rough notes about Option 1 and Option 2, but the notes were written by different people with different biases.

You need a matrix that makes trade-offs explicit without pretending you know more than you do.

If you prompt AI weakly, it will:
- normalise wording so both options sound equally safe
- invent “best practices” and fill gaps
- hide risk behind vague language

To get a usable result, your prompt must define:
- Context - biased notes under incomplete information
- Objective - a matrix that preserves uncertainty and highlights decision triggers
- Requirements - consistent criteria; no invention; tag [Unknown]
- Expectations - matrix + “Decision triggers” (what would change the choice)

**Expert prompt**

Rewrite the notes into a comparison matrix for Option 1 vs Option 2.

Requirements:
- Use consistent criteria rows: Upfront Cost, Time-to-Deploy, Scalability, Operational Complexity, Risk
- Mark missing details as [Unknown]
- Do not invent new facts
- Add a “Decision triggers” section: 3 conditions that would push us toward one option vs the other

Return only the output.

**AI response (example)**

**Option 1 vs Option 2 (comparison matrix)**

| Criteria | Option 1 | Option 2 |
|---|---|---|
| Upfront Cost | Lower upfront cost | Higher initial investment |
| Time-to-Deploy | Faster deployment | Longer setup time |
| Scalability | Limited scalability | Highly scalable |
| Operational Complexity | Simpler initial operations [Unknown] | More complex due to customisation [Unknown] |
| Risk | Risk: scale limits may force later migration | Risk: slower time-to-value and delivery slip |

**Decision triggers**
- If we have a hard deadline and minimal change capacity → Option 1
- If long-term growth and customisation are non-negotiable → Option 2
- If we can’t validate scalability requirements now → keep [Unknown]s visible and defer recommendation

The difference is decision clarity without false certainty: the prompt forces triggers and [Unknown]s so the matrix stays honest and useful.

**Learn (variant tabs)**

##### What Made This Work

The control point is *decision triggers*.
- Requirements forced consistent criteria and banned invention
- Expectations added triggers so the matrix is usable even with unknowns
- Objective kept uncertainty explicit while still producing a decision-ready artifact

##### Weak vs Strong Prompt

Weak prompt:
Make a comparison matrix

Strong prompt:
Create a matrix with fixed criteria (cost/time/scale/ops complexity/risk), tag missing info [Unknown], don’t invent facts, and add 3 decision triggers that would change the choice. Return only the output.

##### C.O.R.E. Breakdown

C - Context
Rough, biased notes under incomplete information

O - Objective
Honest matrix that supports a decision without pretending certainty

R - Requirements
Fixed criteria; [Unknown] tagging; no invention

E - Expectations
Matrix + Decision triggers (3)

**Pro tip**

A matrix without triggers is just formatting. Triggers are how you make uncertainty actionable without forcing a fake recommendation.

**Takeaway**

Decision triggers convert unknowns into a plan.

**Challenge / task**

**Goal**

Elite check: choose the five prompt elements that produce a comparison matrix with actionable decision triggers.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Force consistent criteria rows for both options
- ✓ (correct choice) — Tag missing details as [Unknown]
- ✓ (correct choice) — Ban invented facts
- ✓ (correct choice) — Require a “Decision triggers” section (3 conditions)
- ✓ (correct choice) — Keep tone neutral (avoid hidden recommendation)
- ✗ (distractor) — Ask AI to choose the winner
- ✗ (distractor) — Fill unknowns with plausible assumptions
- ✗ (distractor) — Remove risk to keep it positive
- ✗ (distractor) — Add unrelated criteria not in the notes
- ✗ (distractor) — Write a long narrative instead of a matrix

**Coaching note (if selections are wrong)**

The elite move is making uncertainty usable. Triggers + [Unknown] tags stop confident fiction and give decision-makers a clear next step.

**Assembled prompt example**

Rewrite into an Option 1 vs Option 2 matrix with fixed criteria rows. Tag missing info [Unknown]. Do not invent facts. Add 3 decision triggers that would change the choice. Neutral tone. Return only the output.

**Feedback when correct (after Check my answer)**

You’re now producing decision artifacts that stay honest under uncertainty—this is Strong judgment.

**Polished prompt on result screen**

Rewrite the notes into a comparison matrix (Option 1 vs Option 2) with fixed criteria rows. Mark missing details as [Unknown]. Do not invent facts. Add a “Decision triggers” section with three conditions that would push the choice one way or the other. Return only the output.

### Lesson 2: Turn AI Output Into Simple Explanations

#### Scenario 1: Convert technical AI output into plain-language explanation
**Situation**

You need to brief a non-technical stakeholder on a technical situation.

If you oversimplify, you create false confidence.

If you stay technical, they disengage and make decisions off vibes.

Weak prompts usually:
- remove uncertainty and caveats
- replace specifics with comforting generalities
- invent analogies that change meaning

To get a usable result, your prompt must define:
- Context - non-technical decision audience
- Objective - clarity without distortion
- Requirements - plain language; preserve uncertainty; no new claims; no invented analogies
- Expectations - short explanation + what we know vs what’s unknown

**Expert prompt**

Rewrite the explanation for a non-technical audience.

Requirements:
- Plain language (no jargon)
- Preserve key caveats/uncertainty (don’t overstate)
- Do not add new causes, timelines, or guarantees
- No invented analogies
- Output format:
  1) 2–3 sentence explanation
  2) What we know (2 bullets)
  3) What we don’t know yet (2 bullets, use [Unknown])

Return only the output.

**AI response (example)**

The system slowed down because several things were running at the same time, which temporarily increased the load. When that extra load reduced, performance returned to normal.

**What we know**
- Performance degraded during a period of higher simultaneous activity
- Performance returned to normal after the load reduced

**What we don’t know yet**
- [Unknown] Which specific component contributed most to the slowdown
- [Unknown] Whether this will recur under similar load

What matters here is truth-preserving simplicity: the prompt forces “know vs unknown,” so clarity doesn’t become overconfidence.

**Learn (variant tabs)**

##### What Made This Work

The control point is *clarity without certainty inflation*.
- Requirements banned new causes and analogies
- Expectations forced Know vs Unknown, preserving caveats
- Objective kept it decision-usable for non-technical readers without lying

##### Weak vs Strong Prompt

Weak prompt:
Explain this simply

Strong prompt:
Rewrite in plain language for non-technical readers. Preserve caveats. No new causes/timelines/guarantees. No invented analogies. Output: 2–3 sentence explanation + What we know (2) + What we don’t know (2, [Unknown]).

##### C.O.R.E. Breakdown

C - Context
Non-technical stakeholder needs to make decisions

O - Objective
Clarity without distortion or overconfidence

R - Requirements
Plain language; preserve uncertainty; no new claims; no invented analogies

E - Expectations
Explanation + Know vs Unknown bullets

**Pro tip**

“Plain language” without “preserve uncertainty” creates confident misalignment. Force Know vs Unknown or you’ll accidentally brief them into the wrong decision.

**Takeaway**

Simple explanations must keep the caveats visible.

**Challenge / task**

**Goal**

Elite check: choose the five prompt elements that simplify technical output without creating false certainty.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Plain language (no jargon)
- ✓ (correct choice) — Preserve caveats/uncertainty (no overstatement)
- ✓ (correct choice) — Ban new causes/timelines/guarantees
- ✓ (correct choice) — Force “What we know” vs “What we don’t know” sections
- ✓ (correct choice) — Ban invented analogies
- ✗ (distractor) — Make it sound fully resolved to reassure them
- ✗ (distractor) — Add a likely cause to be helpful
- ✗ (distractor) — Use metaphors to make it memorable
- ✗ (distractor) — Add guarantees about recurrence
- ✗ (distractor) — Remove unknowns to avoid confusion

**Coaching note (if selections are wrong)**

The failure mode is “comfort clarity.” Preserve uncertainty explicitly so non-technical decisions aren’t made on a story the model invented.

**Assembled prompt example**

Rewrite in plain language for non-technical readers. Preserve caveats. No new causes/timelines/guarantees. No invented analogies. Output: 2–3 sentences + What we know (2 bullets) + What we don’t know (2 bullets, [Unknown]).

**Feedback when correct (after Check my answer)**

You now translate complexity without lying—this is an elite skill that prevents bad decisions from “clean” summaries.

**Polished prompt on result screen**

Rewrite the explanation for a non-technical audience in plain language. Preserve uncertainty (no certainty inflation). Do not add new causes, timelines, or guarantees. No invented analogies. Output: 2–3 sentence explanation, then What we know (2 bullets), then What we don’t know yet (2 bullets with [Unknown]).

#### Scenario 2: Turn multi-step AI output into a simple summary
**Situation**

AI produced a long, multi-step explanation, but you need a short summary for a decision update.

If you compress it badly, you lose the decision signal.

If you compress it too confidently, you turn a hypothesis into a fact.

To get a usable result, your prompt must define:
- Context - decision update under time pressure
- Objective - preserve the “why it matters” signal
- Requirements - main point only; keep uncertainty; no new claims
- Expectations - one sentence + one “so what” bullet

**Expert prompt**

Rewrite the explanation into a decision-grade summary.

Requirements:
- Exactly 1 sentence summary
- Add 1 bullet: “So what:” (decision impact)
- Preserve uncertainty if present; do not overstate
- Do not add new causes or details

Return only the output.

**AI response (example)**

An incorrect configuration setting appears to have contributed to the issue, and updating it restored normal behaviour.
- **So what:** Validate the configuration change is stable before treating the incident as fully resolved.

Look at how this preserves judgment: “appears to” keeps uncertainty intact while still giving a decision-grade next move.

**Learn (variant tabs)**

##### What Made This Work

The control point is *signal compression without certainty inflation*.
- Expectations forced 1 sentence + So what, keeping it decision-shaped
- Requirements banned new causes/details and preserved uncertainty
- Objective kept the impact line, not just the recap

##### Weak vs Strong Prompt

Weak prompt:
Summarise this

Strong prompt:
Rewrite into exactly one sentence summary plus one “So what:” bullet (decision impact). Preserve uncertainty; don’t overstate. No new causes/details. Return only the output.

##### C.O.R.E. Breakdown

C - Context
Long explanation must become a decision update

O - Objective
Preserve decision signal under compression

R - Requirements
1 sentence; So what bullet; preserve uncertainty; no new claims

E - Expectations
Output only: sentence + So what bullet

**Pro tip**

Summaries fail when they remove uncertainty to sound decisive. Force one “So what” line and keep hedging where it’s real—professionals don’t trade truth for tidy.

**Takeaway**

Decision summaries keep uncertainty where it belongs.

**Challenge / task**

**Goal**

Elite check: choose the five prompt elements that compress multi-step output into a decision-grade summary without over-claiming.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Force exactly 1 sentence summary
- ✓ (correct choice) — Add a “So what:” decision-impact bullet
- ✓ (correct choice) — Preserve uncertainty (don’t overstate)
- ✓ (correct choice) — Ban new causes or details
- ✓ (correct choice) — Return only the output
- ✗ (distractor) — Remove caveats to sound confident
- ✗ (distractor) — Add likely root cause for completeness
- ✗ (distractor) — Write a long paragraph to keep nuance
- ✗ (distractor) — Add emotional language to motivate action
- ✗ (distractor) — Assume the issue is resolved permanently

**Coaching note (if selections are wrong)**

The elite move is controlled certainty: keep hedging where reality is uncertain, while still producing an actionable “So what.”

**Assembled prompt example**

Rewrite into exactly 1 sentence summary plus 1 “So what:” bullet (decision impact). Preserve uncertainty; don’t overstate. No new causes/details. Return only the output.

**Feedback when correct (after Check my answer)**

You now produce decision-grade summaries that stay honest—most users accidentally turn hypotheses into facts when they compress.

**Polished prompt on result screen**

Rewrite the explanation into a decision update: exactly one sentence summary plus one “So what:” bullet. Preserve uncertainty where present. Do not add new causes or details. Return only the output.

#### Scenario 3: Rewrite AI output into a clearer explanation for stakeholders
**Situation**

You have an AI-generated explanation that is technically correct but not stakeholder-ready.

Stakeholders need: what changed, why it matters, what happens next.

If you prompt AI weakly, it will:
- rephrase without improving clarity
- add confident-sounding detail you didn’t provide
- bury the decision signal under verbosity

To get a usable result, your prompt must define:
- Context - stakeholder-facing explanation under uncertainty
- Objective - clarity + decision signal
- Requirements - fixed structure; no invention; explicit unknowns
- Expectations - 3-part brief they can forward

**Expert prompt**

Rewrite the explanation for stakeholders.

Requirements:
- Output exactly:
  1) What happened (2 bullets)
  2) Why it matters (1 bullet)
  3) Next update (1 bullet, include timing only if confirmed)
- Use only confirmed information; mark gaps [Unknown]
- No invented causes, owners, or guarantees

Return only the output.

**AI response (example)**

**What happened**
- Performance slowed during a period of higher simultaneous activity
- Performance returned to normal after the load reduced

**Why it matters**
- Without identifying the primary driver, the issue may recur under similar conditions [Unknown]

**Next update**
- We will share findings after we validate the main contributing factor [Unknown timeline]

What matters here is forward-safe structure: fixed bullets + [Unknown] tags prevent accidental over-commitment while still making the update usable.

**Learn (variant tabs)**

##### What Made This Work

The control point is *forward-safe clarity*.
- Expectations forced a stakeholder brief shape (happened / matters / next)
- Requirements kept it facts-only and tagged unknowns
- Objective ensured the output is decision-usable instead of just “clearer writing”

##### Weak vs Strong Prompt

Weak prompt:
Make this clearer for stakeholders

Strong prompt:
Rewrite into a stakeholder brief: What happened (2 bullets), Why it matters (1), Next update (1). Facts only; tag gaps [Unknown]. No invented causes/owners/guarantees. Return only the output.

##### C.O.R.E. Breakdown

C - Context
Stakeholder-facing explanation under uncertainty

O - Objective
Clarity + decision signal without over-commitment

R - Requirements
Fixed bullet structure; facts only; [Unknown] tags; no invention

E - Expectations
Output only: 2/1/1 bullet sections

**Pro tip**

Stakeholders don’t need “more words.” They need a decision shape. Fixed bullets + [Unknown] tags is how you stay credible under pressure.

**Takeaway**

Stakeholder clarity is structure plus bounded certainty.

**Challenge / task**

**Goal**

Elite check: choose the five prompt elements that convert AI output into a forward-safe stakeholder brief.

**Prompt elements (pick the strong ones)**

- ✓ (correct choice) — Force fixed sections (What happened/Why it matters/Next update)
- ✓ (correct choice) — Fix bullet counts (2/1/1) for scan speed
- ✓ (correct choice) — Use confirmed information only; tag gaps [Unknown]
- ✓ (correct choice) — Ban invented causes, owners, or guarantees
- ✓ (correct choice) — Return only the final brief (paste-ready)
- ✗ (distractor) — Ask AI to make it reassuring and confident
- ✗ (distractor) — Add a timeline even if not confirmed
- ✗ (distractor) — Write a long narrative paragraph
- ✗ (distractor) — Remove unknowns to avoid uncertainty
- ✗ (distractor) — Add new technical detail to sound credible

**Coaching note (if selections are wrong)**

The difference between “clear” and “decision-grade” is structure plus truth boundaries. Without those, the model will over-commit while sounding polished.

**Assembled prompt example**

Rewrite for stakeholders with fixed sections and bullet counts: What happened (2), Why it matters (1), Next update (1). Facts only; tag gaps [Unknown]. No invented causes/owners/guarantees. Return only the brief.

**Feedback when correct (after Check my answer)**

You now produce stakeholder-ready updates that stay credible under uncertainty—this is Strong professional advantage.

**Polished prompt on result screen**

Rewrite the explanation into a stakeholder brief with fixed sections and bullet counts: What happened (2 bullets), Why it matters (1), Next update (1). Use confirmed info only; mark gaps [Unknown]. Do not invent causes, owners, timelines, or guarantees. Return only the output.

---

## Track 9 — Brainstorming & Strategy

*Source:* `lib/data/tracks/track9_brainstorming_strategy.dart`


## Shared result & lesson-complete copy (app UI)

These strings appear on challenge result screens and the lesson-complete screen (no scenario-specific body).

### Task / challenge screen (structured tracks)

- Section header: **Challenge** (tracks 1–5 structured lessons) or **Task Goal** otherwise.
- Instruction (structured): *Which elements make this a strong C.O.R.E. prompt? Pick exactly N:*
- Instruction (general): *Select the prompt elements (choose exactly N):*
- Assembled prompt label (structured): **Your strong C.O.R.E. prompt:**
- Assembled prompt label (general): **Your assembled prompt:**
- Primary CTA: **Try the Challenge** or **Try the Task**
- Unavailable: **Challenge is being prepared** / **Task is being prepared**

### After “Check my answer” (feedback template)

- Score line: *You got X/Y correct.*
- If all correct (structured lessons): appended text defaults to *Great job! You selected the right elements.* unless the scenario defines `feedbackWhenCorrect`.
- If all correct (non-structured): *Great job! You selected the right prompt elements.*
- If not all correct: appended text comes from `coachingNote`, or defaults to *Try again. Consider which elements make this the strongest C.O.R.E. prompt.* (structured) or *Try again. Consider which pieces would make the most effective prompt.*

### Combined result (after scenario 1 or 2 challenge)

- Heading: **Correct!** or **Not quite right**
- **Score:** *N / required count*
- Body: feedback message (see template above)
- Label: **Your strong C.O.R.E. prompt:** then the assembled / polished prompt text
- Optional extra paragraph: scenario `coachingNote` when present
- Unlock title: **Scenario 2 is now unlocked** or **Scenario 3 is now unlocked**
- Unlock body: *You’ve completed the first scenario and unlocked the next level of difficulty.* / *You’re ready for the final scenario in this lesson.*
- Extra line after scenario 2: *Keep going — this is where the lesson gets more rewarding.*
- Buttons: **Go to Scenario 2** / **Go to Scenario 3**, **Back to Tracks**

### Result after scenario 3 challenge

- Same card as above (Correct / Not quite right, score, feedback, assembled prompt label, optional coaching)
- Button: **Done**

### Lesson complete screen

- App bar: **Lesson Complete**
- **Your score:** *totalScore/15*
- *You completed all 3 scenarios.*
- **You've completed this lesson using the C.O.R.E. system**
- **Learning** — bullets: *apply context*, *define objective*, *structure requirements*, *control output*
- **Insight** — *Most people use AI with vague prompts.* / *You now control the result.*
- **Next step** — *Apply this to more complex tasks.*
- *This is just the foundation*
- **Continue to next lesson**, **See All Tracks**
