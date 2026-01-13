import '../app_catalog.dart';

/// Track 4 – Presentations (lessons 1–5)
List<LessonDef> buildTrack4Lessons() {
  return [
    LessonDef(
      title: 'Create Clear Slide Outlines',
      scenarios: const [
        ScenarioDef(
          title: 'Turn a Topic Into a Simple Slide Outline',
          situation:
              'You need to build a short presentation about a new onboarding process. Instead of writing slides individually, you want AI to produce a clean slide outline with logical sections you can expand later.',
          prompt:
              'Create a simple slide outline for a short presentation explaining the new onboarding process. Include 5 slides covering: purpose, key steps, benefits, roles, and next steps.',
          output:
              '**Slide 1 – Purpose**\n- Why the onboarding process is being updated\n- What the new approach aims to improve\n\n**Slide 2 – Key Steps**\n- Overview of the main onboarding stages\n\n**Slide 3 – Benefits**\n- Faster alignment\n- Clearer expectations for new team members\n\n**Slide 4 – Roles**\n- What each team is responsible for\n\n**Slide 5 – Next Steps**\n- Timeline for rollout\n- How teams can prepare',
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
                  '**Slide 1 – Purpose**\n- Reason for updating onboarding\n- Improvement goal\n**Slide 2 – Key Steps**\n- Summary of onboarding stages\n**Slide 3 – Benefits**\n- Better alignment\n- Clear expectations\n**Slide 4 – Roles**\n- Team responsibilities\n**Slide 5 – Next Steps**\n- Rollout timeline\n- Preparation actions',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Slide 1 – Purpose**\n- Context behind the onboarding update\n- Improvement goals linked to efficiency\n**Slide 2 – Key Steps**\n- Overview of each onboarding stage\n**Slide 3 – Benefits**\n- Increased alignment\n- More predictable expectations\n**Slide 4 – Roles**\n- Responsibilities of teams and managers\n**Slide 5 – Next Steps**\n- Rollout timing\n- Preparation and training needs',
            ),
          ],
          proTip:
              'A slide outline should focus on one idea per slide to keep the deck easy to develop.',
          takeaway:
              'A strong outline becomes the backbone of a clear presentation.',
          task: TaskDef(
            goal: 'Turn a topic into a structured slide outline.',
            pieces: [
              PromptPieceDef(
                  text: 'Create a structured slide outline', isCorrect: true),
              PromptPieceDef(
                  text: 'Include purpose or introduction', isCorrect: true),
              PromptPieceDef(
                  text: 'Include key features or steps', isCorrect: true),
              PromptPieceDef(text: 'Include benefits', isCorrect: true),
              PromptPieceDef(text: 'Include next steps', isCorrect: true),
              PromptPieceDef(
                  text: 'Write the full script of the presentation',
                  isCorrect: false),
              PromptPieceDef(text: 'Add design guidelines', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated slides', isCorrect: false),
              PromptPieceDef(text: 'Change the topic', isCorrect: false),
              PromptPieceDef(
                  text: 'Ask AI to choose the best model', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the exact slide sections you want to ensure the structure matches your needs.',
            assembledPromptExample:
                'Create a 5-slide outline introducing the updated internal tool. Include slides for purpose, key features, benefits, roles, and next steps.',
          ),
        ),
        ScenarioDef(
          title: 'Convert Meeting Notes Into a Presentation Outline',
          situation:
              'You have rough meeting notes summarising updates, decisions, and next steps. You want AI to convert them into a clean presentation outline with 4–5 slides you can expand later.',
          prompt:
              'Turn these meeting notes into a simple 5-slide presentation outline. Include slides for: summary, decisions, progress updates, blockers, and next steps.',
          output:
              '**Slide 1 — Summary**\n- Purpose of the meeting\n- Key topics discussed\n\n**Slide 2 — Decisions**\n- Agreed changes\n- New responsibilities assigned\n\n**Slide 3 — Progress Updates**\n- Completed tasks\n- Work currently in progress\n\n**Slide 4 — Blockers**\n- Issues slowing progress\n- Dependencies awaiting resolution\n\n**Slide 5 — Next Steps**\n- Immediate actions\n- Timeline for follow-up',
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
                  '**Summary** — topics + purpose\n**Decisions** — changes + ownership\n**Progress** — completed + ongoing\n**Blockers** — issues + dependencies\n**Next Steps** — actions + timeline',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Summary** — purpose, agenda review\n**Decisions** — process updates, assigned leads\n**Progress** — key completions + active tasks\n**Blockers** — issues and external dependencies\n**Next Steps** — immediate actions and timelines',
            ),
          ],
          proTip:
              'Give AI explicit slide titles—this prevents it from inventing structure.',
          takeaway:
              'Slide outlines are clearer when each slide has one defined purpose.',
          task: TaskDef(
            goal: 'Turn meeting notes into a structured slide outline.',
            pieces: [
              PromptPieceDef(text: 'Use slide titles', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets short', isCorrect: true),
              PromptPieceDef(
                  text: 'Include all required sections', isCorrect: true),
              PromptPieceDef(
                  text: 'Follow the 5-slide structure', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning consistent', isCorrect: true),
              PromptPieceDef(
                  text: 'Add slides not requested', isCorrect: false),
              PromptPieceDef(text: 'Write a full script', isCorrect: false),
              PromptPieceDef(
                  text: 'Change the meeting content', isCorrect: false),
              PromptPieceDef(
                  text: 'Add design instructions', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the slide titles and number of slides required.',
            assembledPromptExample:
                'Turn these meeting notes into a 5-slide outline covering summary, decisions, progress, blockers, and next steps.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Document Into a Structured 5-Slide Deck',
          situation:
              'You have a full document (e.g., a proposal or report) that is too long to present. You want AI to convert it into a clear 5-slide outline.',
          prompt:
              'Turn this document into a 5-slide outline. Include: overview, key findings, implications, recommended actions, and next steps.',
          output:
              '**Slide 1 — Overview**\n- Purpose of the document\n- Main topic summary\n\n**Slide 2 — Key Findings**\n- Most important insights\n- Supporting evidence\n\n**Slide 3 — Implications**\n- Impact on teams or processes\n- Risks or opportunities\n\n**Slide 4 — Recommended Actions**\n- Short list of actions to take\n- Who should do them\n\n**Slide 5 — Next Steps**\n- Timeline\n- Required follow-up',
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
                  'Overview — purpose + topic\nFindings — top insights\nImplications — impacts\nActions — next actions\nNext Steps — timeline + follow-up',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Overview — purpose and context\nFindings — key insights and evidence\nImplications — risks, impacts, opportunities\nActions — responsible roles\nNext Steps — planned activities',
            ),
          ],
          proTip:
              'Tell AI the sections and number of slides—this removes ambiguity.',
          takeaway:
              'Clear constraints produce a clean, presentation-ready outline.',
          task: TaskDef(
            goal: 'Turn long documents into concise slide outlines.',
            pieces: [
              PromptPieceDef(
                  text: 'Follow 5-slide structure', isCorrect: true),
              PromptPieceDef(text: 'Include overview', isCorrect: true),
              PromptPieceDef(text: 'Include findings', isCorrect: true),
              PromptPieceDef(text: 'Include implications', isCorrect: true),
              PromptPieceDef(
                  text: 'Include recommended actions', isCorrect: true),
              PromptPieceDef(text: 'Rewrite full document', isCorrect: false),
              PromptPieceDef(text: 'Add visuals', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated insights', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(
                  text: 'Add design instructions', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the exact slide titles and number before giving the content.',
            assembledPromptExample:
                'Turn this document into a 5-slide outline: overview, findings, implications, actions, next steps.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Turn Data Into Talking Points',
      scenarios: const [
        ScenarioDef(
          title: 'Turn Data Points Into Clear Talking Points',
          situation:
              'You have a small dataset showing changes in task completion rates over the last quarter. You want to convert these numbers into simple talking points for a presentation.',
          prompt:
              'Rewrite the data summary into 3–4 clear talking points suitable for presenting verbally. Focus on the trend, the overall change, and what the numbers mean.',
          output:
              '- Task completion increased steadily each month.\n- Overall quarterly completion improved by 12%.\n- The strongest growth occurred in the final month.\n- This suggests teams adapted well to the new workflow.',
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
                  '- Completion increased monthly.\n- Quarterly improvement: 12%.\n- Biggest rise in the final month.\n- Indicates strong adaptation.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Completion rose each month throughout the quarter.\n- Quarter-over-quarter improvement totalled 12%.\n- The final month delivered the largest performance gain.\n- Indicates teams adjusted effectively to revised processes.',
            ),
          ],
          proTip:
              'When asking AI for talking points, specify the exact number of bullets and the type of insight you want.',
          takeaway:
              'Clear constraints lead to accurate talking-point generation.',
          task: TaskDef(
            goal:
                'Turn numeric or chart-based information into short, verbal talking points.',
            pieces: [
              PromptPieceDef(text: 'Highlight the trend', isCorrect: true),
              PromptPieceDef(
                  text: 'Mention the numerical change', isCorrect: true),
              PromptPieceDef(
                  text: 'Add one insight about meaning', isCorrect: true),
              PromptPieceDef(text: 'Use bullet format', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets concise', isCorrect: true),
              PromptPieceDef(
                  text: 'Provide a full paragraph', isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrelated conclusions', isCorrect: false),
              PromptPieceDef(text: 'Change the data', isCorrect: false),
              PromptPieceDef(text: 'Add storytelling', isCorrect: false),
              PromptPieceDef(
                  text: 'Include chart instructions', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the exact number of bullets and insight types required to avoid generic summaries.',
            assembledPromptExample:
                'Turn these performance numbers into 3–4 talking points summarising the trend, the change, and what it means.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Charts Into Speaker Notes',
          situation:
              'You have a chart showing key trends or changes, but you need simple verbal notes for presenting it.',
          prompt:
              'Turn this chart into 3–4 speaker notes explaining the main trend, one key change, and the takeaway.',
          output:
              '- The trend increases steadily over the period.\n- There is one noticeable dip in the middle.\n- After the dip, the values climb again.\n- Overall, performance is improving.',
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
                  '- Upward trend\n- One dip\n- Values rise afterward\n- Overall improvement',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Values rise gradually across the timeframe\n- A mid-period dip interrupts progress\n- The upward trend resumes afterwards\n- Overall message: strong improvement',
            ),
          ],
          proTip:
              'Define the structure: trend + one key change + takeaway.',
          takeaway: 'Clear instructions keep speaker notes focused.',
          task: TaskDef(
            goal: 'Turn visuals into clear spoken notes.',
            pieces: [
              PromptPieceDef(text: 'Identify main trend', isCorrect: true),
              PromptPieceDef(text: 'Mention one key change', isCorrect: true),
              PromptPieceDef(text: 'Provide takeaway', isCorrect: true),
              PromptPieceDef(text: 'Use 3–4 bullets', isCorrect: true),
              PromptPieceDef(text: 'Keep wording simple', isCorrect: true),
              PromptPieceDef(text: 'Add speculation', isCorrect: false),
              PromptPieceDef(
                  text: 'Describe the entire chart', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand into paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Change trends', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
            ],
            coachingNote:
                'Tell AI to summarise only the trend, the key change, and takeaway.',
            assembledPromptExample:
                'Turn this chart into 3–4 simple speaker notes covering trend, change, and takeaway.',
          ),
        ),
        ScenarioDef(
          title: 'Turn a Table Into Insights for a Presentation',
          situation:
              'You have a numeric table (e.g., quarterly sales, support tickets, performance metrics). You need AI to convert it into concise insights for presenting.',
          prompt:
              'Turn this table into 3–4 short insights for a presentation. Focus on the biggest difference, the trend, and one meaningful takeaway.',
          output:
              '- The strongest value appears in the final quarter.\n- Earlier quarters show gradual improvement.\n- A significant jump occurs between Q2 and Q3.\n- Overall, the trend is upward.',
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
                  '- Q4 highest\n- Q1–Q3 rising\n- Big jump from Q2 to Q3\n- Upward trend overall',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Final quarter has the highest values\n- Earlier quarters show consistent improvement\n- The most notable change is the Q2→Q3 increase\n- Takeaway: strong upward momentum',
            ),
          ],
          proTip:
              'Tell AI what types of insights matter—trend, differences, takeaway.',
          takeaway:
              'AI produces clearer insights when you define what to highlight.',
          task: TaskDef(
            goal: 'Turn tables into presentation insights.',
            pieces: [
              PromptPieceDef(text: 'Identify top value', isCorrect: true),
              PromptPieceDef(text: 'Identify trend', isCorrect: true),
              PromptPieceDef(
                  text: 'Highlight one major difference', isCorrect: true),
              PromptPieceDef(text: 'Provide takeaway', isCorrect: true),
              PromptPieceDef(text: 'Use 3–4 bullets', isCorrect: true),
              PromptPieceDef(text: 'Describe every number', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Change data', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add design advice', isCorrect: false),
            ],
            coachingNote:
                'Tell AI exactly what to extract—trend, biggest difference, and takeaway.',
            assembledPromptExample:
                'Turn this table into 3–4 insights highlighting the trend, key difference, and takeaway.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Write Effective Speaker Notes',
      scenarios: const [
        ScenarioDef(
          title: 'Explain a Slide in Clear Spoken Language',
          situation:
              'You have a slide with several bullets, but you need simple speaker notes to explain it verbally.',
          prompt:
              'Turn this slide content into 3–4 short speaker notes summarising the key idea, clarification, and why it matters.',
          output:
              '- The slide highlights our main workflow changes.\n- These changes simplify how tasks move between teams.\n- They reduce confusion and improve coordination.\n- Overall, they help teams deliver faster.',
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
                  '- Workflow changes\n- Simplifies handoffs\n- Reduces confusion\n- Improves speed',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Key workflow changes shown\n- Clarifies how tasks move across teams\n- Reduces confusion by standardising steps\n- Helps teams deliver work more efficiently',
            ),
          ],
          proTip:
              'Ask for "speaker notes" to ensure the AI avoids rewriting the slide.',
          takeaway:
              'Speaker notes should simplify—not repeat—the slide.',
          task: TaskDef(
            goal: 'Turn slide content into simple speaker notes.',
            pieces: [
              PromptPieceDef(
                  text: 'Use spoken-friendly language', isCorrect: true),
              PromptPieceDef(text: 'Keep points short', isCorrect: true),
              PromptPieceDef(text: 'Highlight key idea', isCorrect: true),
              PromptPieceDef(text: 'Explain why it matters', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Rewrite the slide', isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
            ],
            coachingNote:
                'Tell AI to summarise—not rewrite—the slide for spoken delivery.',
            assembledPromptExample:
                'Turn these slide bullets into 3–4 spoken explanation points.',
          ),
        ),
        ScenarioDef(
          title: 'Create Short Notes for a 2-Minute Update',
          situation:
              'You need quick notes for delivering a 2-minute verbal update.',
          prompt:
              'Write 3–4 short speaker notes for a 2-minute update covering progress, challenges, and next steps.',
          output:
              '- Progress: key tasks completed on schedule.\n- Challenges: delays from external dependencies.\n- Next steps: final testing and rollout preparation.\n- Timeline: update coming next week.',
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
                  '- Progress made\n- External delays\n- Next steps: testing\n- Update next week',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Completed core tasks on time\n- Managing delays from outside dependencies\n- Preparing for final testing and rollout\n- Next update scheduled for next week',
            ),
          ],
          proTip:
              'Define the time limit ("2 minutes") so the AI stays concise.',
          takeaway: 'Time-boxed prompting produces tighter speaker notes.',
          task: TaskDef(
            goal: 'Turn rough progress notes into a 2-minute speaking outline.',
            pieces: [
              PromptPieceDef(text: 'Include progress', isCorrect: true),
              PromptPieceDef(text: 'Include challenges', isCorrect: true),
              PromptPieceDef(text: 'Include next steps', isCorrect: true),
              PromptPieceDef(text: 'Use 3–4 bullets', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated topics', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand into long paragraphs', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add extra sections', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the time limit and required content blocks.',
            assembledPromptExample:
                'Write 3–4 concise bullets for a 2-minute verbal update.',
          ),
        ),
        ScenarioDef(
          title: 'Prepare Presenter Notes for an Executive Meeting',
          situation:
              'You must present to executives and need concise, high-level notes.',
          prompt:
              'Turn this content into 3–4 executive-level presenter notes focusing on outcomes, decisions, and key risks.',
          output:
              '- Outcome: project remains on track.\n- Decision: leadership alignment confirmed.\n- Risk: dependency delays may affect rollout.\n- Mitigation: weekly check-ins planned.',
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
                  '- On track\n- Alignment confirmed\n- Risk: delays\n- Mitigation: check-ins',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Project remains on track with expected delivery timelines\n- Leadership remains aligned on goals and priorities\n- Key risk: external dependency delays\n- Mitigation: weekly coordination to maintain progress',
            ),
          ],
          proTip:
              'Use labels like "executive-level" to control tone.',
          takeaway: 'Executives want clarity: outcomes, decisions, risks.',
          task: TaskDef(
            goal: 'Turn content into executive-ready presenter notes.',
            pieces: [
              PromptPieceDef(text: 'Include outcomes', isCorrect: true),
              PromptPieceDef(text: 'Include decisions', isCorrect: true),
              PromptPieceDef(text: 'Include risks', isCorrect: true),
              PromptPieceDef(text: 'Include mitigations', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets short', isCorrect: true),
              PromptPieceDef(
                  text: 'Add operational details', isCorrect: false),
              PromptPieceDef(text: 'Expand into narrative', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add new risks', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
            ],
            coachingNote:
                'Tell AI to format for an executive audience.',
            assembledPromptExample:
                'Write 3–4 executive-level presenter notes covering outcomes, decisions, risks, and mitigations.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Improve Slide Clarity',
      scenarios: const [
        ScenarioDef(
          title: 'Rewrite a Busy Slide Into Key Bullets',
          situation:
              'You have an overcrowded slide filled with paragraphs. You need AI to condense it.',
          prompt:
              'Rewrite this busy slide into 3–4 key bullets capturing the core ideas only.',
          output:
              '- Main workflow improvement\n- Simplified steps for teams\n- Reduced errors in handoffs\n- Faster completion of tasks',
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
                  '- Workflow improved\n- Steps simplified\n- Fewer errors\n- Faster completion',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Core workflow improvements highlighted\n- Simplified steps reduce complexity\n- Error reduction during handoffs\n- Tasks completed more quickly',
            ),
          ],
          proTip: 'Tell AI to produce "key bullets only."',
          takeaway: 'Focused rewriting produces clearer slides.',
          task: TaskDef(
            goal: 'Rewrite dense content into key bullets.',
            pieces: [
              PromptPieceDef(text: 'Identify core ideas', isCorrect: true),
              PromptPieceDef(text: 'Keep to 3–4 bullets', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(
                  text: 'Avoid rewriting everything', isCorrect: true),
              PromptPieceDef(text: 'Add details', isCorrect: false),
              PromptPieceDef(text: 'Add visuals', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(
                  text: 'Rewrite the slide in full', isCorrect: false),
            ],
            coachingNote:
                'Tell AI which items count as "core ideas."',
            assembledPromptExample:
                'Rewrite this busy slide into 3–4 core bullets.',
          ),
        ),
        ScenarioDef(
          title: 'Turn Dense Text Into Digestible Highlights',
          situation:
              'You have dense text (e.g., a long paragraph) and need it turned into a short list of presentation-ready highlights.',
          prompt:
              'Turn this text into 3–4 concise highlights focusing on key messages only.',
          output:
              '- Clarifies workflow steps\n- Reduces room for misinterpretation\n- Helps teams stay aligned\n- Supports faster decision-making',
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
                  '- Clear steps\n- Less confusion\n- Better alignment\n- Faster decisions',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Clarifies each workflow step\n- Minimises confusion across teams\n- Reinforces alignment\n- Speeds decision-making',
            ),
          ],
          proTip:
              'Ask for "digestible highlights" to avoid AI over-summarising.',
          takeaway: 'Highlight extraction leads to clearer slide text.',
          task: TaskDef(
            goal: 'Condense dense text into digestible highlights.',
            pieces: [
              PromptPieceDef(text: 'Identify key points', isCorrect: true),
              PromptPieceDef(text: 'Reduce text', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets short', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(
                  text: 'Add unrelated content', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(
                  text: 'Add visual instructions', isCorrect: false),
            ],
            coachingNote:
                'Tell AI what format your highlights should follow.',
            assembledPromptExample:
                'Turn this dense paragraph into 3–4 clear highlight bullets.',
          ),
        ),
        ScenarioDef(
          title: 'Simplify a Technical Slide for a Non-Technical Audience',
          situation:
              'You must present a technical slide to a non-technical group.',
          prompt:
              'Simplify this technical slide into 3–4 plain-language bullets for a general audience.',
          output:
              '- The system checks information for issues\n- Approved items move forward automatically\n- Items needing attention go to manual review\n- The process reduces errors',
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
                  '- System checks\n- Approved items proceed\n- Manual review for issues\n- Fewer errors',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- System reviews information automatically\n- Valid items advance without manual steps\n- Items with issues go to manual review\n- Helps reduce overall mistakes',
            ),
          ],
          proTip: 'Tell AI to remove jargon.',
          takeaway: 'Plain-language rewriting increases clarity.',
          task: TaskDef(
            goal: 'Simplify technical slides for general audiences.',
            pieces: [
              PromptPieceDef(text: 'Remove jargon', isCorrect: true),
              PromptPieceDef(text: 'Use simple bullets', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(
                  text: 'Follow 3–4 bullet structure', isCorrect: true),
              PromptPieceDef(text: 'Add technical detail', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add references', isCorrect: false),
            ],
            coachingNote:
                'Tell AI to replace jargon with simple equivalents.',
            assembledPromptExample:
                'Simplify this technical slide into 3–4 plain-language bullets.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Tailor Presentations to the Audience',
      scenarios: const [
        ScenarioDef(
          title: 'Adapt a Presentation for Executives',
          situation:
              'Executives want concise, outcome-focused content.',
          prompt:
              'Rewrite this content for an executive audience. Keep bullets short and focus on outcomes, decisions, and risks.',
          output:
              '- Outcome: progress on track\n- Decision: alignment confirmed\n- Risk: delays from dependencies\n- Next: final review phase',
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
                  '- Progress on track\n- Alignment confirmed\n- Risk: delays\n- Next: review',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Project progressing as planned\n- Leadership aligned on priorities\n- Risk: dependency delays\n- Next step: final review',
            ),
          ],
          proTip: 'Specify the target audience to control tone.',
          takeaway:
              'Different audiences require different levels of detail.',
          task: TaskDef(
            goal: 'Adapt content for executives.',
            pieces: [
              PromptPieceDef(text: 'Keep bullets concise', isCorrect: true),
              PromptPieceDef(text: 'Include outcomes', isCorrect: true),
              PromptPieceDef(text: 'Include decisions', isCorrect: true),
              PromptPieceDef(text: 'Include risks', isCorrect: true),
              PromptPieceDef(
                  text: 'Maintain high-level tone', isCorrect: true),
              PromptPieceDef(text: 'Add technical detail', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(
                  text: 'Add emotional language', isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
            ],
            coachingNote:
                'Tell AI to focus on outcomes and decisions for execs.',
            assembledPromptExample:
                'Rewrite this for executives, focusing on outcomes, decisions, and risks.',
          ),
        ),
        ScenarioDef(
          title: 'Rewrite the Same Content for Frontline Teams',
          situation:
              'Frontline teams need actionable details, not high-level summaries.',
          prompt:
              'Rewrite this content for frontline teams. Focus on actions, responsibilities, and what changes for them.',
          output:
              '- Tasks for this week\n- Updated processes to follow\n- Who owns each step\n- When to expect further updates',
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
                  '- Tasks\n- Process updates\n- Owners\n- Timeline',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Breakdown of key tasks for the week\n- Updated processes and how to follow them\n- Clear owners for each step\n- Timeline for next updates',
            ),
          ],
          proTip:
              'Define what the audience cares about—actions, ownership, changes.',
          takeaway:
              'Tailoring requires matching tone and focus to the audience.',
          task: TaskDef(
            goal: 'Rewrite content for frontline teams.',
            pieces: [
              PromptPieceDef(text: 'Focus on actions', isCorrect: true),
              PromptPieceDef(text: 'Identify owners', isCorrect: true),
              PromptPieceDef(
                  text: 'Identify process changes', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets short', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning', isCorrect: true),
              PromptPieceDef(
                  text: 'Add unrelated detail', isCorrect: false),
              PromptPieceDef(text: 'Expand content', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(
                  text: 'Add strategic commentary', isCorrect: false),
            ],
            coachingNote:
                'Tell AI what frontline teams need (actions, ownership).',
            assembledPromptExample:
                'Rewrite this content for frontline teams, focusing on actions, owners, and process updates.',
          ),
        ),
        ScenarioDef(
          title: 'Customise a Message for Customers or Partners',
          situation:
              'You need to communicate externally and want a more polished, customer-appropriate version.',
          prompt:
              'Rewrite this message for customers/partners. Make it clear, professional, and focused on value.',
          output:
              '- Summary of update\n- Benefit to the customer\n- What is changing and when\n- How to get support if needed',
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
                  '- Update summary\n- Customer benefit\n- What\'s changing\n- Support info',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Clear summary of update\n- Explanation of customer value\n- Details on upcoming changes\n- Instructions for support',
            ),
          ],
          proTip:
              'Specify the audience ("customers or partners") to guide tone.',
          takeaway:
              'External messages require clarity, professionalism, and reassurance.',
          task: TaskDef(
            goal: 'Rewrite content for external audiences.',
            pieces: [
              PromptPieceDef(text: 'Provide a clear summary', isCorrect: true),
              PromptPieceDef(text: 'Explain the benefit', isCorrect: true),
              PromptPieceDef(text: 'State what changes', isCorrect: true),
              PromptPieceDef(
                  text: 'Add support information', isCorrect: true),
              PromptPieceDef(
                  text: 'Maintain professional tone', isCorrect: true),
              PromptPieceDef(text: 'Add internal details', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand unnecessarily', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrelated requests', isCorrect: false),
            ],
            coachingNote:
                'Tell AI the audience type to ensure the correct tone.',
            assembledPromptExample:
                'Rewrite this for customers, focusing on clarity, benefit, and support information.',
          ),
        ),
      ],
    ),
  ];
}
