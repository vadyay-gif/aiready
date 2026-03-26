# One-off: parse AI Ready track Dart files -> markdown (no runtime dependency on Flutter).
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
TRACKS_DIR = ROOT / "lib" / "data" / "tracks"

TRACKS = [
    ("Track 1 — Everyday Communication", "track1_everyday_communication.dart"),
    ("Track 2 — Productivity & Workflow", "track2_productivity_workflow.dart"),
    ("Track 3 — Spreadsheets & Data", "track3_spreadsheets_data.dart"),
    ("Track 4 — Presentations", "track4_presentations.dart"),
    ("Track 5 — Productivity", "track5_communication.dart"),
    ("Track 6 — Content Creation", "track6_content_creation.dart"),
    ("Track 7 — Root-Cause Thinking", "track7_problem_solving_analysis.dart"),
    ("Track 8 — Marketing & Social", "track8_decision_support.dart"),
    ("Track 9 — Brainstorming & Strategy", "track9_brainstorming_strategy.dart"),
]


def skip_ws(s: str, i: int) -> int:
    while i < len(s) and s[i] in " \t\n\r":
        i += 1
    return i


def parse_string(s: str, i: int):
    i = skip_ws(s, i)
    if i >= len(s):
        return None, i
    q = s[i]
    if q not in "'\"":
        return None, i
    i += 1
    out = []
    while i < len(s):
        if s[i] == "\\":
            i += 1
            if i >= len(s):
                break
            esc = s[i]
            if esc == "n":
                out.append("\n")
            elif esc == "t":
                out.append("\t")
            elif esc == "r":
                out.append("\r")
            elif esc in "'\"":
                out.append(esc)
            elif esc == "\\":
                out.append("\\")
            else:
                out.append(esc)
            i += 1
        elif s[i] == q:
            return "".join(out), i + 1
        else:
            out.append(s[i])
            i += 1
    return None, i


def match_paren(s: str, start: int) -> int:
    """start points at '('; return index after matching ')'."""
    depth = 0
    i = start
    in_str = None
    escape = False
    while i < len(s):
        c = s[i]
        if in_str:
            if escape:
                escape = False
            elif c == "\\":
                escape = True
            elif c == in_str:
                in_str = None
            i += 1
            continue
        if c in "'\"":
            in_str = c
            i += 1
            continue
        if c == "(":
            depth += 1
        elif c == ")":
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    return len(s)


def find_after_key(block: str, key: str):
    m = re.search(r"\b" + re.escape(key) + r"\s*:", block)
    if not m:
        return None
    val, _ = parse_string(block, m.end())
    return val


def extract_variants(block: str) -> list[tuple[str, str]]:
    out = []
    for vm in re.finditer(r"ResponseVariant\s*\(", block):
        sub_start = vm.end() - 1
        sub_end = match_paren(block, sub_start)
        sub = block[sub_start:sub_end]
        lab = find_after_key(sub, "label")
        resp = find_after_key(sub, "response")
        if lab and resp is not None:
            out.append((lab, resp))
    return out


def extract_prompt_pieces(block: str) -> list[tuple[str, bool]]:
    pieces = []
    for pm in re.finditer(r"PromptPieceDef\s*\(", block):
        sub_start = pm.end() - 1
        sub_end = match_paren(block, sub_start)
        sub = block[sub_start:sub_end]
        txt = find_after_key(sub, "text")
        m = re.search(r"isCorrect:\s*(true|false)", sub)
        ok = m and m.group(1) == "true"
        if txt is not None:
            pieces.append((txt, bool(ok)))
    return pieces


def extract_task(block: str) -> dict:
    m = re.search(r"task:\s*TaskDef\s*\(", block)
    if not m:
        return {}
    start = m.end() - 1
    end = match_paren(block, start)
    t = block[start:end]
    return {
        "goal": find_after_key(t, "goal"),
        "coachingNote": find_after_key(t, "coachingNote"),
        "assembledPromptExample": find_after_key(t, "assembledPromptExample"),
        "feedbackWhenCorrect": find_after_key(t, "feedbackWhenCorrect"),
        "resultPolishedPrompt": find_after_key(t, "resultPolishedPrompt"),
        "pieces": extract_prompt_pieces(t),
    }


def extract_refinements_list(block: str):
    m = re.search(r"refinements:\s*\[", block)
    if not m:
        return []
    i = m.end()
    items = []
    while i < len(block):
        i = skip_ws(block, i)
        if i < len(block) and block[i] == "]":
            break
        val, i = parse_string(block, i)
        if val is not None:
            items.append(val)
        i = skip_ws(block, i)
        if i < len(block) and block[i] == ",":
            i += 1
    return items


def extract_file_level_refinements(full_text: str) -> list[str]:
    m = re.search(r"const\s+refinements\s*=\s*\[", full_text)
    if not m:
        return []
    i = m.end()
    items = []
    while i < len(full_text):
        i = skip_ws(full_text, i)
        if i < len(full_text) and full_text[i] == "]":
            break
        val, i = parse_string(full_text, i)
        if val is not None:
            items.append(val)
        i = skip_ws(full_text, i)
        if i < len(full_text) and full_text[i] == ",":
            i += 1
    return items


