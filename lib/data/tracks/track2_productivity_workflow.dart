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
      skillRefocusLine:
          "This time, you're applying the same skill in a different context:",
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
