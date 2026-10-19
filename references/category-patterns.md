# What Apple Rewards: Category Patterns & Cross-Cutting Principles

Synthesized from Apple's ADA citations (2021–2026) and Apple-hosted "Behind the Design" interviews. App names refer to entries in `ada-winners.md`.

## Recurring patterns per ADA category: what Apple rewards

### Delight and Fun
- **One signature moment, polished to an absurd degree.** Examples: the (Not Boring) Habits checkbox (long press, 3D particles, custom sound, haptics; "thousands of iterations"), the CapWords photo-to-sticker peel, grug's ink-writing animation, the PowerWash per-nozzle haptics.
- **A fully committed visual voice used everywhere, not as a skin.** grug drew its own font and used it in the status bar, icons, and states. Bears Gratitude: "The art drives everything." Pok Pok: three colors, hand-jittered lines. Blippo+: period-correct fonts and buttons "down to the last enormous pixelated digit."
- **Mascots and characters with a job.** Duo and the cast give feedback. The Bears Gratitude bears are "a welcoming way into the content." Capybara (2025 Innovation finalist) covers waiting time. Harvee's avatar mirrors the user's state.
- **Sound as half the experience.** CapWords plays a real-world sound per card. Pok Pok uses quiet Foley. Is This Seat Taken? has tappable Easter eggs.
- **Low friction to start.** Bears Gratitude and grug have no login. grug has "nothing extraneous."
- **Copy has a voice.** grug grunts; Bears Gratitude prompts are written in the user's voice; CARROT has snark; the release notes are part of the joke.
- **Delight sits on top of standard controls.** Allen: "Most of our standard controls are fairly off-the-shelf… We didn't have to rethink how a button or a popover works."

### Inclusivity
- **Accessibility built in from day one, not bolted on.** "Inclusive without making accessibility feel separate from the main design" (Guitar Wiz). Lykke "prioritized accessibility from Day 1."
- **The checklist Apple names over and over:** VoiceOver (with *meaningful* spoken descriptions, e.g., finger positions), Dynamic Type, Increase Contrast, Differentiate Without Color, Reduce Motion, haptics as a second channel, multiple languages, App Intents and Siri for eyes-free control.
- **Custom responses to system settings.** Guitar Wiz switches chord diagrams to pure black and white under Increase Contrast. Procreate added tremor filtering based on audio signal processing.
- **More than one way to perceive or solve.** Art of Fauna puzzles work by image or by text. HoloVista can be "experienced and perceived in more than one way." Train Fitness needs no screen at all. Oko uses audio, haptic, and visual signals together.
- **Co-design with the affected community.** Oko worked with about 100 blind and low-vision testers. Universe refined its VoiceOver support with blind users.
- **Reduce cognitive load.** Speechify; Structured's "simple layout"; Sago's no-reading interactions; Oko's "bare-bones UI."
- **Settings surfaced up front.** Pine Hearts shows its accessibility options before play begins.
- **Representation in content.** Wylde Flowers, Evolve, Crayola Adventures character creation, Civilization VII, Katha Room.

### Innovation
- **New technology hidden behind a familiar, simple surface.** Moises is "remarkably easy to understand"; Detail has "the simplicity of a camera app"; Capybara is "a simple and endearing interface for a complex task"; SwingVision says "point your camera at the court."
- **On-device ML and Apple frameworks used for something the genre couldn't do before.** Core ML (NaadSadhana, HomeCourt, Pixelmator Photo), the Neural Engine (SwingVision), Foundation Models (Detail, Hearing Buddy), VisionKit (CapWords).
- **Platform-defining spatial work.** NBA multiview, immersive video, Taobao 3D products, Pickle Pro mixed-reality blending.
- **The ADA word "novel use of Apple technologies":** a generic web wrapper never qualifies. The technology has to be *native*.

### Interaction
- **Information hierarchy first.** "Recipe apps rise and fall on their organization and information hierarchy" (Crouton). Slopes: "pick what matters to tell the story." Flighty: "one line per flight."
- **Context-aware modes that strip the UI down.** Crouton and Mela cooking modes show only the current step. Flighty's Dynamic Island goes to an offline-safe progress view before takeoff. Slopes is designed for gloves on a ski lift.
- **System surfaces as primary UI.** Live Activities, Dynamic Island, widgets, Watch complications, Siri and Shortcuts, Calendar and Maps (Flighty, Mela, Tide Guide, Lumy, CARROT).
- **Platform conventions as the base layer.** Crouton "leaned on platform conventions to make navigating Crouton familiar." Rooms adds native sliders and a bottom navigation on top of Unity.
- **Gestures that carry meaning.** iA Writer swipes right for the library and left for preview. Halide has "consistent gestures" and muscle memory. Railbound's mechanic is "so simple you could almost discover it by accident," with easy undo.
- **Per-platform tailoring.** "Optimized for iPad and Mac rather than simply scaled up" (Guitar Wiz). Halide has an iPad-specific version. DREDGE and Skate City work across touch and controller.
- **Patient, staged onboarding.** Skate City's "smartly spaced-out lessons," Rytmos's "instantly clear" onboarding, Moonlitt's "easy onboarding."
- **2026 marker:** "Best-in-class Liquid Glass integration" (Moonlitt) is now explicitly rewarded.