def scenario_refinements(sb: str, file_refs: list[str]) -> list[str]:
    if re.search(r"refinements:\s*refinements\s*,", sb):
        return list(file_refs)
    return extract_refinements_list(sb)


def split_lessons(content: str) -> list[str]:
    parts = []
    for m in re.finditer(r"(?:const\s+)?LessonDef\s*\(", content):
        start = m.start()
        p0 = content.find("(", m.end() - 1)
        end = match_paren(content, p0)
        parts.append(content[start:end])
    return parts


def split_scenarios(lesson_block: str) -> list[str]:
    inner = lesson_block
    scenarios = []
    for m in re.finditer(r"ScenarioDef\s*\(", inner):
        p0 = inner.find("(", m.end() - 1)
        end = match_paren(inner, p0)
        scenarios.append(inner[p0:end])
    return scenarios


def lesson_title(lesson_block: str):
    return find_after_key(lesson_block, "title")


def build_markdown() -> str:
    lines = [
        "# AI Ready — full product lesson export (user-facing content)",
        "",
        "Generated from `lib/data/tracks/*.dart` sources. Shared UX: completion flows use the app bar title **Lesson Complete** (see `lesson_complete_screen.dart` / `lesson_flow/lesson_complete_screen.dart`).",
        "",
    ]
    counts = []

    for track_name, fname in TRACKS:
        path = TRACKS_DIR / fname
        text = path.read_text(encoding="utf-8")
        file_refs = extract_file_level_refinements(text)
        lessons = split_lessons(text)
        counts.append((track_name, len(lessons)))
        lines.append(f"## {track_name}")
        lines.append(f"*Source: `{path.relative_to(ROOT).as_posix()}`*")
        lines.append("")

        for li, lb in enumerate(lessons, 1):
            lt = lesson_title(lb) or f"(Lesson {li})"
            lines.append(f"### Lesson {li} — {lt}")
            lines.append("")
            scens = split_scenarios(lb)
            for si, sb in enumerate(scens, 1):
                st = find_after_key(sb, "title") or f"Scenario {si}"
                lines.append(f"#### Scenario {si} — {st}")
                lines.append("")
                for label, key in [
                    ("Situation", "situation"),
                    ("Expert prompt", "prompt"),
                    ("AI response (example)", "output"),
                ]:
                    v = find_after_key(sb, key)
                    if v:
                        lines.append(f"**{label}**")
                        lines.append("")
                        lines.append(v)
                        lines.append("")
                refs = scenario_refinements(sb, file_refs)
                if refs:
                    lines.append("**Learn — refinements (tabs)**")
                    lines.append("")
                    for r in refs:
                        lines.append(f"- {r}")
                    lines.append("")
                vars_ = extract_variants(sb)
                if vars_:
                    lines.append("**Learn — tab content**")
                    lines.append("")
                    for lab, resp in vars_:
                        lines.append(f"- **{lab}**")
                        lines.append("")
                        lines.append(resp)
                        lines.append("")
                pt = find_after_key(sb, "proTip")
                if pt:
                    lines.append("**Pro tip**")
                    lines.append("")
                    lines.append(pt)
                    lines.append("")
                tk = find_after_key(sb, "takeaway")
                if tk:
                    lines.append("**Takeaway**")
                    lines.append("")
                    lines.append(tk)
                    lines.append("")
                task = extract_task(sb)
                if task:
                    lines.append("**Challenge (goal)**")
                    lines.append("")
                    lines.append(task.get("goal") or "")
                    lines.append("")
                    pcs = task.get("pieces") or []
                    if pcs:
                        lines.append("**Challenge — options (10)**")
                        lines.append("")
                        for t, ok in pcs:
                            mark = "✓ correct" if ok else "✗ incorrect"
                            lines.append(f"- [{mark}] {t}")
                        lines.append("")
                    for label, k in [
                        ("Result — coaching note", "coachingNote"),
                        ("Result — assembled prompt example", "assembledPromptExample"),
                        ("Result — feedback when correct", "feedbackWhenCorrect"),
                        ("Result — polished prompt", "resultPolishedPrompt"),
                    ]:
                        v = task.get(k)
                        if v:
                            lines.append(f"**{label}**")
                            lines.append("")
                            lines.append(v)
                            lines.append("")
                lines.append("---")
                lines.append("")

    lines.append("## Lesson counts (this export)")
    lines.append("")
    for tn, c in counts:
        lines.append(f"- {tn}: **{c}** lessons")
    total = sum(c for _, c in counts)
    lines.append(f"- **Total lessons: {total}**")
    lines.append("")
    return "\n".join(lines)


def main():
    out = ROOT / "docs" / "FULL_PRODUCT_LESSON_EXPORT.md"
    out.write_text(build_markdown(), encoding="utf-8")
    print(out)


if __name__ == "__main__":
    main()
