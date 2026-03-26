#!/usr/bin/env python3
"""
Extract user-facing copy from track N dart files into clean markdown.
Uses string-aware scanning so brackets/parens inside strings do not break parsing.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path
from typing import Callable

ROOT = Path(__file__).resolve().parents[1]
TRACK_FILES = [
    ROOT / "lib/data/tracks/track1_everyday_communication.dart",
    ROOT / "lib/data/tracks/track2_productivity_workflow.dart",
    ROOT / "lib/data/tracks/track3_spreadsheets_data.dart",
    ROOT / "lib/data/tracks/track4_presentations.dart",
    ROOT / "lib/data/tracks/track5_communication.dart",
    ROOT / "lib/data/tracks/track6_content_creation.dart",
    ROOT / "lib/data/tracks/track7_problem_solving_analysis.dart",
    ROOT / "lib/data/tracks/track8_decision_support.dart",
    ROOT / "lib/data/tracks/track9_brainstorming_strategy.dart",
]

TRACK_TITLES = [
    "Everyday Communication",
    "Productivity & Workflow",
    "Spreadsheets & Data",
    "Presentations",
    "Strategic Communication",
    "Content Creation",
    "Root-Cause Thinking",
    "Decision Support",
    "Brainstorming & Strategy",
]


def read_dart_string(s: str, i: int) -> tuple[str, int] | None:
    """Read a Dart single- or double-quoted string starting at s[i]==quote. Returns (value, index_after_closing_quote)."""
    if i >= len(s):
        return None
    q = s[i]
    if q not in "'\"":
        return None
    i += 1
    out: list[str] = []
    while i < len(s):
        c = s[i]
        if c == "\\":
            if i + 1 < len(s):
                n = s[i + 1]
                if n == "n":
                    out.append("\n")
                elif n == "t":
                    out.append("\t")
                elif n == "r":
                    out.append("\r")
                elif n in "'\"\\":
                    out.append(n)
                else:
                    out.append(n)
                i += 2
                continue
            i += 1
            continue
        if c == q:
            return ("".join(out), i + 1)
        out.append(c)
        i += 1
    return None


def skip_ws(s: str, i: int) -> int:
    while i < len(s) and s[i] in " \t\n\r":
        i += 1
    return i


def skip_line_comment(s: str, i: int) -> int:
    if s.startswith("//", i):
        i += 2
        while i < len(s) and s[i] != "\n":
            i += 1
    return i


def skip_block_comment(s: str, i: int) -> int:
    if s.startswith("/*", i):
        i += 2
        while i + 1 < len(s):
            if s[i : i + 2] == "*/":
                return i + 2
            i += 1
    return i


def next_significant(s: str, i: int) -> int:
    """Skip whitespace, line comments, block comments."""
    n = len(s)
    while i < n:
        j = skip_ws(s, i)
        if j > i:
            i = j
            continue
        k = skip_line_comment(s, i)
        if k > i:
            i = k
            continue
        k = skip_block_comment(s, i)
        if k > i:
            i = k
            continue
        break
    return i


def find_matching_paren(s: str, open_paren: int) -> int | None:
    """open_paren points at '('. String-aware, comment-aware. Returns index of matching ')'."""
    if open_paren >= len(s) or s[open_paren] != "(":
        return None
    depth = 0
    i = open_paren
    n = len(s)
    while i < n:
        j = next_significant(s, i)
        if j > i:
            i = j
            continue
        c = s[i]
        if c in "'\"":
            r = read_dart_string(s, i)
            if r is None:
                return None
            _, i = r
            continue
        if c == "(":
            depth += 1
            i += 1
            continue
        if c == ")":
            depth -= 1
            i += 1
            if depth == 0:
                return i - 1
            continue
        i += 1
    return None


def extract_field_string(body: str, field: str) -> str | None:
    """Find `field:` (optional whitespace) then a Dart string; return decoded value."""
    # field name as word boundary
    pat = re.compile(r"\b" + re.escape(field) + r"\s*:\s*")
    m = pat.search(body)
    if not m:
        return None
    i = skip_ws(body, m.end())
    r = read_dart_string(body, i)
    if r is None:
        return None
    val, _ = r
    return val


def find_all_balanced_calls(body: str, type_name: str) -> list[str]:
    """Return inner text of each `TypeName(` ... `)` at top level of body (body is already one scenario/task substring)."""
    results: list[str] = []
    token = type_name + "("
    start = 0
    while True:
        idx = body.find(token, start)
        if idx < 0:
            break
        open_i = idx + len(type_name)
        assert body[open_i] == "("
        close_i = find_matching_paren(body, open_i)
        if close_i is None:
            break
        inner = body[open_i + 1 : close_i]
        results.append(inner)
        start = close_i + 1
    return results


def parse_prompt_pieces(task_inner: str) -> list[tuple[str, bool]]:
    pieces: list[tuple[str, bool]] = []
    for inner in find_all_balanced_calls(task_inner, "PromptPieceDef"):
        text = extract_field_string(inner, "text")
        if text is None:
            continue
        # isCorrect: true / false
        mc = re.search(r"\bisCorrect\s*:\s*(true|false)\b", inner)
        ok = mc is not None and mc.group(1) == "true"
        pieces.append((text, ok))
    return pieces


def parse_variants(scenario_inner: str) -> list[tuple[str, str]]:
    out: list[tuple[str, str]] = []
    for inner in find_all_balanced_calls(scenario_inner, "ResponseVariant"):
        lab = extract_field_string(inner, "label")
        resp = extract_field_string(inner, "response")
        if lab and resp is not None:
            out.append((lab, resp))
    return out


def parse_scenario(inner: str) -> dict:
    title = extract_field_string(inner, "title") or ""
    situation = extract_field_string(inner, "situation") or ""
    prompt = extract_field_string(inner, "prompt") or ""
    output = extract_field_string(inner, "output") or ""
    pro_tip = extract_field_string(inner, "proTip")
    takeaway = extract_field_string(inner, "takeaway")
    variants = parse_variants(inner)

    task_block = None
    tm = re.search(r"\btask\s*:\s*TaskDef\s*\(", inner)
    if tm:
        open_i = tm.end() - 1
        close_i = find_matching_paren(inner, open_i)
        if close_i is not None:
            task_block = inner[open_i + 1 : close_i]

    task_data: dict | None = None
    if task_block:
        task_data = {
            "goal": extract_field_string(task_block, "goal") or "",
            "coachingNote": extract_field_string(task_block, "coachingNote"),
            "assembledPromptExample": extract_field_string(task_block, "assembledPromptExample"),
            "feedbackWhenCorrect": extract_field_string(task_block, "feedbackWhenCorrect"),
            "resultPolishedPrompt": extract_field_string(task_block, "resultPolishedPrompt"),
            "pieces": parse_prompt_pieces(task_block),
        }

    return {
        "title": title,
        "situation": situation,
        "prompt": prompt,
        "output": output,
        "variants": variants,
        "proTip": pro_tip,
        "takeaway": takeaway,
        "task": task_data,
    }


def parse_lessons(s: str) -> list[tuple[str, list[dict]]]:
    """Return list of (lesson_title, [scenario dicts])."""
    lessons: list[tuple[str, list[dict]]] = []
    for lm in re.finditer(r"\bLessonDef\s*\(", s):
        open_i = lm.end() - 1
        close_i = find_matching_paren(s, open_i)
        if close_i is None:
            continue
        lesson_body = s[open_i + 1 : close_i]
        lesson_title = extract_field_string(lesson_body, "title") or ""
        sm = re.search(r"\bscenarios\s*:\s*\[", lesson_body)
        if not sm:
            lessons.append((lesson_title, []))
            continue
        bracket_open = lesson_body.find("[", sm.start())
        # find matching ] at depth 1, string-aware — reuse paren logic with brackets
        i = bracket_open
        depth = 0
        n = len(lesson_body)
        scenarios_inner_start = i + 1
        while i < n:
            j = next_significant(lesson_body, i)
            if j > i:
                i = j
                continue
            c = lesson_body[i]
            if c in "'\"":
                r = read_dart_string(lesson_body, i)
                if r is None:
                    break
                _, i = r
                continue
            if c == "[":
                depth += 1
                i += 1
                continue
            if c == "]":
                depth -= 1
                i += 1
                if depth == 0:
                    arr_content = lesson_body[scenarios_inner_start : i - 1]
                    scenarios: list[dict] = []
                    for scen in find_all_balanced_calls(arr_content, "ScenarioDef"):
                        scenarios.append(parse_scenario(scen))
                    lessons.append((lesson_title, scenarios))
                    break
                continue
            i += 1
        else:
            lessons.append((lesson_title, []))
    return lessons


def md_escape_heading(text: str) -> str:
    return text.replace("\n", " ").strip()


def fmt_block(label: str, body: str) -> str:
    body = body.strip()
    if not body:
        return ""
    return f"**{label}**\n\n{body}\n\n"


def scenario_to_md(scen: dict, scen_index: int) -> str:
    lines: list[str] = []
    lines.append(f"#### Scenario {scen_index + 1}: {md_escape_heading(scen['title'])}\n")
    lines.append(fmt_block("Situation", scen["situation"]))
    lines.append(fmt_block("Expert prompt", scen["prompt"]))
    lines.append(fmt_block("AI response (example)", scen["output"]))
    if scen["variants"]:
        lines.append("**Learn (variant tabs)**\n\n")
        for lab, resp in scen["variants"]:
            lines.append(f"##### {lab}\n\n{resp.strip()}\n\n")
    if scen.get("proTip"):
        lines.append(fmt_block("Pro tip", scen["proTip"]))
    if scen.get("takeaway"):
        lines.append(fmt_block("Takeaway", scen["takeaway"]))
    t = scen.get("task")
    if t:
        lines.append("**Challenge / task**\n\n")
        lines.append(fmt_block("Goal", t["goal"]))
        if t.get("pieces"):
            lines.append("**Prompt elements (pick the strong ones)**\n\n")
            for text, ok in t["pieces"]:
                mark = "✓ (correct choice)" if ok else "✗ (distractor)"
                lines.append(f"- {mark} — {text}\n")
            lines.append("\n")
        if t.get("coachingNote"):
            lines.append(fmt_block("Coaching note (if selections are wrong)", t["coachingNote"]))
        if t.get("assembledPromptExample"):
            lines.append(fmt_block("Assembled prompt example", t["assembledPromptExample"]))
        if t.get("feedbackWhenCorrect"):
            lines.append(
                fmt_block("Feedback when correct (after Check my answer)", t["feedbackWhenCorrect"])
            )
        if t.get("resultPolishedPrompt"):
            lines.append(fmt_block("Polished prompt on result screen", t["resultPolishedPrompt"]))
    return "".join(lines)


RESULT_SHARED = """
## Shared result & lesson-complete copy (app UI)

