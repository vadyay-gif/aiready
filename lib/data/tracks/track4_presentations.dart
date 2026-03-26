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

