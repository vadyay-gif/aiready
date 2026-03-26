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
              '- Reduce unnecessary approval steps (Impact: Med, Effort: Med, Risk: High)\n  - Guardrail: keep mandatory compliance checkpoints; document any removed step rationale\n- Automate routine data handling tasks (Impact: High, Effort: Med, Risk: Med)\n- Standardise templates to reduce errors (Impact: Med, Effort: Low, Risk: Low)\n- Introduce weekly review checkpoints (Impact: Med, Effort: Low, Risk: Low)\n- Improve documentation for onboarding (Impact: Med, Effort: Low, Risk: Low)\n- Add a “definition of done” checklist per step (Impact: Med, Effort: Low, Risk: Low)\n- Create a fast-path for low-risk cases (Impact: High, Effort: Med, Risk: Med)\n  - Guardrail: define eligibility criteria; audit a sample weekly\n- Add an exception log for edge cases (Impact: Med, Effort: Low, Risk: Low)\n- Identify the top 3 recurring delays and instrument them (Impact: High, Effort: Med, Risk: Low)\n- Clarify ownership per step (Impact: Med, Effort: Low, Risk: Low)\n\nNotice how this stays decision-grade: Impact/Effort/Risk + Guardrails prevents “quick wins” from becoming hidden liabilities.',
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
                'C.O.R.E. skill check: choose the five prompt elements that generate actionable ideas with explicit trade-offs and guardrails.',
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
              '**Prevent**\n- Standardise templates to reduce errors\n  - Small test: pilot the template for one week on the highest-volume workflow\n  - Failure mode: templates become ignored without enforcement or training\n\n**Detect**\n- Add real-time monitoring to catch issues early\n  - Small test: instrument the top 2 failure points and alert on thresholds\n  - Failure mode: noisy alerts create alert fatigue and get muted\n\n**Respond**\n- Create a standard troubleshooting guide\n  - Small test: run a tabletop exercise using the guide on last week’s incident\n  - Failure mode: guide becomes outdated without ownership\n\n**Learn**\n- Run a short root-cause workshop on the most recent recurrence\n  - Small test: produce 3 testable hypotheses and assign evidence collection\n  - Failure mode: workshop outputs opinions without data follow-through\n\nThis is where you can see expert ideation: grouping by strategy + tests + failure modes prevents “idea lists” from turning into wishlists.',
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
                'C.O.R.E. skill check: choose the five prompt elements that produce diverse, executable solutions with small tests and failure modes.',
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
                'C.O.R.E. skill check: choose the five prompt elements that produce feature ideas as strategic bets—not just a feature list.',
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
    const LessonDef(
      title: 'Explore Scenarios and Alternatives',
      scenarios: [
        ScenarioDef(
          title: 'Compare two strategic growth paths',
          situation:
              'Leadership wants growth, but “grow faster” is not a strategy.\n\nIf you ask AI to compare options without constraints, you get whichever story sounds smartest.\n\nTo get a usable result, your prompt must define:\n- Context - market, capabilities, and non-negotiables\n- Objective - choose between two named strategies with explicit trade-offs\n- Requirements - same comparison dimensions for each path; no invented market statistics\n- Expectations - output: comparison table + “signals to watch” list',
          prompt:
              'Compare Strategy A (expand SKU line) vs Strategy B (double down on one vertical) for a B2B SaaS company.\n\nContext: mid-market; product works today; engineering capacity is tight.\n\nObjective: decide which path is the better 12-month bet.\n\nRequirements: evaluate both on the same six dimensions: revenue potential, time-to-cash, execution risk, differentiation, support burden, and strategic option value. Do not invent revenue or churn numbers—use [Unknown] if needed.\n\nExpectations: return a comparison table plus five early warning signals that would change the recommendation.',
          output:
              '**Comparison (same dimensions)**\n- Revenue potential: A spreads demand; B concentrates wins [Unknown quant]\n- Time-to-cash: A slower (SKU sprawl); B faster (repeatable plays)\n- Execution risk: A higher (complexity); B medium (narrower scope)\n- Differentiation: A risks “me-too” breadth; B can deepen moat in one vertical\n- Support burden: A rises with SKUs; B more predictable\n- Option value: A keeps more doors open; B trades breadth for depth\n\n**Signals to watch**\n- Win-rate concentration by vertical [Unknown]\n- Expansion revenue vs new-logo mix [Unknown]\n- Time-to-ship for incremental SKU vs vertical playbooks\n- Support tickets per new SKU\n- Competitive pressure in core vertical\n\nScenario thinking becomes C.O.R.E.: Context + Objective keep the comparison honest.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The comparison is usable because dimensions are fixed and symmetric.\n- Context grounded capacity reality\n- Objective forced a decision framing, not a lecture\n- Requirements blocked fake precision with [Unknown]\n- Expectations added signals so the choice can update with evidence',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhich strategy is better?\n\nStrong prompt:\nCompare A vs B on six named dimensions; tight capacity context; no invented metrics; table + five signals that would flip the call.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nB2B SaaS; mid-market; engineering constrained\n\nO - Objective\n12-month bet between SKU expansion vs vertical focus\n\nR - Requirements\nSame six dimensions; honest unknowns\n\nE - Expectations\nComparison table + monitoring signals',
            ),
          ],
          proTip:
              'If each strategy is scored on different criteria, you did not compare—you wrote two ads.',
          takeaway:
              'Alternatives stay legible when Requirements force symmetry.',
          task: TaskDef(
            goal:
              'C.O.R.E. skill check: choose the five elements that compare strategies without fake data.',
            pieces: [
              PromptPieceDef(
                  text: 'Name capabilities and constraints in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: evaluate two named strategies against a decision',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: identical comparison dimensions for each path',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Ban invented quant metrics; use [Unknown] when needed',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: structured table plus signals that update the choice',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Let AI pick whichever strategy sounds more exciting',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use different criteria for A than for B',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent market shares to sound rigorous',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for a single paragraph with no structure',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit early-warning signals as unnecessary theory',
                  isCorrect: false),
            ],
            coachingNote:
                'Strategic comparison prompts are measurement contracts: define dimensions before you let the model narrate.',
            assembledPromptExample:
                'Compare SKU expansion vs vertical focus on six shared dimensions; capacity context; [Unknown] for missing numbers; table + five flip signals.',
            feedbackWhenCorrect:
                'You now stress-test strategies instead of choosing the best story.',
            resultPolishedPrompt:
                'Compare expanding the SKU line versus doubling down on a single vertical for a mid-market B2B SaaS product with tight engineering capacity. Score both strategies on the same six dimensions: revenue potential, time-to-cash, execution risk, differentiation, support burden, and strategic option value. Do not invent quantitative market statistics—use [Unknown]. Output a comparison table and five early-warning signals that could change the recommendation.',
          ),
        ),
        ScenarioDef(
          title: 'Pair a pre-mortem with a success scenario',
          situation:
              'Teams plan for success and get blindsided by failure modes—or plan for fear and never ship.\n\nPairing scenarios forces balance.\n\nTo get a usable result, your prompt must define:\n- Context - initiative, timeline, and stakeholders\n- Objective - surface failure AND success mechanics with equal rigor\n- Requirements - no invented metrics; each scenario lists causes/drivers and indicators\n- Expectations - two labeled sections + “implications for this quarter”',
          prompt:
              'For a new partner channel pilot (90 days), write two scenarios:\n(1) Pre-mortem: it fails despite effort.\n(2) Success scenario: it works better than expected.\n\nContext: small partnerships team; depends on partner enablement quality.\n\nRequirements: each scenario must include 4 concrete drivers, 3 observable indicators, and 1 decision you would make if that scenario is unfolding. No invented conversion rates—use [Unknown].\n\nExpectations: label sections PRE-MORTEM and SUCCESS; end with implications for the next 30 days.',
          output:
              '**PRE-MORTEM**\nDrivers: weak enablement materials; unclear lead routing; partner prioritisation drift; internal sales skepticism\nIndicators: low activated partners; long time-to-first-op; partner NPS not tracked [Unknown]\nDecision: pause scale; fix enablement + routing before adding partners\n\n**SUCCESS**\nDrivers: crisp ICP match; repeatable onboarding; tight co-selling motions; fast feedback loops\nIndicators: rising qualified opps; shortening cycle in partner-sourced deals [Unknown]\nDecision: double down on top 2 partner profiles; hire temporary enablement support [Unknown]\n\n**Next 30 days**\nBuild enablement v1 + define routing metrics before recruiting more partners.\n\nBalanced scenarios are C.O.R.E. in motion: Requirements keep both sides equally specific.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The exercise stayed balanced because structure was duplicated across scenarios.\n- Context set pilot scope and dependency\n- Objective required both failure and success rigor\n- Requirements forced drivers, indicators, and decisions without fake stats\n- Expectations pulled implications into a near-term plan',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhat could go wrong?\n\nStrong prompt:\nPre-mortem + success scenario; same scaffolding (drivers/indicators/decision); [Unknown]; 30-day implications.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\n90-day partner pilot; small team; enablement dependent\n\nO - Objective\nUnderstand failure and success paths symmetrically\n\nR - Requirements\nParallel structure; observable indicators; honest unknowns\n\nE - Expectations\nLabeled sections + quarterly implication',
            ),
          ],
          proTip:
              'If your pre-mortem is vivid and your success scenario is vague, you are managing fear, not strategy.',
          takeaway:
              'Exploring alternatives means giving success the same Requirements as failure.',
          task: TaskDef(
            goal:
              'C.O.R.E. skill check: choose the five elements that balance pre-mortem and success planning.',
            pieces: [
              PromptPieceDef(
                  text: 'Define the initiative scope and key dependency in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: explicitly pair failure and success exploration',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: parallel structure (drivers, indicators, decisions)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Forbid invented KPIs; require [Unknown] without data',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: labeled sections plus near-term implications',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Write only catastrophic failure with no success path',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use vague optimism for success and detail only failure',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Skip decisions “to stay open-minded”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent partner revenue guarantees',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for twelve unrelated future headlines',
                  isCorrect: false),
            ],
            coachingNote:
                'Scenario planning without symmetry becomes propaganda. Mirror Requirements across futures.',
            assembledPromptExample:
                'Partner pilot: pre-mortem + success; 4 drivers, 3 indicators, 1 decision each; [Unknown] metrics; 30-day implications.',
            feedbackWhenCorrect:
                'You can see both futures clearly—most prompts only see the scary one.',
            resultPolishedPrompt:
                'For a 90-day partner channel pilot with a small partnerships team dependent on enablement quality, produce labeled PRE-MORTEM and SUCCESS scenarios. Each must list four concrete drivers, three observable indicators, and one decision you would make if that scenario were unfolding. Do not invent conversion rates or pipeline metrics—use [Unknown]. Close with implications for the next 30 days.',
          ),
        ),
        ScenarioDef(
          title: 'Branches with kill criteria for a pricing move',
          situation:
              'Pricing scenarios are sensitive: small wording changes swing outcomes.\n\nTo get a usable result, your prompt must define:\n- Context - segment, product, and current pricing model\n- Objective - explore three branches with explicit kill rules\n- Requirements - no fake elasticity numbers; mark [Unknown]\n- Expectations - branch A/B/C each ends with kill criteria + next review date placeholder',
          prompt:
              'Outline three pricing scenarios for moving from flat seats to usage-based for SMB customers.\n\nBranches:\nA) Big-bang switch\nB) Grandfather existing + usage for new\nC) Hybrid bundle with caps\n\nRequirements: for each branch summarise trade-offs, implementation complexity (Low/Med/High), and three kill criteria tied to observable signals (no invented percentages—use [Unknown]).\n\nExpectations: include [Review date] placeholder for when leadership revisits the decision.',
          output:
              '**A — Big-bang**\nTrade-offs: simplest story; highest churn risk if value unclear\nComplexity: High\nKill criteria: support volume spike; sales cycle elongation; competitive win-rate drop [Unknown baselines]\nReview: [Review date]\n\n**B — Grandfather**\nTrade-offs: slower revenue lift; lowest immediate shock\nComplexity: Med\nKill criteria: new-logo mix collapses; finance reporting burden; dual-model confusion in sales\nReview: [Review date]\n\n**C — Hybrid bundle**\nTrade-offs: balances predictability + usage story; packaging complexity\nComplexity: Med/High\nKill criteria: customers game caps; finance cannot reconcile; product cannot enforce limits\nReview: [Review date]\n\nKill criteria turn scenarios into decisions, not theatre.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Branches became actionable because each ended with observable kill rules.\n- Context anchored segment + model change\n- Objective forced three real strategic paths\n- Requirements banned fake elasticity and used [Unknown]\n- Expectations added review cadence placeholders',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWhat pricing should we do?\n\nStrong prompt:\nThree branches; trade-offs; complexity; three kill criteria each; no fake elasticities; [Review date].',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSMB segment; seat → usage migration\n\nO - Objective\nCompare branching strategies with exits\n\nR - Requirements\nHonest metrics; kill criteria tied to signals\n\nE - Expectations\nStructured A/B/C + review placeholder',
            ),
          ],
          proTip:
              'A scenario without kill criteria is fan fiction. Write the exits in Requirements.',
          takeaway:
              'Alternatives explore space; kill criteria close it when reality bites.',
          task: TaskDef(
            goal:
              'C.O.R.E. skill check: choose the five elements that make strategic branches decision-ready.',
            pieces: [
              PromptPieceDef(
                  text: 'State segment, model change, and stakeholder stakes',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: compare multiple named strategic branches',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: trade-offs and complexity per branch',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Each branch needs explicit kill criteria tied to observable signals',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: review timing placeholder and no fake statistics',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Recommend one branch without analyzing others',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent precise churn elasticities to impress executives',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit kill criteria to avoid negativity',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Merge all branches into one vague compromise',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask AI to set final prices without guardrails',
                  isCorrect: false),
            ],
            coachingNote:
                'Pricing prompts need kill criteria like product prompts need acceptance tests.',
            assembledPromptExample:
                'Three pricing branches; trade-offs; complexity; 3 kill criteria each; [Unknown] metrics; [Review date].',
            feedbackWhenCorrect:
                'You turned pricing debate into a governed experiment—C.O.R.E. for high-stakes calls.',
            resultPolishedPrompt:
                'Outline three strategic branches for migrating SMB pricing from flat seats to usage-based pricing: big-bang switch, grandfathering existing customers, or a hybrid bundle with caps. For each branch summarize trade-offs, rate implementation complexity as Low, Medium, or High, and list three kill criteria based on observable operational or sales signals without inventing elasticities—use [Unknown] when needed. Include a [Review date] placeholder for leadership to revisit the decision.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Break Down Problems Step-by-Step',
      scenarios: [
        ScenarioDef(
          title: 'From vague growth goal to ordered levers',
          situation:
              '“Grow revenue” is not a plan.\n\nTo get a usable result, your prompt must define:\n- Context - business model and current motion\n- Objective - translate the goal into ordered strategic levers\n- Requirements - each lever must have a definition, dependency, and validation hint; no invented benchmarks\n- Expectations - numbered 5-step chain from diagnosis to scale',
          prompt:
              'Break down “increase net revenue retention” into a five-step strategic chain for a product-led B2B SaaS company.\n\nContext: strong activation; expansion revenue inconsistent; CS team small.\n\nRequirements: each step states lever, what must be true before moving on, and what evidence would validate it (use [Unknown] if metrics not provided).\n\nExpectations: numbered steps 1–5; no jumping to tactics without completing earlier steps.',
          output:
              '1) Define expansion cohorts (who can expand vs who cannot) — gate: agreed ICP for expansion — evidence: cohort list + usage thresholds [Unknown]\n2) Map value moments that predict upsell — gate: product telemetry aligned to value — evidence: feature-use → expansion correlation [Unknown]\n3) Standardise success plays (packages, not one-offs) — gate: pricing/packaging clarity — evidence: win stories repeatable across accounts [Unknown]\n4) Instrument leading indicators (usage, seats, workflows) — gate: dashboard ownership — evidence: weekly review happens [Unknown]\n5) Scale motions only after playbooks hit hit-rate bar — gate: playbook ROI — evidence: expansion win-rate trend [Unknown]\n\nSequencing is an Expectation: without it, AI gives you 50 tactics at once.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The chain is navigable because gates block premature tactics.\n- Context explained motion constraints (PLG + small CS)\n- Objective turned NRR into ordered levers\n- Requirements added evidence language and [Unknown] honesty\n- Expectations enforced strict step order',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHow do we grow NRR?\n\nStrong prompt:\n5-step chain; each with gate + evidence; PLG context; [Unknown] metrics; no skipping steps.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nPLG B2B SaaS; activation strong; CS limited\n\nO - Objective\nOrdered path to improve NRR\n\nR - Requirements\nGates + validation hints; honest metrics\n\nE - Expectations\nFive numbered steps in sequence',
            ),
          ],
          proTip:
              'If step 5 appears before step 2, you do not have a strategy—you have a wishlist.',
          takeaway:
              'Step-by-step strategy prompts use Requirements as gates, not suggestions.',
          task: TaskDef(
            goal:
              'C.O.R.E. skill check: choose the five elements that sequence strategic work correctly.',
            pieces: [
              PromptPieceDef(
                  text: 'Anchor Context with motion, constraints, and current strengths',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: decompose one outcome into ordered levers',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: each step includes prerequisites/gates before advancing',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Ask for evidence or validation hints per step; allow [Unknown]',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: enforce numbered sequencing without skipping',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Dump every tactic in one unordered brainstorm list',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Start with scale before diagnosing who can expand',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent benchmark NRR numbers for each step',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI choose a different goal mid-chain',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit gates so steps stay flexible',
                  isCorrect: false),
            ],
            coachingNote:
                'Strategic decomposition is C.O.R.E. choreography: Objective names the outcome; Requirements enforce order.',
            assembledPromptExample:
                'NRR: 5-step chain; gates + evidence each; PLG + lean CS; [Unknown] metrics; numbered only.',
            feedbackWhenCorrect:
                'You can move from slogan goals to sequenced bets—this is operating discipline.',
            resultPolishedPrompt:
                'Break down increasing net revenue retention into five numbered strategic steps for a product-led B2B SaaS company with strong activation, inconsistent expansion revenue, and a small customer success team. Each step must name the lever, what must be true before advancing, and what evidence would validate readiness, using [Unknown] when metrics are not provided. Do not skip steps or jump to scaling tactics before earlier gates are satisfied.',
          ),
        ),
        ScenarioDef(
          title: 'Phase a new market entry',
          situation:
              'Market entry fails when teams confuse research with scaling.\n\nTo get a usable result, your prompt must define:\n- Context - geography/segment and current proof at home\n- Objective - phased plan with go/no-go gates\n- Requirements - each phase lists goal, max spend placeholder [Budget], and exit criteria\n- Expectations - exactly three phases',
          prompt:
              'Create a 3-phase market entry plan for selling an HR analytics tool into Japan from a US base.\n\nContext: no local office yet; product is English-first; you have strong US case studies.\n\nObjective: learn fast without committing a big team.\n\nRequirements: each phase includes goal, activities, risks, exit criteria, and [Budget] placeholder. No invented legal facts—mark [Unknown] for compliance detail.\n\nExpectations: label phases DISCOVER, PILOT, SCALE.',
          output:
              '**DISCOVER**\nGoal: validate buyer pain + procurement reality\nActivities: interviews; partner conversations; compliance checklist with counsel [Unknown]\nRisks: misleading anecdotes; translation gaps\nExit: 10+ consistent pain stories + understood buying process\nBudget: [Budget]\n\n**PILOT**\nGoal: 3 paid pilots with measurable outcomes\nActivities: localised onboarding; success metrics; support coverage plan\nRisks: support hours; data residency questions [Unknown]\nExit: 2/3 renew + referenceable results\nBudget: [Budget]\n\n**SCALE**\nGoal: repeatable sales + CS motion\nActivities: hire/regional partner; local marketing; roadmap inputs\nRisks: feature gaps for local HR law reporting [Unknown]\nExit: CAC/payback within leadership thresholds [Unknown]\n\nPhased prompts are C.O.R.E. with time travel: Expectations name the eras.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Phases stay honest because exits and unknowns are explicit.\n- Context named distance from market and product language limits\n- Objective optimized for learning before scaling\n- Requirements used [Budget] and [Unknown] instead of fake compliance certainty\n- Expectations enforced three named phases',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nHow do we enter Japan?\n\nStrong prompt:\n3 phases Discover/Pilot/Scale; goals/activities/risks/exit; [Budget]; compliance [Unknown].',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nUS HR analytics; Japan entry; English-first product\n\nO - Objective\nLearn before scaling investment\n\nR - Requirements\nExit criteria; budget placeholders; honest compliance unknowns\n\nE - Expectations\nThree labeled phases',
            ),
          ],
          proTip:
              'If SCALE shows up before DISCOVER, you are not expanding—you are gambling.',
          takeaway:
              'Breaking down problems means naming the era you are in and the exit that moves you forward.',
          task: TaskDef(
            goal:
              'C.O.R.E. skill check: choose the five elements that phase risky market entry.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe starting position and market distance in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: learn before scaling; name that explicitly',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: goals, activities, risks, and exit criteria per phase',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Use placeholders like [Budget] instead of inventing spend',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: fixed number of named phases in order',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Start with a full local hiring plan in week one',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent legal approvals you do not have',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Collapse all phases into one “big launch”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit exit criteria to stay agile',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Promise revenue targets without evidence',
                  isCorrect: false),
            ],
            coachingNote:
                'International strategy prompts need unknowns: compliance and motion are Requirements, not vibes.',
            assembledPromptExample:
                'Japan entry: Discover/Pilot/Scale; goals/activities/risks/exit; [Budget]; legal [Unknown].',
            feedbackWhenCorrect:
                'You sequenced market entry like a portfolio of bets—not a vacation itinerary.',
            resultPolishedPrompt:
                'Create a three-phase market entry plan labeled DISCOVER, PILOT, and SCALE for introducing a US-built English-first HR analytics product into Japan without a local office. For each phase specify goal, key activities, risks, exit criteria, and a [Budget] placeholder. Do not invent compliance or data-residency facts—mark [Unknown] where legal detail is missing.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a vision line into quarterly bets',
          situation:
              'Vision without bets is poetry.\n\nTo get a usable result, your prompt must define:\n- Context - company stage and current quarter constraints\n- Objective - translate one vision statement into 3 quarterly bets\n- Requirements - each bet has metric type (not fake numbers), owner role placeholder, and dependency\n- Expectations - bets must be mutually exclusive focuses (no three versions of the same bet)',
          prompt:
              'Vision: “Become the default analytics layer for distributed operations teams.”\n\nBreak it into 3 distinct quarterly strategic bets for a Series B company.\n\nContext: engineering hiring is slow; revenue needs expansion motion.\n\nRequirements: label bets A/B/C; each includes hypothesis, leading indicator type, risky assumption, and [Owner role] placeholder. No invented ARR impact—use [Unknown].\n\nExpectations: explain how each bet differs from the others in one line.',
          output:
              '**Bet A — Workflow depth**\nHypothesis: deeper integrations drive expansion\nLeading indicator: integration-adoption rate among active teams [Unknown]\nRisky assumption: integrations ship on time with small eng team\nOwner: [Owner role]\nDiffers: focuses on product embed vs brand\n\n**Bet B — Use-case packaging**\nHypothesis: packaged ops “jobs” improve win-rate\nLeading indicator: win-rate on packaged deals vs custom [Unknown]\nRisky assumption: packaging matches real buying centers\nOwner: [Owner role]\nDiffers: focuses on GTM offer, not integrations\n\n**Bet C — Community-led proof**\nHypothesis: ops community referrals shorten cycles\nLeading indicator: referral-sourced pipeline % [Unknown]\nRisky assumption: community investment pays back within quarter\nOwner: [Owner role]\nDiffers: focuses on distribution, not core product scope\n\nDistinct bets require Expectations that force differentiation.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Bets became plural without collapsing into duplicates because differentiation was mandatory.\n- Context set Series B constraints\n- Objective translated vision into testable wagers\n- Requirements used indicator types and [Unknown] for financials\n- Expectations forced one-line distinction per bet',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nTurn this vision into strategy\n\nStrong prompt:\n3 bets; hypothesis + leading indicator + risky assumption + owner placeholder; [Unknown] ARR; one-line differentiation each.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nSeries B; hiring bottleneck; expansion need\n\nO - Objective\nQuarterly bets from vision\n\nR - Requirements\nStructured bet cards; honest financials\n\nE - Expectations\nThree mutually distinct focuses',
            ),
          ],
          proTip:
              'If all three bets rhyme, you wrote one bet with synonyms.',
          takeaway:
              'Step-by-step thinking includes a step that forbids duplicates.',
          task: TaskDef(
            goal:
              'C.O.R.E. skill check: choose the five elements that split vision into distinct bets.',
            pieces: [
              PromptPieceDef(
                  text: 'State stage and resource constraints in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: translate vision into a small set of testable bets',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: hypothesis, leading indicator type, risky assumption per bet',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Use [Owner role] placeholders instead of inventing headcount',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: bets must be materially different with explicit differentiation line',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Copy the same bet three times with new adjectives',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Attach fake ARR uplift to each bet',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit risky assumptions to stay confident',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Ask for twelve simultaneous bets',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI rename the vision and drop the bets',
                  isCorrect: false),
            ],
            coachingNote:
                'Portfolio thinking needs Expectations that enforce variety—otherwise AI repeats itself confidently.',
            assembledPromptExample:
                'Vision → 3 bets; hypothesis + leading indicator + risk + [Owner role]; [Unknown] revenue; differentiate each bet.',
            feedbackWhenCorrect:
                'You split vision into real choices—not three slogans wearing hats.',
            resultPolishedPrompt:
                'Translate the vision “Become the default analytics layer for distributed operations teams” into three distinct quarterly strategic bets for a Series B company with slow engineering hiring and a need for expansion revenue. For each bet provide hypothesis, leading indicator type (no invented financial impact—use [Unknown]), risky assumption, and an [Owner role] placeholder, plus one line stating how that bet differs from the others.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Turn Thinking Into Frameworks',
      scenarios: [
        ScenarioDef(
          title: 'SWOT with evidence discipline',
          situation:
              'SWOT collapses into opinions unless you force evidence rules.\n\nTo get a usable result, your prompt must define:\n- Context - product, segment, and competitive set (named or [Unknown])\n- Objective - produce a SWOT that leadership can challenge constructively\n- Requirements - each bullet must cite evidence type (customer quote, metric, competitor move) or [Unknown]\n- Expectations - max 3 bullets per quadrant',
          prompt:
              'Build a SWOT for our AI meeting-notes assistant aimed at sales teams.\n\nCompetitors: [Unknown full list].\n\nRequirements: max 3 bullets per quadrant; each bullet tags evidence as (Data), (Customer), (Competitor), or [Unknown].\n\nExpectations: include a “Blind spots” line listing what evidence we still need.',
          output:
              '**Strengths**\n- Fast time-to-value for reps who hate CRM hygiene (Customer) [Unknown sample size]\n- Differentiated live-capture mode vs static summaries (Data) [Unknown benchmark]\n\n**Weaknesses**\n- Privacy review slows enterprise rollout (Customer)\n- Accuracy drops on noisy calls (Data) [Unknown rate]\n\n**Opportunities**\n- CRMs pushing deeper call intelligence (Competitor) [Unknown]\n- Managers want coaching insights, not transcripts (Customer)\n\n**Threats**\n- Incumbents bundle similar features (Competitor) [Unknown]\n\n**Blind spots**\nWin/loss data on pricing, legal blockers in regulated industries [Unknown]\n\nFrameworks work when Requirements turn quadrants into evidence lists.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'SWOT stopped being vibes because bullets carried evidence types.\n- Context scoped product + audience\n- Objective aimed at challengeable output\n- Requirements capped count and tagged proof or [Unknown]\n- Expectations surfaced blind spots explicitly',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nSWOT for our product\n\nStrong prompt:\nSales meeting AI; <=3 bullets/quadrant; evidence tags; [Unknown]; blind spots list.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nAI notes for sales; partial competitor info\n\nO - Objective\nActionable SWOT leadership can test\n\nR - Requirements\nEvidence tags; caps; honest unknowns\n\nE - Expectations\nBlind spots section',
            ),
          ],
          proTip:
              'If every SWOT bullet starts with “we believe,” you skipped Requirements for evidence.',
          takeaway:
              'Frameworks are fancy tables until Requirements demand proof types.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that keep SWOT evidence-based.',
            pieces: [
              PromptPieceDef(
                  text: 'Name product, segment, and competitor context (or [Unknown])',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: make SWOT items challengeable with evidence, not slogans',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: cap bullets per quadrant for focus',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Tag each bullet with evidence type or [Unknown]',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: list blind spots / missing evidence explicitly',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Fill every quadrant with unstoppable hype',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit weaknesses to keep the slide investor-safe',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use fifty bullets per quadrant for completeness',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent competitor pricing to sound informed',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI choose a different framework without asking',
                  isCorrect: false),
            ],
            coachingNote:
                'Strategy frameworks need the same honesty as analytics prompts: tag unknowns or you get confident fiction.',
            assembledPromptExample:
                'SWOT: sales meeting AI; <=3/quadrant; evidence tags; [Unknown]; blind spots.',
            feedbackWhenCorrect:
                'You made SWOT operational—evidence tags turn meetings into decisions.',
            resultPolishedPrompt:
                'Create a SWOT for an AI meeting-notes assistant aimed at sales teams. Use at most three bullets per quadrant. Each bullet must label its support as (Data), (Customer), (Competitor), or [Unknown] when evidence is missing. Competitors may be partially unknown—mark gaps explicitly. Finish with a short “Blind spots” list of evidence you still need to collect.',
          ),
        ),
        ScenarioDef(
          title: 'Assumption–evidence–risk grid',
          situation:
              'Strategic plans hide fragile assumptions in smooth prose.\n\nA grid prompt makes them visible.\n\nTo get a usable result, your prompt must define:\n- Context - initiative and time horizon\n- Objective - surface the assumptions that could invalidate the plan\n- Requirements - each row: assumption, evidence status, risk if wrong, mitigation test\n- Expectations - exactly 6 rows',
          prompt:
              'Build a 6-row assumption grid for launching an AI copilot inside an existing analytics product.\n\nHorizon: next 2 quarters.\n\nRequirements: columns Assumption | Evidence (Strong/Med/Weak/[Unknown]) | Risk if false | Mitigation test.\n\nExpectations: no duplicate assumptions; tests must be executable in <2 weeks each.',
          output:
              '| Assumption | Evidence | Risk | Mitigation test |\n| Users trust suggestions on production data | Weak [Unknown] | Low adoption / backlash | Shadow-mode + opt-in cohort (2 weeks) |\n| Latency stays under interactive threshold | [Unknown] | UX collapse | Load test top 5 workflows (2 weeks) |\n| Legal approves retention of prompts | Med | Launch blocker | Redline workshop + DPA checklist (2 weeks) |\n| Sales can demo without engineer | Weak | Pipeline stalls | Scripted demo + guardrail script (2 weeks) |\n| Pricing metric matches value | [Unknown] | Revenue leak | Interview 8 customers on WTP (2 weeks) |\n| Support can answer top 10 failure modes | Weak | Churn spike | Draft macro answers + escalate path (2 weeks) |\n\nGrids beat paragraphs when Requirements define columns and row count.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'The plan became testable because every assumption had a mitigation experiment.\n- Context anchored product-surface risk\n- Objective exposed fragility instead of hiding it\n- Requirements fixed schema and evidence strength labels\n- Expectations capped rows and test duration',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nList risks\n\nStrong prompt:\n6-row assumption grid; evidence strength; risk; <2 week mitigation test; no duplicates.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nAI copilot inside analytics; 2-quarter horizon\n\nO - Objective\nSurface killer assumptions\n\nR - Requirements\nTable schema; evidence labels; mitigations\n\nE - Expectations\nSix unique rows; fast tests',
            ),
          ],
          proTip:
              'If mitigation tests are not time-boxed, you wrote a research agenda, not a plan.',
          takeaway:
              'Frameworks compress C.O.R.E. into rows: Context and Requirements become column headers.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make assumption grids testable.',
            pieces: [
              PromptPieceDef(
                  text: 'State initiative scope and time horizon in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: expose assumptions that could invalidate the plan',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: fixed columns including evidence strength',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Each row links a risk to a concrete mitigation test',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: row count and no duplicate assumptions',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Write assumptions without tests “to save time”',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Mark every evidence as Strong without proof',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use twenty rows with no structure',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Hide legal risks to keep the grid upbeat',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI invent customer interview results',
                  isCorrect: false),
            ],
            coachingNote:
                'Assumption work is C.O.R.E. for strategists: Requirements are the schema; Expectations are the row budget.',
            assembledPromptExample:
                '6-row grid: assumption/evidence strength/risk/mitigation <2 weeks; copilot in analytics; no dupes.',
            feedbackWhenCorrect:
                'You can now see which assumptions will kill you early—before budget does.',
            resultPolishedPrompt:
                'Build a six-row assumption grid for launching an embedded AI copilot inside an existing analytics product over the next two quarters. Columns: Assumption, Evidence (Strong/Med/Weak/[Unknown]), Risk if false, Mitigation test. Each mitigation test must be executable within two weeks. No duplicate assumptions.',
          ),
        ),
        ScenarioDef(
          title: 'One-page strategy memo outline',
          situation:
              'Executives skim.\n\nYour outline prompt must match how they read.\n\nTo get a usable result, your prompt must define:\n- Context - decision requested and timeframe\n- Objective - align execs on problem, choice, and next step\n- Requirements - each section max lines stated; include “non-goals”\n- Expectations - section headings only + bullet budget per section',
          prompt:
              'Create an outline for a 1-page strategy memo proposing we pause new features for one quarter to pay down reliability debt.\n\nContext: enterprise customers; renewal season in 4 months.\n\nObjective: secure approval for a reliability quarter.\n\nRequirements: sections Context, Problem signal, Strategic choice, Plan (30/60/90), Non-goals, Ask. Each section max 3 bullets. No invented churn numbers—use [Unknown].\n\nExpectations: output headings with bullets only (no prose paragraphs).',
          output:
              '**Context**\n- Enterprise base; renewal window approaching [Unknown timing detail]\n- Reliability incidents trending topic in QBRs [Unknown]\n\n**Problem signal**\n- P1/P2 incident frequency vs last quarter [Unknown]\n- Expansion deals waiting on stability commitments [Unknown]\n\n**Strategic choice**\n- Pause net-new features for 90 days (exceptions: regulatory/security)\n- Invest in observability + release hygiene\n\n**Plan (30/60/90)**\n- 30: incident taxonomy + top drivers\n- 60: SLO drafts + error budget policy\n- 90: customer-visible reliability report\n\n**Non-goals**\n- No rebranding; no major pricing changes\n\n**Ask**\n- Exec approval + comms to CS/sales\n\nOutlines work when Requirements cap bullets—density without essays.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Exec skim-friendliness came from bullet budgets and explicit non-goals.\n- Context tied to renewal pressure without fake stats\n- Objective framed a clear approval ask\n- Requirements enforced section template + max bullets\n- Expectations banned paragraph prose at outline stage',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nWrite a strategy memo\n\nStrong prompt:\n1-page outline; defined sections; <=3 bullets each; non-goals; [Unknown] metrics; headings only.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nEnterprise renewals; reliability pain\n\nO - Objective\nApprove reliability quarter\n\nR - Requirements\nSection template; bullet caps; honest metrics\n\nE - Expectations\nOutline-only output',
            ),
          ],
          proTip:
              'Non-goals are Requirements for executives—without them, every strategy becomes “do everything.”',
          takeaway:
              'Framework outlines are Expectations for density: headings, bullets, limits.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that make strategy outlines executive-ready.',
            pieces: [
              PromptPieceDef(
                  text: 'State decision, audience, and timeframe in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: secure a specific approval or alignment outcome',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: named sections including explicit non-goals',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Cap bullets per section to match skim reading',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: outline-only output (no long prose)',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Write five pages of narrative for thoroughness',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Omit non-goals to avoid saying no',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent churn percentages to justify the plan',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Hide the Ask section to sound collaborative',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI change the decision to something safer',
                  isCorrect: false),
            ],
            coachingNote:
                'Executive prompts are C.O.R.E. compressed: the outline is the contract for the final memo.',
            assembledPromptExample:
                '1-page memo outline: reliability quarter; sections w/ <=3 bullets; non-goals; [Unknown] metrics; headings only.',
            feedbackWhenCorrect:
                'You can brief leaders without drowning them—Expectations did the editing.',
            resultPolishedPrompt:
                'Draft a one-page strategy memo outline proposing a 90-day pause on net-new product features (except regulatory or security work) to pay down reliability debt before enterprise renewals. Include sections Context, Problem signal, Strategic choice, Plan for 30/60/90 days, Non-goals, and Ask. Each section may have at most three bullets. Do not invent churn or incident statistics—use [Unknown]. Output headings with bullets only, no paragraphs.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Improve Ideas Through Iteration',
      scenarios: [
        ScenarioDef(
          title: 'Three passes on a positioning line',
          situation:
              'First drafts sound like category clichés.\n\nIteration prompts must change specific C.O.R.E. slots each pass.\n\nTo get a usable result, your prompt must define:\n- Context - product and crowded category\n- Objective - tighten positioning across iterations\n- Requirements - pass 1 breadth, pass 2 specificity, pass 3 proof hooks; each <=12 words\n- Expectations - label passes clearly',
          prompt:
              'Iterate a positioning line for “AI inbox assistant for founders.”\n\nPass 1: creative breadth (3 options).\nPass 2: rewrite best option with sharper Objective (what outcome in 7 days).\nPass 3: add proof hook placeholders [Metric], [Customer type] without inventing numbers—use [Unknown] if needed.\n\nRequirements: each final line <=12 words; ban “revolutionary.”\n\nExpectations: label PASS1/PASS2/PASS3.',
          output:
              'PASS1\n1) Your inbox, summarized\n2) Founder inbox autopilot\n3) AI turns email into tasks\n\nPASS2\nTurns inbox noise into a daily priority list in 7 days\n\nPASS3\nCuts daily inbox time for [Customer type]—target save [Unknown] minutes; measured via [Metric]\n\nIteration works when each pass edits a named C.O.R.E. dimension.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Each pass had a job: explore, sharpen outcome, attach honest proof hooks.\n- Context named crowded category\n- Objective evolved line-by-line instead of rewriting randomly\n- Requirements enforced word cap and banned clichés\n- Expectations labeled passes for reuse as a template',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nImprove this tagline\n\nStrong prompt:\n3-pass iteration; breadth then 7-day outcome then proof placeholders; <=12 words; ban revolutionary.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nFounders; noisy inbox category\n\nO - Objective\nSharper positioning each pass\n\nR - Requirements\nWord limits; proof placeholders; honesty\n\nE - Expectations\nLabeled passes',
            ),
          ],
          proTip:
              'If every pass changes everything, you are not iterating—you are dice-rolling.',
          takeaway:
              'Iteration prompts name which C.O.R.E. layer changes next.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that structure productive iteration.',
            pieces: [
              PromptPieceDef(
                  text: 'Describe product and competitive noise in Context',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: improve one artifact across defined passes',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: each pass edits a specific dimension (breadth, outcome, proof)',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Keep length/style constraints consistent across passes',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: clearly label passes for template reuse',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Rewrite randomly with no pass structure',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add invented customer metrics for punch',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove proof hooks to keep copy short',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Merge all passes into one vague sentence',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Use banned hype words for “energy”',
                  isCorrect: false),
            ],
            coachingNote:
                'Teach iteration as C.O.R.E. diffs: change one layer per pass, measure the delta.',
            assembledPromptExample:
                'Positioning: PASS1 breadth; PASS2 7-day outcome; PASS3 proof placeholders; <=12 words; ban revolutionary.',
            feedbackWhenCorrect:
                'You iterate like a pro: each pass edits on purpose, not by vibe.',
            resultPolishedPrompt:
                'Run three labeled passes to refine a positioning line for an AI inbox assistant for founders. Pass 1 generates three broad options. Pass 2 sharpens the strongest option around a concrete seven-day user outcome. Pass 3 adds proof hooks using placeholders [Customer type] and [Metric], marking unknown measurements as [Unknown]. Keep each final line at most twelve words and ban the word “revolutionary.”',
          ),
        ),
        ScenarioDef(
          title: 'Roadmap themes: breadth, trade-offs, sequencing',
          situation:
              'Roadmaps lie when everything is “P0.”\n\nIteration can force trade-offs and order.\n\nTo get a usable result, your prompt must define:\n- Context - capacity and customer pressure\n- Objective - refine themes across three iterations\n- Requirements - pass 2 must cut one theme; pass 3 must sequence what ships first with rationale\n- Expectations - show before/after each pass',
          prompt:
              'Start with 5 roadmap themes for a developer tool.\n\nPass 1: brainstorm themes (list 5).\nPass 2: cut one theme and explain trade-off in 2 bullets.\nPass 3: sequence remaining 4 into Q1–Q4 suggestion with one-line rationale each; no invented revenue impact—use [Unknown].\n\nExpectations: label PASS1/PASS2/PASS3.',
          output:
              'PASS1\n1) Reliability hardening\n2) New IDE integrations\n3) Enterprise SSO polish\n4) Usage-based billing\n5) Community templates marketplace\n\nPASS2\nCut: Community templates marketplace\n- Trade-off: slower ecosystem growth vs focus on revenue-critical features\n- Gain: frees eng for billing + SSO\n\nPASS3\nQ1 Reliability — unblocks enterprise deals [Unknown]\nQ2 SSO polish — removes security blockers in pipeline [Unknown]\nQ3 Billing — unlocks expansion revenue experiments [Unknown]\nQ4 IDE integrations — acquisition feature parity [Unknown]\n\nIteration turned a wishlist into a sequence with visible cuts.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Cuts and sequencing appeared because passes had explicit jobs.\n- Context implied capacity tension\n- Objective moved from list → choice → timeline\n- Requirements forced a theme death and honest [Unknown] business links\n- Expectations made diffs visible pass to pass',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nImprove this roadmap\n\nStrong prompt:\n5 themes; pass2 cut one w/ trade-off; pass3 quarterly sequence w/ rationale; [Unknown] revenue.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nDeveloper tool; competing priorities\n\nO - Objective\nRefine roadmap across iterations\n\nR - Requirements\nExplicit cut + sequencing rules\n\nE - Expectations\nLabeled passes with before/after',
            ),
          ],
          proTip:
              'If pass 2 does not hurt, you are not prioritizing—you are decorating.',
          takeaway:
              'Iteration without forced trade-offs is just formatting.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that iterate roadmaps toward choices.',
            pieces: [
              PromptPieceDef(
                  text: 'Anchor Context with capacity and customer pressure',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: move from brainstorm to decision to sequence',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: explicit cut/kill step with trade-off explanation',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Later pass adds ordering with rationale, not flat lists',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: label passes so changes are auditable',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Keep all themes because they are all important',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Sequence randomly for surprise',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Attach fake revenue ranks to each quarter',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Skip trade-off explanation to save space',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add new themes in pass 3 without cutting',
                  isCorrect: false),
            ],
            coachingNote:
                'Roadmap iteration is C.O.R.E. under scarcity: Requirements force the painful cuts.',
            assembledPromptExample:
                'Roadmap: PASS1 5 themes; PASS2 cut 1 + trade-off; PASS3 quarterly sequence + rationale; [Unknown] rev links.',
            feedbackWhenCorrect:
                'You graduated from listing themes to owning sequencing—iteration with teeth.',
            resultPolishedPrompt:
                'Iteratively refine a roadmap for a developer tool. Pass 1 lists five strategic themes. Pass 2 removes one theme and explains the trade-off in two bullets. Pass 3 sequences the remaining four themes across four quarters with a one-line rationale each, without inventing revenue impact—use [Unknown] when needed. Label outputs PASS1, PASS2, and PASS3.',
          ),
        ),
        ScenarioDef(
          title: 'Stress-test a strategic bet with kill metrics',
          situation:
              'Iteration should harden decisions, not decorate them.\n\nTo get a usable result, your prompt must define:\n- Context - bet description and owner\n- Objective - add kill metrics and review triggers across iterations\n- Requirements - pass 1 draft bet; pass 2 add risks; pass 3 add kill metrics with [Unknown] baselines allowed\n- Expectations - final output fits a 1-screen exec brief',
          prompt:
              'Strategic bet: “We will win mid-market data teams by shipping a governed semantic layer in 6 months.”\n\nPass 1: state bet + success definition.\nPass 2: add top 4 risks with mitigations.\nPass 3: add 3 kill metrics with thresholds expressed as [Unknown] until data arrives + quarterly review trigger.\n\nRequirements: each pass <=120 words.\n\nExpectations: label PASS1/2/3.',
          output:
              'PASS1\nBet: governed semantic layer wins mid-market data teams in 6 months.\nSuccess: repeatable enterprise deals cite governance + self-serve metrics [Unknown]\n\nPASS2\nRisks: scope creep; data connector long-tail; performance at scale; unclear ownership between data + product eng\nMitigations: phase delivery; top-N connectors first; perf budget; named DRI roles [Unknown]\n\nPASS3\nKill metrics:\n- <[Unknown] win-rate vs baseline after 90d of GA\n- >[Unknown] P1 incidents/month sustained two months\n- <[Unknown] weekly active projects in target segment after launch +12 weeks\nReview: freeze new scope if any kill trips; exec review each quarter\n\nIteration converted optimism into governed risk.',
          refinements: [
            'What Made This Work',
            'Weak vs Strong Prompt',
            'C.O.R.E. Breakdown',
          ],
          variants: [
            ResponseVariant(
              label: 'What Made This Work',
              response:
                  'Each pass layered accountability: bet, risks, kill metrics.\n- Context embedded a concrete strategic wager\n- Objective moved from slogan to instrumented decision\n- Requirements capped verbosity and allowed honest baselines\n- Expectations kept exec-brief length discipline',
            ),
            ResponseVariant(
              label: 'Weak vs Strong Prompt',
              response:
                  'Weak prompt:\nCritique this strategy\n\nStrong prompt:\n3 passes; bet definition; risks; kill metrics w/ [Unknown] thresholds; <=120 words each.',
            ),
            ResponseVariant(
              label: 'C.O.R.E. Breakdown',
              response:
                  'C - Context\nMid-market data teams; semantic layer bet\n\nO - Objective\nHarden bet with governance\n\nR - Requirements\nRisks, mitigations, kill metrics\n\nE - Expectations\nBrief word caps + reviews',
            ),
          ],
          proTip:
              'Kill metrics belong in the prompt before the quarter goes off the rails.',
          takeaway:
              'Strong iteration adds Requirements that can stop the work—on purpose.',
          task: TaskDef(
            goal:
                'C.O.R.E. skill check: choose the five elements that iterate strategy into killable bets.',
            pieces: [
              PromptPieceDef(
                  text: 'Name the bet and owning context up front',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Objective: evolve from definition to risks to stop rules',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Requirements: explicit risk and mitigation pass',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Add kill metrics with honest [Unknown] baselines when needed',
                  isCorrect: true),
              PromptPieceDef(
                  text:
                      'Expectations: length caps suitable for exec review',
                  isCorrect: true),
              PromptPieceDef(
                  text: 'Skip kill metrics to stay motivational',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Invent precise thresholds to sound decisive',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrelated SWOT in pass 3',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Remove review triggers to reduce bureaucracy',
                  isCorrect: false),
              PromptPieceDef(
                  text: 'Let AI cancel the bet without criteria',
                  isCorrect: false),
            ],
            coachingNote:
                'Iteration on strategy without kill metrics is decoration. Requirements must include exits.',
            assembledPromptExample:
                'Semantic layer bet: PASS1 success def; PASS2 risks; PASS3 kill metrics [Unknown]; <=120 words each.',
            feedbackWhenCorrect:
                'You now iterate toward decisions that can reverse—adult strategy.',
            resultPolishedPrompt:
                'Run three passes on the strategic bet: “Win mid-market data teams by shipping a governed semantic layer within six months.” Pass 1 states the bet and success definition. Pass 2 lists four risks with mitigations. Pass 3 adds three kill metrics with threshold placeholders expressed as [Unknown] until baselines exist, plus a quarterly executive review trigger if any kill metric trips. Keep each pass at most 120 words and label PASS1, PASS2, PASS3.',
          ),
        ),
      ],
    ),
  ];
}
