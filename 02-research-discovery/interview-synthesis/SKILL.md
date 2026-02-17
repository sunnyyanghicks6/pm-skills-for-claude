---
name: interview-synthesis
description: >
  Transform interview transcripts into structured insights with quotes, patterns, and
  recommendations. Based on Teresa Torres's Continuous Discovery framework. Handles
  single interviews or batch analysis of 5-10 interviews in parallel. Trigger this skill
  when the user mentions interview synthesis, research synthesis, interview analysis,
  transcript analysis, user interviews, customer interviews, or says things like
  "summarize these interviews," "what did we learn from research," or "pull insights
  from these transcripts."
---

# Interview Synthesis

You transform raw interview transcripts into structured insights that product teams
can act on. The goal is to surface patterns across conversations, not just summarize
each one individually.

## Before You Start

Ask the user:

1. **How many interviews?** — Single interview vs. batch (5-10).
2. **Research questions** — What were you trying to learn? This focuses the analysis.
3. **Interview guide** — If available, helps identify which questions map to which themes.
4. **Participant context** — User segments, experience levels, account types.

## Single Interview Synthesis

### Step 1: Extract Key Moments

Read the transcript and tag every meaningful moment:

- **Pain points** — Frustrations, struggles, workarounds
- **Unmet needs** — Wishes, desired outcomes, gaps
- **Behaviors** — What they actually do (vs. what they say they do)
- **Emotions** — Strong reactions, enthusiasm, resignation
- **Surprises** — Anything that contradicts your assumptions
- **Verbatim quotes** — Capture exact words for the most compelling moments

### Step 2: Structure the Synthesis

```
# Interview Synthesis — [Participant ID/Name]

**Date:** [date] | **Duration:** [minutes] | **Segment:** [user type]
**Interviewer:** [name] | **Research questions:** [1-2 sentence summary]

## Key Insights

### Insight 1: [Descriptive title]
[2-3 sentences explaining the insight]
**Quote:** "[verbatim]"
**Implication:** [What this means for the product]

### Insight 2: [Descriptive title]
[repeat pattern]

## Behavioral Observations
- [What they do, not what they say]
- [Workarounds observed]
- [Tools/processes mentioned]

## Jobs to be Done (identified)
- "When [situation], I want to [motivation], so I can [outcome]."

## Surprises / Contradictions
- [Things that challenged assumptions]

## Follow-up Questions
- [What you'd ask next time based on what you learned]

## Raw Tags
[Flat list of all coded moments for cross-interview analysis]
```

## Batch Synthesis (5-10 Interviews)

### Step 1: Synthesize Each Interview Individually
Run the single interview process for each transcript.

### Step 2: Cross-Interview Pattern Analysis

Build a theme matrix:

| Theme | P1 | P2 | P3 | P4 | P5 | Total | Strength |
|-------|----|----|----|----|-----|-------|----------|
| [theme] | x | x | | x | | 3/5 | Strong |

**Pattern strength:**
- **Strong (60%+):** Mentioned by most participants — likely a real pattern
- **Moderate (40-59%):** Worth investigating further
- **Emerging (20-39%):** May be segment-specific — check who mentioned it
- **Anecdotal (<20%):** Interesting but don't build a roadmap on it

### Step 3: Insight Hierarchy

Organize findings using Teresa Torres's framework:

```
Desired Outcome: [What we're trying to achieve]
├── Opportunity 1: [Pattern/theme] — Strong (4/6 participants)
│   ├── Evidence: [key quotes across participants]
│   ├── Implication: [what to build or change]
│   └── Confidence: High / Medium / Low
├── Opportunity 2: [Pattern/theme] — Moderate (3/6 participants)
│   └── ...
└── Opportunity 3: [Pattern/theme] — Emerging (2/6 participants)
    └── ...
```

### Step 4: Batch Output

```
# Research Synthesis — [Study Name]

## Study Overview
- **Research questions:** [what we set out to learn]
- **Participants:** [N] interviews, [segments represented]
- **Date range:** [when interviews conducted]

## Executive Summary
[3-5 sentences: top findings, biggest surprise, confidence level, recommended next steps]

## Top Findings

### Finding 1: [Theme] — [Strong/Moderate/Emerging]
**Pattern:** [2-3 sentences describing what you found]
**Evidence:** Mentioned by [N/total] participants
- "[Quote]" — P1 ([segment])
- "[Quote]" — P3 ([segment])
**Segment differences:** [Any variation by user type]
**Recommendation:** [What to do with this insight]

[Repeat for each major finding]

## Opportunity Map
[Teresa Torres opportunity tree connecting findings to desired outcomes]

## Methodology Notes
- Potential biases: [sampling bias, leading questions, small sample]
- Confidence level: [High/Medium/Low] and why
- Recommended follow-up: [What to validate quantitatively]
```

Save as `RESEARCH-SYNTHESIS-[study-name].md`.
