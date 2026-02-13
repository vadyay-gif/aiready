import '../app_catalog.dart';

/// Track 7 – Root-Cause Thinking (lessons 1–5)
List<LessonDef> buildTrack7Lessons() {
  return [
    const LessonDef(
      title: 'Turn Problems Into Clear AI Questions',
      scenarios: [
        ScenarioDef(
          title: 'Turn a messy problem description into a clear AI question',
          situation:
              'You have a long, disorganised description of an issue with a process. You want AI to turn it into a clear question that identifies the problem and the desired insight.',
          prompt:
              'Rewrite this description into a clear question that states the core problem and what insight is needed.',
          output:
              'What is causing the delay in the approval workflow, and which step should we focus on to reduce processing time?',
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
                  "What's causing the approval delay, and where should we focus to speed it up?",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'What is causing the delay in our current approval workflow, and which step should we prioritise to reduce overall processing time and improve efficiency?',
            ),
          ],
          proTip:
              'Define the objective ("turn this into a clear question") and specify what elements must appear in the rewritten version.',
          takeaway:
              'When you ask the AI to convert messy descriptions into questions, clarity and constraints guide the output.',
          task: TaskDef(
            goal: 'Turn unclear descriptions into focused AI questions.',
            pieces: [
              PromptPieceDef(text: 'Identify the main problem', isCorrect: true),
              PromptPieceDef(text: 'Turn it into a question', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(
                  text: 'Focus on the required insight', isCorrect: true),
              PromptPieceDef(text: 'Add new issues', isCorrect: false),
              PromptPieceDef(text: 'Change the problem', isCorrect: false),
              PromptPieceDef(text: 'Expand the question', isCorrect: false),
              PromptPieceDef(text: 'Give recommendations', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
            ],
            coachingNote:
                'State the transformation goal and specify that the AI should keep meaning but convert it into a single, focused question.',
            assembledPromptExample:
                'Rewrite this scattered problem description into one concise question that identifies the main problem and the insight needed.',
          ),
        ),
        ScenarioDef(
          title: 'Turn complaints into actionable questions',
          situation:
              'You receive vague complaints like "the system is slow," but you need actionable questions for AI analysis.',
          prompt:
              'Rewrite this complaint into a single, actionable question that specifies what needs to be understood.',
          output:
              'What factors are causing the system to respond slowly during peak hours?',
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
                  "What's causing slow system response during peak hours?",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'What factors are leading to slow system performance during peak hours, and which area should we investigate first to identify the root cause?',
            ),
          ],
          proTip:
              'Specify the need for an actionable question so the AI focuses on clarity and diagnostic value.',
          takeaway:
              'AI produces better analytical questions when you define what makes the question actionable.',
          task: TaskDef(
            goal: 'Rewrite vague complaints into usable questions.',
            pieces: [
              PromptPieceDef(text: 'Identify the core issue', isCorrect: true),
              PromptPieceDef(text: 'Turn it into a clear question', isCorrect: true),
              PromptPieceDef(
                  text: 'Focus on what must be understood', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add solutions', isCorrect: false),
              PromptPieceDef(text: 'Rewrite as a statement', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Expand unnecessarily', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated details', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI the question must isolate the problem and request the specific insight needed.',
            assembledPromptExample:
                'Rewrite this vague complaint into one concise, actionable question that identifies the core issue and what must be understood.',
          ),
        ),
        ScenarioDef(
          title: 'Turn ambiguous requests into precise questions',
          situation:
              "Someone asks, \"Can you check what's happening with the reports?\" but you need a more precise question.",
          prompt:
              'Rewrite this into a precise question that identifies what must be checked and why.',
          output:
              'What issue is preventing the reports from generating correctly, and which part of the process should we examine first?',
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
                  "What's stopping the reports from generating correctly?",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'What issue is preventing the reports from generating correctly, and which step in the reporting process should we review first to identify the root cause?',
            ),
          ],
          proTip:
              'Instruct the AI to clarify both the problem and the area of investigation to avoid vague outputs.',
          takeaway:
              'Prompting with structural expectations leads to precise analytical questions.',
          task: TaskDef(
            goal: 'Rewrite unclear requests into precise questions.',
            pieces: [
              PromptPieceDef(text: 'Turn into a question', isCorrect: true),
              PromptPieceDef(text: 'Identify the issue', isCorrect: true),
              PromptPieceDef(text: 'Add necessary specificity', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Preserve original intent', isCorrect: true),
              PromptPieceDef(text: 'Add new problems', isCorrect: false),
              PromptPieceDef(text: 'Suggest solutions', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional phrasing', isCorrect: false),
              PromptPieceDef(
                  text: 'Make it longer than needed', isCorrect: false),
            ],
            coachingNote:
                'Specify that the AI should clarify both what the problem is and what aspect requires investigation.',
            assembledPromptExample:
                'Rewrite this unclear request into a precise question that identifies the issue and what part of the process must be examined.',
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
              'You receive a long explanation about recent trends, but need a single AI-ready question.',
          prompt:
              'Rewrite this long description into one clear question that identifies the trend and what insight is needed.',
          output:
              'Why have support tickets increased this month, and which categories are contributing the most to the rise?',
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
                  'Why are support tickets increasing, and which categories are driving it?',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Why have support tickets increased this month, and which specific categories or patterns are contributing most to the rise?',
            ),
          ],
          proTip:
              'Define the analytical target ("what insight is needed") so the AI focuses on the right angle.',
          takeaway:
              'Trend questions improve when prompts clearly specify the insight being requested.',
          task: TaskDef(
            goal: 'Rewrite long descriptions into concise, insight-focused questions.',
            pieces: [
              PromptPieceDef(text: 'Identify the main trend', isCorrect: true),
              PromptPieceDef(text: 'Turn it into one question', isCorrect: true),
              PromptPieceDef(text: 'Ask for specific insight', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Add new trends', isCorrect: false),
              PromptPieceDef(text: 'Change timeframes', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Suggest solutions', isCorrect: false),
              PromptPieceDef(text: 'Expand the question', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to keep only the essential elements and convert them into a single insight-driven question.',
            assembledPromptExample:
                'Rewrite this long description into one concise question that identifies the trend and the insight needed.',
          ),
        ),
        ScenarioDef(
          title: 'Turn metrics into a clear question',
          situation:
              "You're given numbers (e.g., traffic, conversion) but no clarity on what to ask AI.",
          prompt:
              'Rewrite this description of metrics into a clear question that states what comparison or explanation is needed.',
          output:
              'Why has website traffic increased but conversions decreased this week?',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Why is traffic up but conversions down this week?',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Why has website traffic increased while conversions have decreased this week, and which factors are most likely contributing to the gap?',
            ),
          ],
          proTip:
              'Point the AI to the comparison or discrepancy that needs clarification.',
          takeaway:
              'AI performs better when you frame metric shifts as direct analytical questions.',
          task: TaskDef(
            goal: 'Turn metric descriptions into insight-seeking questions.',
            pieces: [
              PromptPieceDef(text: 'Highlight the discrepancy', isCorrect: true),
              PromptPieceDef(text: 'Turn it into a question', isCorrect: true),
              PromptPieceDef(text: 'Ask for explanation', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Add missing metrics', isCorrect: false),
              PromptPieceDef(text: 'Suggest fixes', isCorrect: false),
              PromptPieceDef(text: 'Add speculation', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Change the data', isCorrect: false),
            ],
            coachingNote:
                'Specify which part of the metrics needs explanation so the AI focuses the question correctly.',
            assembledPromptExample:
                'Rewrite this metric description into one clear question that highlights the discrepancy and asks for an explanation.',
          ),
        ),
        ScenarioDef(
          title: 'Turn unclear performance descriptions into precise questions',
          situation: 'Someone says "performance is down," but you need clarity.',
          prompt:
              'Rewrite this into a precise question that identifies what aspect of performance must be examined.',
          output:
              'Which part of the process is causing overall performance to decline this week?',
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
                  'Which part of the process is causing performance to decline?',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "Which component of the process is contributing most to this week's performance decline, and where should we begin our investigation?",
            ),
          ],
          proTip:
              'Instruct the AI to identify both the issue and the area requiring investigation.',
          takeaway:
              'The clearer the focus area, the better the AI can produce a diagnostic question.',
          task: TaskDef(
            goal: 'Rewrite unclear descriptions into targeted analytical questions.',
            pieces: [
              PromptPieceDef(text: 'Identify the issue', isCorrect: true),
              PromptPieceDef(text: 'Turn it into a question', isCorrect: true),
              PromptPieceDef(
                  text: 'Specify what must be examined', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Suggest fixes', isCorrect: false),
              PromptPieceDef(text: 'Expand the question', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated detail', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to preserve the intent but clarify what aspect needs investigation.',
            assembledPromptExample:
                'Rewrite this vague performance description into a concise question that specifies what aspect of performance must be examined.',
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
              'Someone reports "quality is inconsistent," but you need a root-cause question.',
          prompt:
              'Rewrite this observation into a clear root-cause question identifying what needs investigation.',
          output:
              'What factors are causing quality to vary between batches, and which part of the process should we examine first?',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: "What's causing quality to vary between batches?",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'What factors are causing quality to vary between batches, and which stage of the process should we prioritise for investigation?',
            ),
          ],
          proTip:
              'Specify that the goal is a root-cause question so the AI focuses on causal understanding.',
          takeaway:
              'Root-cause framing helps the AI narrow in on the underlying issue.',
          task: TaskDef(
            goal: 'Turn vague observations into clear root-cause questions.',
            pieces: [
              PromptPieceDef(text: 'Identify the issue', isCorrect: true),
              PromptPieceDef(text: 'Turn into a question', isCorrect: true),
              PromptPieceDef(text: 'Ask for causal insight', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning accurate', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add solutions', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated detail', isCorrect: false),
            ],
            coachingNote:
                'Instruct the AI explicitly to frame the question around causes rather than symptoms.',
            assembledPromptExample:
                'Rewrite this observation into one concise root-cause question that identifies what needs investigation.',
          ),
        ),
        ScenarioDef(
          title: 'Turn symptoms into investigative questions',
          situation:
              'Someone reports "users are dropping off," but you need a deeper question.',
          prompt:
              'Rewrite this symptom into a clear question that clarifies what needs to be understood.',
          output:
              'What is causing users to drop off during onboarding, and which step is creating the most friction?',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: "What's causing user drop-off during onboarding?",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'What is causing users to drop off during onboarding, and which specific step is creating the most friction?',
            ),
          ],
          proTip:
              'Define the insight needed ("what is causing…") so the AI stays aligned with investigation.',
          takeaway:
              'Symptoms become actionable when framed as root-cause questions.',
          task: TaskDef(
            goal: 'Rewrite symptoms into questions AI can analyse.',
            pieces: [
              PromptPieceDef(text: 'Identify the symptom', isCorrect: true),
              PromptPieceDef(text: 'Turn into a question', isCorrect: true),
              PromptPieceDef(text: 'Seek underlying cause', isCorrect: true),
              PromptPieceDef(text: 'Stay concise', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Add hypothetical scenarios', isCorrect: false),
              PromptPieceDef(text: 'Add solutions', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add metrics', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to focus on the cause-oriented framing of the question.',
            assembledPromptExample:
                'Rewrite this symptom into one concise question that asks what is causing the issue and where friction occurs.',
          ),
        ),
        ScenarioDef(
          title: 'Turn unclear performance feedback into diagnostic questions',
          situation: "You hear \"our response times are off,\" but that's unclear.",
          prompt:
              'Rewrite this feedback into a precise question that identifies what aspect of performance should be examined.',
          output:
              'Which step in the workflow is causing slower response times this week?',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Which workflow step is causing slow response times?',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Which specific step in the workflow is contributing most to the slower response times this week?',
            ),
          ],
          proTip:
              'Give the AI a structure: identify the issue + specify what must be examined.',
          takeaway:
              "Precision improves when prompts define the question's structural components.",
          task: TaskDef(
            goal: 'Rewrite vague performance feedback into diagnostic questions.',
            pieces: [
              PromptPieceDef(text: 'Turn into a question', isCorrect: true),
              PromptPieceDef(text: 'Identify issue', isCorrect: true),
              PromptPieceDef(text: 'Specify what to analyse', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Add new issues', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to clarify both what the issue is and where analysis should begin.',
            assembledPromptExample:
                'Rewrite this unclear performance feedback into a concise diagnostic question specifying what needs to be analysed.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Turn Processes Into Diagnostic Questions',
      scenarios: [
        ScenarioDef(
          title: 'Turn process issues into targeted questions',
          situation: 'A workflow seems slow, but the description is vague.',
          prompt:
              'Rewrite this into a targeted question that identifies where the process might be slowing down.',
          output:
              'Which step in the workflow is causing delays, and what should we review first to improve processing time?',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Which workflow step is causing delays?',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Which step in the workflow is contributing most to the delays, and which area should we review first to improve overall processing time?',
            ),
          ],
          proTip:
              'Define the diagnostic focus so the AI produces a question that isolates the bottleneck.',
          takeaway:
              'Clear investigative framing produces clearer process questions.',
          task: TaskDef(
            goal: 'Turn vague workflow descriptions into diagnostic questions.',
            pieces: [
              PromptPieceDef(text: 'Identify the workflow issue', isCorrect: true),
              PromptPieceDef(text: 'Turn into a question', isCorrect: true),
              PromptPieceDef(
                  text: 'Ask what needs to be examined', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Add solutions', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Expand the question', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Insert emotional tone', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to target the bottleneck and specify what should be investigated.',
            assembledPromptExample:
                'Rewrite this vague workflow description into a concise diagnostic question that identifies where the delay may be occurring.',
          ),
        ),
        ScenarioDef(
          title: 'Turn timeline concerns into diagnostic questions',
          situation: "Someone says \"we won't make the deadline,\" but that's too vague.",
          prompt:
              'Rewrite this concern into a clear question that identifies what is threatening the deadline.',
          output:
              'What factors are putting the project deadline at risk, and which tasks are causing the most delay?',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: "What's putting the project deadline at risk?",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'What factors are putting the project deadline at risk, and which specific tasks are contributing most to the delay?',
            ),
          ],
          proTip:
              'Tell the AI to clarify risk factors and isolate where deadlines are slipping.',
          takeaway:
              'Risk questions become actionable when framed around specific contributing factors.',
          task: TaskDef(
            goal: 'Rewrite vague deadline concerns into structured analytical questions.',
            pieces: [
              PromptPieceDef(text: 'Turn concern into question', isCorrect: true),
              PromptPieceDef(text: 'Identify risk factors', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add solutions', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
            ],
            coachingNote:
                'Specify that the AI must clarify both the risk and the contributing factors.',
            assembledPromptExample:
                'Rewrite this timeline concern into a concise analytical question identifying what is putting the deadline at risk.',
          ),
        ),
        ScenarioDef(
          title: 'Turn unclear technical feedback into precise questions',
          situation:
              "Someone says \"the system isn't behaving right,\" but you need specifics.",
          prompt:
              'Rewrite this into a precise question that identifies what part of the system needs investigation.',
          output:
              'Which part of the system is causing unexpected behaviour, and where should we begin troubleshooting?',
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
                  'Which part of the system is causing unexpected behaviour?',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Which part of the system is causing unexpected behaviour, and which component should we examine first during troubleshooting?',
            ),
          ],
          proTip:
              'Instruct the AI to clarify both the issue and the system component requiring attention.',
          takeaway:
              'Precision improves when you specify the scope of the investigation.',
          task: TaskDef(
            goal: 'Rewrite unclear feedback into actionable diagnostic questions.',
            pieces: [
              PromptPieceDef(text: 'Identify issue', isCorrect: true),
              PromptPieceDef(text: 'Turn into a question', isCorrect: true),
              PromptPieceDef(
                  text: 'Identify component to examine', isCorrect: true),
              PromptPieceDef(text: 'Maintain neutrality', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Add technical jargon', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add new issues', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to transform the vague statement into a focused question with a clear investigation point.',
            assembledPromptExample:
                'Rewrite this unclear technical feedback into one concise question identifying which system component needs investigation.',
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
              'Your notes contain many fragments, but you need a single question for AI analysis.',
          prompt:
              'Rewrite these scattered notes into one clear analytical question that reflects the main issue.',
          output:
              'Why are customer inquiries taking longer to resolve this week, and which part of the process is creating the delay?',
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
                  'Why are customer inquiries taking longer to resolve?',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'Why are customer inquiries taking longer to resolve this week, and which part of the support process is contributing most to the delay?',
            ),
          ],
          proTip:
              'Specify that the AI must consolidate fragmented information into a single coherent question.',
          takeaway:
              'When inputs are messy, structural constraints guide AI toward clarity.',
          task: TaskDef(
            goal: 'Rewrite scattered notes into one clean analytical question.',
            pieces: [
              PromptPieceDef(text: 'Consolidate meaning', isCorrect: true),
              PromptPieceDef(text: 'Turn into question', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Identify core issue', isCorrect: true),
              PromptPieceDef(text: 'Add new issues', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Expand question', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional wording', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to combine fragments into one coherent question without adding or altering meaning.',
            assembledPromptExample:
                'Rewrite these scattered notes into one concise analytical question identifying the main issue.',
          ),
        ),
        ScenarioDef(
          title: 'Turn brainstorm notes into a clean question',
          situation:
              'Your brainstorming session produced many loose thoughts, but you need a single diagnostic question.',
          prompt:
              'Rewrite these fragmented notes into one structured question that highlights the key issue to investigate.',
          output:
              'What is causing the recent decline in user engagement, and which user segment should we analyse first?',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: "What's causing the drop in user engagement?",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'What is causing the recent decline in user engagement, and which user segment should we analyse first to identify contributing factors?',
            ),
          ],
          proTip:
              'Give the AI a consolidation goal so it selects only the essential elements from the notes.',
          takeaway:
              'When notes are chaotic, defining the structure helps the AI produce a clear, usable question.',
          task: TaskDef(
            goal: 'Compress brainstorm notes into structured analytical questions.',
            pieces: [
              PromptPieceDef(text: 'Consolidate content', isCorrect: true),
              PromptPieceDef(
                  text: 'Turn into a clear question', isCorrect: true),
              PromptPieceDef(text: 'Identify issue', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated insights', isCorrect: false),
              PromptPieceDef(text: 'Add emotional language', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand into multiple questions', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to extract the core issue and discard secondary ideas to form one clear question.',
            assembledPromptExample:
                'Rewrite these brainstorm fragments into one concise diagnostic question identifying the main issue.',
          ),
        ),
        ScenarioDef(
          title: 'Turn mixed observations into a useful question',
          situation: 'Your notes mix symptoms, guesses, and unrelated points.',
          prompt:
              'Rewrite this into a single diagnostic question that captures the main issue.',
          output:
              'What is causing the drop in system reliability this week, and which component should we investigate first?',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: "What's causing the drop in system reliability?",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'What is causing the drop in system reliability this week, and which component should we investigate first to identify the root cause?',
            ),
          ],
          proTip:
              'Instruct the AI to identify the central issue and convert it into a focused, actionable question.',
          takeaway:
              'Structured prompting helps the AI filter noise from mixed observations.',
          task: TaskDef(
            goal: 'Convert mixed notes into a useful analytical question.',
            pieces: [
              PromptPieceDef(text: 'Identify main issue', isCorrect: true),
              PromptPieceDef(text: 'Turn into a question', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep it concise', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add solutions', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated notes', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional phrasing', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to focus only on the core issue and ignore side comments when forming the question.',
            assembledPromptExample:
                'Rewrite these mixed observations into one concise diagnostic question identifying the main issue.',
          ),
        ),
      ],
    ),
  ];
}

