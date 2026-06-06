# Juju Organizing Lab: Content Illustration Skill

Juju does not help you hustle harder. It helps you reduce friction and begin.

Turn articles, lessons, product notes, and retrospectives into clear, saveable, reusable hand-drawn visual method cards.

Juju is a white bichon organizer for complex ideas. It is not a pet avatar or a cute sticker. It enters a small paper-world scene to circle the key point, untangle relationships, light the path, and make scattered content easier to understand and use.

## Examples

This example is a photography composition lesson: one cover plus nine body cards. The cover introduces the parallel world, while each body card explains one visual action.

![Composition practice field](juju-content-illustrations/assets/examples/composition-3x4/composition-cover.png)

| Center | Horizon | Rule of Thirds |
|---|---|---|
| ![Center composition](juju-content-illustrations/assets/examples/composition-3x4/composition-01-center.png) | ![Horizon composition](juju-content-illustrations/assets/examples/composition-3x4/composition-02-horizon.png) | ![Rule of thirds](juju-content-illustrations/assets/examples/composition-3x4/composition-04-thirds.png) |

| Diagonal | Frame | Repetition |
|---|---|---|
| ![Diagonal composition](juju-content-illustrations/assets/examples/composition-3x4/composition-06-diagonal.png) | ![Frame composition](juju-content-illustrations/assets/examples/composition-3x4/composition-08-frame.png) | ![Repetition composition](juju-content-illustrations/assets/examples/composition-3x4/composition-09-repetition.png) |

## What It Does

- Converts long-form content, lessons, product notes, technical retrospectives, and essays into Juju-style images.
- Produces one strong visual, or a cover plus multiple body cards.
- Turns the content into titles, visual actions, low-tech metaphors, integrated Chinese labels, and image-generation prompts.
- Chooses color mood, parallel world, and visual rhythm from the content tone.
- Works with the image-generation capability available in the current Agent. If images cannot be generated directly, it outputs copy-ready prompts.

## Who It Is For

- Writers publishing on X, newsletters, blogs, WeChat, Rednote/Xiaohongshu, or internal docs.
- People who want original visual explanations instead of generic infographic templates.
- Creators working with AI, product thinking, education, photography, learning notes, and retrospectives.
- Teams that need a stable visual system but do not want to redesign from scratch every time.
- Anyone who wants content to be easier to understand, save, and reuse.

Not for:

- Pet portraits.
- Pure cute dog illustrations.
- Slide-style infographic templates.
- Copying the layout of an old example.

## Visual Style

The core of Juju's style is not cuteness. It is making a problem enterable.

- White or near-white paper background.
- Light black hand-drawn lines.
- Low-saturation color accents chosen from the content mood.
- Juju must read as a white bichon: black eyes, black nose, clear eye-nose triangle, drooping ears, short legs, and small dog proportions.
- Each image explains one cognitive action.
- Chinese text is part of the image as titles, labels, sticky notes, arrows, and paper scraps.
- The scene may have its own world, but props and atmosphere should never overpower the content judgment.

## Parallel Worlds

Juju places content inside tactile, low-tech visual worlds, such as:

- Paper photography practice field.
- Method desk.
- Route map.
- Small archive room.
- Toolbox and workbench.
- Emotional weather room.
- Retrospective repair shop.

These worlds are not fixed templates. Each new article should invent its own metaphor from the content.

## Workflow

After installation, trigger the skill with:

```text
Use the juju-content-illustrations skill to generate an image.
```

Other useful triggers:

```text
Turn this article into a Juju-style image.
Generate Juju-style visuals for this content.
Use Juju Organizing Lab to turn this text into content illustrations.
```

The skill first asks:

```text
What do you need this time? Please paste your article or content.
```

After receiving the content, it asks for the target format:

```text
Choose an image ratio / platform:

1. 16:9, 1600 x 900: X post image, newsletter header, article body image, technical retrospective
2. 5:2, 1600 x 640: X cover image, X long-form entry image
3. 3:4, 1200 x 1600: Rednote/Xiaohongshu method card, saveable card, course series
4. 1:1, 1200 x 1200: square social image
5. 4:5, 1440 x 1800: vertical social image, cover
6. 9:16, 1080 x 1920: story image, vertical cover
```

You do not need to decide the image count in advance. The skill decides whether the content fits one image, a short series, or one cover plus multiple body cards. One run supports up to 10 images.

If the current environment can generate images, it proceeds with generation. If not, it outputs complete prompts that can be copied into your image tool.

## Installation

The simplest option:

```text
Please install the juju-content-illustrations folder in this repository as an available Skill.
```

If your Agent can install local skills, give it the sentence above.

Manual installation:

Place the `juju-content-illustrations/` folder in your Agent skills directory.

Example:

```bash
mkdir -p ~/.codex/skills
cp -R juju-content-illustrations ~/.codex/skills/
```

Other local Agents:

- Make sure the Agent can read `juju-content-illustrations/SKILL.md`.
- Make sure it can access `references/`, `examples/`, and `assets/examples/`.
- If the Agent cannot generate images directly, use the generated prompts manually.

## Directory Structure

```text
juju-content-illustrations/
├── SKILL.md
├── references/
│   ├── style-dna.md
│   ├── output-formats.md
│   ├── workflow.md
│   ├── prompt-template.md
│   └── qa-checklist.md
├── examples/
│   └── composition-3x4-suite.md
└── assets/
    └── examples/
        └── composition-3x4/
            ├── composition-cover.png
            ├── composition-01-center.png
            └── ...
```

## FAQ

**Does it decide how many images to generate?**  
Yes. Users provide content and a target format. The skill decides whether the content needs one image, a short series, or a cover plus body cards. One run supports up to 10 images.

**Can I force a specific count?**  
You can, but it is not recommended. Juju's core value is deciding the right structure from the content.

**Which ratios are supported?**  
16:9, 5:2, 3:4, 1:1, 4:5, and 9:16. 16:9, 5:2, and 3:4 are the primary defaults.

**Does it require one specific image model?**  
No. If the current environment can generate images, use it directly. If not, use the copy-ready prompts.

**Can I use it commercially?**  
Check the License. Also confirm the usage terms of your image model and the rights to your source content.

## Author

爆裂队长NEXT

15yr PM. Fired myself. Hired 10 AIs. Turns out managing AIs is harder than managing humans.

AI Agents BLTeam field notes. Real production work, production-grade lessons, and ongoing firsthand signals. Less secondhand noise, more firsthand sources.

X/Twitter: [@thinkszyg](https://x.com/thinkszyg)

Email: blteam2026@outlook.com

## License

MIT. See `LICENSE`.
