import '../app_catalog.dart';

/// Track 9 – Brainstorming & Strategy (lessons 1–5)
List<LessonDef> buildTrack9Lessons() {
  return [
    const LessonDef(
      title: 'Generate Ideas Quickly',
      scenarios: [
        ScenarioDef(
          title: 'Generate ideas for improving a process',
          situation:
              'You\'re asked for ways to improve an existing process, but your initial thoughts are scattered. You want AI to generate several practical improvement ideas.',
          prompt:
              'Generate practical ideas for improving this process. Keep them short and actionable.',
          output:
              '- Reduce unnecessary approval steps\n- Automate routine data handling tasks\n- Standardise templates to reduce errors\n- Introduce weekly review checkpoints\n- Improve documentation for onboarding',
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
                  '- Remove extra approvals\n- Automate routine tasks\n- Standardise templates\n- Add weekly reviews\n- Improve documentation',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Remove or consolidate unnecessary approval steps to speed up progress\n- Automate routine data-handling tasks to reduce manual effort\n- Standardise templates to minimise errors across teams\n- Add weekly review checkpoints to catch issues early\n- Improve documentation to make onboarding more efficient',
            ),
          ],
          proTip:
              'Define the output type ("ideas") and the characteristics you want (short, actionable) to guide AI\'s idea generation.',
          takeaway:
              'Idea generation improves when you specify the level of detail and the format required.',
          task: TaskDef(
            goal: 'Generate practical ideas to improve a business process.',
            pieces: [
              PromptPieceDef(text: 'Provide multiple ideas', isCorrect: true),
              PromptPieceDef(text: 'Keep ideas short', isCorrect: true),
              PromptPieceDef(text: 'Make ideas actionable', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain neutral tone', isCorrect: true),
              PromptPieceDef(
                  text: 'Critique the existing process', isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrelated improvements', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand into long explanations', isCorrect: false),
              PromptPieceDef(text: 'Change the process', isCorrect: false),
              PromptPieceDef(
                  text: 'Add emotional commentary', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to list several short, actionable improvement ideas.',
            assembledPromptExample:
                'Generate several short, actionable ideas for improving this process.',
          ),
        ),
        ScenarioDef(
          title: 'Brainstorm ways to solve a recurring problem',
          situation:
              'Your team keeps running into the same issue, but you\'re out of ideas on how to fix it.',
          prompt:
              'Brainstorm several ways we could solve this recurring problem. Keep the ideas practical.',
          output:
              '- Identify root cause through a short workshop\n- Add real-time monitoring to catch issues early\n- Create a standard troubleshooting guide\n- Introduce quick escalation rules\n- Review roles to clarify ownership',
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
                  '- Root-cause workshop\n- Add monitoring\n- Troubleshooting guide\n- Clear escalation rules\n- Clarify responsibilities',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Run a short root-cause workshop to understand why the issue repeats\n- Add real-time monitoring to detect problems earlier\n- Create a clear troubleshooting guide to standardise responses\n- Introduce escalation rules to avoid delays\n- Review roles to ensure accountability is clear',
            ),
          ],
          proTip:
              'Clarify that you want *practical solutions* so the AI avoids vague or overly general suggestions.',
          takeaway:
              'AI brainstorming works best when you specify the type of ideas you want.',
          task: TaskDef(
            goal: 'Generate ideas for solving a repeating issue.',
            pieces: [
              PromptPieceDef(text: 'Provide multiple ideas', isCorrect: true),
              PromptPieceDef(text: 'Keep ideas practical', isCorrect: true),
              PromptPieceDef(text: 'Maintain relevance', isCorrect: true),
              PromptPieceDef(text: 'Keep ideas brief', isCorrect: true),
              PromptPieceDef(
                  text: 'Avoid unrelated content', isCorrect: true),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Criticise the team', isCorrect: false),
              PromptPieceDef(
                  text: 'Introduce unrealistic solutions', isCorrect: false),
              PromptPieceDef(
                  text: 'Expand into long analysis', isCorrect: false),
              PromptPieceDef(text: 'Change the problem', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to propose several short, practical solutions targeted at the recurring issue.',
            assembledPromptExample:
                'Brainstorm several short, practical ideas for solving this recurring problem.',
          ),
        ),
        ScenarioDef(
          title: 'Brainstorm new features or offerings',
          situation:
              'You want fresh ideas for a product or service but don\'t know where to start.',
          prompt:
              'Generate several new feature or offering ideas. Keep them realistic and focused.',
          output:
              '- Quick-start templates for new users\n- Integrated analytics dashboard\n- Guided walkthrough for onboarding\n- Add-on marketplace for extensions\n- Weekly insights email for users',
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
                  '- Quick-start templates\n- Analytics dashboard\n- Onboarding walkthrough\n- Extension marketplace\n- Weekly insights email',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Provide ready-made templates to help new users get started\n- Add an integrated analytics dashboard for better insights\n- Offer a guided onboarding walkthrough to reduce confusion\n- Introduce an add-on marketplace for custom extensions\n- Send weekly insights emails highlighting usage trends',
            ),
          ],
          proTip:
              'Specify the type of ideas ("new features or offerings") and whether they must be realistic.',
          takeaway:
              'Clear constraints help AI produce usable, business-ready ideas.',
          task: TaskDef(
            goal: 'Brainstorm practical new features or offerings.',
            pieces: [
              PromptPieceDef(text: 'Provide multiple ideas', isCorrect: true),
              PromptPieceDef(text: 'Keep ideas realistic', isCorrect: true),
              PromptPieceDef(text: 'Preserve relevance', isCorrect: true),
              PromptPieceDef(text: 'Maintain brief format', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated concepts', isCorrect: false),
              PromptPieceDef(text: 'Change the product', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(
                  text: 'Add pricing or strategy', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to propose several short, realistic ideas that align with the product\'s purpose.',
            assembledPromptExample:
                'Generate several short, realistic feature or offering ideas based on this product.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Explore Scenarios and Alternatives',
      scenarios: [
        ScenarioDef(
          title: 'Explore alternative ways to reach a goal',
          situation:
              'You have one approach in mind but want to explore other ways to reach the same goal.',
          prompt:
              'Generate alternative ways to reach this goal. Keep each option short.',
          output:
              '- Improve internal coordination\n- Use automation to reduce manual work\n- Adjust timelines to reduce bottlenecks\n- Partner with another team for support\n- Prioritise critical milestones',
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
                  '- Improve coordination\n- Automate tasks\n- Adjust timelines\n- Partner for support\n- Prioritise milestones',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Improve coordination between teams to streamline work\n- Automate manual tasks to save time\n- Adjust project timelines to avoid bottlenecks\n- Partner with another team for added capacity\n- Prioritise major milestones to maintain focus',
            ),
          ],
          proTip:
              'Tell the AI to generate multiple alternatives rather than variations of the same idea.',
          takeaway:
              'Exploring alternatives works best when you explicitly request diverse options.',
          task: TaskDef(
            goal: 'Explore different approaches to achieve a goal.',
            pieces: [
              PromptPieceDef(
                  text: 'Provide multiple alternatives', isCorrect: true),
              PromptPieceDef(text: 'Keep alternatives short', isCorrect: true),
              PromptPieceDef(text: 'Maintain relevance', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Avoid duplication', isCorrect: true),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(
                  text: 'Suggest unrelated goals', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Change the goal itself', isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrealistic options', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to produce several distinct, practical alternatives.',
            assembledPromptExample:
                'Generate several short, practical alternatives for reaching this goal.',
          ),
        ),
        ScenarioDef(
          title: 'Generate possible outcomes for a decision',
          situation:
              'You need to think ahead about what might happen based on a decision you\'re considering.',
          prompt:
              'List possible outcomes of this decision. Keep each outcome short and realistic.',
          output:
              '- Faster delivery but higher short-term workload\n- Improved customer satisfaction\n- Increased dependency on one vendor\n- Higher cost in the first quarter\n- Reduced long-term maintenance effort',
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
                  '- Faster delivery\n- Happier customers\n- Vendor dependency\n- Higher short-term cost\n- Lower long-term effort',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Faster delivery with higher short-term workload\n- Improved customer satisfaction due to quicker response\n- Increased dependency on a single vendor\n- Higher initial cost in the first quarter\n- Reduced long-term maintenance requirements',
            ),
          ],
          proTip:
              'Ask for "possible outcomes" to prompt the AI to explore impacts instead of solutions.',
          takeaway:
              'Scenario exploration works best when you specify the type of impacts you want listed.',
          task: TaskDef(
            goal: 'Brainstorm potential outcomes of a decision.',
            pieces: [
              PromptPieceDef(text: 'Provide multiple outcomes', isCorrect: true),
              PromptPieceDef(text: 'Keep outcomes brief', isCorrect: true),
              PromptPieceDef(text: 'Maintain realism', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(
                  text: 'Add emotional phrasing', isCorrect: false),
              PromptPieceDef(text: 'Change the decision', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated impacts', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to list realistic outcomes without adding recommendations.',
            assembledPromptExample:
                'List several short, realistic outcomes that could result from this decision.',
          ),
        ),
        ScenarioDef(
          title: 'Explore "what could go wrong" scenarios',
          situation:
              'You\'re planning an initiative and want to identify possible risks or failure points.',
          prompt:
              'List what could go wrong with this plan. Keep the points short and realistic.',
          output:
              '- Delays due to unclear requirements\n- Team bandwidth limitations\n- Vendor delivery issues\n- Misalignment with stakeholders\n- Budget changes mid-project',
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
                  '- Unclear requirements\n- Low bandwidth\n- Vendor delays\n- Stakeholder misalignment\n- Budget shifts',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Delays caused by unclear or incomplete requirements\n- Team bandwidth limits during busy periods\n- Vendor delivery issues or missed deadlines\n- Misalignment with key stakeholders\n- Budget changes mid-project',
            ),
          ],
          proTip:
              'Ask the AI to identify risks rather than solutions to ensure proper focus.',
          takeaway:
              'Risk brainstorming improves when you specify brevity and realism.',
          task: TaskDef(
            goal: 'Identify what could go wrong.',
            pieces: [
              PromptPieceDef(text: 'Provide multiple risks', isCorrect: true),
              PromptPieceDef(text: 'Keep risks short', isCorrect: true),
              PromptPieceDef(text: 'Maintain realism', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Suggest solutions', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Change the plan', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated issues', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to list short, realistic risks without proposing solutions.',
            assembledPromptExample:
                'List several short, realistic risks describing what could go wrong with this plan.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Break Down Problems Step-by-Step',
      scenarios: [
        ScenarioDef(
          title: 'Break a big project into smaller parts',
          situation:
              'You have a large project that feels overwhelming and need to break it into manageable components.',
          prompt:
              'Break this big project into several smaller parts. Keep them clear and practical.',
          output:
              '- Define project scope\n- Identify required resources\n- Break work into phases\n- Assign responsibilities\n- Set milestone dates',
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
                  '- Scope\n- Resources\n- Phases\n- Responsibilities\n- Milestones',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Define the full project scope and success criteria\n- Identify the resources and teams required\n- Break the work into manageable phases\n- Assign responsibilities for each phase\n- Set milestone dates to track progress',
            ),
          ],
          proTip:
              'Ask the AI to "break into smaller parts" so it restructures the project rather than summarising it.',
          takeaway:
              'Large tasks become manageable when clearly divided.',
          task: TaskDef(
            goal: 'Break big projects into smaller parts.',
            pieces: [
              PromptPieceDef(
                  text: 'Identify major components', isCorrect: true),
              PromptPieceDef(text: 'Keep parts clear', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(
                  text: 'Avoid unnecessary detail', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated tasks', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(
                  text: 'Remove core components', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to divide the work into clear, manageable parts based on the project\'s content.',
            assembledPromptExample:
                'Break this big project into several short, practical parts that capture all major components.',
          ),
        ),
        ScenarioDef(
          title: 'Break a vague problem into clear components',
          situation:
              'Your problem is described vaguely, making it hard to analyse.',
          prompt:
              'Break this vague problem into clear components we can examine separately.',
          output:
              '- Clarify the main issue\n- Identify contributing factors\n- Evaluate current constraints\n- Identify people or teams affected\n- Define what success looks like',
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
                  '- Main issue\n- Contributing factors\n- Constraints\n- Stakeholders\n- Success criteria',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Clarify the main issue causing the challenge\n- Identify factors contributing to the problem\n- Evaluate any time, budget, or resource constraints\n- Identify the people or teams affected\n- Define what success would look like',
            ),
          ],
          proTip:
              'Tell AI exactly what you mean by "break down" — the model will then identify sub-components.',
          takeaway:
              'Problem clarity improves when broken into smaller analytical parts.',
          task: TaskDef(
            goal: 'Break vague problems into clear analytical components.',
            pieces: [
              PromptPieceDef(text: 'Identify main issue', isCorrect: true),
              PromptPieceDef(text: 'Provide components', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Keep components short', isCorrect: true),
              PromptPieceDef(
                  text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add solutions', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to extract and separate core components of the problem.',
            assembledPromptExample:
                'Break this vague problem into several short components we can analyse separately.',
          ),
        ),
        ScenarioDef(
          title: 'Create steps toward a long-term goal',
          situation:
              'You have a long-term goal but no clear steps to get there.',
          prompt:
              'Break this long-term goal into several clear steps.',
          output:
              '1. Define long-term outcome\n2. Identify required skills\n3. Set intermediate milestones\n4. Allocate time each week\n5. Review progress monthly',
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
                  '1. Define outcome\n2. Skills needed\n3. Milestones\n4. Weekly time\n5. Monthly review',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '1. Define the long-term outcome and what success looks like\n2. Identify the skills or resources needed\n3. Set intermediate milestones to measure progress\n4. Allocate weekly time to move toward the goal\n5. Review progress each month to adjust as needed',
            ),
          ],
          proTip:
              'Ask for "clear steps" so AI avoids vague or high-level suggestions.',
          takeaway:
              'Long-term goals become achievable when broken into concrete, trackable steps.',
          task: TaskDef(
            goal: 'Create steps toward a long-term goal.',
            pieces: [
              PromptPieceDef(text: 'Provide steps', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Keep steps brief', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(
                  text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Change the goal', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(
                  text: 'Add recommendations not given', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to create simple, trackable steps that support the long-term goal.',
            assembledPromptExample:
                'Break this long-term goal into several clear, actionable steps.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Turn Thinking Into Frameworks',
      scenarios: [
        ScenarioDef(
          title: 'Create a simple pros/cons list',
          situation:
              'You need a quick pros/cons list to evaluate an option.',
          prompt:
              'Rewrite this into a simple pros/cons list with short bullet points.',
          output:
              '**Pros**\n- Easy to set up\n- Low initial cost\n- Quick to test\n\n**Cons**\n- Limited scalability\n- Basic feature set\n- Higher long-term cost',
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
                  '**Pros** – Easy setup, low cost, fast testing\n**Cons** – Limited scale, basic features, higher long-term cost',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Pros**\n- Easy to set up with minimal configuration\n- Low initial cost suitable for quick adoption\n- Quick to test and evaluate\n**Cons**\n- Limited scalability over time\n- Basic feature set may restrict growth\n- Higher long-term cost due to add-ons',
            ),
          ],
          proTip:
              'Tell AI the exact structure (Pros / Cons) to ensure clean categorisation.',
          takeaway:
              'Framing outputs as frameworks improves clarity and actionability.',
          task: TaskDef(
            goal: 'Rewrite content into a Pros/Cons framework.',
            pieces: [
              PromptPieceDef(text: 'Include pros', isCorrect: true),
              PromptPieceDef(text: 'Include cons', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets short', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add new items', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Suggest decisions', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to organise content into pros and cons without adding or removing meaning.',
            assembledPromptExample:
                'Rewrite this content into a simple pros/cons list with short bullet points.',
          ),
        ),
        ScenarioDef(
          title: 'Create a numbered plan from a rough idea',
          situation:
              'You have a rough idea and need it shaped into a clear, numbered plan.',
          prompt:
              'Rewrite this rough idea into a clear numbered plan with short steps.',
          output:
              '1. Clarify objective\n2. Identify key tasks\n3. Assign responsibilities\n4. Set timeline\n5. Review progress weekly',
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
                  '1. Objective\n2. Tasks\n3. Owners\n4. Timeline\n5. Weekly review',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '1. Clarify the objective and success criteria\n2. Identify the key tasks required\n3. Assign responsibilities to team members\n4. Set a timeline with milestones\n5. Review progress weekly to stay on track',
            ),
          ],
          proTip:
              'Specify a "numbered plan" so the AI converts rough ideas into structured steps.',
          takeaway:
              'Framework prompts turn rough thinking into organised action plans.',
          task: TaskDef(
            goal: 'Turn rough ideas into structured numbered plans.',
            pieces: [
              PromptPieceDef(text: 'Provide numbered steps', isCorrect: true),
              PromptPieceDef(text: 'Keep steps short', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated tasks', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(
                  text: 'Add recommendations not requested', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to convert the rough idea into a short, numbered sequence of steps.',
            assembledPromptExample:
                'Rewrite this rough idea into a short numbered plan with clear steps.',
          ),
        ),
        ScenarioDef(
          title: 'Build a simple 3-pillar strategy',
          situation:
              'You have scattered thoughts about a direction but need them turned into a three-pillar strategy.',
          prompt:
              'Rewrite this content into a simple 3-pillar strategy with short explanations.',
          output:
              '**Pillar 1 — Efficiency**\nStreamline workflows to reduce time-to-delivery.\n\n**Pillar 2 — Quality**\nIntroduce checks to ensure consistent results.\n\n**Pillar 3 — Communication**\nImprove team updates and stakeholder visibility.',
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
                  '**Efficiency** – faster workflows\n**Quality** – consistent output\n**Communication** – clearer updates',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Pillar 1 — Efficiency**\nStreamline workflows and automate routine steps.\n**Pillar 2 — Quality**\nAdd quality checks to ensure stable, reliable output.\n**Pillar 3 — Communication**\nImprove team visibility with clearer, more regular updates.',
            ),
          ],
          proTip:
              'Specifying the number of pillars ensures the AI gives you exactly the structure needed.',
          takeaway:
              'Clear structural instructions help AI convert messy thinking into simple strategies.',
          task: TaskDef(
            goal: 'Create a 3-pillar strategy.',
            pieces: [
              PromptPieceDef(text: 'Provide 3 pillars', isCorrect: true),
              PromptPieceDef(text: 'Keep pillars short', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Preserve clarity', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add a fourth pillar', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(
                  text: 'Add recommendations not included', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to create exactly three short pillars and avoid additional structure.',
            assembledPromptExample:
                'Rewrite this content into a simple 3-pillar strategy with short explanations.',
          ),
        ),
      ],
    ),
    const LessonDef(
      title: 'Improve Ideas Through Iteration',
      scenarios: [
        ScenarioDef(
          title: 'Refine an idea with constructive feedback',
          situation:
              'You have a basic idea but want constructive feedback to strengthen it.',
          prompt:
              'Provide constructive feedback that helps refine this idea.',
          output:
              '- Clarify the target audience\n- Reduce complexity in the workflow\n- Highlight core benefit more clearly\n- Validate feasibility with a small test\n- Add a simple onboarding path',
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
                  '- Define audience\n- Simplify workflow\n- Highlight benefit\n- Test feasibility\n- Improve onboarding',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Clarify who the idea is designed for\n- Simplify the workflow to improve usability\n- Highlight the core benefit more clearly\n- Validate feasibility with a lightweight test\n- Add a simple onboarding path for new users',
            ),
          ],
          proTip:
              'Tell the AI what type of refinement you want — feedback, not rewriting or ideation.',
          takeaway:
              'Clear instructions help the AI produce helpful, constructive improvement notes.',
          task: TaskDef(
            goal: 'Strengthen an idea using structured feedback.',
            pieces: [
              PromptPieceDef(
                  text: 'Provide multiple suggestions', isCorrect: true),
              PromptPieceDef(
                  text: 'Keep suggestions constructive', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Rewrite the idea', isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrelated concepts', isCorrect: false),
              PromptPieceDef(text: 'Criticise the idea', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to provide constructive feedback rather than rewrite or replace the idea.',
            assembledPromptExample:
                'Provide several short, constructive suggestions that strengthen this idea.',
          ),
        ),
        ScenarioDef(
          title: 'Strengthen a proposal with improvements',
          situation:
              'You have a draft proposal that feels incomplete.',
          prompt:
              'Suggest several improvements that would strengthen this proposal.',
          output:
              '- Add clearer success criteria\n- Include risk considerations\n- Strengthen stakeholder alignment\n- Add a timeline with checkpoints\n- Provide expected outcomes',
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
                  '- Success criteria\n- Risks\n- Stakeholder alignment\n- Timeline\n- Expected outcomes',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Add clearer success criteria for measuring impact\n- Include key risks and how they may affect progress\n- Strengthen alignment with stakeholder needs\n- Add a timeline with key checkpoints\n- Provide expected outcomes for the proposal',
            ),
          ],
          proTip:
              'Tell the AI to suggest improvements, not rewrite the proposal entirely.',
          takeaway:
              'Proposals improve faster when the feedback is structured and targeted.',
          task: TaskDef(
            goal: 'Improve a proposal by adding missing elements.',
            pieces: [
              PromptPieceDef(
                  text: 'Provide multiple improvements', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep suggestions short', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Rewrite the proposal', isCorrect: false),
              PromptPieceDef(
                  text: 'Add unrelated improvements', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(
                  text: 'Add emotional judgement', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to suggest short improvements that enhance clarity and completeness.',
            assembledPromptExample:
                'Suggest several short improvements that would strengthen this proposal.',
          ),
        ),
        ScenarioDef(
          title: 'Identify risks and refine solutions',
          situation:
              'You want to pressure-test your idea by identifying risks and refining your approach.',
          prompt:
              'Identify key risks and suggest small refinements that improve the solution.',
          output:
              '- Risk: unclear requirements → Refinement: clarify early\n- Risk: bandwidth limitations → Refinement: adjust scope\n- Risk: dependency delays → Refinement: confirm timelines\n- Risk: stakeholder misalignment → Refinement: align expectations\n- Risk: testing gaps → Refinement: add test coverage',
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
                  '- Requirements → clarify\n- Bandwidth → adjust scope\n- Dependencies → confirm timelines\n- Alignment → set expectations\n- Testing → add coverage',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Unclear requirements → clarify expectations early\n- Bandwidth limitations → adjust workload or scope\n- Dependency delays → confirm external timelines\n- Stakeholder misalignment → align expectations proactively\n- Testing gaps → add additional coverage to reduce risk',
            ),
          ],
          proTip:
              'Specify both elements ("risks" and "refinements") to ensure the AI delivers paired insights.',
          takeaway:
              'Risk-aware brainstorming improves solution quality.',
          task: TaskDef(
            goal: 'Identify risks and propose refinements to improve an idea.',
            pieces: [
              PromptPieceDef(text: 'Identify risks', isCorrect: true),
              PromptPieceDef(
                  text: 'Provide paired refinements', isCorrect: true),
              PromptPieceDef(text: 'Keep points short', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add unrelated risks', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(
                  text: 'Add new strategies not implied', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to produce paired "risk + refinement" entries to strengthen the solution.',
            assembledPromptExample:
                'Identify key risks and provide short refinements that strengthen the solution.',
          ),
        ),
      ],
    ),
  ];
}
