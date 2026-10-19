---
name: design-award-lens
description: Find and fix "AI slop" in Apple-platform app design (iOS, iPadOS, macOS, watchOS, visionOS) by measuring it against what Apple Design Award winners and finalists actually do. Use this whenever someone wants a design review, critique, polish pass, or redesign of a SwiftUI/UIKit app, shares app screenshots and asks how to make them look better or less generic, says their app "looks AI-generated", "looks like a template", or "doesn't feel native", asks whether a specific design choice (emoji as icons, gradient backgrounds, a custom tab bar, card-heavy layouts, hype copy) looks amateur or generic, asks what Apple Design Award apps do differently, or is planning a new Apple-platform app and wants a distinctive design direction. Trigger even if the user doesn't mention awards; any request to make an Apple app look or feel more polished, premium, or award-worthy qualifies.
---

# Design Award Lens

AI-generated Apple apps tend to converge on the same look: purple-blue gradients, cards nested in cards, emoji standing in for icons, everything centered, fixed font sizes, a custom tab bar that fights the system one. It isn't broken. It's anonymous. Apple Design Award (ADA) winners are the opposite: each one makes a few deliberate choices and commits to them.

This skill uses the ADA record as a reference library. Every critique you give should point to something a real winner or finalist did, so the developer gets a concrete, defensible target instead of generic taste.

## Reference files

Read these as needed. Don't load all of them up front.

- `references/slop-to-ada-map.md`: catalogue of slop patterns, how to spot each in code and screenshots, and which ADA apps show the better alternative. **Read this first for every review.**
- `references/category-patterns.md`: what Apple rewards in each ADA category (Delight and Fun, Inclusivity, Innovation, Interaction, Social Impact, Visuals and Graphics) plus cross-cutting principles. Read when choosing a design direction or when the app clearly aims at one category.
- `references/ada-winners.md`: winners and finalists by year with Apple's citations. Use it to find the closest comparable app (same domain, same platform) and to quote Apple's reasoning accurately.

Cite only apps and facts that appear in these files. Before writing an award's year, category, or winner/finalist status, `grep -n -i "<app name>" references/ada-winners.md` and copy what's there; don't fill these in from memory, because they're easy to get subtly wrong (an app can be a finalist one year and a winner another, or appear in two categories). If you want to mention an app that isn't in the file, say it's not in the reference list rather than inventing an award.

## Pick the mode

Figure out what the user gave you:

1. **Code review**: a SwiftUI/UIKit project or files. → Mode A
2. **Screenshot review**: images of an existing app or mockups. → Mode B
3. **New app direction**: an idea or description, no UI yet. → Mode C

If they gave both code and screenshots, do both: screenshots show what the user sees, code shows why.

### Mode A: Code review

1. Find the UI layer: `View` structs, `UIViewController`s, asset catalogs, color/font definitions, any theme or design-system files. Skim the app's entry point and main navigation first so you understand its shape before judging details.
2. Scan for the signals listed in `slop-to-ada-map.md`. Typical code-level tells: hard-coded `.font(.system(size:))`, `Color(red:green:blue:)` literals scattered across views, `LinearGradient` used as background everywhere, `.cornerRadius` + `.shadow` on every container, custom tab bars, emoji in `Text` used as icons, no `accessibilityLabel`s, no `@Environment(\.dynamicTypeSize)` awareness, no dark-mode handling.
3. Identify what the app is *for* and who uses it. Pick 1–3 comparable ADA apps from `ada-winners.md`, ideally the same domain or interaction style.
4. Write the report (format below). Get line numbers with `grep -n` or by reading the file with line numbers, not by counting in your head: a developer who jumps to line 28 and finds the wrong code stops trusting the rest. Do not modify code yet.
5. After the user approves (all, or a subset), apply the fixes. Keep changes idiomatic: prefer system components, semantic colors, text styles, SF Symbols, and a small set of design tokens over one-off values. Build if you can (`xcodebuild` or the project's own scripts) and say whether it compiled.

### Mode B: Screenshot review

1. Look at each screenshot carefully. Describe the hierarchy you see before judging it: what draws the eye first, second, third.
2. Check against the visual signals in `slop-to-ada-map.md`: typography scale, color palette, density, iconography, use of materials, platform conventions (navigation bars, tab bars, sheets), and whether anything feels uniquely *this* app.
3. Pick comparable ADA apps as in Mode A.
4. Write the report. If the user also has code, offer to move on to Mode A to implement the fixes.

### Mode C: New app direction

1. Ask about the essentials if they're missing: the core job of the app, the platform(s), the audience, and the feeling it should have. Keep it to a few questions.
2. Before opening any reference, think hard about the domain itself: where and how the app is actually used (outdoors, one-handed, gloves, offline, in a hurry, at night), what its users already do with paper or other tools, and the small domain-specific moments that matter. Award winners are praised for being "designed for the real situation of use" (Slopes for gloves on a ski lift, Crouton for messy kitchen hands), and that insight comes from the domain, not from the award list. The references should sharpen these ideas and give them precedents. They shouldn't replace them.
3. Use `category-patterns.md` to decide which ADA category the idea naturally fits (most apps lean toward one or two).
4. Propose **2–3 distinct directions**, each anchored to specific ADA apps and carrying the domain insights from step 2. A direction covers: concept in one line, typography, color and materials, signature interaction or motion, platform features to embrace (widgets, Live Activities, Dynamic Island, App Intents, Apple Pencil, spatial, etc.), accessibility stance, and what to deliberately *avoid*.
5. Once the user picks one, offer a starter: a small design-token file (colors, text styles, spacing) and one key screen in SwiftUI that demonstrates the direction.

## Report format

Use this structure for Modes A and B:

```markdown
# Design Award Lens: <App name>

## Verdict
2–3 sentences: how generic it looks today, and the single biggest lever.

## Closest award references
- **<ADA app>** (<year>, <category>, winner/finalist): why it's a relevant comparison.

## Findings
### 1. <Slop pattern name>  ·  Impact: High/Medium/Low
- **Where:** file:line, or screenshot + region
- **What's happening:** concrete description
- **What award apps do instead:** <app> does X (cite)
- **Fix:** specific change; for code, a short before/after snippet

(order by impact; usually 5–10 findings, not 30)

## What's already good
Things to keep. A review that's all negatives isn't credible and helps the developer less.

## Suggested order of work
Short numbered list, quick wins first.
```

## Principles for good critiques

- **Specific beats general.** "Body text is a fixed 15pt, so it ignores Dynamic Type" beats "typography could be improved".
- **Anchor every major finding to an award app.** That's the whole point of this skill. If no reference fits, say it's a general HIG point instead.
- **Domain thinking first, references second.** The best recommendations come from understanding this particular app's users and context; the award examples show that the idea works and how far to take it. A review that only maps the app onto the reference list feels generic, which is the exact problem this skill exists to fix.
- **Fewer, bigger findings.** A developer can act on eight important issues. They'll ignore forty.
- **Native first, distinctive second.** Award apps feel at home on the platform *and* have a personality. Fix the platform-convention problems before suggesting a bold visual identity.
- **Don't swap one template for another.** "Use Liquid Glass everywhere" is the new slop. Recommend effects only where they serve hierarchy or meaning.
- **Accessibility is design, not a checklist.** Many winners won because of it. Treat Dynamic Type, VoiceOver, contrast, and Reduce Motion as part of the main critique.
