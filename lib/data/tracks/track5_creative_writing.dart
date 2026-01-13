import 'package:flutter/material.dart';
import '../app_catalog.dart';

const TrackDef track5CreativeWriting = TrackDef(
  title: "Creative Writing",
  icon: Icons.edit_outlined,
  lessons: [
    LessonDef(
      title: "Story Development",
      scenarios: [
        ScenarioDef(
          title: "Outline a short story",
          situation:
              "You have a premise and want a clean outline you can draft today.",
          prompt:
              "Create a 5-beat outline for a 1,200-word short story from a given premise.",
          output:
              "1) Hook: everyday routine disrupted\n2) Setup: goal, stakes, constraint\n3) Midpoint shift: new information flips plan\n4) Crisis choice: cost vs values\n5) Resolution: decisive action and echo of theme",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Hook; Setup; Midpoint twist; Crisis choice; Resolution echo."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Opening disruption; exposition of goal, stakes, and constraint; midpoint reversal; climactic decision; resolved outcome reinforcing theme."),
            ResponseVariant(
                label: "More vivid",
                response:
                    "A crack in routine; pressure builds; the ground shifts; a costly choice; a clear, earned ending that echoes the theme."),
          ],
          proTip:
              "Give role, format, and constraints so the outline is focused and usable.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: act as a story editor", isCorrect: true),
              PromptPieceDef(
                  text: "Format: return 5 bullet beats", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: aim for 1,200 words in draft",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Include my premise: <premise>", isCorrect: true),
              PromptPieceDef(
                  text: "Just be creative without structure", isCorrect: false),
              PromptPieceDef(
                  text: "Ignore my premise and surprise me", isCorrect: false),
            ],
            coachingNote:
                "Role, format, and constraints narrow scope. Pointing at the input premise keeps the outline relevant.",
            assembledPromptExample:
                "Act as a story editor. Create a 5 bullet beat outline for a 1,200-word short story. Use my premise: <premise>.",
          ),
          takeaway:
              "Structure beats adjectives; give role, format, and constraints.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Brainstorm plot twists",
          situation:
              "Your middle sagged in the last draft. You want twist options that feel earned.",
          prompt:
              "Brainstorm 6 plausible plot twists that arise from character goals and established facts.",
          output:
              "- Ally is the leak to protect a sibling\n- Antagonist solves a problem first, forcing a new plan\n- Hidden cost to the win surfaces at the worst time\n- The helpful rule has a clause that blocks progress\n- Protagonist misreads a symbol; correction flips stakes\n- Success exposes the real villain behind the scenes",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Ally leak; antagonist solves first; hidden cost; rule clause; misread clue; new villain."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Trusted ally is compromised; rival preempts the solution; victory entails an unforeseen cost; a rule exception impedes progress; a misinterpreted signal reverses stakes; the true antagonist is revealed."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "A good friend slips up, the rival beats them to it, the win has a catch, a small rule trips them, they misread a sign, and the real baddie steps out."),
          ],
          proTip:
              "Tie twists to character goals and earlier setup so they feel earned.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: act as a developmental editor", isCorrect: true),
              PromptPieceDef(
                  text: "Format: list 6 twist ideas as bullets",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: each twist must arise from goals or facts",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: summarize goals and key facts",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Just give random surprising events", isCorrect: false),
              PromptPieceDef(
                  text: "Skip reading any prior setup", isCorrect: false),
            ],
            coachingNote:
                "When the model knows goals, facts, and the format, twists feel organic instead of random.",
            assembledPromptExample:
                "Act as a developmental editor. List 6 twist ideas as bullets that arise from goals or established facts. Use: <goals and key facts>.",
          ),
          takeaway: "Twists land when they emerge from goals and setup.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Turn premise into 3-act structure",
          situation:
              "You have a single-sentence premise and need a simple 3-act breakdown.",
          prompt:
              "From a premise, outline Acts I, II, III with goal, obstacle, and turning points.",
          output:
              "Act I: status quo, inciting incident, clear external goal\nAct II: rising complications, midpoint reversal, stakes escalate\nAct III: decisive choice, climax that resolves goal, short denouement",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Act I: setup + goal. Act II: complications + reversal. Act III: choice, climax, denouement."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Act I establishes goal after the inciting incident; Act II compounds obstacles and includes a midpoint reversal; Act III resolves through a decisive choice, climax, and brief denouement."),
            ResponseVariant(
                label: "More vivid",
                response:
                    "Act I lights the fuse; Act II tightens the screws; Act III forces the choice and pays it off."),
          ],
          proTip:
              "Specify acts, turning points, and what each act must accomplish.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: story structure coach", isCorrect: true),
              PromptPieceDef(
                  text: "Format: Acts I, II, III with bullets",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include inciting, midpoint, climax",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: my one-sentence premise", isCorrect: true),
              PromptPieceDef(
                  text: "Describe theme at length", isCorrect: false),
              PromptPieceDef(
                  text: "Ignore turning points to keep it loose",
                  isCorrect: false),
            ],
            coachingNote:
                "Clear act labels and named turning points make the outline actionable for drafting.",
            assembledPromptExample:
                "Be a story structure coach. Outline Acts I, II, III as bullets including inciting, midpoint, and climax. Use my premise: <premise>.",
          ),
          takeaway: "Name acts and turns to guide the draft.",
          refinements: [],
        ),
      ],
    ),
    LessonDef(
      title: "Character Creation",
      scenarios: [
        ScenarioDef(
          title: "Create a protagonist profile",
          situation:
              "You want a concise, usable character sheet to anchor scenes.",
          prompt:
              "Create a protagonist profile with name, role, want, fear, flaw, and change.",
          output:
              "Name: Sam Ortega\nRole: junior reporter who wants a breakout story\nWant: prove value to stay on staff\nFear: being exposed as unprepared\nFlaw: cuts corners under pressure\nChange: learns to ask for help and verify",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Sam Ortega, junior reporter; wants a breakout; fears being exposed; flaw: corner-cutting; change: ask for help and verify."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Protagonist: Sam Ortega, junior reporter seeking a breakout assignment; fear of being revealed as unprepared; flaw in cutting corners; growth through collaboration and verification."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Sam is a hungry junior reporter who wants that big break, worries about being found out, rushes when stressed, and learns to slow down and get help."),
          ],
          proTip:
              "Ask for specific fields so the profile is consistent across scenes.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: act as a character designer", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: fields for name, role, want, fear, flaw, change",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: keep under 120 words", isCorrect: true),
              PromptPieceDef(text: "Voice: neutral, clear", isCorrect: true),
              PromptPieceDef(text: "Tell a long backstory", isCorrect: false),
              PromptPieceDef(
                  text: "Omit the change arc for brevity", isCorrect: false),
            ],
            coachingNote:
                "Fielded outputs and a word limit keep profiles concise and comparable.",
            assembledPromptExample:
                "Act as a character designer. Return fields: name, role, want, fear, flaw, change. Keep under 120 words.",
          ),
          takeaway:
              "Fielded prompts yield consistent, reusable character data.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Antagonist with believable motive",
          situation:
              "Your antagonist feels flat; you want motives tied to stakes and worldview.",
          prompt:
              "Define an antagonist with goal, pressure, worldview, and a motive that collides with the protagonist.",
          output:
              "Name: Dana Kincaid\nGoal: secure funding by any means\nPressure: board demands a turnaround in 90 days\nWorldview: outcomes justify tactics\nMotive vs Protagonist: blocks Sam to control the story and protect a risky deal",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Dana Kincaid wants funding; under 90-day pressure; believes ends justify tactics; blocks Sam to protect a deal."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Dana Kincaid seeks financing under a 90-day mandate; instrumental worldview; motive conflicts with Sam by suppressing the story to secure a deal."),
            ResponseVariant(
                label: "More vivid",
                response:
                    "Dana races a 90-day clock, plays hard to win cash, and keeps Sam off the story to save a fragile deal."),
          ],
          proTip:
              "Anchor motives in pressures and worldview to avoid caricature.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: craft believable antagonists", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: fields for goal, pressure, worldview, motive vs protagonist",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: align motive with stakes",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: brief on protagonist and stakes",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Focus on villain aesthetics", isCorrect: false),
              PromptPieceDef(
                  text: "Leave motive vague to keep options open",
                  isCorrect: false),
            ],
            coachingNote:
                "When pressure and worldview are explicit, motives make sense and drive conflict.",
            assembledPromptExample:
                "Craft an antagonist with goal, pressure, worldview, and motive vs protagonist. Use this protagonist and stakes: <brief>.",
          ),
          takeaway: "Pressure plus worldview creates motive that drives plot.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Cast of supporting characters",
          situation:
              "You need 3 useful supporting roles that advance plot and reveal the lead.",
          prompt:
              "Create three supporting characters with role, function in plot, and one revealing detail.",
          output:
              "- Mentor: retired copy editor; function: ethical compass; detail: keeps a folder of retractions\n- Confidant: barista; function: sounding board; detail: indexes neighborhood rumors\n- Foil: new intern; function: mirrors bad habits; detail: records every interview meticulously",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Mentor (ethical compass), Confidant (sounding board), Foil (mirrors flaws) with one vivid detail each."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide three roles (mentor, confidant, foil) with plot function and a single revealing detail."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "A steady mentor, a chatty confidant, and a sharp foil, each with one detail that matters on the page."),
          ],
          proTip:
              "Define function in plot so side characters earn their space.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: assemble a supporting cast", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 3 entries with role, function, detail",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: one line per character", isCorrect: true),
              PromptPieceDef(
                  text: "Voice: concise and concrete", isCorrect: true),
              PromptPieceDef(text: "Add full backstories", isCorrect: false),
              PromptPieceDef(
                  text: "Focus on quirky names over function",
                  isCorrect: false),
            ],
            coachingNote:
                "Role, function, and one detail create memorable side characters without slowing the draft.",
            assembledPromptExample:
                "Create 3 supporting characters. For each, give role, function in plot, and one revealing detail. Keep one line each.",
          ),
          takeaway:
              "Specify function and a detail to make side characters useful.",
          refinements: [],
        ),
      ],
    ),
    LessonDef(
      title: "Dialogue Writing",
      scenarios: [
        ScenarioDef(
          title: "Natural conversation (two colleagues disagree)",
          situation:
              "Two colleagues debate a launch date; keep it natural and specific.",
          prompt:
              "Write 10-12 lines of dialogue where two colleagues disagree about a launch date without grandstanding.",
          output:
              "A: We can hit May 30 if QA holds.\nB: QA found three regressions yesterday.\nA: Two are cosmetic.\nB: The third blocks SSO.\nA: We can hotfix that by Tuesday.\nB: Then docs slip.\nA: I can draft the FAQ today.\nB: Support still needs a runbook.\nA: Okay, June 6?\nB: June 6 with a beta to five customers on May 30.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Keep 8 lines; crisp workplace talk; end with a compromise date."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Professional tone, 10 lines, each line advances the negotiation toward a revised date."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Warm tone, a touch of humor, still converging on a realistic date."),
          ],
          proTip:
              "Limit line count and require each line to move the negotiation forward.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write workplace dialogue", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 10-12 lines labeled A/B", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: each line advances the decision",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: dispute is about launch date and blockers",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Be dramatic and add monologues", isCorrect: false),
              PromptPieceDef(
                  text: "Skip mentioning specific blockers", isCorrect: false),
            ],
            coachingNote:
                "Clear format and constraints keep dialogue tight and purposeful.",
            assembledPromptExample:
                "Write workplace dialogue (A/B), 10-12 lines. Each line advances a decision about launch date vs blockers.",
          ),
          takeaway: "Cap lines and require progress to avoid meandering talk.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Subtext-heavy scene (friends hiding news)",
          situation:
              "Two friends meet; one hides bad news; show subtext with what is not said.",
          prompt:
              "Write 12 lines where subtext reveals hidden bad news without naming it.",
          output:
              "J: You made it early.\nK: Traffic was nothing today.\nJ: Lucky.\nK: I parked by the exit.\nJ: Coffee?\nK: Maybe tea.\nJ: You always get coffee.\nK: Tea sits lighter.\nJ: You talked to them.\nK: I read the email twice.\nJ: Okay.\nK: The tea is fine.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "8-10 lines, clipped replies, the news implied but unnamed."),
            ResponseVariant(
                label: "More formal",
                response:
                    "12 lines, restrained tone; subtext via mismatched answers and habits changed."),
            ResponseVariant(
                label: "More vivid",
                response:
                    "12 lines with small physical beats (cup, door, gaze) to carry subtext."),
          ],
          proTip: "Use mismatched answers and small actions to carry subtext.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write subtext-driven dialogue", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 12 lines labeled by speaker", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: never name the news", isCorrect: true),
              PromptPieceDef(
                  text: "Technique: use mismatched answers and small actions",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Explain the news in narration", isCorrect: false),
              PromptPieceDef(
                  text: "Add a direct confession in line 1", isCorrect: false),
            ],
            coachingNote:
                "Subtext emerges when behavior and mismatched replies replace exposition.",
            assembledPromptExample:
                "Write subtext-driven dialogue, 12 lines with speaker labels. Never name the news. Use mismatched answers and small actions.",
          ),
          takeaway: "Hide the fact; show the behavior.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Exposition through dialogue (onboarding a new hire)",
          situation:
              "A manager onboards a new hire; explain systems without dumping.",
          prompt:
              "Write a short dialogue where a manager orients a new hire using Q&A and examples.",
          output:
              "Mgr: You will file notes in Drive under Client/Year.\nNew: Where are templates?\nMgr: In Templates > Kickoff.\nNew: Who approves budgets?\nMgr: PM signs; Finance checks over 5k.\nNew: How do we flag risk?\nMgr: Tag the doc and post a summary in #ops-risk.\nNew: Okay, I will start with Acme and share by 4.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "Keep 8 lines, Q&A only, clear nouns and verbs."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Professional tone; concise Q&A; avoid jargon; include one example."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Warm, simple language; one reassurance; still concrete instructions."),
          ],
          proTip:
              "Use Q&A to pace exposition and anchor it to specific actions.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: write onboarding dialogue", isCorrect: true),
              PromptPieceDef(
                  text: "Format: brief Q&A with speaker labels",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: concrete nouns/verbs and one example",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: list of systems and policies", isCorrect: true),
              PromptPieceDef(
                  text: "Add lore unrelated to the job", isCorrect: false),
              PromptPieceDef(
                  text: "Avoid examples to keep it short", isCorrect: false),
            ],
            coachingNote:
                "Q&A with examples delivers useful exposition without walls of text.",
            assembledPromptExample:
                "Write onboarding dialogue as brief Q&A with labels. Use concrete nouns/verbs and one example. Input: <systems and policies>.",
          ),
          takeaway:
              "Exposition works when tied to actions the character will take.",
          refinements: [],
        ),
      ],
    ),
    LessonDef(
      title: "Plot Structure",
      scenarios: [
        ScenarioDef(
          title: "Setting bible (near-future city)",
          situation:
              "You need a compact setting reference for consistent scenes.",
          prompt:
              "Create a 6-line setting bible for a near-future city: economy, transport, energy, security, climate, daily life.",
          output:
              "Economy: startups + automation; union pushback\nTransport: electric buses; drone corridors\nEnergy: rooftop solar + district batteries\nSecurity: cameras at transit; warrants for data pulls\nClimate: heat waves; flood sirens on the coast\nDaily life: delivery pods; curb gardens",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response: "6 bullets, noun-first phrases, one detail each."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Six concise entries specifying economy, transport, energy, security, climate, and daily life with one detail each."),
            ResponseVariant(
                label: "More vivid",
                response:
                    "Punchy, sensory bullets that still stay specific and usable."),
          ],
          proTip:
              "Define fixed slots so the world stays consistent across chapters.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(
                  text: "Role: act as a setting designer", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 6 bullets with named slots", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: one concrete detail per bullet",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: notes about the city", isCorrect: true),
              PromptPieceDef(
                  text: "Write a full travel guide", isCorrect: false),
              PromptPieceDef(
                  text: "Leave slots flexible each time", isCorrect: false),
            ],
            coachingNote:
                "Fixed slots and concrete details prevent drift and keep scenes aligned.",
            assembledPromptExample:
                "As a setting designer, write 6 bullets (economy, transport, energy, security, climate, daily life) with one concrete detail each. Use my notes: <city notes>.",
          ),
          takeaway: "Slots + details keep world-building consistent and brief.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Rules of magic/tech",
          situation:
              "You are defining limits so power creates plot, not shortcuts.",
          prompt:
              "List rules for a magic or advanced tech system: capabilities, costs, limits, and failure modes.",
          output:
              "Capabilities: point-to-point jumps under 5km\nCosts: battery drain scales with mass\nLimits: line-of-sight required; metal shielding blocks\nFailure: misjump sends cargo 10m off; burns out coils\nAccess: licensed operators only\nCountermeasures: fog generators; decoy beacons",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "6 bullets: capabilities, costs, limits, failure, access, countermeasures."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide six rule categories with succinct constraints and examples."),
            ResponseVariant(
                label: "More vivid",
                response:
                    "Sharper, example-backed bullets that hint at scenes and stakes."),
          ],
          proTip: "Name costs and limits so tension survives powerful systems.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(text: "Role: system designer", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Format: 6 bullets for capabilities, costs, limits, failures, access, counters",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: include one concrete example",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: premise and constraints", isCorrect: true),
              PromptPieceDef(
                  text: "Allow unlimited, consequence-free power",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Leave rules implicit to keep mystery",
                  isCorrect: false),
            ],
            coachingNote:
                "Explicit costs and limits turn power into choices that drive plot.",
            assembledPromptExample:
                "Design a system with 6 bullets: capabilities, costs, limits, failures, access, counters. Include one example. Input: <premise and constraints>.",
          ),
          takeaway: "Constraints make powers interesting on the page.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Cultural snapshot (traditions, slang, taboos)",
          situation:
              "You need culture notes that show up in behavior and talk.",
          prompt:
              "Write 6 bullets: one tradition, one holiday, common slang, a greeting, a taboo, and an everyday courtesy.",
          output:
              "Tradition: stoop dinners on first warm night\nHoliday: Grid Day lights on rooftops\nSlang: "
              "'blink fuel' for coffee\nGreeting: palm-up wave near the chest\nTaboo: filming inside clinics\nCourtesy: leaving a charger in lobby drawers",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "6 bullets: tradition, holiday, slang, greeting, taboo, courtesy."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Six concise culture notes with behavior-level detail for scenes and dialogue."),
            ResponseVariant(
                label: "More vivid",
                response:
                    "Concrete, sceneable bullets that suggest how people talk and move."),
          ],
          proTip:
              "Favor observable behavior over abstract values for culture notes.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(text: "Role: culture notetaker", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 6 behavior-level bullets", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: one concrete example per bullet",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: brief on place and people", isCorrect: true),
              PromptPieceDef(
                  text: "Describe values at a high level only",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Skip examples to keep it short", isCorrect: false),
            ],
            coachingNote:
                "Behavior and language show culture quickly and translate to scenes.",
            assembledPromptExample:
                "Write 6 behavior-level bullets (tradition, holiday, slang, greeting, taboo, courtesy) with one concrete example each. Use: <place and people>.",
          ),
          takeaway: "Make culture visible in actions and speech.",
          refinements: [],
        ),
      ],
    ),
    LessonDef(
      title: "Writing Style",
      scenarios: [
        ScenarioDef(
          title: "Tighten a scene (cut filler; keep voice)",
          situation:
              "You have a flabby scene; you want it lean without losing voice.",
          prompt:
              "Rewrite a short scene to remove filler while preserving voice and meaning.",
          output:
              "Before: I was kind of really just thinking that maybe we could, you know, try the later train.\nAfter: Maybe we take the later train.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Return only the 'After' line plus one trimmed example."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide a before/after pair illustrating concise phrasing while preserving tone."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Offer a gentle before/after with one note on how the voice stays intact."),
          ],
          proTip:
              "Ask for before/after pairs to show what to cut and what to keep.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(text: "Role: line editor", isCorrect: true),
              PromptPieceDef(
                  text: "Format: before/after pairs", isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: preserve voice and meaning",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: the original lines", isCorrect: true),
              PromptPieceDef(text: "Add new jokes and slang", isCorrect: false),
              PromptPieceDef(
                  text: "Change character voice for clarity", isCorrect: false),
            ],
            coachingNote:
                "Side-by-side pairs teach concise edits without erasing style.",
            assembledPromptExample:
                "Act as a line editor. Return before/after pairs that preserve voice while removing filler. Input: <original lines>.",
          ),
          takeaway: "Show, side-by-side, how to cut without losing voice.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Consistency pass (POV, tense, names)",
          situation:
              "A draft drifts POV/tense and name spellings; you want a checklist pass.",
          prompt:
              "Perform a consistency pass focused on POV, tense, and names with a compact report.",
          output:
              "POV: first-person maintained; fix line 18 head-hop\nTense: past, one present slip in para 4\nNames: Kincaid vs Kincade in para 7\nNotes: add a style note to the project README",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Return a 4-line report: POV, tense, names, one note."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Concise checklist with specific locations and recommended fixes."),
            ResponseVariant(
                label: "More vivid",
                response: "Same report with clearer examples quoted briefly."),
          ],
          proTip: "Name the three dimensions in the prompt to focus the pass.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(text: "Role: copy editor", isCorrect: true),
              PromptPieceDef(
                  text: "Format: 4-line report (POV, tense, names, note)",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Constraint: cite exact locations", isCorrect: true),
              PromptPieceDef(
                  text: "Input: draft excerpt with line numbers",
                  isCorrect: true),
              PromptPieceDef(text: "Also redesign plot", isCorrect: false),
              PromptPieceDef(
                  text: "Ignore examples to save space", isCorrect: false),
            ],
            coachingNote:
                "Clear scope and format produce actionable, repeatable checks.",
            assembledPromptExample:
                "Be a copy editor. Return a 4-line report (POV, tense, names, note). Cite exact locations. Input: <excerpt with line numbers>.",
          ),
          takeaway: "Scope the pass so feedback is consistent and fixable.",
          refinements: [],
        ),
        ScenarioDef(
          title: "Style pass (clarity and cadence)",
          situation:
              "You want smoother sentences and clearer phrasing without changing meaning.",
          prompt:
              "Revise a paragraph to improve clarity and cadence while preserving meaning.",
          output:
              "Before: The report that we had talked about previously that was supposed to be finalized is, in fact, not done.\nAfter: The report we planned to finalize is not done.",
          variants: [
            ResponseVariant(
                label: "Shorter",
                response:
                    "Only return the 'After' line with one alt phrasing."),
            ResponseVariant(
                label: "More formal",
                response:
                    "Provide a before/after pair that improves clarity and rhythm without adding content."),
            ResponseVariant(
                label: "Friendlier",
                response:
                    "Before/after with one tip on trimming stacked clauses."),
          ],
          proTip:
              "Ask for a before/after and name the qualities you want improved.",
          task: TaskDef(
            goal:
                "Select the correct prompt pieces to create an effective AI prompt for this scenario.",
            pieces: [
              PromptPieceDef(text: "Role: style editor", isCorrect: true),
              PromptPieceDef(
                  text: "Format: before/after pair", isCorrect: true),
              PromptPieceDef(
                  text:
                      "Constraint: preserve meaning; improve clarity and cadence",
                  isCorrect: true),
              PromptPieceDef(
                  text: "Input: the original paragraph", isCorrect: true),
              PromptPieceDef(
                  text: "Expand the paragraph with new ideas",
                  isCorrect: false),
              PromptPieceDef(
                  text: "Change meaning to sound smarter", isCorrect: false),
            ],
            coachingNote:
                "Naming target qualities and preserving meaning yields trustworthy edits.",
            assembledPromptExample:
                "Act as a style editor. Return a before/after that preserves meaning and improves clarity and cadence. Input: <paragraph>.",
          ),
          takeaway: "Name target qualities to steer revision choices.",
          refinements: [],
        ),
      ],
    ),
  ],
);
