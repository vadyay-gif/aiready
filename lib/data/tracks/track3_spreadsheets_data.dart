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
      skillRefocusLine:
          "This time, you're applying the same skill in a different context:",
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

