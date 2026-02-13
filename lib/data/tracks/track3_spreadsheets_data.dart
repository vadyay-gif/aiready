import '../app_catalog.dart';

/// Track 3 – Spreadsheets & Data (lessons 1–5)
List<LessonDef> buildTrack3Lessons() {
  return [
    const LessonDef(
      title: 'Create Quick Spreadsheet Summaries',
      scenarios: [
        ScenarioDef(
          title: 'Ask AI to Build a Summary Table From Raw Data',
          situation:
              'You have a sheet with sales results across several regions. You want a quick summary table showing total sales and average sales per region.',
          prompt:
              'Create a summary table showing total sales and average sales per region using these data points. Keep the table simple and include only the calculations requested.',
          output:
              '**Regional Sales Summary**\n| Region | Total Sales | Average Sales |\n|--------|-------------|---------------|\n| North | \$128,400 | \$8,560 |\n| South | \$113,900 | \$7,593 |\n| East | \$142,300 | \$9,486 |\n| West | \$121,700 | \$8,114 |',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '| Region | Total Sales | Average Sales | Notes |\n|--------|-------------|---------------|--------|\n| North | \$128,400 | \$8,560 | Strong month |\n| South | \$113,900 | \$7,593 | Slight dip vs last month |\n| East | \$142,300 | \$9,486 | Highest-performing region |\n| West | \$121,700 | \$8,114 | Consistent performance |',
            ),
          ],
          proTip:
              'Tell AI exactly which columns you want and the summary logic so it produces the table structure you expect.',
          takeaway:
              'AI delivers accurate summaries when your prompt defines the columns, calculations, and layout.',
          task: TaskDef(
            goal:
                'Turn raw spreadsheet values into a structured summary table.',
            pieces: [
              PromptPieceDef(text: 'Use a structured table', isCorrect: true),
              PromptPieceDef(text: 'Include totals', isCorrect: true),
              PromptPieceDef(text: 'Include averages', isCorrect: true),
              PromptPieceDef(
                  text: 'Base the summary only on provided values', isCorrect: true),
              PromptPieceDef(text: 'Keep column names simple', isCorrect: true),
              PromptPieceDef(text: 'Add new calculations', isCorrect: false),
              PromptPieceDef(text: 'Add new rows', isCorrect: false),
              PromptPieceDef(text: 'Add interpretations', isCorrect: false),
              PromptPieceDef(text: 'Change the values', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Specify the structure and summary metrics so the AI knows how to convert raw numbers into a clean table.',
            assembledPromptExample:
                'Create a summary table showing total and average sales per region using only these values.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Pivot-Style Summary Without Using Pivot Tables',
          situation:
              'Your sheet tracks product sales across months. You want a quick "pivot-like" summary grouping totals by product.',
          prompt:
              'Create a pivot-style summary showing total sales for each product using the data provided. Keep the results in a simple two-column table.',
          output:
              '**Product Sales Summary**\n| Product | Total Sales |\n|---------|-------------|\n| Product A | \$98,200 |\n| Product B | \$121,400 |\n| Product C | \$76,900 |',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '| Product | Total Sales | Notes |\n|---------|-------------|--------|\n| Product A | \$98,200 | Stable demand |\n| Product B | \$121,400 | Strongest performer |\n| Product C | \$76,900 | Seasonal dips |',
            ),
          ],
          proTip:
              'Tell AI the grouping logic so it reorganises scattered values into a pivot-style summary.',
          takeaway:
              'Clear grouping rules help AI produce accurate pivot-style tables.',
          task: TaskDef(
            goal: 'Group data into a simple pivot-style summary.',
            pieces: [
              PromptPieceDef(text: 'Group values by product', isCorrect: true),
              PromptPieceDef(text: 'Compute totals only', isCorrect: true),
              PromptPieceDef(text: 'Keep the table simple', isCorrect: true),
              PromptPieceDef(text: 'Use only provided data', isCorrect: true),
              PromptPieceDef(
                  text: 'Maintain the same product order', isCorrect: true),
              PromptPieceDef(text: 'Add averages', isCorrect: false),
              PromptPieceDef(text: 'Add interpretations', isCorrect: false),
              PromptPieceDef(
                  text: 'Combine product categories', isCorrect: false),
              PromptPieceDef(text: 'Add new products', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Define the grouping rule so the AI knows how to consolidate scattered data into a pivot-style view.',
            assembledPromptExample:
                'Create a pivot-style summary showing total sales by product using only these values.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Column of Values Into Useful Summary Metrics',
          situation:
              'You have a single column of numbers — such as revenue or ticket volumes — and want AI to generate quick summary metrics.',
          prompt:
              'Using this single column of numbers, produce five summary metrics: total, average, minimum, maximum, and count. Present them in a clean list.',
          output:
              '**Summary Metrics**\n- Total: 14,820\n- Average: 988\n- Minimum: 670\n- Maximum: 1,320\n- Count: 15',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Total: 14,820\n- Average: 988\n- Minimum recorded value: 670\n- Maximum recorded value: 1,320\n- Count of observations: 15',
            ),
          ],
          proTip:
              'Tell AI exactly which metrics you want so it computes only those and avoids adding unnecessary statistics.',
          takeaway:
              'A well-scoped prompt ensures AI computes the metrics you care about.',
          task: TaskDef(
            goal: 'Generate summary metrics from a column of values.',
            pieces: [
              PromptPieceDef(text: 'Include total', isCorrect: true),
              PromptPieceDef(text: 'Include average', isCorrect: true),
              PromptPieceDef(text: 'Include minimum', isCorrect: true),
              PromptPieceDef(text: 'Include maximum', isCorrect: true),
              PromptPieceDef(text: 'Include count', isCorrect: true),
              PromptPieceDef(text: 'Add extra metrics', isCorrect: false),
              PromptPieceDef(text: 'Change the order of values', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Interpret results', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the exact metrics you need so it stays within scope and computes them cleanly.',
            assembledPromptExample:
                'Using these numbers, calculate total, average, minimum, maximum, and count in a clean list.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Find Top Values in Your Data',
      scenarios: [
        ScenarioDef(
          title: 'Ask AI to Identify the Top Values in a Column',
          situation:
              'You have a column of sales numbers and want to quickly identify the three highest values.',
          prompt:
              'Identify the three highest values in this list of numbers and present them in descending order. Show only the values, not additional commentary.',
          output:
              '**Top 3 Values**\n1. 1,320\n2. 1,210\n3. 1,180',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: '- 1,320\n- 1,210\n- 1,180',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Top 3 Values (with count and ordering)**\n- Total values analysed: 15\n- Highest value: 1,320\n- Second-highest: 1,210\n- Third-highest: 1,180',
            ),
          ],
          proTip:
              'Define the count ("top 3") and the ordering ("descending") so the AI retrieves exactly the values you want.',
          takeaway:
              'AI returns precise rankings when your prompt clearly states how many values to extract and how to order them.',
          task: TaskDef(
            goal: 'Identify the top values in a dataset.',
            pieces: [
              PromptPieceDef(text: 'Extract the highest values', isCorrect: true),
              PromptPieceDef(
                  text: 'Present results in descending order', isCorrect: true),
              PromptPieceDef(text: 'Use only the provided numbers', isCorrect: true),
              PromptPieceDef(text: 'Show exactly three values', isCorrect: true),
              PromptPieceDef(text: 'Keep the output concise', isCorrect: true),
              PromptPieceDef(text: 'Add explanations', isCorrect: false),
              PromptPieceDef(text: 'Add new numbers', isCorrect: false),
              PromptPieceDef(text: 'Sort in ascending order', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the count and order you want so it extracts the correct values and format.',
            assembledPromptExample:
                'Identify the top three values from this list and present them in descending order.',
          ),
        ),
        ScenarioDef(
          title: 'Find the Maximum and Minimum Quickly',
          situation:
              'You have a range of values and want a fast summary of the minimum and maximum.',
          prompt:
              'Using these values, identify the minimum and maximum and present them in a clean two-line summary.',
          output:
              '**Summary**\n- Maximum: 1,320\n- Minimum: 670',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Max 1,320; Min 670',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Summary with context**\n- Maximum value (highest observed): 1,320\n- Minimum value (lowest observed): 670\n- Range difference: 650 (max – min)',
            ),
          ],
          proTip:
              "Specify exactly which summary points you want so the AI doesn't add unrelated metrics.",
          takeaway:
              'A clearly scoped prompt ensures AI returns only the metrics you need.',
          task: TaskDef(
            goal: 'Extract minimum and maximum values cleanly.',
            pieces: [
              PromptPieceDef(text: 'Identify the maximum value', isCorrect: true),
              PromptPieceDef(text: 'Identify the minimum value', isCorrect: true),
              PromptPieceDef(text: 'Present results clearly', isCorrect: true),
              PromptPieceDef(text: 'Use only the provided list', isCorrect: true),
              PromptPieceDef(text: 'Keep wording simple', isCorrect: true),
              PromptPieceDef(text: 'Add averages', isCorrect: false),
              PromptPieceDef(text: 'Add interpretations', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand into long explanations', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Guide the AI by stating exactly which metrics to include so it does not infer or add extra calculations.',
            assembledPromptExample:
                'Identify the minimum and maximum values from this list and present them in a short two-line summary.',
          ),
        ),
        ScenarioDef(
          title: 'Ask AI to Return the Top Values by Category',
          situation:
              'Your sheet contains values grouped by category. You want the highest value within each category.',
          prompt:
              'Find the highest value for each category in this dataset and present the results in a simple two-column table with "Category" and "Highest Value."',
          output:
              '**Category Maximums**\n| Category | Highest Value |\n|----------|----------------|\n| A | 860 |\n| B | 1,210 |\n| C | 940 |',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '| Category | Highest Value | Notes |\n|----------|----------------|--------|\n| A | 860 | Single-digit variance across entries |\n| B | 1,210 | Widest range of values |\n| C | 940 | Consistent mid-range performance |',
            ),
          ],
          proTip:
              'Tell the AI to group results by category and specify the column structure so it returns the correct format.',
          takeaway:
              'Grouping rules + defined output structure help AI produce clear categorical summaries.',
          task: TaskDef(
            goal: 'Identify the highest value per category.',
            pieces: [
              PromptPieceDef(text: 'Group values by category', isCorrect: true),
              PromptPieceDef(
                  text: 'Select the highest value in each category', isCorrect: true),
              PromptPieceDef(
                  text: 'Preserve original category names', isCorrect: true),
              PromptPieceDef(text: 'Use only provided data', isCorrect: true),
              PromptPieceDef(text: 'Keep format simple', isCorrect: true),
              PromptPieceDef(text: 'Add new categories', isCorrect: false),
              PromptPieceDef(text: 'Add totals or averages', isCorrect: false),
              PromptPieceDef(text: 'Reorder categories', isCorrect: false),
              PromptPieceDef(text: 'Add commentary', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Specify grouping logic and output format so the AI extracts only the required values per category.',
            assembledPromptExample:
                'Create a two-column table showing the highest value for each category using only the values provided.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Analyze Data for Insights',
      scenarios: [
        ScenarioDef(
          title: 'Turn Spreadsheet Numbers Into Clear Observations',
          situation:
              'You have a range of monthly values for key metrics (e.g., sales, tickets, or volume). You want AI to extract the main insights without rewriting all the numbers.',
          prompt:
              'Analyze these monthly values and extract 3–5 insights. Include what increased, what decreased, and anything unusual. Base insights only on the numbers provided.',
          output:
              '**Insights**\n- Sales increased steadily across the last three months.\n- February shows a noticeable dip compared with other months.\n- The highest value occurs in April, marking a strong finish to the period.\n- Overall trend shows moderate month-to-month growth.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '- Steady upward trend\n- February dip\n- April peak\n- Moderate overall growth',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "**Detailed Insights**\n- Sales fluctuate early in the period, with February as the lowest point.\n- Strong recovery follows, with consistent growth leading to April's peak.\n- The month-over-month increase from March to April is the strongest jump.\n- The data suggests a gradual upward trend with one temporary downturn.",
            ),
          ],
          proTip:
              "Tell AI exactly which patterns to look for (increases, decreases, unusual values) so it doesn't rewrite the dataset.",
          takeaway:
              "Clear analytical boundaries help AI extract meaningful insights without overinterpreting the numbers.",
          task: TaskDef(
            goal: 'Turn raw values into high-level observations.',
            pieces: [
              PromptPieceDef(text: 'Identify increases', isCorrect: true),
              PromptPieceDef(text: 'Identify decreases', isCorrect: true),
              PromptPieceDef(text: 'Identify unusual values', isCorrect: true),
              PromptPieceDef(
                  text: 'Base insights only on provided numbers', isCorrect: true),
              PromptPieceDef(text: 'Keep insights concise', isCorrect: true),
              PromptPieceDef(text: 'Add predictions', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
              PromptPieceDef(text: 'Rewrite the dataset', isCorrect: false),
              PromptPieceDef(text: 'Add emotional language', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Define the types of insights you want — trends, dips, spikes — so AI filters correctly and avoids adding meaning.',
            assembledPromptExample:
                'Analyze these monthly values and extract 3–5 insights on increases, decreases, and unusual points.',
          ),
        ),
        ScenarioDef(
          title: 'Ask AI to Compare Two Time Periods',
          situation:
              'Your spreadsheet tracks results for two periods (e.g., Q1 vs Q2, Week 1 vs Week 2). You want AI to compare the periods using the numbers provided.',
          prompt:
              'Compare these two periods and produce 3–5 insights. Highlight what improved, what declined, and what remained stable. Use only the numbers provided.',
          output:
              '**Period Comparison**\n- Sales increased noticeably from Period 1 to Period 2.\n- Ticket volume decreased slightly across the periods.\n- Customer engagement remained stable.\n- The overall shift shows improvement across multiple metrics.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '- Sales ↑\n- Tickets ↓\n- Engagement stable\n- Overall improvement',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Detailed Comparison**\n- Sales show meaningful improvement in Period 2, supported by higher peak values.\n- Ticket volume declines modestly, indicating improved operational efficiency.\n- Engagement remains stable across both periods, with minimal variation.\n- Combined results suggest stronger performance in Period 2 with no new risks.',
            ),
          ],
          proTip:
              'Specify the comparison categories — increase, decrease, stable — so the AI structures insights correctly.',
          takeaway:
              'AI produces reliable comparisons when you define the analytical framework ahead of time.',
          task: TaskDef(
            goal: 'Compare two periods of performance cleanly.',
            pieces: [
              PromptPieceDef(text: 'Identify increases', isCorrect: true),
              PromptPieceDef(text: 'Identify decreases', isCorrect: true),
              PromptPieceDef(text: 'Identify stable values', isCorrect: true),
              PromptPieceDef(text: 'Use only provided data', isCorrect: true),
              PromptPieceDef(text: 'Keep the explanation short', isCorrect: true),
              PromptPieceDef(text: 'Add predictions', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated insights', isCorrect: false),
              PromptPieceDef(text: 'Interpret causes', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the comparison structure so it organises insights accurately.',
            assembledPromptExample:
                'Compare these two periods and produce 3–5 insights showing what improved, declined, or remained stable.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Data Points Into a Simple Performance Summary',
          situation:
              'You have a sheet with several KPIs — each with one current value. You want AI to turn these into a short performance summary without rewriting the entire sheet.',
          prompt:
              'Create a short performance summary using the KPI values provided. Include 3–5 insights covering strengths, weaknesses, and anything notable. Use only the provided values.',
          output:
              '**Performance Summary**\n- The highest-performing KPI is customer satisfaction at 92%.\n- Ticket resolution time is the weakest at 38%, suggesting operational strain.\n- Engagement score is mid-range at 67%.\n- Overall results show strong customer sentiment with some operational challenges.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  '- Satisfaction strong (92%)\n- Resolution weak (38%)\n- Engagement moderate (67%)\n- Mixed performance',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Detailed Performance Summary**\n- Customer satisfaction stands out at 92%, significantly higher than other KPIs.\n- Ticket resolution time is the lowest metric at 38%, representing a key area for improvement.\n- Engagement sits at a moderate 67%, neither strong nor weak relative to the others.\n- The spread between highest and lowest KPIs indicates uneven performance across categories.',
            ),
          ],
          proTip:
              'Tell AI the insight categories you care about (e.g., strengths, weaknesses) so it selects the correct signals from the data.',
          takeaway:
              'Well-framed prompts guide AI to convert raw numbers into insight summaries without drifting into interpretation.',
          task: TaskDef(
            goal: 'Turn KPI values into a concise performance summary.',
            pieces: [
              PromptPieceDef(text: 'Identify strengths', isCorrect: true),
              PromptPieceDef(text: 'Identify weaknesses', isCorrect: true),
              PromptPieceDef(text: 'Identify notable values', isCorrect: true),
              PromptPieceDef(text: 'Use only the provided KPIs', isCorrect: true),
              PromptPieceDef(text: 'Keep insights short', isCorrect: true),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
              PromptPieceDef(text: 'Add causes', isCorrect: false),
              PromptPieceDef(text: 'Add predictions', isCorrect: false),
              PromptPieceDef(text: 'Expand into long paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Define the insight categories (strengths, weaknesses, notable points) so the AI returns focused, data-grounded observations.',
            assembledPromptExample:
                'Create a 3–5 insight performance summary highlighting strengths, weaknesses, and notable values using only the KPIs provided.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Turn Data Into Charts',
      scenarios: [
        ScenarioDef(
          title: 'Ask AI to Recommend the Best Chart Type',
          situation:
              'You have monthly sales values and want AI to recommend the best chart type to show the trend clearly.',
          prompt:
              'Based on these monthly sales values, recommend the best chart type for visualizing the trend. Explain in one short paragraph why this chart is the most suitable.',
          output:
              'A line chart is the best option because it clearly shows changes over time, highlights upward or downward trends, and makes month-to-month variations easy to compare. It also keeps the data readable when multiple months are included.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  'Use a line chart to show how values change over time.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'A line chart is the most effective choice for monthly sales because it displays the progression across the months, highlights both subtle and sharp shifts, and makes the overall direction easy to understand. It also works well when comparing this series with additional lines in the future.',
            ),
          ],
          proTip:
              'Tell AI whether you want the chart choice, the reasoning, or both — this ensures you get the exact level of explanation you need.',
          takeaway:
              'A well-scoped prompt helps AI choose a chart type that matches your analytical goal.',
          task: TaskDef(
            goal: 'Choose the right chart type for a dataset.',
            pieces: [
              PromptPieceDef(text: 'Recommend one chart type', isCorrect: true),
              PromptPieceDef(text: 'Provide a brief explanation', isCorrect: true),
              PromptPieceDef(
                  text: 'Base recommendation only on the provided data', isCorrect: true),
              PromptPieceDef(text: 'Keep reasoning short', isCorrect: true),
              PromptPieceDef(text: 'Keep the output focused', isCorrect: true),
              PromptPieceDef(text: 'Suggest multiple chart types', isCorrect: false),
              PromptPieceDef(text: 'Add formatting instructions', isCorrect: false),
              PromptPieceDef(text: 'Add design details', isCorrect: false),
              PromptPieceDef(text: 'Add additional data', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI to identify both the chart type and the reason for choosing it so the explanation stays focused.',
            assembledPromptExample:
                'Recommend the best chart type for these monthly values and explain briefly why it fits.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Raw Data Into Chart-Ready Labels and Series',
          situation:
              'You have a list of categories with values and want AI to turn them into chart-ready labels and a clean data series.',
          prompt:
              'Turn these categories and values into chart-ready labels and a clean data series. Keep the formatting simple and avoid adding commentary.',
          output:
              '**Chart Labels**\n- North\n- South\n- East\n- West\n\n**Chart Values**\n- 128,400\n- 113,900\n- 142,300\n- 121,700',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response:
                  'Labels: North, South, East, West\nValues: 128,400; 113,900; 142,300; 121,700',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Chart Data Structure**\n- Labels (X-axis): North, South, East, West\n- Values (Y-axis): 128,400; 113,900; 142,300; 121,700\n- Suggested chart: Column chart for fast category comparison',
            ),
          ],
          proTip:
              'Ask AI to output labels and values separately — spreadsheets handle chart creation more cleanly when inputs are split.',
          takeaway:
              'AI becomes more reliable for chart preparation when your prompt defines the exact structure needed.',
          task: TaskDef(
            goal: 'Prepare raw values for chart creation.',
            pieces: [
              PromptPieceDef(text: 'Separate labels and values', isCorrect: true),
              PromptPieceDef(
                  text: 'Base the output only on provided data', isCorrect: true),
              PromptPieceDef(text: 'Keep the structure simple', isCorrect: true),
              PromptPieceDef(text: 'Present labels clearly', isCorrect: true),
              PromptPieceDef(text: 'Present values clearly', isCorrect: true),
              PromptPieceDef(text: 'Add totals', isCorrect: false),
              PromptPieceDef(text: 'Add averages', isCorrect: false),
              PromptPieceDef(text: 'Suggest styling or colours', isCorrect: false),
              PromptPieceDef(text: 'Add commentary', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Specify exactly how the chart inputs should be formatted so AI avoids adding commentary or extra numbers.',
            assembledPromptExample:
                'Turn these categories and values into chart-ready labels and a clean set of values.',
          ),
        ),
        ScenarioDef(
          title: 'Summarize Data Into a Chart-Ready Trend Statement',
          situation:
              'You want a short statement you can paste above a chart describing the trend at a glance.',
          prompt:
              'Write a chart-ready trend statement in one or two sentences describing the overall pattern in these values. Use only the provided numbers.',
          output:
              'The data shows a steady upward trend with modest fluctuations. The highest value occurs at the end of the period.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Steady upward trend with a peak at the end.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The values rise gradually over the period with small variations, ending at the highest point. The month-to-month growth pattern makes the upward trend easy to see on a chart.',
            ),
          ],
          proTip:
              'Tell AI to limit itself to describing the trend — not interpreting causes — so the text stays suitable for charts.',
          takeaway:
              'Trend descriptions stay clean and accurate when your prompt defines a tight scope.',
          task: TaskDef(
            goal: 'Create a short trend statement for a chart.',
            pieces: [
              PromptPieceDef(text: 'Describe the trend only', isCorrect: true),
              PromptPieceDef(text: 'Use one or two sentences', isCorrect: true),
              PromptPieceDef(
                  text: 'Base the trend solely on provided numbers', isCorrect: true),
              PromptPieceDef(text: 'Keep language neutral', isCorrect: true),
              PromptPieceDef(text: 'Keep the output brief', isCorrect: true),
              PromptPieceDef(text: 'Add explanations of causes', isCorrect: false),
              PromptPieceDef(text: 'Suggest colours or styling', isCorrect: false),
              PromptPieceDef(text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Add interpretation', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI to describe only the visible trend so the result is chart-ready and not analytical commentary.',
            assembledPromptExample:
                'Write a one- or two-sentence trend statement based only on these values for use above a chart.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Automate Spreadsheet Tasks',
      scenarios: [
        ScenarioDef(
          title: 'Create a Reusable Prompt for Cleaning Data',
          situation:
              'You often receive messy data with extra spaces, inconsistent capitalisation, or missing values. You want a reusable prompt that cleans data consistently.',
          prompt:
              'Create a reusable prompt that cleans spreadsheet data by removing extra spaces, fixing capitalisation, and flagging missing values. Keep the wording clear and include placeholders for the steps.',
          output:
              '**Reusable Data Cleaning Prompt**\nClean the dataset using these steps:\n1. Remove extra spaces from all text fields.\n2. Standardise capitalisation (e.g., Title Case or SHOUTING CASE turned into normal Title Case).\n3. Flag any missing values with "[Missing]".\n4. Do not change the meaning of any data.\n\nPaste your data here:\n[data]',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Reusable Data Cleaning Prompt (with details)**\nClean this dataset using the following rules:\n- Remove all leading, trailing, and double-spaces within each text field.\n- Convert all text to Title Case while preserving abbreviations.\n- Replace empty or null fields with "[Missing]" and keep a count of missing entries.\n- Make no assumptions about the data\'s meaning; do not infer or rewrite content.\nPaste your dataset below.',
            ),
          ],
          proTip:
              'Specify both the cleaning rules and what **not** to change. This keeps AI from rewriting or interpreting data.',
          takeaway:
              'Reusable prompts work best when your instructions define exact cleaning steps and safe boundaries.',
          task: TaskDef(
            goal: 'Build a reusable prompt for cleaning spreadsheet data.',
            pieces: [
              PromptPieceDef(text: 'Remove extra spaces', isCorrect: true),
              PromptPieceDef(text: 'Fix capitalisation', isCorrect: true),
              PromptPieceDef(text: 'Flag missing values', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning unchanged', isCorrect: true),
              PromptPieceDef(text: 'Use placeholders for data', isCorrect: true),
              PromptPieceDef(text: 'Infer new data', isCorrect: false),
              PromptPieceDef(text: 'Add new fields', isCorrect: false),
              PromptPieceDef(text: 'Rewrite content', isCorrect: false),
              PromptPieceDef(text: 'Add interpretation', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the precise steps and boundaries so it cleans data without altering meaning.',
            assembledPromptExample:
                'Create a reusable data-cleaning prompt with steps for spaces, capitalisation, and missing values.',
          ),
        ),
        ScenarioDef(
          title: 'Generate a Prompt for Automating Formatting',
          situation:
              'You frequently need to standardise number formats, dates, and currency symbols. Rather than rewriting prompts, you want a standard automation template.',
          prompt:
              'Write a reusable prompt that formats numbers, dates, and currency consistently across a spreadsheet. Include placeholders so it works for any dataset.',
          output:
              '**Reusable Formatting Prompt**\nApply consistent formatting to the dataset below:\n- Format numbers with commas.\n- Standardise all dates to YYYY-MM-DD.\n- Ensure currency values use the selected currency symbol.\n- Do not modify any values beyond formatting.\nPaste data here:\n[data]',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Reusable Formatting Prompt (detailed)**\nApply formatting rules to this dataset:\n- Numbers → add thousand separators and preserve decimals.\n- Dates → convert all date fields to YYYY-MM-DD, regardless of original region format.\n- Currency → ensure one unified symbol and consistent decimal places.\n- Keep all original values intact; only adjust formatting.\nPaste data here:\n[data]',
            ),
          ],
          proTip:
              'Tell AI the exact formatting rules and emphasise that values should not be changed — only reformatted.',
          takeaway:
              'AI produces consistent formatting when rules are explicit and boundaries are clear.',
          task: TaskDef(
            goal: 'Create a formatting automation prompt.',
            pieces: [
              PromptPieceDef(
                  text: 'Standardise number formatting', isCorrect: true),
              PromptPieceDef(text: 'Standardise date formatting', isCorrect: true),
              PromptPieceDef(
                  text: 'Standardise currency formatting', isCorrect: true),
              PromptPieceDef(text: 'Preserve values', isCorrect: true),
              PromptPieceDef(text: 'Use placeholders for data', isCorrect: true),
              PromptPieceDef(text: 'Add new columns', isCorrect: false),
              PromptPieceDef(text: 'Change values', isCorrect: false),
              PromptPieceDef(text: 'Infer additional content', isCorrect: false),
              PromptPieceDef(text: 'Add interpretations', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Define both the formatting instructions and the constraints so AI automates safely.',
            assembledPromptExample:
                'Write a reusable formatting prompt that handles numbers, dates, and currency consistently.',
          ),
        ),
        ScenarioDef(
          title: 'Create a Basic Workflow for Spreadsheet Automation',
          situation:
              'You want AI to create a small workflow that automates tasks such as sorting, filtering, and generating summary rows.',
          prompt:
              'Create a simple automation workflow that sorts data, filters out unwanted rows, and adds a summary row at the end. Keep the workflow easy to reuse.',
          output:
              '**Automation Workflow**\n1. Sort the data by the selected column.\n2. Filter out rows that match the exclusion rule.\n3. Add a summary row with totals or averages.\n4. Do not change any row values except in the summary.',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Automation Workflow (detailed)**\n- Step 1: Sort the dataset by your specified column (A→Z, Z→A, smallest→largest, etc.).\n- Step 2: Apply a filter removing rows that match the exclusion criteria you define.\n- Step 3: Add a summary row computing totals, averages, or both.\n- Step 4: Do not change any existing values unless they appear in the summary row.',
            ),
          ],
          proTip:
              "Give AI both the workflow steps *and the constraints* so it doesn't make assumptions or reorder data incorrectly.",
          takeaway:
              'Automation works best when steps are explicit and narrowly scoped.',
          task: TaskDef(
            goal: 'Create a reusable workflow prompt for spreadsheet automation.',
            pieces: [
              PromptPieceDef(text: 'Include clear workflow steps', isCorrect: true),
              PromptPieceDef(text: 'Preserve existing data', isCorrect: true),
              PromptPieceDef(
                  text: 'Allow flexible sort/filter rules', isCorrect: true),
              PromptPieceDef(text: 'Add summary rows only', isCorrect: true),
              PromptPieceDef(text: 'Keep wording simple', isCorrect: true),
              PromptPieceDef(text: 'Change non-summary values', isCorrect: false),
              PromptPieceDef(text: 'Add new columns', isCorrect: false),
              PromptPieceDef(text: 'Interpret the data', isCorrect: false),
              PromptPieceDef(text: 'Reorder content unexpectedly', isCorrect: false),
              PromptPieceDef(text: 'Recommend a model', isCorrect: false),
            ],
            coachingNote:
                'Specify both the steps and the guardrails to ensure predictable workflow automation.',
            assembledPromptExample:
                'Create a simple automation workflow that sorts data, filters unwanted rows, and adds a summary row.',
          ),
        ),
      ],
    ),
  ];
}

