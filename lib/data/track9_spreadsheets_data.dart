import '../models/scenario.dart';

final Map<String, List<Scenario>> scenariosByLessonT9 = {
  // LESSON 1 — Clean messy data
  't9_l1': [
    // Scenario A: Normalize Names & Emails
    const Scenario(
      id: 'sd_l1_normalize_names_emails',
      situation:
          'Your contact export has inconsistent casing, extra spaces, and mixed email formats.',
      prompt:
          'Provide steps/formulas to trim spaces, proper-case names, lower-case emails, and split \'Name <email>\' into separate columns.',
      baseOutput: '''Trimming: =TRIM(A2)
Proper case: =PROPER(B2)
Lowercase email: =LOWER(C2)
Split pattern: use SPLIT or TEXTSPLIT on "<" and ">"
Validation: use COUNTIF to find duplicates''',
      refinements: [
        Refinement(
          label: 'Google Sheets functions',
          output:
              '''Use TRIM, PROPER, LOWER, SPLIT; optional ARRAYFORMULA to fill down automatically.''',
        ),
        Refinement(
          label: 'Excel functions',
          output:
              '''Use TRIM, PROPER, LOWER, TEXTSPLIT; fill down with dynamic arrays where available.''',
        ),
        Refinement(
          label: 'Add duplicate-removal steps',
          output:
              '''Mark dups with COUNTIF; then FILTER unique rows into a clean table.''',
        ),
      ],
      takeaway: 'Normalize text first; dedupe second to prevent silent errors.',
    ),

    // Scenario B: Fix Dates & Numbers
    const Scenario(
      id: 'sd_l1_fix_dates_numbers',
      situation:
          'Imported dates show as text and numbers use commas as decimal separators.',
      prompt:
          'Give a safe conversion playbook for dates and numbers: detect text, convert with DATEVALUE/NUMBERVALUE, and set locale-aware formats.',
      baseOutput: '''Detect text dates: ISTEXT()
Convert dates: DATEVALUE() or VALUE()
Convert numbers: NUMBERVALUE(text, decimal_separator, group_separator)
Locale: set spreadsheet regional settings for separators
Checks: MIN/MAX sanity, COUNTBLANK, and an 'Errors' helper column''',
      refinements: [
        Refinement(
          label: 'Non-US locale tips',
          output:
              '''Use NUMBERVALUE with "," as decimal; adjust date parsing with day/month order.''',
        ),
        Refinement(
          label: 'Strict validation column',
          output:
              '''Add a column with IFERROR and conditional formatting to flag invalid conversions.''',
        ),
        Refinement(
          label: 'One-step query/import fix',
          output:
              '''Normalize at import using Power Query (Excel) or IMPORT/QUERY (Sheets) with type casts.''',
        ),
      ],
      takeaway:
          'Normalize types before any formulas; apply display formats last.',
    ),

    // Scenario C: Split & Recombine Columns
    const Scenario(
      id: 'sd_l1_split_recombine_columns',
      situation:
          'You need to split product codes into parts and then recombine a clean key.',
      prompt:
          'Show how to split codes by \'-\' into parts, trim, and recombine as KEY_PART1_PART2 with no spaces.',
      baseOutput: '''Split: SPLIT(A2,"-") / TEXTSPLIT(A2,"-")
Trim: TRIM() or CLEAN where needed
Recombine: =TEXTJOIN("_",TRUE,"KEY",B2,C2)''',
      refinements: [
        Refinement(
          label: 'Excel TEXTSPLIT/TEXTJOIN',
          output:
              '''Prefer TEXTSPLIT/TEXTAFTER/TEXTBEFORE for clarity in modern Excel.''',
        ),
        Refinement(
          label: 'Power Query steps',
          output:
              '''Split column by delimiter; trim; merge columns with a custom separator.''',
        ),
        Refinement(
          label: 'Array formula version',
          output:
              '''Use an ARRAYFORMULA or dynamic arrays to process entire columns at once.''',
        ),
      ],
      takeaway: 'Keep raw columns; build clean keys in derived columns.',
    ),
  ],

  // LESSON 2 — Formula helper
  't9_l2': [
    // Scenario A: Lookup Without #N/A
    const Scenario(
      id: 'sd_l2_lookup_without_na',
      situation: 'You want reliable lookups that degrade gracefully.',
      prompt:
          'Provide VLOOKUP/XLOOKUP/INDEX-MATCH patterns with IFERROR defaults and an existence check.',
      baseOutput: '''Exists: =COUNTIF(keys,key)>0
VLOOKUP safe: =IFERROR(VLOOKUP(key,table,col,FALSE),"")
XLOOKUP safe: =IFNA(XLOOKUP(key,keys,vals),"")
INDEX-MATCH: =IFERROR(INDEX(vals,MATCH(key,keys,0)),"")''',
      refinements: [
        Refinement(
          label: 'Google Sheets variants',
          output:
              '''Use LOOKUP with IFNA, or VLOOKUP with FALSE; consider FILTER for exact matches.''',
        ),
        Refinement(
          label: 'Approximate match caveats',
          output:
              '''Warn that approximate matches can misclassify; prefer exact 0/ FALSE.''',
        ),
        Refinement(
          label: 'Case-sensitive lookup',
          output:
              '''Use MATCH with EXACT inside an INDEX array, or FILTER with EXACT.''',
        ),
      ],
      takeaway: 'Guard lookups with existence checks to avoid hidden blanks.',
    ),

    // Scenario B: Conditional Sum & Count
    const Scenario(
      id: 'sd_l2_conditional_sum_count',
      situation: 'You need counts/sums across multiple conditions.',
      prompt:
          'Show SUMIFS/COUNTIFS patterns for date ranges and categories, including an optional \'last 7 days\' example.',
      baseOutput:
          '''SUMIFS: =SUMIFS(amounts,cat,"A",date,">="&start,date,"<="&end)
COUNTIFS: use similar structure for counts
Last 7 days: start=TODAY()-7, end=TODAY()''',
      refinements: [
        Refinement(
          label: 'Named ranges',
          output:
              '''Create named ranges (e.g., Amounts, Dates) for readable formulas.''',
        ),
        Refinement(
          label: 'Dynamic array example',
          output:
              '''Combine SORT/FILTER/UNIQUE with SUMIFS for grouped summaries.''',
        ),
        Refinement(
          label: 'Pivot alternative',
          output:
              '''If many conditions, use a pivot to avoid overly complex formulas.''',
        ),
      ],
      takeaway: 'SUMIFS/COUNTIFS cover most grouped metrics without pivots.',
    ),

    // Scenario C: Text Extraction with REGEX
    const Scenario(
      id: 'sd_l2_text_extraction_regex',
      situation: 'You need to pull IDs from mixed text.',
      prompt:
          'Provide REGEXEXTRACT/REGEXREPLACE patterns for IDs like ABC-1234 and a sanitize step.',
      baseOutput: '''Extract: =REGEXEXTRACT(A2,"[A-Z]{3}-\\\\d{4}")
Sanitize: =REGEXREPLACE(A2,"[^A-Za-z0-9-]","")''',
      refinements: [
        Refinement(
          label: 'Excel LET + TEXTAFTER',
          output:
              '''Use LET to store intermediate; TEXTAFTER/TEXTBEFORE for simple delimiters.''',
        ),
        Refinement(
          label: 'Multiple patterns',
          output:
              '''Wrap in IFERROR to try a second pattern if the first fails.''',
        ),
        Refinement(
          label: 'Performance tips',
          output:
              '''Apply regex on a helper column; avoid volatile functions in large sheets.''',
        ),
      ],
      takeaway: 'Regex is the scalpel for messy identifiers.',
    ),
  ],

  // LESSON 3 — Instant charts
  't9_l3': [
    // Scenario A: Trended Line Chart in 3 Steps
    const Scenario(
      id: 'sd_l3_trended_line_chart_3_steps',
      situation: 'You want a clean trend chart with minimal clicks.',
      prompt:
          'Outline the data layout and steps to insert a line chart with proper date axis, labels, and moving average.',
      baseOutput: '''Layout: Date | Value
Insert → Line chart
Add 7-day/4-week moving average column and plot both
Labels: title + axis labels + source note''',
      refinements: [
        Refinement(
          label: 'Sheets steps',
          output:
              '''Insert → Chart → Setup: Line; customize axis to Date; add MA column as a second series.''',
        ),
        Refinement(
          label: 'Excel steps',
          output:
              '''Insert → Line/Scatter; format axis to date; add MA via helper or built-in trendline.''',
        ),
        Refinement(
          label: 'Add target line',
          output:
              '''Add a constant target column and plot as a thin line for reference.''',
        ),
      ],
      takeaway: 'Good layout is 80% of chart quality.',
    ),

    // Scenario B: Bar Chart with Top N
    const Scenario(
      id: 'sd_l3_bar_chart_top_n',
      situation: 'You want a bar chart of top categories only.',
      prompt:
          'Create a helper table that sorts by value and keeps Top N with an \'Other\' bucket; chart that table.',
      baseOutput:
          '''Helper: SORT by value desc → TAKE first N; SUM rest as 'Other'
Chart: Bar/column on helper table''',
      refinements: [
        Refinement(
          label: 'Dynamic N via cell',
          output:
              '''Use a cell to control N; formulas reference that cell for TAKE/INDEX.''',
        ),
        Refinement(
          label: 'Labels as percentages',
          output:
              '''Add a % of total column; plot that or label bars with %.''',
        ),
        Refinement(
          label: 'Stacked variant',
          output: '''Use stacked bars to show composition if needed.''',
        ),
      ],
      takeaway: 'Pre-aggregate to keep charts readable.',
    ),

    // Scenario C: Stacked Area for Mix
    const Scenario(
      id: 'sd_l3_stacked_area_mix',
      situation: 'You want to show how channel mix changes over time.',
      prompt:
          'Layout data in columns per channel by date; add percent-of-total helper; plot stacked area.',
      baseOutput: '''Date | ChA | ChB | ChC | Total | ChA% | ChB% | ChC%
Chart: Stacked area on % columns''',
      refinements: [
        Refinement(
          label: 'Absolute vs % toggle',
          output:
              '''Create two chart ranges and a toggle cell to switch between them.''',
        ),
        Refinement(
          label: 'Slicer-friendly layout',
          output:
              '''Keep data in a flat table with a PivotChart for interactivity.''',
        ),
        Refinement(
          label: 'Add annotations',
          output: '''Add note markers where significant changes occurred.''',
        ),
      ],
      takeaway: 'Stacked area works when totals change—show % mix.',
    ),
  ],

  // LESSON 4 — Pivot tables to insights
  't9_l4': [
    // Scenario A: Customer by Month Pivot
    const Scenario(
      id: 'sd_l4_customer_month_pivot',
      situation: 'You need monthly totals per customer.',
      prompt:
          'Build a pivot: rows=Customer, cols=Month, values=Sum(Amount); add grand totals and sort by latest month.',
      baseOutput: '''Pivot config
Rows: Customer
Columns: Month(Date)
Values: Sum(Amount)
Sort: Latest month column desc''',
      refinements: [
        Refinement(
          label: 'Add average order value',
          output:
              '''Add a calculated field for AOV = Sum(Amount)/Count(Orders).''',
        ),
        Refinement(
          label: 'Hide small customers',
          output: '''Filter to show only customers above a threshold.''',
        ),
        Refinement(
          label: 'Filter by segment',
          output: '''Add Segment as a slicer. Keep layout compact.''',
        ),
      ],
      takeaway: 'Pivots turn raw rows into patterns fast.',
    ),

    // Scenario B: Win/Loss Analysis
    const Scenario(
      id: 'sd_l4_win_loss_analysis',
      situation: 'Sales wants reasons deals were won/lost.',
      prompt:
          'Create a pivot with Reason as rows and Outcome as columns; add % of row totals; list top 3 loss reasons.',
      baseOutput: '''Rows: Reason
Columns: Outcome (Won/Lost)
Values: Count; Show values as % of row total''',
      refinements: [
        Refinement(
          label: 'Text cleaning step first',
          output:
              '''Normalize reasons (trim, case, common synonyms) before pivoting.''',
        ),
        Refinement(
          label: 'Chart the % as bar',
          output: '''Add a bar chart view for quick comparison.''',
        ),
        Refinement(
          label: 'Add slicer for region',
          output: '''Filter by Region/Owner as needed.''',
        ),
      ],
      takeaway: 'Percentages make categorical comparisons meaningful.',
    ),

    // Scenario C: Cohort Retention Pivot
    const Scenario(
      id: 'sd_l4_cohort_retention_pivot',
      situation: 'You want a simple cohort view by signup month.',
      prompt:
          'Create cohorts by signup month, columns as months since signup, values as active users; compute retention %.',
      baseOutput: '''Cohort (signup month) | M0 | M1 | M2 … (counts and %)''',
      refinements: [
        Refinement(
          label: 'Conditional formatting',
          output: '''Heatmap the % cells to reveal retention trends.''',
        ),
        Refinement(
          label: 'Funnel to retention steps',
          output: '''Show new → active → retained columns for clarity.''',
        ),
        Refinement(
          label: 'Add survival curve note',
          output:
              '''Explain how to interpret retention curves for stakeholders.''',
        ),
      ],
      takeaway: 'Even basic cohorts reveal sticky vs leaky behavior.',
    ),
  ],

  // LESSON 5 — Auto KPI report
  't9_l5': [
    // Scenario A: Weekly KPI Snapshot
    const Scenario(
      id: 'sd_l5_weekly_kpi_snapshot',
      situation:
          'Your manager wants a weekly KPI sheet you can update in minutes.',
      prompt:
          'Create a KPI sheet with targets, this week, last week, delta, traffic-light status, and a one-line insight.',
      baseOutput: '''KPI | Target | This wk | Last wk | Δ | Status | Insight''',
      refinements: [
        Refinement(
          label: 'Link from raw data tab',
          output:
              '''Pull values with INDEX/MATCH or XLOOKUP to avoid manual entry.''',
        ),
        Refinement(
          label: 'Add sparkline trends',
          output: '''Use SPARKLINE on the last 8–12 weeks for each KPI.''',
        ),
        Refinement(
          label: 'Executive tone',
          output:
              '''Keep insights to one line; lead with action needed if any.''',
        ),
      ],
      takeaway: 'A single snapshot beats scattered tabs.',
    ),

    // Scenario B: IMPORT + CLEAN Pipeline
    const Scenario(
      id: 'sd_l5_import_clean_pipeline',
      situation: 'You download a CSV weekly and want a clean pipeline.',
      prompt:
          'Show IMPORT/QUERY (Sheets) or Power Query (Excel) steps to pull, rename columns, filter, and output to the KPI tab.',
      baseOutput:
          '''Sheets: IMPORTDATA/IMPORTRANGE → QUERY → clean headers → write to range
Excel: Power Query → Source → Transform → Load to table''',
      refinements: [
        Refinement(
          label: 'Parameterize date range',
          output: '''Use a control cell or query parameter for the period.''',
        ),
        Refinement(
          label: 'Append-only log table',
          output:
              '''Load weekly data to a log; build KPIs off the log table.''',
        ),
        Refinement(
          label: 'Error handling tips',
          output: '''Wrap imports with IFERROR; add a 'Last Updated' cell.''',
        ),
      ],
      takeaway: 'Automate imports to avoid manual mistakes.',
    ),

    // Scenario C: Email/Share-Ready Report
    const Scenario(
      id: 'sd_l5_email_share_ready_report',
      situation: 'You need a shareable one-pager every Monday.',
      prompt:
          'Produce a one-page summary layout with headline, three highlights, table excerpt, and next-week focus.',
      baseOutput: '''Headline:
Highlights (3):
Table excerpt (top KPIs):
Next week focus (3):''',
      refinements: [
        Refinement(
          label: 'Slide-ready layout',
          output: '''Export a clean slide/table; keep font sizes readable.''',
        ),
        Refinement(
          label: 'Plain-text email version',
          output: '''Flatten to text lines for frictionless sharing.''',
        ),
        Refinement(
          label: 'Add owner per focus',
          output: '''Assign an owner to each 'Next week focus' line.''',
        ),
      ],
      takeaway: 'Package the story so leaders actually read it.',
    ),
  ],
};
