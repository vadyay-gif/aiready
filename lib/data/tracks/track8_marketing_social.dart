import 'package:flutter/material.dart';
import '../app_catalog.dart';

const TrackDef track8MarketingSocial = TrackDef(
  title: "Marketing & Social with AI",
  icon: Icons.campaign_outlined,
  lessons: [
    // Lesson 1 — Idea generator
    LessonDef(
      title: "Idea generator",
      scenarios: [
        ScenarioDef(
          title: "Generate campaign ideas for a product launch",
          situation:
              "You are planning a product launch and need campaign ideas that can run across paid, owned, and earned channels with a clear message and a testable hook.",
          prompt:
              "Generate 6 campaign ideas: message, channel, hook, and quick test.",
          output:
              "- Message: save time every week\n- Channel: LinkedIn thought piece\n- Hook: 30-minute challenge\n- Test: run a 2-post series\n- Message: accuracy under pressure\n- Channel: customer story email\n- Hook: before/after metric\n- Test: A/B subject line",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "6 ideas with message, channel, hook, and a small test."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide six campaign ideas, each with a message, channel, hook, and a quick test plan."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Message: save an hour; Channel: LinkedIn; Hook: 30-minute challenge; Test: 2-post series. Repeat for 6 ideas."),
          ],
          proTip:
              "Ask for channel and test so ideas are actionable, not slogans.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: act as a campaign planner", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 6 ideas with message/channel/hook/test",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: keep hooks testable", isCorrect: true),
              PromptPieceDef(
                  text: "Input: product and audience", isCorrect: true),
              PromptPieceDef(
                  text: "Write generic taglines only", isCorrect: false),
              PromptPieceDef(
                  text: "Skip test plans to move faster", isCorrect: false),
            ],
            coachingNote: "Channel and tests push ideas toward execution.",
            assembledPromptExample:
                "As a campaign planner, return 6 ideas with message, channel, hook, and a quick test. Input: <product and audience>.",
          ),
          takeaway: "Ideas need channels and tests to ship.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Generate content themes for a quarter",
          situation:
              "You need content themes for a quarter that align with product priorities and sales motions across formats.",
          prompt:
              "Propose 5 content themes with audience, formats, and example topics.",
          output:
              "Themes (5):\n- Onboarding wins: audience PM/CS; formats: blog, webinar; topics: time-to-value\n- Accuracy at scale: Eng/Ops; case study, checklist; topics: quality bar\n- Team workflow: Managers; playbook, video; topics: handoffs\n- ROI snapshots: Execs; 1-pagers; topics: payback\n- Adoption playbook: Champions; guide; topics: rollout",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "5 themes; each with audience, formats, example topics."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide five themes including target audience, suitable formats, and example topics."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Onboarding wins (PM/CS): blog/webinar; time-to-value, setup. Accuracy at scale (Eng/Ops): case study/checklist; quality bar."),
          ],
          proTip: "Tie themes to audience and format to speed planning.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: plan quarterly content", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 5 themes with audience/formats/topics",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: align to product priorities",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: priorities and audiences", isCorrect: true),
              PromptPieceDef(
                  text: "List formats without audiences", isCorrect: false),
              PromptPieceDef(text: "Suggest random topics", isCorrect: false),
            ],
            coachingNote: "Audience-first planning keeps content relevant.",
            assembledPromptExample:
                "Plan 5 content themes with audience, formats, and topics aligned to priorities. Input: <priorities/audiences>.",
          ),
          takeaway: "Audience + format beats a list of random topics.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Brainstorm social angles for an event",
          situation:
              "You have an upcoming event. You need social angles that work before, during, and after with clear CTAs.",
          prompt:
              "Brainstorm 8 social angles: phase (pre/during/post), message, asset, CTA.",
          output:
              "Angles (8): phase, message, asset, CTA\nPre: speaker intro; headshot; RSVP\nDuring: live quote card; session clip; follow this thread\nPost: recap carousel; case study link; watch the replay",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "8 angles with phase, message, asset, CTA."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide eight social angles across pre/during/post phases including message, asset, and call to action."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Pre: speaker intro w/ headshot; CTA RSVP. During: quote card; CTA follow thread. Post: recap carousel; CTA watch replay."),
          ],
          proTip: "Add phase and asset to keep social angles concrete.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: social campaign planner", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 8 angles with phase/message/asset/CTA",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: cover pre/during/post", isCorrect: true),
              PromptPieceDef(
                  text: "Input: event details and date", isCorrect: true),
              PromptPieceDef(text: "Leave CTAs vague", isCorrect: false),
              PromptPieceDef(
                  text: "List angles without assets", isCorrect: false),
            ],
            coachingNote: "Phases and assets map ideas to content production.",
            assembledPromptExample:
                "List 8 social angles with phase, message, asset, and CTA covering pre/during/post. Input: <event details>.",
          ),
          takeaway: "Specify phase and asset so ideas become posts.",
          refinements: [],
        ),
      ],
    ),

    // Lesson 2 — Multi-platform posts
    LessonDef(
      title: "Multi-platform posts",
      scenarios: [
        ScenarioDef(
          title: "Adapt a product update for LinkedIn",
          situation:
              "You shipped a product update. You need a LinkedIn post that is professional and includes a value hook and a CTA.",
          prompt:
              "Write a LinkedIn post: 3-5 lines, value hook, 1 CTA, 2 hashtags.",
          output:
              "We just shipped easier report sharing. Teams cut prep time and share securely. Try the new share dialog and tell us what you think. #productupdate #workflows",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Shipped easier sharing. Cut prep time; share securely. Try it and give feedback. #productupdate #workflows"),
            ResponseVariant(
                label: "More formal",
                response:
                    "We released improvements to report sharing, reducing preparation time while improving security. Explore the new share dialog and share your feedback. #productupdate #workflows"),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "New: easier sharing. Less time prepping, safer links. Give it a spin and tell us how it feels. #productupdate #workflows"),
          ],
          proTip: "State the value hook early and keep the CTA simple.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write a LinkedIn post", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 3-5 lines with a value hook", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: one CTA and two hashtags",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: product update details", isCorrect: true),
              PromptPieceDef(
                  text: "Use 8 hashtags for reach", isCorrect: false),
              PromptPieceDef(
                  text: "Skip the CTA to avoid salesy tone", isCorrect: false),
            ],
            coachingNote:
                "Hooks and a single CTA drive engagement without clutter.",
            assembledPromptExample:
                "Write a LinkedIn post (3-5 lines) with a value hook, one CTA, and two hashtags. Input: <update details>.",
          ),
          takeaway: "Lead with value; use one clear CTA.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Adapt a product update for Twitter",
          situation:
              "You need a concise tweet thread for a product update with a hook and a link.",
          prompt: "Write a 1-3 tweet thread: hook, update, link, 2 hashtags.",
          output:
              "Hook: Ship faster, share safer. Update: new share dialog trims prep time and keeps links secure. Link: example.com/update #productupdate #workflows",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Ship faster, share safer. New share dialog trims prep time. example.com/update #productupdate #workflows"),
            ResponseVariant(
                label: "More formal",
                response:
                    "We improved report sharing to reduce preparation time and enhance link security. Learn more: example.com/update #productupdate #workflows"),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Hook: faster handoffs. Update: share dialog cuts 5 clicks. Link: example.com/update #productupdate #workflows"),
          ],
          proTip: "Put the hook first and keep the link visible.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write a tweet thread", isCorrect: true),
              PromptPieceDef(text: "Format: 1-3 tweets", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include a hook, link, 2 hashtags",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: update details and URL", isCorrect: true),
              PromptPieceDef(
                  text: "Hide the link to reduce clutter", isCorrect: false),
              PromptPieceDef(
                  text: "Use vague claims without a hook", isCorrect: false),
            ],
            coachingNote: "Hook + link is the backbone of an update thread.",
            assembledPromptExample:
                "Write a 1-3 tweet thread with a hook, update details, link, and two hashtags. Input: <details/URL>.",
          ),
          takeaway: "Hook + link gets the click.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Adapt a product update for Instagram",
          situation:
              "You need an Instagram post with a visual and a short caption plus hashtags.",
          prompt:
              "Write an Instagram caption: 2-3 lines, value hook, CTA, 3 hashtags.",
          output:
              "New: easier sharing. Save prep time and keep links safe. Try it today and tag us with your feedback. #productupdate #teamworkflow #saferlinks",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Easier sharing. Less prep, safer links. Try it and tag us. #productupdate #teamworkflow #saferlinks"),
            ResponseVariant(
                label: "More formal",
                response:
                    "We released improvements to sharing that reduce preparation time and improve link safety. Try it and tag us. #productupdate #teamworkflow #saferlinks"),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "We made sharing simpler. More time back, safer links. Give it a try and tag us. #productupdate #teamworkflow #saferlinks"),
          ],
          proTip: "Pair a clear visual with a short caption and one CTA.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write an Instagram caption", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 2-3 lines with a value hook", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: 1 CTA and 3 hashtags", isCorrect: true),
              PromptPieceDef(
                  text: "Input: update and visual concept", isCorrect: true),
              PromptPieceDef(
                  text: "Use 10 hashtags for reach", isCorrect: false),
              PromptPieceDef(
                  text: "Skip a CTA to avoid asking", isCorrect: false),
            ],
            coachingNote:
                "Short captions paired with visuals drive comprehension.",
            assembledPromptExample:
                "Write a 2-3 line Instagram caption with a value hook, one CTA, and three hashtags. Input: <update/visual>.",
          ),
          takeaway: "Short, visual, and one CTA wins on Instagram.",
          refinements: [],
        ),
      ],
    ),

    // Lesson 3 — Landing copy
    LessonDef(
      title: "Landing copy",
      scenarios: [
        ScenarioDef(
          title: "Write a homepage hero line",
          situation:
              "You need a clear, specific homepage hero line that states the value and who it is for, with a short subhead.",
          prompt:
              "Write a hero line and subhead: who it is for, value, and one metric.",
          output:
              "Hero: Ship clearer reports in minutes\nSubhead: For ops teams who want less prep and fewer edits; customers report 30% faster approvals",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "Hero + subhead; name the audience and a metric."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide a concise hero and subhead specifying the audience, value, and one quantitative metric."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Hero and a plain-language subhead with who it is for and one number."),
          ],
          proTip: "Name the audience and one number to anchor value.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write homepage copy", isCorrect: true),
              PromptPieceDef(text: "Format: hero + subhead", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include audience and metric",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: value proposition and audience",
                  isCorrect: true),
              PromptPieceDef(text: "Use vague superlatives", isCorrect: false),
              PromptPieceDef(text: "Omit who it is for", isCorrect: false),
            ],
            coachingNote: "Audience and numbers make homepages credible.",
            assembledPromptExample:
                "Write a hero and subhead that name the audience and include one metric. Input: <value prop/audience>.",
          ),
          takeaway: "Specify audience and a number in the hero.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Write a product feature paragraph",
          situation:
              "You need a short paragraph that explains a feature in plain terms with one example and a benefit.",
          prompt:
              "Write a 3-4 sentence feature paragraph: what it does, how, benefit, one example.",
          output:
              "The share dialog lets you send read-only links with expiring access. You can add a note and restrict by domain. Teams ship reviews faster and reduce errors. Example: weekly ops digest shared to vendors for 48 hours.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "What it does, how, benefit, one example in 2-3 sentences."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide a concise paragraph describing function, mechanism, benefit, and a brief example."),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Include a concrete case (e.g., weekly digest with 48-hour access) while keeping the paragraph tight."),
          ],
          proTip: "Ask for function, mechanism, benefit, and an example.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(text: "Role: write product copy", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 3-4 sentence paragraph", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include example and benefit",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: feature name and function", isCorrect: true),
              PromptPieceDef(
                  text: "Use buzzwords instead of examples", isCorrect: false),
              PromptPieceDef(
                  text: "Skip the benefit to keep it short", isCorrect: false),
            ],
            coachingNote: "Mechanism + benefit + example keeps copy grounded.",
            assembledPromptExample:
                "Write a 3-4 sentence feature paragraph with function, how it works, benefit, and one example. Input: <feature details>.",
          ),
          takeaway: "Mechanism + benefit + example beats buzzwords.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Write a signup call-to-action",
          situation:
              "You need a signup CTA that is clear and reduces friction, with helper text on what happens next.",
          prompt:
              "Write a signup CTA line and helper text (what happens next).",
          output:
              "CTA: Start your 14-day trial\nHelper: No credit card; cancel anytime; set up in under 2 minutes",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "CTA + helper: free 14-day trial; no card; under 2 minutes."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide a clear signup call to action and helper text noting trial length, no credit card requirement, and setup time."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Start a free 14-day trial. No card, cancel anytime, and you will be set up in under 2 minutes."),
          ],
          proTip: "State trial terms and setup time to reduce hesitation.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(text: "Role: write a signup CTA", isCorrect: true),
              PromptPieceDef(
                  text: "Format: CTA line + helper text", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include trial, card, setup time",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: trial policy and setup steps", isCorrect: true),
              PromptPieceDef(text: "Hide trial limitations", isCorrect: false),
              PromptPieceDef(text: "Exclude helper text", isCorrect: false),
            ],
            coachingNote: "Transparent terms improve conversions and trust.",
            assembledPromptExample:
                "Write a signup CTA and helper text including trial length, credit card requirement, and setup time. Input: <trial/setup>.",
          ),
          takeaway: "Transparency in CTAs increases conversions.",
          refinements: [],
        ),
      ],
    ),

    // Lesson 4 — Email campaigns
    LessonDef(
      title: "Email campaigns",
      scenarios: [
        ScenarioDef(
          title: "Write a welcome email",
          situation:
              "A user just signed up. You need a short welcome email with value, first step, and a link to docs.",
          prompt:
              "Write a welcome email: value, first step, docs link; under 120 words.",
          output:
              "Subject: Welcome to Acme\nThanks for signing up. Start by connecting your data (Settings > Connections). You will get value fastest by running the sample project. Docs: example.com/docs/start.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Welcome to Acme. Connect data in Settings. Run the sample project next. Docs: example.com/docs/start."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Welcome to Acme. Begin by connecting data in Settings > Connections, then run the sample project. Documentation: example.com/docs/start."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Welcome! Connect your data in Settings, then try the sample project. Here is the quick start: example.com/docs/start."),
          ],
          proTip: "Give one first step and one link to reduce choice.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write lifecycle email", isCorrect: true),
              PromptPieceDef(
                  text: "Format: subject + short body", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: one first step and one link",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: product quick-start", isCorrect: true),
              PromptPieceDef(
                  text: "Add multiple links for completeness",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Avoid a clear first step", isCorrect: false),
            ],
            coachingNote: "Single steps increase activation.",
            assembledPromptExample:
                "Write a welcome email with subject and short body, one first step, and one link. Input: <quick-start>.",
          ),
          takeaway: "One step, one link increases follow-through.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Write a product launch email",
          situation:
              "You launched a feature. You need a product email with value, 3 bullets, and a CTA.",
          prompt:
              "Write a launch email: value, 3 bullets (features/benefits), CTA with link.",
          output:
              "Subject: New easier sharing\nWe made sharing faster and safer. Highlights:\n- Expiring links\n- Domain restrictions\n- Notes on share\nTry it today: example.com/update",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "New: easier sharing. Expiring links; domain restrictions; notes on share. Try it: example.com/update"),
            ResponseVariant(
                label: "More formal",
                response:
                    "We released improvements to sharing: expiring links, domain restrictions, and share notes. Learn more and try it: example.com/update"),
            ResponseVariant(
                label: "Add examples",
                response:
                    "Launch: easier sharing. Highlights: expiring links (48h), domain restrictions (company.com), share notes. Try now: example.com/update"),
          ],
          proTip: "Use bullets to keep launches scannable.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write a product launch email", isCorrect: true),
              PromptPieceDef(
                  text: "Format: subject + value + 3 bullets + CTA",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: keep bullets to one line",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: feature highlights and link", isCorrect: true),
              PromptPieceDef(text: "Add long paragraphs", isCorrect: false),
              PromptPieceDef(
                  text: "Hide the link to avoid spam filters",
                  isCorrect: false),
            ],
            coachingNote: "Bullets + CTA drive skim-to-click.",
            assembledPromptExample:
                "Write a product launch email with subject, value, 3 one-line bullets, and a CTA link. Input: <highlights/link>.",
          ),
          takeaway: "Bullets and a clear link drive action.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Write a re-engagement email",
          situation:
              "Some users went inactive. You need a short email with value, an incentive, and a single CTA.",
          prompt:
              "Write a re-engagement email: value, incentive, one CTA, one link.",
          output:
              "Subject: Come back to faster reporting\nWe added easier sharing and templates. Try a new report this week and reply with feedback. Start here: example.com/return",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "We added easier sharing and templates. Try a new report and tell us how it goes: example.com/return"),
            ResponseVariant(
                label: "More formal",
                response:
                    "We introduced easier sharing and templates. Try a new report this week and share feedback: example.com/return"),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "We have easier sharing and fresh templates. Give it another go and tell us how it feels: example.com/return"),
          ],
          proTip: "Keep one ask and one link to reduce friction.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write a re-engagement email", isCorrect: true),
              PromptPieceDef(
                  text: "Format: subject + short body", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: one CTA and one link", isCorrect: true),
              PromptPieceDef(
                  text: "Input: recent improvements and landing link",
                  isCorrect: true),
              PromptPieceDef(text: "Include multiple asks", isCorrect: false),
              PromptPieceDef(
                  text: "Add three different links", isCorrect: false),
            ],
            coachingNote: "Single asks improve conversion on re-engagement.",
            assembledPromptExample:
                "Write a re-engagement email with subject and short body, one CTA, and one link. Input: <improvements/link>.",
          ),
          takeaway: "One ask, one link is best for inactive users.",
          refinements: [],
        ),
      ],
    ),

    // Lesson 5 — Social engagement
    LessonDef(
      title: "Social engagement",
      scenarios: [
        ScenarioDef(
          title: "Draft a poll question for LinkedIn",
          situation:
              "You want to run a simple LinkedIn poll to learn about workflow pain points.",
          prompt: "Draft a poll: question + 4 options, actionable and neutral.",
          output:
              "Question: What slows your weekly reporting most?\nOptions: data cleanup; approvals; tool-switching; unclear requests",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Poll: What slows weekly reporting? Options: cleanup; approvals; switches; unclear asks."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide a neutral poll question with four actionable options about reporting bottlenecks."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Quick poll: where do you lose time? Data cleanup, approvals, switching tools, or unclear asks?"),
          ],
          proTip: "Keep the question neutral and the options actionable.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: draft a LinkedIn poll", isCorrect: true),
              PromptPieceDef(
                  text: "Format: question + 4 options", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: neutral wording, actionable options",
                  isCorrect: true),
              PromptPieceDef(text: "Input: topic and goal", isCorrect: true),
              PromptPieceDef(
                  text: "Use leading wording to bias results",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Add 10 options for completeness", isCorrect: false),
            ],
            coachingNote: "Neutral, actionable polls get better signal.",
            assembledPromptExample:
                "Draft a LinkedIn poll: one neutral question and four actionable options. Topic/goal: <topic/goal>.",
          ),
          takeaway: "Neutral questions yield better data.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Draft a short video caption for Instagram",
          situation:
              "You have a 10-second product clip. You need a short caption with a hook, one CTA, and hashtags.",
          prompt: "Write a short caption: hook, point, CTA, 3 hashtags.",
          output:
              "Hook: 10 seconds to share smarter. Point: see the new dialog. CTA: try it today. #productupdate #teamworkflow #saferlinks",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "10s to share smarter. See the new dialog. Try it today. #productupdate #teamworkflow #saferlinks"),
            ResponseVariant(
                label: "More formal",
                response:
                    "A brief product clip highlighting the new share dialog. Try it today. #productupdate #teamworkflow #saferlinks"),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "A quick 10s peek at easier sharing. Give it a try today. #productupdate #teamworkflow #saferlinks"),
          ],
          proTip: "Use one hook and one CTA; keep it short.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write an IG video caption", isCorrect: true),
              PromptPieceDef(
                  text: "Format: hook + point + CTA + 3 hashtags",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: under 25 words", isCorrect: true),
              PromptPieceDef(
                  text: "Input: clip content and update", isCorrect: true),
              PromptPieceDef(
                  text: "Use multiple CTAs to boost action", isCorrect: false),
              PromptPieceDef(
                  text: "Skip hashtags to save space", isCorrect: false),
            ],
            coachingNote: "Short clips need short captions and a single ask.",
            assembledPromptExample:
                "Write a short IG caption with a hook, point, one CTA, and 3 hashtags, under 25 words. Input: <clip/update>.",
          ),
          takeaway: "Short, single CTA captions work best for clips.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Draft a reply to a customer comment",
          situation:
              "A customer commented about a bug under your update post. You need a helpful, professional reply.",
          prompt:
              "Draft a reply: acknowledge, empathize, next step, link to fix or support.",
          output:
              "Thanks for flagging this. Sorry for the trouble. Please update to 1.2.4; if it persists, send a note to support@example.com and we will help right away.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Thanks for flagging. Update to 1.2.4. If it persists, email support@example.com and we will help."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Thank you for reporting this issue. Please update to version 1.2.4. If the problem continues, contact support@example.com and we will assist promptly."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Appreciate the heads-up. Try updating to 1.2.4. If it is still off, ping support@example.com and we will jump on it."),
          ],
          proTip: "Acknowledge, empathize, and give a concrete next step.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write a social reply", isCorrect: true),
              PromptPieceDef(
                  text: "Format: acknowledge + empathize + next step + link",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include version or contact",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: the customer's comment", isCorrect: true),
              PromptPieceDef(
                  text: "Deflect without offering help", isCorrect: false),
              PromptPieceDef(text: "Use defensive tone", isCorrect: false),
            ],
            coachingNote:
                "Empathy plus a clear step turns complaints into trust.",
            assembledPromptExample:
                "Write a professional reply that acknowledges, empathizes, gives a next step, and includes a link/version. Input: <comment>.",
          ),
          takeaway: "Empathy + a clear next step builds trust in public.",
          refinements: [],
        ),
      ],
    ),
  ],
);
