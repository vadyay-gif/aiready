import '../app_catalog.dart';

/// Track 6 – Content Creation (lessons 1–5)
///
/// Track 6 is where “writing” becomes decision-consequential: you’re shaping tone,
/// certainty, and structure under ambiguity, time pressure, and audience risk.
List<LessonDef> buildTrack6Lessons() {
  return [
    const LessonDef(
      title: 'Rewrite Content for Tone and Style',
      skillRefocusLine:
          "This time, you're applying the same skill in a different context:",
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
      skillRefocusLine:
          "This time, you're applying the same skill in a different context:",
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
      skillRefocusLine:
          "This time, you're applying the same skill in a different context:",
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
      skillRefocusLine:
          "This time, you're applying the same skill in a different context:",
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
      skillRefocusLine:
          "This time, you're applying the same skill in a different context:",
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

