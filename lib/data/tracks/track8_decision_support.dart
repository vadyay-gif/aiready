import '../app_catalog.dart';

/// Track 8 – Decision Support (lessons 1–5)
List<LessonDef> buildTrack8Lessons() {
  return [
    LessonDef(
      title: 'Use AI to Compare Options Clearly',
      scenarios: const [
        ScenarioDef(
          title: 'Turn a messy comparison into a clean comparison of two options',
          situation:
              "Your notes contain a messy comparison of two possible solutions, but they're too scattered to use. You want AI to produce a clear, structured comparison.",
          prompt:
              'Rewrite this comparison into a clear, structured list comparing Option A and Option B. Keep it factual and easy to scan.',
          output:
              '**Option A – Faster Implementation**\n- Setup requires minimal configuration.\n- Works well for short-term needs.\n- Higher long-term maintenance cost.\n\n**Option B – More Scalable**\n- Setup takes longer but supports customisation.\n- Better suited for long-term growth.\n- Lower maintenance cost over time.',
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
                  '**Option A** – Quick setup, higher long-term cost.\n**Option B** – Slower setup, scalable, lower long-term cost.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Option A – Faster Implementation**\n- Requires minimal configuration and can be deployed quickly.\n- Ideal for immediate or short-term requirements.\n- Higher maintenance costs due to limited scalability.\n**Option B – More Scalable**\n- Longer setup time but allows extensive customisation.\n- Better for long-term operational needs.\n- Lower ongoing maintenance costs.',
            ),
          ],
          proTip:
              'When comparing options, specify the structure you want (e.g., headings, bullets) so the AI formats the comparison cleanly.',
          takeaway:
              'AI compares options best when you define the structure and keep the request tightly focused.',
          task: TaskDef(
            goal: 'Turn messy comparisons into clear, structured option summaries.',
            pieces: [
              PromptPieceDef(text: 'Separate options clearly', isCorrect: true),
              PromptPieceDef(text: 'Use bullet points', isCorrect: true),
              PromptPieceDef(text: 'Maintain factual accuracy', isCorrect: true),
              PromptPieceDef(text: 'Keep structure simple', isCorrect: true),
              PromptPieceDef(
                  text: 'Highlight meaningful differences', isCorrect: true),
              PromptPieceDef(text: 'Add new options', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
              PromptPieceDef(text: 'Change original meaning', isCorrect: false),
              PromptPieceDef(text: 'Include emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI exactly how many options to compare and the structure you want to ensure clean separation.',
            assembledPromptExample:
                'Rewrite these scattered notes into a clear comparison of Option A vs. Option B using short, factual bullet points.',
          ),
        ),
        ScenarioDef(
          title: 'Turn mixed pros/cons into a clear evaluation list',
          situation:
              'Your content mixes benefits and drawbacks without order. You want a clean pros-and-cons list.',
          prompt:
              'Rewrite this content into two lists — "Pros" and "Cons" — with short, clear bullet points.',
          output:
              '**Pros**\n- Easy to use\n- Quick setup\n- Works well for small teams\n\n**Cons**\n- Limited customisation\n- Not ideal for large-scale projects\n- Higher cost for advanced features',
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
                  '**Pros** – Easy, fast setup, good for small teams\n**Cons** – Limited flexibility, costly at scale',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Pros**\n- Simple interface that requires minimal training\n- Fast setup suitable for quick deployments\n- Effective for smaller teams with straightforward needs\n**Cons**\n- Limited configuration options\n- Less suitable for large or complex projects\n- Advanced features require additional cost',
            ),
          ],
          proTip:
              'Define the structure you want so the AI separates benefits and drawbacks cleanly.',
          takeaway:
              'Pros-and-cons prompting works best when you tell the AI to categorise content explicitly.',
          task: TaskDef(
            goal: 'Rewrite mixed details into a clean pros-and-cons list.',
            pieces: [
              PromptPieceDef(text: 'Separate pros and cons', isCorrect: true),
              PromptPieceDef(text: 'Use bullet points', isCorrect: true),
              PromptPieceDef(text: 'Keep statements brief', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Add new pros', isCorrect: false),
              PromptPieceDef(text: 'Add new cons', isCorrect: false),
              PromptPieceDef(text: 'Change meanings', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to categorise content into two lists and keep each point crisp and factual.',
            assembledPromptExample:
                'Rewrite this mixed list into concise Pros and Cons bullet points without adding or removing information.',
          ),
        ),
        ScenarioDef(
          title: 'Turn option notes into a clear comparison matrix',
          situation:
              'You have rough notes describing several differences between Option 1 and Option 2.',
          prompt:
              'Rewrite these notes into a simple comparison matrix with short bullet points under each option.',
          output:
              '**Option 1**\n- Lower upfront cost\n- Faster deployment\n- Limited scalability\n\n**Option 2**\n- Higher initial investment\n- Longer setup time\n- Highly scalable',
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
                  '**Option 1** – Cheaper, fast, limited scale\n**Option 2** – Pricier, slower, very scalable',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Option 1**\n- Lower initial cost makes it ideal for quick adoption\n- Deployment is fast with minimal configuration\n- Scalability is limited, making it less suitable for long-term growth\n**Option 2**\n- Higher upfront investment but offers extended capabilities\n- Setup takes longer due to customisation\n- Highly scalable for larger operations',
            ),
          ],
          proTip:
              'Specify your preferred comparison format (e.g., matrix, bullets, headings) so the AI structures the evaluation accurately.',
          takeaway:
              'Clear structural prompts allow AI to transform unorganised notes into useful comparison tools.',
          task: TaskDef(
            goal: 'Rewrite rough option notes into a clean comparison matrix.',
            pieces: [
              PromptPieceDef(text: 'Separate options', isCorrect: true),
              PromptPieceDef(text: 'Use consistent format', isCorrect: true),
              PromptPieceDef(text: 'Maintain accuracy', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets brief', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Add new options', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to format the content into clearly separated sections to ensure readability.',
            assembledPromptExample:
                'Rewrite these rough notes into a structured Option 1 vs. Option 2 comparison using short bullet points.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Turn AI Output Into Simple Explanations',
      scenarios: const [
        ScenarioDef(
          title: 'Convert technical AI output into plain-language explanation',
          situation:
              "AI produced a technical explanation that your team won't understand. You want it rewritten simply.",
          prompt:
              "Rewrite this explanation in simple, plain language so non-technical readers can understand it.",
          output:
              "The system slowed down because several processes were running at the same time. Once the extra load stopped, performance returned to normal.",
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
                  'The system slowed because too many processes ran at once; it returned to normal when the load dropped.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The system slowed down because several processes were running at the same time, which caused temporary overload. Once the extra activity stopped, performance returned to normal.',
            ),
          ],
          proTip:
              'Specify "plain language" and "non-technical audience" to guide the AI toward clearer rewriting.',
          takeaway:
              'AI explanations become clearer when the target audience and tone requirements are defined explicitly.',
          task: TaskDef(
            goal: 'Turn technical explanations into simple explanations for non-experts.',
            pieces: [
              PromptPieceDef(text: 'Remove technical jargon', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning accurate', isCorrect: true),
              PromptPieceDef(text: 'Use simple language', isCorrect: true),
              PromptPieceDef(text: 'Keep sentences short', isCorrect: true),
              PromptPieceDef(text: 'Maintain neutral tone', isCorrect: true),
              PromptPieceDef(text: 'Add technical details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI the target audience and instruct it to simplify wording accordingly.',
            assembledPromptExample:
                'Rewrite this technical explanation into simple, plain language that a non-expert can understand without changing the meaning.',
          ),
        ),
        ScenarioDef(
          title: 'Turn multi-step AI output into a simple summary',
          situation:
              'AI gives a long multi-step explanation, but you need a brief summary.',
          prompt:
              'Rewrite this long explanation into a short summary of the main point.',
          output:
              'The issue happened because a configuration setting was incorrect, and updating it fixed the problem.',
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
                  'An incorrect setting caused the issue, and updating it fixed it.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  'The problem occurred because a configuration setting was incorrect. Once the setting was updated, the system began working normally again.',
            ),
          ],
          proTip:
              'Tell the AI to summarise the "main point only" so it removes secondary detail.',
          takeaway:
              'When summarising explanations, clear scope limits lead to clean output.',
          task: TaskDef(
            goal: 'Convert long AI reasoning into a short, clear summary.',
            pieces: [
              PromptPieceDef(text: 'Capture the main point', isCorrect: true),
              PromptPieceDef(text: 'Keep it short', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning accurate', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Preserve neutral tone', isCorrect: true),
              PromptPieceDef(text: 'Add explanation', isCorrect: false),
              PromptPieceDef(text: 'Expand content', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote:
                'State clearly that only the primary insight should be kept and all extra detail removed.',
            assembledPromptExample:
                'Rewrite this long explanation into a short summary that captures only the main point.',
          ),
        ),
        ScenarioDef(
          title: 'Turn advanced terminology into everyday language',
          situation: "AI output uses terms your team won't know.",
          prompt:
              'Rewrite this explanation in everyday language without changing meaning.',
          output:
              "The system couldn't finish the task because it ran out of available memory. After restarting, it had enough space to run normally again.",
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
                  "The system ran out of memory and couldn't finish; restarting freed space and fixed it.",
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  "The system couldn't finish the task because it ran out of available memory. After a restart cleared temporary files and freed up space, it was able to run normally again.",
            ),
          ],
          proTip:
              'Name the transformation ("everyday language") and restrict meaning changes to ensure clarity.',
          takeaway:
              'Converting technical language works best when meaning boundaries are clearly defined.',
          task: TaskDef(
            goal: 'Rewrite complex terms into everyday language.',
            pieces: [
              PromptPieceDef(text: 'Simplify terminology', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning accurate', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Keep sentences short', isCorrect: true),
              PromptPieceDef(text: 'Add new details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand unnecessarily', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to replace specialised words with everyday equivalents without shifting meaning.',
            assembledPromptExample:
                'Rewrite this explanation in everyday language so non-technical readers can understand it without losing the original meaning.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Turn Problems Into Clear Decision Criteria',
      scenarios: const [
        ScenarioDef(
          title: 'Turn vague concerns into specific decision criteria',
          situation:
              'Someone says "we need something better," but you need clear decision criteria.',
          prompt:
              'Rewrite this into a clear set of criteria that defines what "better" should mean.',
          output:
              '- Faster setup time\n- Lower long-term maintenance cost\n- Ability to scale for more users\n- Ease of training new team members',
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
                  'Faster setup, lower costs, scalable, easy to train on.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- Reduced setup time compared to the current solution\n- Lower long-term maintenance costs\n- Ability to scale to more users or workloads\n- Easy for new team members to learn quickly',
            ),
          ],
          proTip:
              'Specify that you want criteria, not a summary, so the AI outputs a structured list.',
          takeaway:
              'Defining the transformation ("turn into criteria") results in more usable decision inputs.',
          task: TaskDef(
            goal: 'Rewrite vague concerns into specific decision criteria.',
            pieces: [
              PromptPieceDef(text: 'Identify criteria', isCorrect: true),
              PromptPieceDef(text: 'Use bullet points', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets short', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add new needs', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to output the content as criteria rather than explanation to ensure clarity.',
            assembledPromptExample:
                'Rewrite this vague concern into a short list of decision criteria that define what "better" should mean.',
          ),
        ),
        ScenarioDef(
          title: 'Turn mixed priorities into ranked decision criteria',
          situation: 'Your team provided mixed, unordered priorities.',
          prompt:
              'Rewrite this into a ranked list of criteria with the most important items first.',
          output:
              '1. Reliability\n2. Ease of integration\n3. Cost\n4. Long-term scalability',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: '1. Reliability\n2. Integration ease\n3. Cost\n4. Scalability',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '1. Reliability — must function consistently with minimal downtime\n2. Ease of integration — should connect smoothly with existing tools\n3. Cost — must fit within the approved budget\n4. Scalability — should support future growth',
            ),
          ],
          proTip: 'Tell the AI to rank the criteria to avoid unordered lists.',
          takeaway: 'Adding order requirements improves decision-quality output.',
          task: TaskDef(
            goal: 'Turn unordered priorities into ranked criteria.',
            pieces: [
              PromptPieceDef(text: 'Rank criteria', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning', isCorrect: true),
              PromptPieceDef(text: 'Use a numbered list', isCorrect: true),
              PromptPieceDef(text: 'Maintain tone', isCorrect: true),
              PromptPieceDef(text: 'Keep list concise', isCorrect: true),
              PromptPieceDef(text: 'Add new criteria', isCorrect: false),
              PromptPieceDef(text: 'Change meanings', isCorrect: false),
              PromptPieceDef(text: 'Expand unnecessarily', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to order items by importance and keep all items from the original content.',
            assembledPromptExample:
                'Rewrite these mixed priorities into a ranked list of criteria ordered by importance.',
          ),
        ),
        ScenarioDef(
          title: 'Turn complaints into decision criteria',
          situation:
              'Someone complains "this tool is too confusing," but you need criteria for selecting alternatives.',
          prompt:
              'Rewrite this complaint into a list of decision criteria that describe what the replacement tool must do better.',
          output:
              '- Simple interface\n- Clear navigation\n- Easy setup\n- Helpful onboarding guidance',
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
                  'Simple UI, clear navigation, easy setup, good onboarding.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '- A simple, intuitive interface\n- Clear navigation with predictable layout\n- Easy setup requiring minimal steps\n- Helpful onboarding guidance for new users',
            ),
          ],
          proTip:
              'Define what the output must turn into ("criteria"), not just what it should avoid.',
          takeaway:
              'Specific transformation goals help the AI convert complaints into usable inputs.',
          task: TaskDef(
            goal: 'Turn complaints into clear decision criteria.',
            pieces: [
              PromptPieceDef(text: 'Identify implied criteria', isCorrect: true),
              PromptPieceDef(text: 'Use bullets', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Preserve tone', isCorrect: true),
              PromptPieceDef(text: 'Add new issues', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to extract the criteria implied by complaints and keep the structure simple.',
            assembledPromptExample:
                'Rewrite this complaint into a concise list of decision criteria describing what the new tool must improve.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Turn Scenarios Into Decision Paths',
      scenarios: const [
        ScenarioDef(
          title: 'Turn a scenario into clear decision paths',
          situation:
              'You have a scenario with several possible directions but no clarity.',
          prompt:
              'Rewrite this scenario into two clear decision paths: Path A and Path B. Keep each path short.',
          output:
              '**Path A – Move Forward Now**\n- Begin rollout immediately\n- Use existing resources\n- Accept short-term limitations\n\n**Path B – Delay and Improve**\n- Gather more data\n- Improve configuration\n- Launch next week with fewer risks',
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
                  '**Path A** – Roll out now using current resources.\n**Path B** – Delay, refine setup, launch next week.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Path A – Move Forward Now**\n- Proceed with immediate rollout using current resources\n- Accept short-term constraints in exchange for speed\n**Path B – Delay and Improve**\n- Collect additional data to reduce risks\n- Improve configurations before launching next week',
            ),
          ],
          proTip:
              'Tell the AI how many paths you want and how they should be labelled to ensure clarity.',
          takeaway:
              'Decision-path prompting works best with explicit structure instructions.',
          task: TaskDef(
            goal: 'Rewrite scenarios into clear decision paths.',
            pieces: [
              PromptPieceDef(text: 'Separate paths clearly', isCorrect: true),
              PromptPieceDef(text: 'Keep paths concise', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain structure', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add new paths', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI how many paths to create and require clear headings for each.',
            assembledPromptExample:
                'Rewrite this scenario into two short, clearly labelled decision paths: Path A and Path B.',
          ),
        ),
        ScenarioDef(
          title: 'Turn unstructured brainstorming into decision paths',
          situation: 'Your notes contain multiple mixed ideas and directions.',
          prompt:
              'Rewrite these ideas into a two-path decision structure with short bullet points under each.',
          output:
              '**Path A – Maintain Current Approach**\n- Keep existing workflow\n- Monitor KPIs weekly\n- Optimise small issues as needed\n\n**Path B – Adopt New Workflow**\n- Introduce updated process\n- Provide team training\n- Track impact over two weeks',
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
                  '**Path A** – Keep workflow; monitor KPIs.\n**Path B** – Adopt new process; train team.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Path A – Maintain Current Approach**\n- Continue using the existing workflow\n- Monitor KPIs weekly to spot early issues\n- Make small optimisations where necessary\n**Path B – Adopt New Workflow**\n- Switch to the revised process\n- Train the team on new steps\n- Track performance for the next two weeks',
            ),
          ],
          proTip:
              'State the decision-path structure early in your prompt so the AI organizes the content correctly.',
          takeaway:
              'Structured guidance produces cleaner multi-path decision outputs.',
          task: TaskDef(
            goal: 'Rewrite brainstorming into clear decision paths.',
            pieces: [
              PromptPieceDef(text: 'Identify two paths', isCorrect: true),
              PromptPieceDef(text: 'Use headings', isCorrect: true),
              PromptPieceDef(text: 'Keep meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain clarity', isCorrect: true),
              PromptPieceDef(text: 'Keep bullets short', isCorrect: true),
              PromptPieceDef(text: 'Add new options', isCorrect: false),
              PromptPieceDef(text: 'Add assumptions', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to convert mixed notes into a two-path structure with short supporting bullets.',
            assembledPromptExample:
                'Rewrite these brainstorming notes into two short, clearly labelled decision paths.',
          ),
        ),
        ScenarioDef(
          title: 'Turn conflicting advice into decision paths',
          situation: 'Stakeholders offer conflicting recommendations.',
          prompt:
              'Rewrite this conflicting input into two clear paths with short bullets for each.',
          output:
              '**Path A – Proceed Now**\n- Roll out current version\n- Collect feedback\n- Patch issues next sprint\n\n**Path B – Wait for Improvements**\n- Delay rollout\n- Fix known issues\n- Launch a more stable version',
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
                  '**Path A** – Roll out now; fix next sprint.\n**Path B** – Delay, fix issues first.',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Path A – Proceed Now**\n- Roll out the current version immediately\n- Collect early user feedback\n- Patch issues during the upcoming sprint\n**Path B – Wait for Improvements**\n- Delay the rollout\n- Address all known issues first\n- Launch a more polished and stable version',
            ),
          ],
          proTip:
              'Decide how many paths you want and instruct the AI to create them with labelled headings.',
          takeaway:
              'Clear structure converts conflicting advice into usable decision options.',
          task: TaskDef(
            goal: 'Turn conflicting recommendations into decision paths.',
            pieces: [
              PromptPieceDef(text: 'Separate paths', isCorrect: true),
              PromptPieceDef(text: 'Maintain meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep paths concise', isCorrect: true),
              PromptPieceDef(text: 'Use headings', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add new options', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Add recommendations', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to organise conflicting input into clearly labelled alternative paths.',
            assembledPromptExample:
                'Rewrite this conflicting input into two concise, labelled decision paths showing the available choices.',
          ),
        ),
      ],
    ),
    LessonDef(
      title: 'Turn Risks Into Clear Mitigation Options',
      scenarios: const [
        ScenarioDef(
          title: 'Turn a risk description into mitigation options',
          situation:
              'A risk is described vaguely and needs clearer mitigation paths.',
          prompt:
              'Rewrite this risk description into two short mitigation options with bullet points.',
          output:
              '**Option A – Reduce Likelihood**\n- Add automated monitoring\n- Increase testing frequency\n- Improve alerting rules\n\n**Option B – Reduce Impact**\n- Prepare rollback steps\n- Add backup capacity\n- Document recovery procedures',
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
                  '**A** – Monitoring, more tests, better alerts\n**B** – Rollback steps, backup, documented recovery',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Option A – Reduce Likelihood**\n- Add automated monitoring to detect issues early\n- Increase testing frequency to catch problems sooner\n- Improve alert rules for faster response\n**Option B – Reduce Impact**\n- Prepare clear rollback procedures\n- Add backup capacity to protect service availability\n- Document recovery steps to speed up restoration',
            ),
          ],
          proTip:
              'Tell the AI how many mitigation options you want and to separate them clearly.',
          takeaway:
              'Defining structure leads to clearer and more actionable risk outputs.',
          task: TaskDef(
            goal: 'Rewrite vague risks into clear mitigation options.',
            pieces: [
              PromptPieceDef(
                  text: 'Identify mitigation options', isCorrect: true),
              PromptPieceDef(text: 'Use clear headings', isCorrect: true),
              PromptPieceDef(text: 'Keep points short', isCorrect: true),
              PromptPieceDef(text: 'Maintain original meaning', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add new risks', isCorrect: false),
              PromptPieceDef(text: 'Add unrelated details', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to convert the risk into structured mitigation paths with concise bullets.',
            assembledPromptExample:
                'Rewrite this vague risk description into two concise mitigation options with clear headings.',
          ),
        ),
        ScenarioDef(
          title: 'Turn multiple risks into a simplified risk matrix',
          situation: 'You have several risks described in long paragraphs.',
          prompt:
              'Rewrite these risks into a simple matrix with "Risk," "Likelihood," and "Impact."',
          output:
              '**Risk 1**\n- Likelihood: Medium\n- Impact: High\n\n**Risk 2**\n- Likelihood: Low\n- Impact: Medium',
          refinements: [
            'Shorter',
            'More formal',
            'Friendlier',
            'Additional detail',
          ],
          variants: [
            ResponseVariant(
              label: 'Shorter',
              response: 'Risk 1 – M/H\nRisk 2 – L/M',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Risk 1**\n- Likelihood: Medium\n- Impact: High\n**Risk 2**\n- Likelihood: Low\n- Impact: Medium',
            ),
          ],
          proTip:
              'State the structure you want (matrix with defined fields) so the AI formats the risks correctly.',
          takeaway: 'Format-first prompting is essential for clean risk outputs.',
          task: TaskDef(
            goal: 'Rewrite multiple risks into a simple risk matrix.',
            pieces: [
              PromptPieceDef(text: 'Identify risks', isCorrect: true),
              PromptPieceDef(text: 'Use matrix format', isCorrect: true),
              PromptPieceDef(text: 'Include likelihood', isCorrect: true),
              PromptPieceDef(text: 'Include impact', isCorrect: true),
              PromptPieceDef(text: 'Keep tone neutral', isCorrect: true),
              PromptPieceDef(text: 'Add new risks', isCorrect: false),
              PromptPieceDef(text: 'Change likelihood values', isCorrect: false),
              PromptPieceDef(text: 'Change impact values', isCorrect: false),
              PromptPieceDef(text: 'Add emotional language', isCorrect: false),
              PromptPieceDef(text: 'Add explanations', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI exactly which fields must appear in the matrix and let it format the risks cleanly.',
            assembledPromptExample:
                'Rewrite these risk descriptions into a simple matrix listing each risk with its likelihood and impact.',
          ),
        ),
        ScenarioDef(
          title: 'Turn unclear concerns into risk statements with mitigation',
          situation: "You hear \"this might break later,\" but that's not useful.",
          prompt:
              'Rewrite this into a clear risk statement with one suggested mitigation.',
          output:
              '**Risk**\nThe new workflow may fail under heavy load.\n\n**Mitigation**\nAdd load testing before deployment.',
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
                  '**Risk** – May fail under load\n**Mitigation** – Add load testing',
            ),
            ResponseVariant(
              label: 'Additional detail',
              response:
                  '**Risk**\nThe workflow may fail under heavy load if traffic increases suddenly.\n**Mitigation**\nIntroduce load testing before deployment to identify weak points.',
            ),
          ],
          proTip:
              'Tell the AI you want both a risk and a mitigation, and require clear headings.',
          takeaway:
              'Explicit structure helps the AI convert vague concerns into actionable risk formats.',
          task: TaskDef(
            goal: 'Rewrite vague concerns into structured risk–mitigation pairs.',
            pieces: [
              PromptPieceDef(text: 'Identify risk', isCorrect: true),
              PromptPieceDef(text: 'Provide one mitigation', isCorrect: true),
              PromptPieceDef(text: 'Use clear headings', isCorrect: true),
              PromptPieceDef(text: 'Preserve meaning', isCorrect: true),
              PromptPieceDef(text: 'Maintain neutral tone', isCorrect: true),
              PromptPieceDef(text: 'Add multiple mitigations', isCorrect: false),
              PromptPieceDef(text: 'Add new risks', isCorrect: false),
              PromptPieceDef(text: 'Expand excessively', isCorrect: false),
              PromptPieceDef(text: 'Add emotional tone', isCorrect: false),
              PromptPieceDef(text: 'Change meaning', isCorrect: false),
            ],
            coachingNote:
                'Tell the AI to express the concern as a risk and provide one concise mitigation.',
            assembledPromptExample:
                'Rewrite this unclear concern into a clear risk statement with one concise mitigation.',
          ),
        ),
      ],
    ),
  ];
}

