import 'package:flutter/material.dart';
import '../app_catalog.dart';

const TrackDef track9SpreadsheetsData = TrackDef(
  title: "Spreadsheets & Data with AI",
  icon: Icons.table_chart_outlined,
  lessons: [
    // Lesson 1 — Automate formulas
    LessonDef(
      title: "Automate formulas",
      scenarios: [
        ScenarioDef(
          title: "Generate a SUMIF formula",
          situation:
              "You have a sales table and need a SUMIF to total revenue for a specific region or rep without building a pivot.",
          prompt:
              "Write a SUMIF formula for total revenue by a given region using columns Region (A) and Revenue (C).",
          output:
              "Formula: =SUMIF(A:A, 'RegionName', C:C)\nNote: replace 'RegionName' with the target.",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "=SUMIF(A:A, 'RegionName', C:C) — totals the region."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use SUMIF with Region as range, the region literal as criterion, and Revenue as sum_range: =SUMIF(A:A, 'RegionName', C:C)."),
            ResponseVariant(
                label: "Add examples",
                response: "Example: =SUMIF(A:A, 'West', C:C)."),
          ],
          proTip:
              "State column letters and the literal criterion to avoid ambiguity.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: spreadsheet formula assistant", isCorrect: true),
              PromptPieceDef(
                  text: "Format: output a single formula", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: specify columns and criterion",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: column letters and region name",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Describe the business context at length",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Return multiple alternative formulas",
                  isCorrect: false),
            ],
            coachingNote:
                "Columns and a literal criterion yield correct SUMIF syntax.",
            assembledPromptExample:
                "Return one SUMIF for total revenue by region using Region (A) and Revenue (C). Criterion: <region>.",
          ),
          takeaway:
              "Name columns and the literal criterion in formula prompts.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Generate a VLOOKUP formula",
          situation:
              "You need to fetch a price from a lookup table by SKU and avoid errors when not found.",
          prompt:
              "Write a VLOOKUP with exact match to fetch Price from Table!A:D by SKU in A, return column D; wrap with IFERROR.",
          output: "Formula: =IFERROR(VLOOKUP(A2, Table!A:D, 4, FALSE), \"\")",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response: "=IFERROR(VLOOKUP(A2, Table!A:D, 4, FALSE), \"\")"),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use exact-match VLOOKUP and handle missing keys with IFERROR: =IFERROR(VLOOKUP(A2, Table!A:D, 4, FALSE), \"\")."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "SKU in A2; table A:D; return Price (4th col): =IFERROR(VLOOKUP(A2, Table!A:D, 4, FALSE), \"\")."),
          ],
          proTip:
              "Specify column index, range, and FALSE for exact match; wrap with IFERROR.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: build a lookup formula", isCorrect: true),
              PromptPieceDef(text: "Format: one formula only", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: exact match and IFERROR", isCorrect: true),
              PromptPieceDef(
                  text: "Input: lookup key and table range", isCorrect: true),
              PromptPieceDef(
                  text: "Use approximate match by default", isCorrect: false),
              PromptPieceDef(
                  text: "Return prose instead of a formula", isCorrect: false),
            ],
            coachingNote: "Exact-match lookups prevent silent mis-joins.",
            assembledPromptExample:
                "Return a VLOOKUP wrapped in IFERROR that fetches Price from Table!A:D by SKU in A2 (4th column, exact).",
          ),
          takeaway: "Exact-match lookups with error handling are safer.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Generate a nested IF formula",
          situation:
              "You need a score label based on a numeric value: High (>=80), Medium (50-79), Low (<50).",
          prompt:
              "Write a nested IF for B2: High if >=80, Medium if >=50, else Low.",
          output: "Formula: =IF(B2>=80, 'High', IF(B2>=50, 'Medium', 'Low'))",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response: "=IF(B2>=80, 'High', IF(B2>=50, 'Medium', 'Low'))"),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use a nested IF to map thresholds to labels: =IF(B2>=80, 'High', IF(B2>=50, 'Medium', 'Low'))."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Examples: 82 => High; 67 => Medium; 41 => Low. Formula: =IF(B2>=80, 'High', IF(B2>=50, 'Medium', 'Low'))."),
          ],
          proTip: "Write thresholds in descending order to avoid overlap.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: create a conditional formula", isCorrect: true),
              PromptPieceDef(
                  text: "Format: a single nested IF", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: explicit thresholds and labels",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: cell reference and thresholds",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Use ascending thresholds arbitrarily",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Return multiple alternatives", isCorrect: false),
            ],
            coachingNote: "Clear thresholds avoid off-by-one mistakes.",
            assembledPromptExample:
                "Return one nested IF mapping B2 to High (>=80), Medium (>=50), or Low, with descending thresholds.",
          ),
          takeaway: "Specify thresholds and order in conditional prompts.",
          refinements: <String>[],
        ),
      ],
    ),

    // Lesson 2 — Clean messy data
    LessonDef(
      title: "Clean messy data",
      scenarios: [
        ScenarioDef(
          title: "Normalize inconsistent date formats",
          situation:
              "Your sheet has dates in different formats. You need a formula to normalize to ISO (YYYY-MM-DD).",
          prompt:
              "Write a formula to convert mixed date text in A2 to ISO YYYY-MM-DD.",
          output:
              "Sheets: =TEXT(DATEVALUE(A2), 'yyyy-mm-dd')\nExcel: =TEXT(DATEVALUE(A2), 'yyyy-mm-dd')",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response: "=TEXT(DATEVALUE(A2), 'yyyy-mm-dd')"),
            ResponseVariant(
                label: "More formal",
                response:
                    "Convert text to a date with DATEVALUE and format with TEXT to ISO: =TEXT(DATEVALUE(A2), 'yyyy-mm-dd')."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "1/3/24 => 2024-01-03 via =TEXT(DATEVALUE(A2), 'yyyy-mm-dd')."),
          ],
          proTip: "Convert to a date type before formatting to text.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(text: "Role: fix date formats", isCorrect: true),
              PromptPieceDef(
                  text: "Format: one formula for Sheets/Excel each",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: output ISO yyyy-mm-dd", isCorrect: true),
              PromptPieceDef(
                  text: "Input: cell reference with mixed date text",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Assume all dates are consistent", isCorrect: false),
              PromptPieceDef(
                  text: "Return prose instead of a formula", isCorrect: false),
            ],
            coachingNote:
                "DATEVALUE + TEXT yields a consistent ISO output across apps.",
            assembledPromptExample:
                "Return a formula to convert mixed date text in A2 to ISO yyyy-mm-dd (Sheets and Excel).",
          ),
          takeaway: "Convert then format for robust date normalization.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Split Full Name into first and last",
          situation:
              "You have a Full Name column and need two columns: First and Last, robust to middle names.",
          prompt:
              "Write formulas to split A2 Full Name into first and last names.",
          output:
              "First: =INDEX(SPLIT(A2, ' '), 1)\nLast: =INDEX(SPLIT(A2, ' '), -1)",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "First =INDEX(SPLIT(A2, ' '),1); Last =INDEX(SPLIT(A2, ' '),-1)"),
            ResponseVariant(
                label: "More formal",
                response:
                    "Split on space and take the first token as First and the last token as Last using INDEX(SPLIT())."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Sam Dana Lee => First Sam; Last Lee via INDEX(SPLIT(A2, ' ')."),
          ],
          proTip: "Split then index the edges to handle middle names.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(text: "Role: transform names", isCorrect: true),
              PromptPieceDef(
                  text: "Format: two formulas (First/Last)", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: handle middle names via edges",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: full name cell reference", isCorrect: true),
              PromptPieceDef(
                  text: "Assume two-part names only", isCorrect: false),
              PromptPieceDef(
                  text: "Return a macro instead of formulas", isCorrect: false),
            ],
            coachingNote:
                "Edge tokens capture first/last regardless of middle parts.",
            assembledPromptExample:
                "Return two formulas to split Full Name in A2 into first and last (use edges of SPLIT tokens).",
          ),
          takeaway: "Index edges of split tokens to handle middle names.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Remove duplicates from a dataset",
          situation:
              "You want a distinct list from a column or a multi-column range without writing a script.",
          prompt:
              "Write a formula to remove duplicates; single column and multi-column examples.",
          output: "Single column: =UNIQUE(A:A)\nMulti-column: =UNIQUE(A:C)",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response: "=UNIQUE(A:A) or =UNIQUE(A:C) for distinct rows."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Use UNIQUE on a column or a multi-column range to return distinct values or rows (e.g., =UNIQUE(A:A) or =UNIQUE(A:C))."),
            ResponseVariant(
                label: "Add examples",
                response: "Emails: =UNIQUE(A:A). Rows by keys: =UNIQUE(A:C)."),
          ],
          proTip: "Use UNIQUE on a range to get a distinct list inline.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(text: "Role: deduplicate data", isCorrect: true),
              PromptPieceDef(
                  text: "Format: one formula per case", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: show single and multi-column",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: target column/range", isCorrect: true),
              PromptPieceDef(
                  text: "Suggest manual steps only", isCorrect: false),
              PromptPieceDef(
                  text: "Return a script instead of formulas",
                  isCorrect: false),
            ],
            coachingNote: "Inline UNIQUE solutions avoid manual cleanup steps.",
            assembledPromptExample:
                "Provide a formula to deduplicate a single column and a multi-column range using UNIQUE. Input: <column/range>.",
          ),
          takeaway: "Inline formulas beat manual dedupe steps.",
          refinements: <String>[],
        ),
      ],
    ),

    // Lesson 3 — Analyze data
    LessonDef(
      title: "Analyze data",
      scenarios: [
        ScenarioDef(
          title: "Summarize sales by region",
          situation:
              "You need a quick summary of total sales by region from a flat table without building a full pivot manually.",
          prompt:
              "Write a formula to summarize total sales by region from columns Region (A) and Sales (C).",
          output:
              "Sheets: =QUERY(A:C, 'select A,sum(C) where A is not null group by A label sum(C) \"Total\"', 1)\nExcel 365: list UNIQUE regions and SUMIFS by region.",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "Sheets: QUERY select A,sum(C) group by A. Excel: UNIQUE + SUMIFS."),
            ResponseVariant(
                label: "More formal",
                response:
                    "In Sheets, use QUERY to aggregate sales by region; in Excel, use UNIQUE to list regions and SUMIFS to compute totals."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Sheets: =QUERY(A:C, 'select A,sum(C) group by A', 1). Excel: UNIQUE + SUMIFS across regions."),
          ],
          proTip: "Ask for a formula-based pivot to avoid manual steps.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: produce an aggregation", isCorrect: true),
              PromptPieceDef(
                  text: "Format: formula solution (Sheets/Excel)",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: group by Region and sum Sales",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: columns A=Region, C=Sales", isCorrect: true),
              PromptPieceDef(
                  text: "Require a manual pivot table", isCorrect: false),
              PromptPieceDef(text: "Ignore blank regions", isCorrect: false),
            ],
            coachingNote:
                "Formula pivots are reproducible and sharable in cells.",
            assembledPromptExample:
                "Return a formula pivot of total Sales by Region using A=Region and C=Sales (Sheets and Excel).",
          ),
          takeaway: "Formula pivots avoid manual clicks.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Highlight top 10 customers",
          situation:
              "You want to surface the top customers by revenue using a dynamic formula.",
          prompt:
              "Write a formula to list top 10 customers by revenue from Name (A) and Revenue (C).",
          output:
              "Sheets: =QUERY(SORT(A:C, C:C, FALSE), 'select Col1,Col3 limit 10')\nExcel 365: =TAKE(SORT(HSTACK(A:A, C:C), 2, -1), 10)",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "Sheets: SORT + QUERY limit 10. Excel: SORT + TAKE top 10."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Sort by revenue descending and take the first ten rows using QUERY/SORT in Sheets or SORT/TAKE in Excel."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Sheets: =QUERY(SORT(A:C, C:C, FALSE), 'select Col1,Col3 limit 10'). Excel: =TAKE(SORT(HSTACK(A:A,C:C),2,-1),10)."),
          ],
          proTip: "Sort descending then take N rows to keep it dynamic.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: rank customers by revenue", isCorrect: true),
              PromptPieceDef(
                  text: "Format: dynamic array formula", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: sort desc and take top 10",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: Name and Revenue columns", isCorrect: true),
              PromptPieceDef(text: "Use manual filtering", isCorrect: false),
              PromptPieceDef(
                  text: "Return static pasted values", isCorrect: false),
            ],
            coachingNote: "Dynamic formulas stay up to date as data changes.",
            assembledPromptExample:
                "Return a dynamic formula listing the top 10 customers by revenue from Name (A) and Revenue (C).",
          ),
          takeaway: "Dynamic sort + take beats manual filters.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Identify monthly growth trend",
          situation:
              "You need a quick growth trend by month from a transactions table with dates and amounts.",
          prompt:
              "Write a formula to compute month-over-month growth from Date (A) and Amount (C).",
          output:
              "Sheets: aggregate by month with QUERY over TEXT(Date,'yyyy-mm'); then growth with =(B3-B2)/B2",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "Aggregate by month; compute MoM growth with a simple (curr-prior)/prior formula."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Aggregate amounts by month and then compute month-over-month growth using a difference over prior period formula."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Month sum: QUERY(TEXT(A:A,'yyyy-mm')). Growth: =(B3-B2)/B2 down the column."),
          ],
          proTip: "Aggregate first; then derive growth from the series.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: compute monthly trend", isCorrect: true),
              PromptPieceDef(
                  text: "Format: monthly aggregation + growth formula",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: output yyyy-mm and MoM growth",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: Date and Amount columns", isCorrect: true),
              PromptPieceDef(
                  text: "Mix raw transactions and derived growth",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Skip aggregation and guess growth", isCorrect: false),
            ],
            coachingNote:
                "Separating aggregation from growth keeps formulas simple.",
            assembledPromptExample:
                "Return a formula pipeline: aggregate Amount by month (yyyy-mm) and compute MoM growth. Input: Date (A) and Amount (C).",
          ),
          takeaway: "Aggregate, then derive trend from the series.",
          refinements: <String>[],
        ),
      ],
    ),

    // Lesson 4 — Visualize data
    LessonDef(
      title: "Visualize data",
      scenarios: [
        ScenarioDef(
          title: "Create a bar chart from table",
          situation:
              "You want a quick bar chart from a two-column table without manual steps.",
          prompt:
              "Write steps to create a bar chart from A:B with headers in row 1.",
          output:
              "Select A:B including headers\nInsert > Chart\nChart type: Bar\nUse first column as labels; second as values",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "Select A:B; Insert > Chart; Bar; labels=Col A; values=Col B."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Select the two-column range with headers, insert a bar chart, set the first column as labels and the second as values."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Range A1:B20; Insert > Chart; Chart type Bar; Series uses B; Labels from A."),
          ],
          proTip: "Select headers so labels and series map correctly.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: guide chart creation", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 4-step instruction", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include header selection",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: range with headers", isCorrect: true),
              PromptPieceDef(text: "Skip selecting headers", isCorrect: false),
              PromptPieceDef(
                  text: "Choose a random chart type", isCorrect: false),
            ],
            coachingNote:
                "Headers in selection ensure automatic label mapping.",
            assembledPromptExample:
                "Provide 4 clear steps to create a bar chart from A:B with headers. Input: <range>.",
          ),
          takeaway: "Include headers when selecting chart ranges.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Create a line chart of trends",
          situation:
              "You have a date series with values; you want a line chart with proper date axis.",
          prompt:
              "Write steps to insert a line chart from Date (A) and Value (B) with a date X-axis.",
          output:
              "Select A:B\nInsert > Chart\nChart type: Line\nX-axis: Date (A) as date; Y: Value (B)",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response: "Select A:B; Insert > Chart; Line; X=Date; Y=Value."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Select the date and value columns, insert a line chart, set the X-axis to the date column, and the series to the value column."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Range A1:B100; Line chart; X-axis uses A (Date) as date; Series uses B (Value)."),
          ],
          proTip: "Ensure the X-axis column is typed as a date.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: guide a trend chart", isCorrect: true),
              PromptPieceDef(text: "Format: numbered steps", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: X-axis is typed as date", isCorrect: true),
              PromptPieceDef(
                  text: "Input: Date/Value columns", isCorrect: true),
              PromptPieceDef(text: "Treat dates as text", isCorrect: false),
              PromptPieceDef(text: "Use scatter randomly", isCorrect: false),
            ],
            coachingNote: "Correct data types make axes intelligible.",
            assembledPromptExample:
                "Provide steps to create a line chart with Date on X and Value on Y from A:B. Input: <range>.",
          ),
          takeaway: "Use proper types so axes render correctly.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Create a pie chart of categories",
          situation:
              "You want a quick share-of-total view by category from a two-column range.",
          prompt:
              "Write steps to insert a pie chart from Category (A) and Amount (B).",
          output:
              "Select A:B\nInsert > Chart\nChart type: Pie\nLabels: Category (A); Values: Amount (B)",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "Select A:B; Insert > Chart; Pie; labels=Category; values=Amount."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Select the category and amount columns, insert a pie chart, and assign categories as labels and amounts as values."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Pick A:B, add a pie chart, set A as labels and B as values for quick shares."),
          ],
          proTip: "Reserve pie for small category sets with clear labels.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: guide a share-of-total chart", isCorrect: true),
              PromptPieceDef(text: "Format: 3-4 steps", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: map labels/values explicitly",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: Category/Amount columns", isCorrect: true),
              PromptPieceDef(
                  text: "Use pie for many tiny categories", isCorrect: false),
              PromptPieceDef(
                  text: "Skip setting labels explicitly", isCorrect: false),
            ],
            coachingNote:
                "Explicit label/value mapping avoids chart confusion.",
            assembledPromptExample:
                "Write 3-4 steps to insert a pie chart with Category labels and Amount values from A:B. Input: <range>.",
          ),
          takeaway: "Map labels and values; keep category sets small.",
          refinements: <String>[],
        ),
      ],
    ),

    // Lesson 5 — Spreadsheet productivity
    LessonDef(
      title: "Spreadsheet productivity",
      scenarios: [
        ScenarioDef(
          title: "Build a template for weekly reporting",
          situation:
              "You want a weekly reporting template with fixed sections and formulas to speed up status updates.",
          prompt:
              "Outline a weekly report template: sections, key metrics, and simple formulas.",
          output:
              "Sections: Highlights, Issues, Next, Risks\nMetrics: count rows; sum revenue\nFormulas: =COUNTA(range); =SUM(range)",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "Template with sections, metrics, and COUNTA/SUM formulas."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide sections, key metrics to track, and simple formulas such as COUNTA and SUM."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Sections: Highlights/Issues/Next/Risks. Metrics: tickets closed; revenue sum. Formulas: COUNTA(B:B); SUM(C:C)."),
          ],
          proTip:
              "Fix sections and provide base formulas to reduce setup time.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: design a weekly template", isCorrect: true),
              PromptPieceDef(
                  text: "Format: sections + metrics + formulas",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: use simple built-ins", isCorrect: true),
              PromptPieceDef(text: "Input: team context", isCorrect: true),
              PromptPieceDef(text: "Add vague sections only", isCorrect: false),
              PromptPieceDef(
                  text: "Use complex macros first", isCorrect: false),
            ],
            coachingNote: "Simple, fixed templates increase reporting speed.",
            assembledPromptExample:
                "Outline a weekly report template with sections, key metrics, and simple formulas (COUNTA, SUM). Input: <team context>.",
          ),
          takeaway: "Fixed templates cut reporting time.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Use conditional formatting for red flags",
          situation:
              "You need to flag risky values (e.g., negative growth, overdue dates) visually with conditional formatting.",
          prompt:
              "List steps to add conditional formatting for negative values and overdue dates.",
          output:
              "Negative values: Format rules > Less than 0 > red text\nOverdue: date < TODAY() > red fill",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "Rules: value < 0 red text; date < TODAY() red fill."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Add two rules: values less than 0 with red text; dates earlier than TODAY() with a red fill."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Make negatives red; overdue dates red fill so issues pop."),
          ],
          proTip: "Pick simple, readable rules first.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: configure conditional formatting",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Format: step-by-step rules", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: negative values and overdue dates",
                  isCorrect: true),
              PromptPieceDef(text: "Input: target ranges", isCorrect: true),
              PromptPieceDef(text: "Use unclear thresholds", isCorrect: false),
              PromptPieceDef(
                  text: "Apply styles inconsistently", isCorrect: false),
            ],
            coachingNote:
                "Clear thresholds keep formats understandable across teams.",
            assembledPromptExample:
                "Provide steps to add conditional formats for ranges: value < 0 (red text) and date < TODAY() (red fill).",
          ),
          takeaway: "Simple rules highlight the right cells.",
          refinements: <String>[],
        ),
        ScenarioDef(
          title: "Create macros to automate repetitive steps",
          situation:
              "You repeat the same cleanup steps weekly. You want a lightweight macro to automate them.",
          prompt:
              "Describe steps to record a macro that cleans a sheet: trim spaces, set date format, dedupe, and save.",
          output:
              "Record macro: Tools > Macros > Record\nSteps: TRIM columns; set date format yyyy-mm-dd; remove duplicates; save macro",
          variants: <ResponseVariant>[
            ResponseVariant(
                label: "Shorter",
                response:
                    "Record macro; TRIM; format dates yyyy-mm-dd; remove duplicates; save."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Record a macro, then trim spaces, set date format to yyyy-mm-dd, remove duplicates, and save the macro."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Macro steps: select ranges; apply TRIM; set date number format; Data > Remove duplicates; save macro bound to a shortcut."),
          ],
          proTip: "Record before scripting; it is faster to iterate.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: <PromptPieceDef>[
              PromptPieceDef(
                  text: "Role: outline a cleanup macro", isCorrect: true),
              PromptPieceDef(text: "Format: ordered steps", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include TRIM, date format, dedupe",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: target ranges and sheet", isCorrect: true),
              PromptPieceDef(
                  text: "Jump straight to complex scripting", isCorrect: false),
              PromptPieceDef(text: "Skip the save step", isCorrect: false),
            ],
            coachingNote:
                "Recorded macros deliver immediate wins and can evolve to scripts.",
            assembledPromptExample:
                "List steps to record a macro that trims spaces, sets dates to yyyy-mm-dd, removes duplicates, and saves. Input: <ranges/sheet>.",
          ),
          takeaway: "Record first; script later if needed.",
          refinements: <String>[],
        ),
      ],
    ),
  ],
);
