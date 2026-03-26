import '../app_catalog.dart';

/// Track 8 – Marketing & Social (lessons 1–5). Blueprint-aligned with Track 1.
List<LessonDef> buildTrack8Lessons() {
  const refinements = [
    'What Made This Work',
    'Weak vs Strong Prompt',
    'C.O.R.E. Breakdown',
  ];

  return [
    LessonDef(
      title: 'Generate Marketing Ideas',
      scenarios: [
        ScenarioDef(
          title: 'Campaign ideas for a product launch',
          situation:
              'You need launch campaign concepts that can actually be produced—not a list of slogans.\n\nWeak prompts return generic “awareness” ideas with no channel and no test.\n\nTo get a usable result, your prompt must define:\n- Context - product, audience, and launch window\n- Objective - ideas you can execute and measure\n- Requirements - channel + message + hook + quick test per idea; no invented budgets\n- Expectations - fixed count and structured output',
          prompt:
              'Generate 6 launch campaign ideas for a B2B workflow tool for ops teams.\n\nContext: Q2 launch; primary audience is ops managers; we can produce blog, email, LinkedIn, and a short webinar.\n\nObjective: each idea must be executable in 2 weeks or less.\n\nRequirements: for each idea include Channel, Core message, Hook, and a Quick test (what you would measure in 7 days). Do not invent budget numbers; mark [Unknown] if needed.\n\nExpectations: return only the 6 ideas in a consistent format.',
          output:
              '**Idea 1**\n- Channel: LinkedIn\n- Core message: cut weekly reporting prep time\n- Hook: “before/after prep time” story prompt\n- Quick test: 2 posts, compare saves + demo requests [Unknown baseline]\n\n**Idea 2**\n- Channel: Customer email\n- Core message: fewer approval rounds\n- Hook: subject line A/B on “approvals” vs “handoffs”\n- Quick test: open rate + reply-to-learn-more rate\n\n**Idea 3**\n- Channel: Blog\n- Core message: one dashboard for approvals + status, fewer tool hops\n- Hook: screenshot walkthrough of a Friday close-out in under 10 minutes\n- Quick test: publish once; track scroll depth + CTA clicks to demo [Unknown baseline]\n\n**Idea 4**\n- Channel: Short webinar (30 min)\n- Core message: live build of a weekly ops report from messy inputs\n- Hook: “bring your messiest spreadsheet” positioning (anonymised examples only)\n- Quick test: registration vs attendance vs follow-up resource downloads [Unknown baseline]\n\n**Idea 5**\n- Channel: LinkedIn\n- Core message: audit trail without slowing teams down\n- Hook: carousel on three mistakes teams make when they “just CC everyone”\n- Quick test: carousel completion rate + comments asking for the checklist\n\n**Idea 6**\n- Channel: Customer email\n- Core message: scheduling reliability for recurring reports\n- Hook: subject line that names the pain (“missed Monday send”) vs benefit (“retry + alert”)\n- Quick test: click-through to beta waitlist + replies with “same problem” [Unknown baseline]\n\nNotice how each idea is a bet: channel, message, hook, and a measurement—Requirements and Expectations prevent slogan soup.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The ideas are actionable because the prompt banned hand-wavy awareness.\n- Context pinned product type and audience\n- Objective forced a 2-week execution constraint\n- Requirements demanded hook + test for each idea\n- Expectations fixed count and format',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nGive me marketing ideas\n\nStrong prompt:\n6 ideas; each with channel, message, hook, 7-day test; B2B ops audience; no invented budgets; [Unknown]; fixed format only.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nB2B workflow tool; ops managers; Q2 launch; known channels\n\nO - Objective\nExecutable ideas with measurement\n\nR - Requirements\nChannel/message/hook/test; no fake budgets\n\nE - Expectations\nExactly 6; consistent structure',
            ),
          ],
          proTip:
              'If there is no “quick test,” you do not have a campaign idea—you have a mood board.',
          takeaway:
              'C.O.R.E. turns brainstorming into marketing engineering: context, outcome, rules, and a defined deliverable.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five prompt elements that generate testable campaign ideas.',
            pieces: [
              PromptPieceDef(
                  text: 'Name the audience and realistic channel constraints',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: ideas must be executable within a stated time window',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: each idea includes channel, message, hook, and a quick test',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Ban inventing budgets or metrics; use [Unknown] when missing',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: fixed number of ideas and a strict output format',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for “viral” ideas without channels or tests',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI invent customer segments you did not specify',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request only adjectives like bold, innovative, disruptive',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit measurement so ideas stay creative',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to copy a competitor campaign verbatim',
                  isCorrect: false),
            ],
            coachingNote:
                'Marketing ideation prompts still follow C.O.R.E.: without Requirements, you get untestable fluff.',
            assembledPromptExample:
                '6 launch ideas for B2B ops tool: channel, message, hook, 7-day test; 2-week execution cap; no invented budgets; [Unknown]; consistent format.',
            feedbackWhenCorrect:
                'You are generating campaigns you can ship and measure—not slogans you can only admire.',
            resultPolishedPrompt:
                'Generate six launch campaign ideas for a B2B workflow product aimed at operations managers during Q2. For each idea specify channel, core message, hook, and a quick test measurable within seven days. Each idea must be executable within two weeks. Do not invent budget or performance numbers—mark unknowns as [Unknown]. Return only the six ideas in a consistent labeled format.',
          ),
        ),
        ScenarioDef(
          title: 'Quarterly content themes aligned to pipeline',
          situation:
              'Leadership wants quarterly themes, not random topics.\n\nWithout C.O.R.E., AI produces a content calendar that ignores how you actually sell.\n\nTo get a usable result, your prompt must define:\n- Context - product motion, segments, and sales stages\n- Objective - themes that map to pipeline needs\n- Requirements - audience + formats + example titles per theme; no invented revenue claims\n- Expectations - fixed theme count',
          prompt:
              'Propose 5 quarterly content themes aligned to pipeline stages: educate → evaluate → adopt.\n\nContext: mid-market SaaS; buyers are ops + IT; we publish blog, case study, and webinar.\n\nRequirements: each theme lists Primary audience, Formats (pick from allowed), and 3 example working titles. Do not invent customer results; mark [Unknown] if quant proof is missing.\n\nExpectations: output only the 5 themes in the same structure.',
          output:
              '**Theme 1 — Educate: invisible work**\n- Audience: ops managers\n- Formats: blog, LinkedIn\n- Titles: The hidden cost of approval chains; How to spot reporting drag; A 20-minute audit for weekly prep time [Unknown data]\n\n**Theme 2 — Educate: from data to decisions**\n- Audience: ops leads + analysts\n- Formats: blog, case study\n- Titles: When your report is “right” but still ignored; Defining one source of truth without a six-month project; How teams cut rework after handoffs [Unknown proof]\n\n**Theme 3 — Evaluate: prove the workflow**\n- Audience: IT + ops buyers\n- Formats: webinar, case study\n- Titles: Security review pack for ops tools; Before/after: time-to-close a weekly pack [Unknown metric]; Checklist: what procurement actually asks for\n\n**Theme 4 — Evaluate: compare and choose**\n- Audience: economic buyers (VP Ops / CFO office)\n- Formats: case study, blog\n- Titles: Build vs buy for internal reporting stacks; TCO worksheet for workflow automation [Unknown template]; How to run a 30-day pilot without breaking production\n\n**Theme 5 — Adopt: rollout without chaos**\n- Audience: IT + ops sponsors\n- Formats: webinar, checklist download\n- Titles: Permissions model that scales; Training plan that sticks; Go-live week playbook\n\nThemes work when Requirements tie content to motion—otherwise it is just SEO karaoke.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Themes map to revenue motion because the prompt forced pipeline alignment.\n- Context named buyer roles and formats you can ship\n- Objective tied themes to educate/evaluate/adopt\n- Requirements separated audience, formats, and example titles\n- Expectations blocked invented proof with [Unknown]',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nGive content themes\n\nStrong prompt:\n5 themes across pipeline stages; audience; formats from allowed set; 3 titles each; no invented ROI; [Unknown]; consistent structure.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMid-market SaaS; ops+IT buyers; known formats\n\nO - Objective\nQuarterly themes aligned to pipeline\n\nR - Requirements\nAudience + formats + titles; honest proof rules\n\nE - Expectations\nFive themes; identical structure',
            ),
          ],
          proTip:
              'If example titles do not sound like something your team would ship, your Requirements are still too loose.',
          takeaway:
              'Content strategy prompts need Expectations as tight as product specs.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that align themes to pipeline reality.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe buyer roles and allowed content formats',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: map themes across educate → evaluate → adopt',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: audience, formats, and example titles per theme',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Forbid invented customer outcomes; require [Unknown] without proof',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Expectations: fixed theme count and parallel structure',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for fifty themes to maximize creativity',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI invent case study metrics for punch',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit pipeline stages so themes stay evergreen',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request only hashtags, no titles',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to ignore sales motion and chase trends',
                  isCorrect: false),
            ],
            coachingNote:
                'Pipeline-aligned content is a C.O.R.E. problem: connect context to measurable buyer stages.',
            assembledPromptExample:
                '5 themes; educate/evaluate/adopt; audience; allowed formats; 3 titles; no invented metrics; [Unknown]; parallel sections.',
            feedbackWhenCorrect:
                'You built themes sales can recognize—that is the difference between marketing and noise.',
            resultPolishedPrompt:
                'Propose five quarterly content themes for a mid-market SaaS motion serving operations and IT buyers across educate, evaluate, and adopt stages. For each theme specify primary audience, formats chosen from blog, case study, webinar, and LinkedIn, and three example working titles. Do not invent quantified customer results; mark missing proof as [Unknown]. Use the same section structure for every theme.',
          ),
        ),
        ScenarioDef(
          title: 'Social angles for a live event',
          situation:
              'You are promoting an event across pre, live, and post phases.\n\nWithout structure, AI collapses everything into generic “join us” posts.\n\nTo get a usable result, your prompt must define:\n- Context - event type, date window, and CTA reality\n- Objective - coverage across phases with distinct jobs\n- Requirements - phase tag + message + asset type + CTA per angle\n- Expectations - fixed angle count',
          prompt:
              'Create 8 social angles for a 60-minute live product demo webinar.\n\nContext: LinkedIn + X; registration link exists; we have speaker quotes and 3 product screenshots.\n\nObjective: drive registrations before, engagement during, and replay views after.\n\nRequirements: each angle must include Phase (pre/live/post), Message (1 sentence), Suggested asset (e.g., quote card, screenshot, thread), and CTA.\n\nExpectations: return only the 8 angles in a table-like bullet format.',
          output:
              '**Pre**\n1) Phase: pre — Message: what you will learn in 20 minutes — Asset: screenshot 1 — CTA: register\n2) Phase: pre — Message: speaker credibility + who it is for — Asset: quote card — CTA: register\n\n**Live**\n3) Phase: live — Message: key takeaway tease — Asset: thread starter — CTA: join now\n4) Phase: live — Message: audience question prompt — Asset: poll text [Unknown tool feature] — CTA: reply\n\n**Post**\n5) Phase: post — Message: top 3 learnings — Asset: screenshot 2 — CTA: watch replay\n6) Phase: post — Message: the one setting teams forget when scheduling reports — Asset: screenshot 3 — CTA: watch replay\n7) Phase: post — Message: quote from live Q&A on failure modes — Asset: quote card — CTA: watch replay + comment question\n8) Phase: post — Message: “if you missed it” recap with timestamps — Asset: thread summary — CTA: register interest for next demo\n\nPhased Requirements stop “evergreen” posts that say nothing at the moment people decide.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Angles map to the event lifecycle because the prompt required phase-specific jobs.\n- Context named platforms and available assets\n- Objective separated registration, live engagement, replay\n- Requirements forced asset + CTA per angle\n- Expectations fixed count and format',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite social posts for our webinar\n\nStrong prompt:\n8 angles; pre/live/post; message+asset+CTA each; platforms; known creative assets; structured bullets only.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nWebinar; LinkedIn+X; reg link; quotes+screenshots\n\nO - Objective\nRegistrations, live engagement, replay\n\nR - Requirements\nPhase; message; asset; CTA\n\nE - Expectations\nEight angles; consistent bullet structure',
            ),
          ],
          proTip:
              'If every post has the same CTA, you are not running phases—you are spamming one ask.',
          takeaway:
              'Event social is C.O.R.E. choreography: each phase needs its own Objective.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that produce phased event social coverage.',
            pieces: [
              PromptPieceDef(
                  text: 'State platforms, assets, and the event format',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: separate pre-registration, live engagement, post replay goals',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: each angle includes phase, message, asset, and CTA',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Tie messages to available proof (quotes, screenshots), not fantasy creative',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: fixed angle count and consistent formatting',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Use one generic CTA for every phase to save time',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit asset types so the team can improvise later',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent celebrity guests for attention',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask only for pre-event posts',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request 40 angles with no structure',
                  isCorrect: false),
            ],
            coachingNote:
                'Social prompts fail when they ignore lifecycle. Phase is a Requirement, not a label.',
            assembledPromptExample:
                '8 webinar angles: pre/live/post; message+asset+CTA; LinkedIn+X; quotes+screenshots; bullet structure only.',
            feedbackWhenCorrect:
                'You mapped creative work to the event clock—this is how social actually converts.',
            resultPolishedPrompt:
                'Create eight social media angles for a 60-minute live product demo webinar on LinkedIn and X. Include pre-event, live, and post-event phases. For each angle specify phase, one-sentence message, suggested asset type using available speaker quotes and product screenshots, and a clear CTA. Output only the eight angles in a consistent bullet structure.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Write Social Posts Easily',
      scenarios: [
        ScenarioDef(
          title: 'LinkedIn post for a product update',
          situation:
              'You shipped a meaningful update and need a credible LinkedIn post.\n\nWeak prompts produce hype without specifics—or leaks without context.\n\nTo get a usable result, your prompt must define:\n- Context - product, audience, and what changed\n- Objective - inform and drive one action\n- Requirements - tone, length, hashtags count, and what not to claim\n- Expectations - include a clear CTA and optional disclaimer',
          prompt:
              'Write a LinkedIn post announcing a product update.\n\nContext: reporting tool for ops teams; update improves scheduled report reliability.\n\nObjective: drive trials of the new scheduling beta.\n\nRequirements: 5–7 short lines; professional tone; max 3 hashtags; do not claim uptime percentages unless I paste them—otherwise write [No data provided].\n\nExpectations: one CTA: comment “beta” to get access; include a one-line “what changed” upfront.',
          output:
              'We shipped a big reliability upgrade for scheduled reports—fewer missed sends when your data sources hiccup.\n\nIf weekly reporting has ever been “mostly fine except Mondays,” this beta is for you.\n\nWhat changed: smarter retries + clearer failure signals so you fix issues faster.\n\nWant access? Comment “beta” and we will DM the link.\n\n[No data provided] on uptime—ask if you need the latest numbers.\n\n#operations #reporting #SaaS\n\nSpecificity came from Requirements: the model could not invent stats, so it used honest framing.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The post is credible because claims are bounded.\n- Context named user type and feature area\n- Objective focused on beta trials, not vague “awareness”\n- Requirements capped length and hashtags; blocked invented metrics\n- Expectations forced a single CTA pattern',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nPost about our update\n\nStrong prompt:\nOps reporting tool; reliability update; 5–7 lines; beta CTA via comment; max 3 hashtags; no fake uptime; [No data provided].',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nOps reporting; scheduling reliability update\n\nO - Objective\nDrive beta trial interest\n\nR - Requirements\nLength; tone; hashtag limit; honesty on metrics\n\nE - Expectations\nLead with what changed; one CTA',
            ),
          ],
          proTip:
              'If you do not block fake metrics, LinkedIn will “help” you lie politely.',
          takeaway:
              'Social copy is still C.O.R.E.: define what you will not claim as hard as what you will.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep a LinkedIn update honest and actionable.',
            pieces: [
              PromptPieceDef(
                  text: 'Name the audience and the specific change shipped',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Objective: one primary action (e.g., beta sign-up path)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: length, tone, and hashtag limits',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Explicit rule for metrics/claims when data is not pasted',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: lead with “what changed” and a single CTA',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Encourage invented customer counts for social proof',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for ten different CTAs in one post',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit the product context so it sounds mysterious',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request aggressive hype regardless of facts',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to attack competitors by name',
                  isCorrect: false),
            ],
            coachingNote:
                'Brand-safe social prompts need Requirements for claims—otherwise fluency beats truth.',
            assembledPromptExample:
                'LinkedIn update: ops reporting reliability; 5–7 lines; comment “beta” CTA; <=3 hashtags; [No data provided] for missing stats.',
            feedbackWhenCorrect:
                'You can ship posts without accidentally inventing numbers—most teams cannot say that.',
            resultPolishedPrompt:
                'Write a LinkedIn post for operations teams announcing a reliability improvement to scheduled reporting in our analytics product. Use five to seven short lines, professional tone, at most three hashtags, lead with what changed, and use a single call-to-action asking interested readers to comment “beta” for access. Do not invent uptime or performance statistics; if I did not provide numbers, write [No data provided] instead.',
          ),
        ),
        ScenarioDef(
          title: 'X thread from a single insight',
          situation:
              'You want a thread that teaches one insight without turning into a rant.\n\nThreads sprawl when Expectations are missing.\n\nTo get a usable result, your prompt must define:\n- Context - audience expertise level\n- Objective - one takeaway readers can use today\n- Requirements - post count, tone, and no invented statistics\n- Expectations - numbered thread outline + CTA',
          prompt:
              'Write a 5-post X thread.\n\nContext: marketers learning prompt basics.\n\nObjective: teach one idea: “Expectations prevent mushy AI outputs.”\n\nRequirements: each post <= 240 characters; friendly expert tone; no statistics unless marked [Example]; include one mini exercise in post 4.\n\nExpectations: posts numbered 1/5 … 5/5; final post CTA: follow for more prompts.',
          output:
              '1/5 Most AI flops are not “bad models.” They are missing Expectations—what “done” looks like.\n\n2/5 If you say “write an email,” you get mush. If you say “3 short paragraphs + deadline,” you get structure.\n\n3/5 Think of Expectations as the acceptance test for the output.\n\n4/5 Mini exercise: rewrite “summarize this” to include format + what to exclude. [Example only]\n\n5/5 If you want more C.O.R.E. breakdowns like this, follow—next week: Requirements vs nice-to-haves.\n\nCharacter limits are Requirements; without them, threads become essays.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The thread stayed coherent because constraints were numeric and sequential.\n- Context set reader skill level\n- Objective forced a single lesson\n- Requirements capped characters and banned fake stats\n- Expectations demanded numbering and a final CTA',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a Twitter thread about AI\n\nStrong prompt:\n5 posts; <=240 chars; one lesson; [Example] for stats; mini exercise post 4; numbered; follow CTA.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMarketers learning prompting\n\nO - Objective\nTeach Expectations concept\n\nR - Requirements\nPost count; char cap; honest stats rule\n\nE - Expectations\nNumbered thread + follow CTA',
            ),
          ],
          proTip:
              'Character limits belong in Requirements, not hope. AI will always write long unless you forbid it.',
          takeaway:
              'Threads need C.O.R.E. too—especially Expectations for length and structure.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep a social thread tight and teachable.',
            pieces: [
              PromptPieceDef(
                  text: 'Define reader level and the one lesson to deliver',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: a single takeaway, not a topic cluster',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: post count and per-post character limits',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Honesty rule for statistics (example-only labels or bans)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: numbering scheme + final CTA',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for 40 posts to cover every subtopic',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove character limits for depth',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent study percentages to sound authoritative',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Combine five unrelated lessons into one thread',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'End without a CTA to stay humble',
                  isCorrect: false),
            ],
            coachingNote:
                'Micro-format content punishes vague prompts fastest—Requirements are non-optional.',
            assembledPromptExample:
                '5-part X thread; <=240 chars; one lesson; [Example] stats; exercise post 4; numbered; follow CTA.',
            feedbackWhenCorrect:
                'You can teach in public without rambling—discipline in the prompt becomes discipline on the feed.',
            resultPolishedPrompt:
                'Write a five-post X thread for marketers learning prompting basics. Each post must be at most 240 characters, numbered 1/5 through 5/5, teaching a single idea: clear Expectations define what a finished AI output looks like. Label any illustrative numbers as [Example]. Include a mini exercise in post four and a follow CTA in post five.',
          ),
        ),
        ScenarioDef(
          title: 'Instagram caption for a customer quote graphic',
          situation:
              'Design gave you a quote card; you need caption copy that matches brand voice.\n\nCaption prompts fail when voice and compliance are undefined.\n\nTo get a usable result, your prompt must define:\n- Context - brand voice traits and industry\n- Objective - reinforce trust and prompt saves\n- Requirements - emoji limit, line breaks, banned phrases\n- Expectations - first-line hook + soft CTA',
          prompt:
              'Write an Instagram caption for a customer quote graphic.\n\nContext: B2B SaaS for finance ops; voice is calm, precise, non-hype.\n\nObjective: increase saves/shares from finance managers.\n\nRequirements: max 2 emojis; no “game-changer” or “rocket ship”; include [Customer name] placeholder; 90–130 words; line breaks for readability.\n\nExpectations: first line is the hook; last line CTA: comment “template” for resource.',
          output:
              'Close books faster without adding headcount—[Customer name] says the win was fewer manual reconciliations each week.\n\nThat is the difference between automation that sounds good and automation your controllers trust.\n\nIf you are standardising month-end, start by mapping where time actually goes.\n\nComment “template” and we will send the reconciliation checklist we use with new teams.\n\n📎✅\n\nVoice Requirements filtered hype words the model loves to add.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The caption matches brand because Requirements banned hype vocabulary.\n- Context set industry + tone adjectives\n- Objective targeted saves/shares with substantive hook\n- Requirements limited emojis and enforced placeholders\n- Expectations defined hook + CTA placement',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCaption for this quote\n\nStrong prompt:\nFinance ops SaaS; calm voice; <=2 emojis; ban hype words; [Customer name]; 90–130 words; hook first; comment CTA.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nFinance ops; quote card creative\n\nO - Objective\nTrust + saves/shares\n\nR - Requirements\nEmoji cap; banned phrases; placeholder; length; breaks\n\nE - Expectations\nHook first line; CTA last line',
            ),
          ],
          proTip:
              'Banned-phrases lists are Requirements for brand voice—otherwise every caption sounds like a billboard.',
          takeaway:
              'Creative channels still need C.O.R.E.: voice is a Requirement, not a vibe check afterward.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep Instagram copy on-brand.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe industry, audience, and voice adjectives',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: desired engagement outcome (saves, comments, etc.)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: emoji limits, length, and banned hype phrases',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Include placeholder tokens for customer-specific facts',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: hook placement and closing CTA pattern',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for fifteen emojis minimum for fun',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use slang that contradicts a precise finance brand',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit customer placeholder to sound more personal',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to invent a customer name and quote',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request a wall of hashtags instead of readable lines',
                  isCorrect: false),
            ],
            coachingNote:
                'Social brand prompts are compliance + creativity: Requirements carry the brand guardrails.',
            assembledPromptExample:
                'IG caption: finance ops; calm voice; <=2 emojis; ban hype; [Customer name]; 90–130 words; hook+CTA positions.',
            feedbackWhenCorrect:
                'You can scale social without diluting voice—Requirements did the enforcement.',
            resultPolishedPrompt:
                'Write an Instagram caption for a customer quote graphic for a calm, precise B2B finance operations SaaS brand. Use at most two emojis, between 90 and 130 words with line breaks, ban hype phrases like “game-changer,” include a [Customer name] placeholder, open with a hook line, and close with a comment “template” CTA.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Create Simple Landing Page Copy',
      scenarios: [
        ScenarioDef(
          title: 'Homepage hero for a niche product',
          situation:
              'Your hero must say who it is for, what it does, and why it matters—in one glance.\n\nHero prompts without Requirements become generic “innovation” language.\n\nTo get a usable result, your prompt must define:\n- Context - category, buyer, and primary pain\n- Objective - communicate value + credibility in one screen\n- Requirements - max words for hero + subhead; banned clichés\n- Expectations - include proof line rules (real vs [Unknown])',
          prompt:
              'Write homepage hero copy (headline + subhead + proof line).\n\nContext: workflow automation for healthcare admin teams; buyers are clinic operations leads.\n\nObjective: communicate time saved on intake paperwork with HIPAA-aware positioning (not legal advice).\n\nRequirements: headline <=8 words; subhead <=22 words; ban “revolutionary,” “AI-powered magic,” “world-class.”\n\nExpectations: proof line must be either a real metric I paste or the words “Customer results vary” if none provided.',
          output:
              '**Headline**\nLess paperwork. Faster intake.\n\n**Subhead**\nOps teams reduce manual intake steps while keeping PHI handling disciplined—built for clinics that cannot afford sloppy handoffs.\n\n**Proof line**\nCustomer results vary\n\nClean heroes come from Requirements on word count and proof discipline—not from asking for “punchy.”',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The hero is specific because context and bans removed generic SaaS language.\n- Context named industry and buyer\n- Objective tied value to a real operational pain\n- Requirements enforced word caps and cliché bans\n- Expectations forced honest proof handling',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a headline\n\nStrong prompt:\nHealthcare admin ops; HIPAA-aware tone; headline<=8; subhead<=22; ban clichés; proof line rule for missing metrics.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nHealthcare admin workflow automation\n\nO - Objective\nClear value + cautious compliance tone\n\nR - Requirements\nWord limits; banned phrases\n\nE - Expectations\nProof line policy',
            ),
          ],
          proTip:
              'Ban lists are Requirements for heroes—models love “revolutionary” more than users do.',
          takeaway:
              'Landing copy is C.O.R.E. compressed: every word is a constraint problem.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that produce a credible hero block.',
            pieces: [
              PromptPieceDef(
                  text: 'Name industry, buyer, and the pain you solve',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: headline job (value + differentiation) stated clearly',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: word limits for headline and subhead',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Ban vague superlatives and magic buzzwords explicitly',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: proof line rules when metrics are absent',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for as many adjectives as possible',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent customer logos and metrics for credibility',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit industry context to keep copy universal',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Promise legal compliance as guaranteed in copy',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Request ten alternative heroes without limits',
                  isCorrect: false),
            ],
            coachingNote:
                'Hero prompts need hard Requirements: length, proof, and banned phrases—soft adjectives do not substitute.',
            assembledPromptExample:
                'Hero+subhead+proof; healthcare admin; HIPAA-aware; word caps; ban clichés; honest proof line if no metric.',
            feedbackWhenCorrect:
                'You can ship landing copy that survives legal and buyer scrutiny—because Requirements did the filtering.',
            resultPolishedPrompt:
                'Write homepage hero copy with a headline of at most eight words, a subhead of at most twenty-two words, and a proof line for workflow automation aimed at clinic operations leaders. Keep HIPAA-aware positioning without giving legal advice. Ban words like “revolutionary,” “AI-powered magic,” and “world-class.” If I provide no metric, the proof line must read exactly: Customer results vary.',
          ),
        ),
        ScenarioDef(
          title: 'Feature section with three bullets',
          situation:
              'Feature sections bloat when AI lists everything the product could do.\n\nYou need selection discipline in the prompt.\n\nTo get a usable result, your prompt must define:\n- Context - persona and job-to-be-done\n- Objective - three differentiated benefits\n- Requirements - parallel bullet structure; no fake integrations\n- Expectations - each bullet ties to an outcome metric type',
          prompt:
              'Write a 3-bullet feature section for the product page.\n\nContext: analytics tool for ecommerce ops teams.\n\nObjective: explain why it improves gross margin visibility, not “more dashboards.”\n\nRequirements: each bullet = Benefit headline + 1 sentence + outcome type (time saved / risk reduced / revenue protected); integrations only from this list: Shopify, BigCommerce, [Unknown].\n\nExpectations: return only the 3 bullets.',
          output:
              '• **Margin alerts that fire before promos bleed profit** — Surfaces skew between discounting and contribution margin so you adjust campaigns the same week. Outcome: revenue protected.\n\n• **Faster close on inventory exceptions** — Flags mismatches between sales and stock movements with a short explain line ops can action. Outcome: time saved.\n\n• **Cleaner refund/chargeback signals** — Groups noisy payment events so finance sees patterns, not tickets. Outcome: risk reduced.\n\nParallel structure came from Requirements; without it, bullets read like three random products.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Bullets are comparable because structure was mandated.\n- Context anchored ecommerce ops outcomes\n- Objective forced margin story, not feature soup\n- Requirements enforced parallel fields + integration honesty\n- Expectations limited scope to three bullets',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nList features\n\nStrong prompt:\n3 bullets; benefit+sentence+outcome type; ecommerce ops; integrations only from allowed list; [Unknown].',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nEcommerce ops analytics buyer\n\nO - Objective\nMargin visibility story\n\nR - Requirements\nParallel bullet schema; honest integrations\n\nE - Expectations\nExactly three bullets',
            ),
          ],
          proTip:
              'Parallel bullet schemas are hidden Requirements—they keep comparisons honest.',
          takeaway:
              'Feature copy is C.O.R.E. plus symmetry: same shape, sharper choices.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that prevent feature bloat.',
            pieces: [
              PromptPieceDef(
                  text: 'Define persona and the job-to-be-done for the section',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: a focused story, not an encyclopedia of features',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: identical fields per bullet for easy scanning',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Restrict integrations/partners to an approved list or [Unknown]',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: explicit bullet count',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask for twelve bullets so nothing is left out',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent enterprise clients to sound established',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use a different structure in every bullet for variety',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit outcome types so bullets stay vague',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Claim certifications that are not provided',
                  isCorrect: false),
            ],
            coachingNote:
                'When every bullet has the same skeleton, readers trust you are comparing apples to apples.',
            assembledPromptExample:
                '3 feature bullets; benefit+sentence+outcome type; ecommerce ops; allowed integrations only; [Unknown].',
            feedbackWhenCorrect:
                'You guided the model to edit, not enumerate—this is how landing pages stay readable.',
            resultPolishedPrompt:
                'Write a three-bullet feature section for ecommerce operations teams using an analytics product focused on gross margin visibility. Each bullet must include a benefit headline, one supporting sentence, and an outcome label of time saved, risk reduced, or revenue protected. Only mention integrations from Shopify, BigCommerce, or mark unknown platforms as [Unknown]. Return only the three bullets.',
          ),
        ),
        ScenarioDef(
          title: 'Signup module copy with clear constraints',
          situation:
              'Signup copy creates legal and trust issues when prompts are loose.\n\nTo get a usable result, your prompt must define:\n- Context - offer (trial length), billing transparency, and audience sensitivity\n- Objective - increase qualified signups\n- Requirements - disclose credit card rule accurately; no false scarcity\n- Expectations - headline, supporting line, button label, microcopy under button',
          prompt:
              'Write signup module copy (headline, subline, primary button, microcopy).\n\nContext: 14-day trial; credit card required; SMB admins who hate surprise charges.\n\nObjective: increase qualified signups without misleading urgency.\n\nRequirements: explicitly state card required before trial ends; ban fake “only 2 seats left” claims; button <=3 words.\n\nExpectations: microcopy includes cancel anytime + link placeholder [Billing FAQ URL].',
          output:
              '**Headline**\nTry workflows free for 14 days\n\n**Subline**\nCard required to start—cancel anytime before day 15 and you will not be charged. Questions? [Billing FAQ URL]\n\n**Button**\nStart trial\n\n**Microcopy**\nWe will email before the first charge. No hidden add-ons.\n\nTrust wins when Requirements ban dark-pattern language up front.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Copy is compliant-leaning because billing facts were Requirements, not footnotes.\n- Context named trial terms and audience fear\n- Objective balanced conversion with honesty\n- Requirements banned false scarcity and forced card disclosure\n- Expectations separated UI fields for implementation',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite signup text\n\nStrong prompt:\n14-day trial; card required; cancel rule; ban fake scarcity; button<=3 words; billing FAQ placeholder.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSMB admins; sensitive to billing surprises\n\nO - Objective\nQualified signups with transparency\n\nR - Requirements\nAccurate billing statements; ban manipulative scarcity\n\nE - Expectations\nHeadline/subline/button/microcopy pattern',
            ),
          ],
          proTip:
              'Put billing Requirements in the prompt, not the apology email after chargebacks.',
          takeaway:
              'Conversion copy is C.O.R.E. under regulation: clarity is a Requirement.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep signup copy transparent.',
            pieces: [
              PromptPieceDef(
                  text: 'State trial length and credit-card rules accurately',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: qualified signups, not misleading urgency',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: ban false scarcity and fake inventory claims',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Disclose cancellation/charging timing in plain language',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: separate fields for headline, button, microcopy',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Hide credit card requirement until the last step',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent countdown timers and seat limits',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Promise a money-back guarantee you did not approve',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use a ten-word button label for clarity',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Tell AI to shame users who do not sign up',
                  isCorrect: false),
            ],
            coachingNote:
                'Ethical growth prompts explicitly ban manipulation—Requirements are your brand policy.',
            assembledPromptExample:
                'Signup module: 14-day trial; card required; cancel clarity; no fake scarcity; short button; FAQ placeholder.',
            feedbackWhenCorrect:
                'You can optimize conversion without dark patterns—Requirements keep marketing honest.',
            resultPolishedPrompt:
                'Write signup module copy with headline, supporting line, primary button (maximum three words), and microcopy for a 14-day trial that requires a credit card upfront. Clearly explain when charging begins and that users can cancel before day fifteen to avoid charges. Ban false scarcity claims. Include a [Billing FAQ URL] placeholder and a line that you will email before the first charge.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Write Emails for Marketing',
      scenarios: [
        ScenarioDef(
          title: 'Welcome email after signup',
          situation:
              'Welcome emails set habit and trust.\n\nTo get a usable result, your prompt must define:\n- Context - product type and first value moment\n- Objective - one clear first action\n- Requirements - word count, tone, and link placeholders\n- Expectations - subject line + body + PS rule',
          prompt:
              'Write a welcome email for new signups.\n\nContext: productivity app for consultants; first value is importing a client list template.\n\nObjective: get them to import within 24 hours.\n\nRequirements: <=130 words; friendly-direct tone; include [Import URL] and [Help URL]; no fake “we have been watching you” personalization.\n\nExpectations: provide subject line; body; PS with human support contact placeholder [Support email].',
          output:
              'Subject: Your fastest win: import your clients in minutes\n\nHi [Name],\n\nWelcome—if you do one thing today, import your client list using our consultant template. Most people finish in under 10 minutes.\n\nStart here: [Import URL]\nStuck? [Help URL]\n\nPS: Prefer a human? Email [Support email] and we will point you to the right step.\n\nWelcome emails work when Objective names a single behavior, not ten tips.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The email drives one action because Objective and word cap collided.\n- Context set persona and first value moment\n- Objective picked a single 24h behavior\n- Requirements controlled tone and link honesty\n- Expectations separated subject/body/PS components',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWelcome email\n\nStrong prompt:\nConsultants; first value import; <=130 words; one CTA; placeholders; no creepy personalization; subject+body+PS.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nConsultant productivity app signup\n\nO - Objective\nImport within 24 hours\n\nR - Requirements\nWord cap; tone; real links as placeholders\n\nE - Expectations\nSubject, body, PS pattern',
            ),
          ],
          proTip:
              'If your welcome email lists seven features, you listed seven ways to do nothing.',
          takeaway:
              'Email marketing runs on C.O.R.E.: one Context, one Objective, strict Requirements.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a welcome email drive the first habit.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe the product and the first meaningful win',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: single primary action within a time window',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: length limit and tone constraints',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Use placeholders for URLs and support contacts instead of inventing links',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: subject line + body + PS structure',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Pack every feature into the first email',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Fake personalization using private user behavior',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit the CTA to keep the email friendly',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use manipulative guilt for not onboarding',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write a 400-word essay for “authority”',
                  isCorrect: false),
            ],
            coachingNote:
                'Welcome sequences start with C.O.R.E. discipline: one action beats ten mentions.',
            assembledPromptExample:
                'Welcome email: consultants; import in 24h; <=130 words; [Import URL] [Help URL]; subject+body+PS; [Support email].',
            feedbackWhenCorrect:
                'You directed attention instead of spraying it—this is how onboarding emails actually convert.',
            resultPolishedPrompt:
                'Write a welcome email under 130 words for new signups to a productivity app for consultants. Objective: complete the client list import within twenty-four hours using the provided template. Friendly-direct tone. Include placeholders [Import URL], [Help URL], and [Support email]. Provide subject line, body, and a PS offering human help. Do not invent creepy personalization.',
          ),
        ),
        ScenarioDef(
          title: 'Promotional email with a single offer',
          situation:
              'Promo emails fail when they ask for three purchases at once.\n\nTo get a usable result, your prompt must define:\n- Context - segment, offer mechanics, and deadline truth\n- Objective - one purchase or upgrade action\n- Requirements - subject line variants count; body sections; honesty on deadline\n- Expectations - include snippet text for preview pane',
          prompt:
              'Write a promotional email for an annual plan discount.\n\nContext: existing free users; offer is 20% off annual if upgraded by Friday (real deadline).\n\nObjective: upgrade to annual.\n\nRequirements: 3 subject line options; body <=180 words; include [Upgrade URL]; do not stack other offers; preview snippet <=40 characters.\n\nExpectations: list subject options labeled A/B/C, then body, then snippet.',
          output:
              '**A** Save 20% when you go annual (ends Friday)\n**B** Friday deadline: annual plan discount\n**C** Upgrade now: lock in a year for less\n\nSnippet: 20% off annual ends Fri\n\nBody: Hi [Name], you have been using [Product] on the free plan—thanks. If you want uninterrupted access for the next year, you can move to annual now for 20% off. The offer ends Friday at midnight UTC and does not stack with other promotions.\n\nUpgrade: [Upgrade URL]\n\nWhy annual? Fewer billing surprises and priority email support when you need it.\n\nDeadline truth in Requirements prevents “extended forever” embarrassment.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The promo stays legible because only one offer exists and deadline is explicit.\n- Context targeted free users with a real end date\n- Objective singled out annual upgrade\n- Requirements separated subject variants, snippet cap, and URL placeholder\n- Expectations enforced output ordering for implementation',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSale email\n\nStrong prompt:\n20% annual; ends Friday; free users; 3 subjects; <=180 words; preview snippet<=40; [Upgrade URL]; no stacking.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nFree users; timed annual discount\n\nO - Objective\nSingle upgrade action\n\nR - Requirements\nSubject variants; word caps; honest deadline; no stacked promos\n\nE - Expectations\nLabeled subjects + body + snippet',
            ),
          ],
          proTip:
              'Preview snippets are Expectations too—if you forget them, mobile readers see random first lines.',
          takeaway:
              'Promotional email is C.O.R.E. plus packaging: subjects, body, snippet are all specified outputs.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep a promo email focused.',
            pieces: [
              PromptPieceDef(
                  text: 'Define segment, offer mechanics, and real deadline',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: one purchase/upgrade path only',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: subject line count, word limits, snippet limit',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Use a placeholder for the checkout/upgrade URL',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: labeled deliverables for production handoff',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Stack three unrelated offers for urgency',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Extend deadlines dynamically to “help” conversion',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit preview snippet as unnecessary',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Write six different CTAs in one email',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent a higher discount to beat competitors',
                  isCorrect: false),
            ],
            coachingNote:
                'Focused promos win because Requirements remove option overload—C.O.R.E. applies to incentives too.',
            assembledPromptExample:
                'Promo: 20% annual; Friday end; 3 subjects; <=180 words; snippet<=40; [Upgrade URL]; no stacking.',
            feedbackWhenCorrect:
                'You kept the promo honest and scannable—Requirements prevented discount soup.',
            resultPolishedPrompt:
                'Write a promotional email to existing free users offering twenty percent off an annual plan with a real deadline of Friday at midnight UTC. Include three labeled subject line options, a body of at most 180 words with a single upgrade call-to-action using [Upgrade URL], a preview snippet of at most 40 characters, and explicit language that the offer does not stack with other promotions.',
          ),
        ),
        ScenarioDef(
          title: 'Re-engagement email for dormant users',
          situation:
              'Reactivation needs empathy plus a concrete reason to return.\n\nTo get a usable result, your prompt must define:\n- Context - product value prop and why users ghost\n- Objective - one return action tied to a product improvement\n- Requirements - tone non-guilt-tripping; include [Product name]; mention improvement factually\n- Expectations - P.S. with feedback link placeholder',
          prompt:
              'Write a re-engagement email for users inactive 30 days.\n\nContext: habit tracker app; common drop-off is notification fatigue; we shipped granular notification controls last week.\n\nObjective: open settings and tune notifications.\n\nRequirements: no guilt language (“you failed,” “you quit”); <=150 words; include [Settings URL] and [Feedback URL].\n\nExpectations: subject + body + PS inviting honest feedback.',
          output:
              'Subject: We fixed the noisy notifications (want a calmer week?)\n\nHi [Name],\n\nA lot of people paused [Product name] when alerts felt constant—not because the habit mattered less. We shipped finer notification controls so you can keep reminders without the noise.\n\nIf you have 2 minutes, open settings and tune what you want to see: [Settings URL]\n\nPS: Tell us what still feels off—[Feedback URL]. We read these.\n\nTone Requirements kept the email respectful—reactivation is not punishment marketing.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Empathy plus a concrete product reason beats shame.\n- Context explained a real churn driver\n- Objective focused on notification settings, not vague “come back”\n- Requirements banned guilt language and capped length\n- Expectations added feedback loop via PS',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWin back email\n\nStrong prompt:\n30d inactive; notification fatigue; new controls; no guilt; <=150 words; [Settings URL] [Feedback URL]; subject+body+PS.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nHabit app; dormant users; notification pain\n\nO - Objective\nReturn to tune notifications\n\nR - Requirements\nRespectful tone; factual improvement; link placeholders\n\nE - Expectations\nSubject, body, PS feedback invite',
            ),
          ],
          proTip:
              'Ban guilt phrases in Requirements—models default to emotional pressure because it “works” in fiction.',
          takeaway:
              'Retention copy is C.O.R.E. with empathy: Context includes why people left.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that re-engage users without shame tactics.',
            pieces: [
              PromptPieceDef(
                  text: 'Explain why users drifted and what changed in the product',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: one concrete return action in the product',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: respectful tone rules banning guilt trips',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Include factual improvement statements, not invented roadmap',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: subject, body, PS with feedback placeholder',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Accuse users of quitting because they lack discipline',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Promise features that are not shipped',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Hide the settings link to reduce clutter',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask them to invite ten friends as the only CTA',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use fake countdowns to manufacture panic',
                  isCorrect: false),
            ],
            coachingNote:
                'Ethical retention is a Requirements problem: ban shame, demand facts, specify the return path.',
            assembledPromptExample:
                'Re-engage: 30d inactive; notification controls shipped; no guilt; <=150 words; settings+feedback URLs; subject+body+PS.',
            feedbackWhenCorrect:
                'You invited people back with dignity—this is how brands keep trust while chasing activation.',
            resultPolishedPrompt:
                'Write a re-engagement email for users inactive thirty days in a habit tracker app. Explain notification fatigue as a common reason people pause, mention that granular notification controls shipped last week, and ask them to spend two minutes tuning settings using [Settings URL]. Maximum 150 words, no guilt language, include [Product name], and end with a PS linking to [Feedback URL] for honest input. Provide subject line and body.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Boost Engagement',
      scenarios: [
        ScenarioDef(
          title: 'LinkedIn poll that yields usable insights',
          situation:
              'Polls flop when questions are vague or options overlap.\n\nTo get a usable result, your prompt must define:\n- Context - audience and what decision the poll informs\n- Objective - learn one specific thing\n- Requirements - mutually exclusive options; neutral wording; option count\n- Expectations - include how you will use results in a follow-up post',
          prompt:
              'Draft a LinkedIn poll + follow-up plan.\n\nContext: marketing to ops leaders about reporting pain.\n\nObjective: identify the top bottleneck category.\n\nRequirements: question <=140 characters; exactly 4 options; options mutually exclusive; neutral wording (no “obviously bad” choices).\n\nExpectations: poll text, then 2-sentence plan for a follow-up post referencing results without shaming voters.',
          output:
              '**Poll question**\nWhat slows your weekly reporting most?\n\n**Options**\nData cleanup\nApprovals/handoffs\nTool switching\nUnclear requests\n\n**Follow-up plan**\nI will summarize the leading option and share a short checklist targeting that bottleneck. framing is about systems, not individual blame.\n\nMutual exclusivity is a Requirement—otherwise the poll measures confusion, not reality.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Insights are readable because options cannot all be true at once.\n- Context targeted ops leaders and reporting pain\n- Objective narrowed to bottleneck category\n- Requirements enforced exclusivity and neutrality\n- Expectations connected poll to a respectful follow-up',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nMake a poll\n\nStrong prompt:\nOps leaders; reporting bottleneck; <=140 char question; 4 mutually exclusive neutral options; follow-up plan without shaming.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nOps leaders; reporting workflow pains\n\nO - Objective\nIdentify primary bottleneck category\n\nR - Requirements\nExclusive options; neutral tone; char cap\n\nE - Expectations\nPoll + follow-up usage plan',
            ),
          ],
          proTip:
              'If two poll options can be true together, fix the options—not the ad budget.',
          takeaway:
              'Engagement prompts still need C.O.R.E.: clarity beats gimmicks.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make a poll statistically meaningful.',
            pieces: [
              PromptPieceDef(
                  text: 'Name audience and the decision the poll supports',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: one measurable insight, not general “engagement”',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: mutually exclusive answer choices',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Neutral wording requirements (no loaded options)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: character limits and option count',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Add comedic insult options to go viral',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask unrelated personal questions for spice',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use eight overlapping options for nuance',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit follow-up plan and hope for magic',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Phrase the poll to embarrass people who pick an option',
                  isCorrect: false),
            ],
            coachingNote:
                'Polls are instruments: Requirements about exclusivity and neutrality are measurement hygiene.',
            assembledPromptExample:
                'LinkedIn poll: ops leaders; reporting bottleneck; <=140 char Q; 4 exclusive neutral options; follow-up plan.',
            feedbackWhenCorrect:
                'You designed engagement that can inform content—data beats vibes.',
            resultPolishedPrompt:
                'Draft a LinkedIn poll targeted at operations leaders about weekly reporting delays. Provide a question of at most 140 characters and exactly four mutually exclusive, neutrally worded options. Add a two-sentence plan describing how you will follow up with a post that uses the results constructively without shaming respondents.',
          ),
        ),
        ScenarioDef(
          title: 'Comment-to-unlock lead magnet reply',
          situation:
              'Comment workflows need brand-safe, non-spammy auto-replies.\n\nTo get a usable result, your prompt must define:\n- Context - platform norms and offer\n- Objective - deliver asset + capture email optionally\n- Requirements - no DMs before consent language; include placeholders\n- Expectations - two variants: short vs detailed auto-reply',
          prompt:
              'Write two auto-reply comment templates for LinkedIn when someone comments “guide.”\n\nContext: we offer a PDF checklist; we want email optional.\n\nObjective: send the asset and set expectations on timing.\n\nRequirements: friendly tone; no fake “limited slots”; include [Asset link] and [Privacy URL]; mention reply time [Support SLA].\n\nExpectations: Variant S (<=280 characters) and Variant L (<=650 characters).',
          output:
              '**Variant S**\nThanks! Here is the checklist: [Asset link]. We will never share your email—details: [Privacy URL]. Questions? We reply within [Support SLA].\n\n**Variant L**\nThanks for commenting “guide.” Here is the checklist we promised: [Asset link]. It walks through the same steps we use with new teams.\n\nIf you want more, you can join our newsletter, but no pressure—this link is the full PDF. Privacy basics are here: [Privacy URL]. If something looks off, email us and we will respond within [Support SLA].\n\nAuto-replies still need Requirements—otherwise they become sketchy DMs.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Trust stays intact because scarcity lies and consent gaps are banned.\n- Context respected LinkedIn comment-to-unlock norms\n- Objective clarified asset delivery + timing expectations\n- Requirements added privacy link and SLA placeholder\n- Expectations demanded two length variants for automation',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nAuto reply\n\nStrong prompt:\nComment keyword guide; [Asset link] [Privacy URL]; [Support SLA]; no fake scarcity; short+long variants with char caps.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nLinkedIn comment unlock workflow\n\nO - Objective\nDeliver asset + set expectations\n\nR - Requirements\nNo deceptive scarcity; privacy link; SLA honesty\n\nE - Expectations\nTwo template lengths',
            ),
          ],
          proTip:
              'Auto-replies are marketing infrastructure—write Requirements like legal-lite copy.',
          takeaway:
              'Engagement automation without C.O.R.E. becomes spam with extra steps.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep comment auto-replies trustworthy.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe platform context and what the user receives',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: deliver asset and set response-time expectations',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: ban deceptive scarcity or fake exclusivity',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Include privacy policy and help/SLA placeholders',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: multiple variants with explicit character caps',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Ask users to share passwords to get the PDF',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Promise instant human replies 24/7 regardless of truth',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use fear-mongering about competitors',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Send only emoji responses without the link',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Hide the asset link behind unrelated clickbait',
                  isCorrect: false),
            ],
            coachingNote:
                'Comment growth tactics need ethical Requirements—your brand pays for spammy shortcuts.',
            assembledPromptExample:
                'LinkedIn auto-reply: keyword guide; [Asset link] [Privacy URL]; [Support SLA]; Variant S<=280; Variant L<=650; no fake scarcity.',
            feedbackWhenCorrect:
                'You scaled replies without sounding predatory—Requirements protected trust.',
            resultPolishedPrompt:
                'Write two LinkedIn comment auto-reply templates for users who comment “guide” to receive a PDF checklist. Variant S must be at most 280 characters, Variant L at most 650 characters. Include placeholders [Asset link], [Privacy URL], and [Support SLA]. Ban false scarcity claims, keep tone friendly, and explain that email capture is optional if referenced.',
          ),
        ),
        ScenarioDef(
          title: 'Community challenge post with guardrails',
          situation:
              'Challenges can backfire if prompts encourage unsafe comparisons.\n\nTo get a usable result, your prompt must define:\n- Context - community values and skill level\n- Objective - drive constructive participation\n- Requirements - ban harmful comparisons; include moderation note; deadline truth\n- Expectations - post copy + comment instructions + reporting line placeholder',
          prompt:
              'Write a community challenge post for a beginner marketer group.\n\nObjective: participants share a before/after prompt rewrite using C.O.R.E.\n\nRequirements: forbid weight/diet/finance flexing; forbid naming real clients without consent; include deadline [Date]; include reporting instructions with [Mod email].\n\nExpectations: main post + pinned comment with rules summary.',
          output:
              '**Main post**\nChallenge (ends [Date]): share a before/after prompt rewrite using C.O.R.E. (Context, Objective, Requirements, Expectations).\n\nKeep it kind: no personal attacks, no flexing about money/body/clients. If you mention a client story, anonymize it or say you have consent.\n\nBest wins = clearer Requirements, not longer prompts.\n\n**Pinned comment**\nHow to join: comment with BEFORE + AFTER + one line on what changed.\nReport issues: [Mod email]\n\nGuardrails belong in Requirements—community health is part of engagement strategy.',
          refinements: refinements,
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Participation stays safe because banned content and reporting paths are explicit.\n- Context named skill level and community type\n- Objective focused on educational rewrites\n- Requirements blocked harmful flex topics and non-consensual client naming\n- Expectations split main post and pinned rule comment',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nFun challenge post\n\nStrong prompt:\nBeginner marketers; C.O.R.E. rewrite challenge; ban harmful flex; anonymize clients; deadline [Date]; [Mod email]; main+pinned comment.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nBeginner marketer community\n\nO - Objective\nShare constructive prompt rewrites\n\nR - Requirements\nSafety/moderation rules; consent for client stories\n\nE - Expectations\nMain post + pinned instructions',
            ),
          ],
          proTip:
              'Moderation Requirements are not buzzkill—they are how challenges scale without PR fires.',
          takeaway:
              'Viral prompts still need C.O.R.E.: define what participants must not do.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that run a safe community challenge.',
            pieces: [
              PromptPieceDef(
                  text: 'Define community level and challenge learning goal',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: structured participation format (before/after)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: ban harmful comparison topics and non-consensual stories',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Include accurate deadline placeholder and reporting path',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: main post plus pinned rule summary',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Encourage dunking on bad prompts with personal insults',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask people to share confidential client names',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit moderation contact to keep things casual',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Promise prizes you will not fulfill',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Run the challenge indefinitely without a deadline',
                  isCorrect: false),
            ],
            coachingNote:
                'Community engagement is brand risk management: Requirements list the failures you refuse to host.',
            assembledPromptExample:
                'Challenge post: C.O.R.E. rewrites; ban harmful flex; anonymize clients; [Date]; [Mod email]; main + pinned comment.',
            feedbackWhenCorrect:
                'You scaled participation with guardrails—engagement without Requirements is liability.',
            resultPolishedPrompt:
                'Write a community challenge post for beginner marketers asking participants to share before-and-after prompt rewrites using C.O.R.E. Include a real deadline placeholder [Date], forbid harmful flexing about money, body, or clients without consent, require anonymization or consent for client stories, provide reporting instructions with [Mod email], supply main post copy, and a pinned comment summarizing participation and safety rules.',
          ),
        ),
      ],
    ),
  ];
}