These strings appear on challenge result screens and the lesson-complete screen (no scenario-specific body).

### Task / challenge screen (structured tracks)

- Section header: **Challenge** (tracks 1–5 structured lessons) or **Task Goal** otherwise.
- Instruction (structured): *Which elements make this a strong C.O.R.E. prompt? Pick exactly N:*
- Instruction (general): *Select the prompt elements (choose exactly N):*
- Assembled prompt label (structured): **Your strong C.O.R.E. prompt:**
- Assembled prompt label (general): **Your assembled prompt:**
- Primary CTA: **Try the Challenge** or **Try the Task**
- Unavailable: **Challenge is being prepared** / **Task is being prepared**

### After “Check my answer” (feedback template)

- Score line: *You got X/Y correct.*
- If all correct (structured lessons): appended text defaults to *Great job! You selected the right elements.* unless the scenario defines `feedbackWhenCorrect`.
- If all correct (non-structured): *Great job! You selected the right prompt elements.*
- If not all correct: appended text comes from `coachingNote`, or defaults to *Try again. Consider which elements make this the strongest C.O.R.E. prompt.* (structured) or *Try again. Consider which pieces would make the most effective prompt.*

### Combined result (after scenario 1 or 2 challenge)

- Heading: **Correct!** or **Not quite right**
- **Score:** *N / required count*
- Body: feedback message (see template above)
- Label: **Your strong C.O.R.E. prompt:** then the assembled / polished prompt text
- Optional extra paragraph: scenario `coachingNote` when present
- Unlock title: **Scenario 2 is now unlocked** or **Scenario 3 is now unlocked**
- Unlock body: *You’ve completed the first scenario and unlocked the next level of difficulty.* / *You’re ready for the final scenario in this lesson.*
- Extra line after scenario 2: *Keep going — this is where the lesson gets more rewarding.*
- Buttons: **Go to Scenario 2** / **Go to Scenario 3**, **Back to Tracks**

