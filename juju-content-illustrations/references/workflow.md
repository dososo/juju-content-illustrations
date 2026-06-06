# Workflow

## 1. Intake

If the user has not provided content, ask:

```text
这次需要做什么？请把你的文章或内容复制给我。
```

After content is provided, ask for ratio / platform:

```text
请选择图片比例 / 平台：

1. 16:9，1600 x 900：X 正文图、公众号头图、公众号正文图、技术复盘图
2. 5:2，1600 x 640：X 封面图、X 长文入口图
3. 3:4，1200 x 1600：小红书正文方法卡、收藏卡、课程型套图
4. 1:1，1200 x 1200：社媒方图
5. 4:5，1440 x 1800：社媒竖图、封面
6. 9:16，1080 x 1920：竖屏封面、故事图
```

## 2. Content Analysis

Identify:

- core claim;
- reader problem;
- emotional tone;
- useful structure;
- possible image count;
- possible parallel world.

## 3. Structure Decision

Decide:

- one image;
- short series;
- cover + body cards.

Do not ask for count by default.

## 4. Card Plan

For each card, define:

- title;
- cognitive action;
- Juju action;
- metaphor;
- props;
- allowed text;
- color mood;
- ratio.

## 5. Prompting

Use `prompt-template.md`.

## 6. Generation

Use any image-generation tool exposed by the current Agent. If unavailable, output prompts.

## 7. QA

Run `qa-checklist.md` mentally before delivery.

## 8. Delivery

Return:

- generated images or prompts;
- image count and ratio;
- short explanation of what each image does;
- any quality risks or repair suggestions.
