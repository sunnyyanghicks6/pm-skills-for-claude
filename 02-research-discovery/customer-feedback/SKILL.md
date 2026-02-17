---
name: customer-feedback
description: >
  Analyze and categorize customer feedback into actionable themes using affinity mapping.
  Works with support tickets, NPS responses, app reviews, survey results, or interview
  notes. Trigger this skill when the user mentions customer feedback, support tickets,
  NPS analysis, app reviews, survey responses, feedback analysis, voice of customer,
  VOC, or says things like "what are customers saying," "categorize this feedback,"
  or "find patterns in these support tickets."
---

# Customer Feedback Analyzer

You turn messy, unstructured customer feedback into clear themes with prioritized
action items. The goal is to go from "we have 500 support tickets" to "here are the
3 things that matter most and why."

## Before You Start

Ask the user:

1. **What's the data source?** — Support tickets, NPS comments, app reviews, survey
   open-ends, interview notes, Slack messages, social media.
2. **How much data?** — Volume affects approach (10 responses vs. 1000).
3. **Any hypotheses?** — What does the team already suspect? This helps validate or
   challenge existing assumptions.
4. **What's the decision this informs?** — Roadmap prioritization, churn reduction,
   onboarding improvement. Knowing the decision shapes the analysis.

## Analysis Process

### Step 1: Clean and Normalize

- Remove duplicates and spam
- Standardize language (e.g., "app crashes" and "keeps crashing" are the same issue)
- Note metadata: date, user segment, channel, sentiment

### Step 2: Code Feedback into Themes

Use a bottom-up affinity mapping approach:

1. Read each piece of feedback and assign a **descriptive code** — a short phrase
   capturing the core issue (e.g., "slow load times," "confusing pricing page,"
   "missing export feature").
2. Group related codes into **themes** — higher-level categories that tell a story
   (e.g., "Performance frustrations," "Pricing transparency," "Data portability gaps").
3. Each theme should contain 3+ pieces of supporting evidence.

Do NOT start with predetermined categories. Let the themes emerge from the data.

### Step 3: Quantify and Prioritize

For each theme, capture:

| Theme | Frequency | Severity | User Segment | Trend | Representative Quotes |
|-------|-----------|----------|-------------- |-------|----------------------|
| [theme] | [count / %] | High/Med/Low | [who] | Rising/Stable/Declining | [2-3 verbatim quotes] |

**Severity assessment:**
- **High:** Users churning, revenue impact, or blocking core workflows
- **Medium:** Users frustrated but finding workarounds
- **Low:** Nice-to-have improvements, minor friction

### Step 4: Identify Insights

For each major theme, write an insight statement:

**Format:** "[User segment] is [experiencing/struggling with] [specific problem]
because [root cause]. This is causing [business impact]. Evidence: [N] mentions
across [channels], trending [direction]."

Good insight: "Enterprise trial users are abandoning onboarding at step 3 because
the team invitation flow requires admin permissions they don't have yet. This is
contributing to 23% trial drop-off. 47 mentions in support tickets this quarter,
up from 12 last quarter."

Bad insight: "Users don't like the onboarding."

### Step 5: Recommend Actions

For each insight, suggest:
- **Quick win** — Something fixable in under a week
- **Strategic investment** — A larger initiative that addresses the root cause
- **Further research needed** — What you'd want to validate before committing

## Output Structure

```
# Customer Feedback Analysis — [Source/Date Range]

## Executive Summary
[3-4 sentences: top themes, biggest surprise, recommended priority]

## Theme Breakdown

### Theme 1: [Name] — [Frequency] mentions ([X]%)
**Insight:** [insight statement]
**Severity:** [High/Med/Low] | **Trend:** [Rising/Stable/Declining]
**Key Quotes:**
- "[verbatim quote]" — [user type, date]
- "[verbatim quote]" — [user type, date]
**Recommendations:**
- Quick win: [action]
- Strategic: [action]

[Repeat for each theme]

## Sentiment Overview
- Positive: [X]%
- Neutral: [X]%
- Negative: [X]%
- [Notable shift from previous period, if known]

## Methodology
- Data source: [source]
- Volume: [N] pieces of feedback
- Date range: [range]
- Coding approach: Bottom-up affinity mapping
```

Save as `FEEDBACK-ANALYSIS-[source]-[date].md`.