### Result after scenario 3 challenge

- Same card as above (Correct / Not quite right, score, feedback, assembled prompt label, optional coaching)
- Button: **Done**

### Lesson complete screen

- App bar: **Lesson Complete**
- **Your score:** *totalScore/15*
- *You completed all 3 scenarios.*
- **You've completed this lesson using the C.O.R.E. system**
- **Learning** — bullets: *apply context*, *define objective*, *structure requirements*, *control output*
- **Insight** — *Most people use AI with vague prompts.* / *You now control the result.*
- **Next step** — *Apply this to more complex tasks.*
- *This is just the foundation*
- **Continue to next lesson**, **See All Tracks**
"""


def main() -> int:
    out_lines: list[str] = []
    out_lines.append("# Tracks 1–9 — user-facing content (clean export)\n\n")
    out_lines.append(
        "Derived from the same Dart sources as `exports/tracks_1_9_full_user_experience_RAW.md` "
        "(track definition files under `lib/data/tracks/`). "
        "Flutter/Dart code, imports, and widgets are omitted.\n\n"
    )

    for ti, path in enumerate(TRACK_FILES):
        if not path.is_file():
            print(f"Missing {path}", file=sys.stderr)
            return 1
        text = path.read_text(encoding="utf-8")
        lessons = parse_lessons(text)
        track_title = TRACK_TITLES[ti] if ti < len(TRACK_TITLES) else path.stem
        out_lines.append(f"---\n\n## Track {ti + 1} — {track_title}\n\n")
        out_lines.append(f"*Source:* `{path.relative_to(ROOT).as_posix()}`\n\n")

        for li, (lesson_title, scenarios) in enumerate(lessons):
            out_lines.append(f"### Lesson {li + 1}: {md_escape_heading(lesson_title)}\n\n")
            for si, scen in enumerate(scenarios):
                out_lines.append(scenario_to_md(scen, si))
            if not scenarios:
                out_lines.append("_No scenarios parsed._\n\n")

    out_lines.append(RESULT_SHARED)

    out_path = ROOT / "exports" / "tracks_1_9_user_experience_clean.md"
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text("".join(out_lines), encoding="utf-8")
    print(f"Wrote {out_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
