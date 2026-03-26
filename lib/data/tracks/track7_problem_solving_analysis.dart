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