### Social Impact
- **Reliability and clarity over decoration when stakes are high.** Watch Duty: "clearly and reliably offering updates." Primary: "properly minimal UI… gets out of the way."
- **Design that builds trust.** Ground News uses color-coded bias markers. Primary has no clickbait. Harvee runs on device for privacy. Any Distance clips routes by default.
- **Warmth for hard topics.** Headspace "demystifies" with a warm illustration style and plain-language labels. Consume Me and Endling let the mechanics carry the empathy.
- **Culturally specific visual language.** Katha Room uses Gond art and Despelote Ecuadorian street photography. Their look isn't a generic global template.

### Visuals and Graphics
- **A distinctive and *cohesive* theme.** Every surface follows one idea: Tide Guide's palette follows the sky color through the day; Halide is a film camera with a single yellow accent; Rooms uses soft voxels; Neva gives each level its own palette.
- **Visual metaphor drawn from a real-world artifact.** Halide (film camera), (Not Boring) Camera ('70s/'80s hardware with haptic scroll wheels), Flighty (airport boards), Agenda (timeline), Looom (toy-like gears), Odio (album covers), CellWalk (a microscope).
- **Restraint counts as visual excellence.** Vocabulary: "an app that quietly does everything right"; Feather: "minimalist interface"; Halide: "uncluttered." Loóna crafted "type, color, animation, and 3D content… with precision."
- **Data visualization as the hero.** Tide Guide's full-screen charts, Any Distance's 3D maps and shareable cards, The Outsiders' readiness score.
- **Native assets are fine.** Any Distance "draws heavily on SF Symbols." Darkroom uses "evergreen symbols."
- **Technical showcase for games:** Metal, MetalFX, ray tracing, ProMotion, HDR, auto-tuned per-device presets.

### Spatial Computing (2024) and spatial winners in other categories
- They use the *whole* canvas (Blackbox), immersion that serves a "flow state" (djay), and products at true scale with considered placement (Taobao).
- Content-first spatial UI (Primary, NBA's floating 3D scoreboards) and natural input (eye and hand tracking in Gears & Goo).

---

## Cross-cutting principles: what separates winners from generic apps

1. **A point of view, not a template.** "Instead of trying to set our app apart, how do we make it ours?" (Bears Gratitude). "Design is difficult to copy" (Andy Works). Odio pivoted when it found clones. Flighty forces 20 concepts so it doesn't reuse the asset library. Winners can be described by a single *idea* (a film camera, airport boards, a caveman, the sky over the tide).
2. **A real-world analogy anchors the design.** Nearly every app winner borrows from a physical artifact or ritual: cameras, airport signage, cookbooks, stickers, a toy boat, a microscope, an album cover, voxels/LEGO.
3. **Build with the platform, then add your voice** (grug's advice). Standard navigation, controls, Dynamic Type, and SF Symbols form the base, and personality is layered on top. Winners almost never invent navigation. Tide Guide's developer specifically unlearned "non-standard navigation."
4. **Subtraction is the core design act.** "What to leave out rather than bring in" (Crouton). Oko cut features. Headspace collapsed its tabs. grug has "no login, no cloud syncing." Primary is "properly minimal." Sago is "remarkable for what it doesn't include."
5. **Simple surface, deep layers (progressive disclosure).** "Floor low, ceiling high" (Rooms). "Simplicity at the surface… depth underneath" (Headspace). "The complexity is there, it's just not going to overwhelm you" (Halide). Advanced features sit "behind an explicit action" (Darkroom). Guitar Wiz and Tide Guide use layers too.
6. **The app lives outside the app.** Widgets, Live Activities, Dynamic Island, Watch, Siri and App Intents, Shortcuts, Share sheet import, Calendar and Reminders integration. Apple cites these by name again and again (Flighty, Tide Guide, Lumy, Mela, CARROT, Things 3, Guitar Wiz).
7. **Multi-sensory feedback is designed, not defaulted.** Custom haptics (Habits, PowerWash, Denim, Opal, Vocabulary), real-world sounds (CapWords, Pok Pok, Oko), and motion tied to meaning (ink writing, peeling a sticker).
8. **Accessibility is part of quality, not compliance.** Even non-Inclusivity winners are praised for it (Universe, Procreate, Speechify, Land of Livia). VoiceOver labels have to *mean* something (finger positions, grid coordinates).
9. **Designed for the real situation of use.** Gloves on a ski lift (Slopes), messy hands in the kitchen (Crouton, Mela), losing signal on a plane (Flighty), walking a crosswalk (Oko), and portrait over landscape because that's how people actually hold the phone (Oko).
10. **Per-device adaptation, not scaling.** iPad-specific layouts with more controls (Darkroom, Halide), Mac and Watch tuned on their own terms (Guitar Wiz), and many winners across five or six OSes (Tide Guide, Moonlitt, Crouton).
11. **Craft taken to the last detail.** A hand-drawn status bar, a palette matched to the sky, the scribbled frustration cloud in Railbound, release notes written in voice. Apple's citations single out these small details.
12. **Respect for the user.** No login walls, privacy defaults (Any Distance, Harvee, Oko on-device), no clickbait, no timers in kids' games, "no jingles and jangles."
13. **Obvious beats clever (except in the signature moment).** "Good design is also obvious design" (Darkroom). "Boringly obvious" (Flighty). Being unconventional is allowed only where it makes the experience better and testing confirms it (Bears Gratitude card flipping, Procreate Quick Shape).

---
