---
name: juju-content-illustrations
description: Use this skill when the user wants to turn an article, lesson, product note, retrospective, method, or abstract idea into JUJU-style hand-drawn visual method images. It analyzes the content, asks for the output ratio, decides whether to create one image or a series, writes image-generation prompts, and calls the available image-generation tool when possible.
---

# Juju Organizing Lab: Content Illustration Skill

JUJU turns content into hand-drawn visual method images featuring Juju, a white bichon organizer.

The output should feel like a small paper world where a problem becomes easier to enter. Do not make generic cute dog art, pet portraits, slide templates, dashboards, or copied example layouts.

## First Interaction

When the user only says something like:

```text
调用卷卷整理研究所 Skill 帮我生图
帮我把内容生成卷卷内容插画
生成 卷卷整理研究所风格图
Use the juju-content-illustrations skill to make images
Turn this into a Juju-style image
```

Ask:

```text
这次需要做什么？请把你的文章或内容复制给我。
```

After the user provides content, ask:

```text
请选择图片比例 / 平台：

1. 16:9，1600 x 900：X 正文图、公众号头图、公众号正文图、技术复盘图
2. 5:2，1600 x 640：X 封面图、X 长文入口图
3. 3:4，1200 x 1600：小红书正文方法卡、收藏卡、课程型套图
4. 1:1，1200 x 1200：社媒方图
5. 4:5，1440 x 1800：社媒竖图、封面
6. 9:16，1080 x 1920：竖屏封面、故事图
```

Do not ask the user how many images to generate unless the user explicitly wants manual control. Decide the count from the content.

## Core Workflow

1. Read the content.
2. Identify the core claim and reader problem.
3. Decide output type:
   - one image;
   - short series;
   - cover + body cards.
4. Use no more than 10 images per run.
5. Choose the parallel world, color mood, image structure, and variation strategy.
6. Write one prompt per image.
7. Call the available image-generation tool.
8. If no image-generation tool is available, output copy-ready prompts and tell the user what tool is missing.
9. Review the outputs against the QA checklist.

## Count Rules

- Simple opinion or concept: 1 image.
- Dense article with several linked ideas: 3-6 images.
- Course or tutorial content: 1 cover + up to 9 body cards.
- Never create extra images only to fill a quota.
- Every image in a series must carry a different cognitive action.

## Visual Identity

Juju must read as a white bichon dog:

- black eyes;
- black nose;
- clear eye-nose triangle;
- drooping ears;
- short legs;
- small dog proportions;
- optional orange scarf with small `Juju` lettering, or a plain orange scarf when text is too small or unstable.

Avoid:

- sheep-like wool ball;
- generic fluffy mascot;
- pet portrait;
- overly cute healing illustration;
- character standing idle while the diagram does the work.
- Chinese, gibberish, or random symbols on Juju's scarf.

## Style DNA

Default visual language:

- white or near-white paper background;
- light black hand-drawn linework;
- low-saturation accent colors;
- visible paper-world props;
- Chinese labels integrated as handwritten objects;
- one cognitive action per image;
- generous whitespace;
- no slide-template layout.

The recent stable style direction is:

```text
paper practice field + small working props + clear Juju action + low-saturation color shifts
```

The photography composition example in `assets/examples/composition-3x4/` is the current public calibration set.

v0.2 adds a variation layer:

- lighter linework by default;
- semantic color annotations;
- more diverse parallel worlds;
- off-canvas props or gestures only when useful;
- more varied text placement;
- stronger anti-repetition rules.
- more explicit Juju pose and scarf rules.

## Parallel Worlds

Choose a parallel world from the content. Examples:

- paper photography practice field;
- method desk;
- route map;
- small archive room;
- toolbox and workbench;
- emotional weather room;
- retrospective repair shop.
- broken bridge and gap;
- island crossing;
- signal tower;
- folded-paper city;
- small experiment field.

Do not reuse an old world as a template. Each new article should invent its own metaphor.

## Color Rules

Use restrained color. Color should clarify the action, not decorate the canvas.

- White or near-white remains dominant.
- Black linework anchors the image.
- Low-saturation colors may shift by card.
- Orange can mark the main path or Juju's scarf; scarf text should be `Juju` or omitted.
- Blue can mark loops, water, evidence, or secondary path.
- Red is only for small correction marks or warnings.
- Green can mark reusable ideas, saved methods, or growth.
- Purple-gray can mark ambiguity or unnamed states.

For a series:

- Use a shared family mood when the article is narrative or reflective.
- Use controlled color variation when each card teaches a different action.
- Do not let the color system overpower the paper-line identity.

## Prompt Requirements

Each image prompt must include:

- target ratio and size;
- title and allowed text;
- Juju action;
- Juju pose and scarf rule;
- cognitive action;
- metaphor props;
- color mood;
- parallel world;
- variation strategy;
- line language;
- semantic annotation colors;
- text placement;
- negative constraints.

Every prompt must explicitly say:

```text
Juju must look like a white bichon dog, not a sheep or wool ball.
If Juju has scarf text, it must read `Juju`; otherwise keep the scarf plain orange. Do not put Chinese, gibberish, or random marks on the scarf.
```

## Image Tool Handling

Use the image-generation capability available in the current Agent.

If no image tool is available, output copy-ready prompts and say that image generation cannot be executed in the current environment.

Do not pretend an image was generated. If generation fails, say what failed and provide the prompts.

## QA Before Delivery

Before delivery, check:

- Does Juju look like a bichon?
- Does Juju's scarf read `Juju` or stay plain, without Chinese or gibberish?
- Is there one clear cognitive action?
- Is the text readable?
- Is the text integrated into the scene?
- Does the cover differ from body cards?
- Does each card in a series have a different action?
- Does the image change enough from old examples in world, props, composition, line language, color, or text placement?
- Are off-canvas props or gestures used only when they help the content?
- Is the color restrained?
- Does the image avoid copying old examples?

If a generated image fails, label the problem and either regenerate or provide a repair prompt.

## Useful References

- `references/style-dna.md`
- `references/output-formats.md`
- `references/workflow.md`
- `references/prompt-template.md`
- `references/qa-checklist.md`
- `references/variation-system.md`
- `examples/composition-3x4-suite.md`
