# design-award-lens

A [Claude Code](https://claude.com/claude-code) skill that finds "AI slop" in Apple-platform app designs and fixes it, using what Apple Design Award winners actually do as the reference.

AI-generated SwiftUI apps tend to look the same: purple gradients, cards inside cards, emoji used as icons, fixed font sizes, a hand-rolled tab bar. This skill reviews your code, screenshots, or app idea and ties each finding to a real ADA winner or finalist. For example: "Halide Mark II (2022, Visuals and Graphics) uses one accent color with one meaning; your gradient has none."

## What it does

| You give it | You get |
|---|---|
| **SwiftUI / UIKit code** | A prioritized report with file:line findings, the closest award references, and before/after snippets. When you approve, it applies the fixes. |
| **Screenshots** (or a description of your UI) | The same report, based on visual hierarchy, typography, color, and platform conventions. |
| **An app idea** | 2–3 distinct design directions, each based on comparable award apps. When you pick one, it writes design tokens and a starter SwiftUI screen. |

Covers iOS, iPadOS, macOS, watchOS, and visionOS.

## Install

```bash
git clone https://github.com/cenkgundev/design-award-lens ~/.claude/skills/design-award-lens
```

Claude Code picks it up automatically. Then ask something like:

- "Review my main screen, it looks too AI generated"
- "How would an Apple Design Award app do this onboarding?"
- "I'm planning a watchOS running app. What design direction should it take?"

## What's inside

```
SKILL.md                         # workflow: code / screenshot / new-idea modes, report format
references/
  ada-winners.md                 # winners 2016–2026, finalists 2021–2026, Apple's jury citations
  category-patterns.md           # what Apple rewards in each category and 13 cross-cutting principles
  slop-to-ada-map.md             # 24 slop patterns: how to spot them in code and screenshots, and which award apps do better
evals/                           # test prompts used while developing the skill
```

Award data comes from Apple's ADA pages, Apple Newsroom, and Apple's "Behind the Design" developer interviews, compiled in October 2026. Known gaps are listed at the end of `references/ada-winners.md`.

## Benchmark

On 3 test prompts (code review, new iPad app direction, Mac menu-bar app critique), outputs with the skill passed **100%** of checks, compared with **67%** without it. Most of the gain came from grounding advice in specific award apps instead of general taste. All of roughly 45 award citations matched the reference data. The skill costs about 34k extra tokens and about 70 seconds more per run, mostly from reading the reference files.

## Updating for a new year

After each WWDC, add the new winners and finalists to `references/ada-winners.md` and update the patterns in the other two files if Apple starts rewarding something new.

## Disclaimer

This is an independent project and is not affiliated with or endorsed by Apple Inc. "Apple Design Awards" and app names are trademarks of their respective owners. Citations are quoted or paraphrased from Apple's public pages.

## License

MIT
