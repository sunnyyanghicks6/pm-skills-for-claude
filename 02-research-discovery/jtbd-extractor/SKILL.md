---
name: jtbd-extractor
description: >
  Extract Jobs-to-be-Done statements from research data to uncover innovation opportunities.
  Uses Clayton Christensen's JTBD framework to move beyond feature requests to underlying
  motivations. Trigger this skill when the user mentions jobs to be done, JTBD, customer
  jobs, outcome-driven innovation, job stories, or says things like "what job is the user
  hiring our product for," "find the underlying need," or "go beyond feature requests."
---

# JTBD Extractor

Feature requests tell you what customers think they want. Jobs-to-be-Done tell you
what they actually need. This skill extracts JTBD statements from raw research data
so you can build for motivations, not wish lists.

## Core Concept

A "job" is the progress someone is trying to make in a particular circumstance.
People don't buy products — they hire them to do a job. Understanding the job unlocks
solutions the customer couldn't have articulated.

## Before You Start

Ask the user:

1. **What research data do we have?** — Interview transcripts, survey responses, support
   tickets, behavioral data, feature requests.
2. **What domain?** — Product area, user type, business context.
3. **What decision will this inform?** — New feature ideation, positioning, roadmap
   prioritization, competitive differentiation.

## Extraction Process

### Step 1: Identify Job Signals in Raw Data

Scan the data for signals that reveal underlying jobs:

- **Struggle moments:** "I always have to..." "It's frustrating when..."
- **Workarounds:** "What I usually do instead is..." "I use [competitor/hack] for..."
- **Desired outcomes:** "I wish I could..." "If only it would..."
- **Context switches:** "When I'm in [situation]..." "Right before [event]..."
- **Hiring/firing moments:** "I started using..." "I stopped using..."

### Step 2: Formulate Job Statements

**Main Job Statement Format:**
"When [situation/trigger], I want to [motivation/progress], so I can [desired outcome]."

**Rules for good job statements:**
- The job exists independent of your product. It existed before your product and
  will exist if your product disappears.
- Focus on the progress, not the solution. "Quickly understand my team's status"
  not "view a dashboard."
- Include the circumstance. The same person has different jobs in different contexts.
- One job per statement. If it has "and" in the motivation, it's probably two jobs.

### Step 3: Map the Job Layers

For each main job, identify:

**Functional job:** The practical task they're trying to accomplish.
"Quickly identify which deals are at risk of slipping this quarter."

**Emotional job:** How they want to feel during and after.
"Feel confident I'm not missing anything when I report to the VP."

**Social job:** How they want to be perceived.
"Be seen as the manager who always has their finger on the pulse."

### Step 4: Identify Outcome Expectations

For each job, list the desired outcomes using this format:

**"Minimize the [time/likelihood/effort] of [undesired outcome]"**
or
**"Maximize the [speed/accuracy/completeness] of [desired outcome]"**

Examples:
- Minimize the time it takes to identify at-risk deals
- Minimize the likelihood of being surprised by a missed target
- Maximize the accuracy of my forecast to leadership

### Step 5: Assess Opportunity

Rate each outcome on two dimensions:

| Outcome | Importance (1-10) | Satisfaction (1-10) | Opportunity Score |
|---------|-------------------|--------------------|--------------------|
| [outcome] | [how much they care] | [how well current solutions work] | Importance + (Importance - Satisfaction) |

**Opportunity score > 15:** Underserved — high innovation potential
**Opportunity score 10-15:** Appropriately served — incremental improvement
**Opportunity score < 10:** Overserved — don't invest here

## Output Structure

```
# Jobs-to-be-Done Analysis — [Domain/Product Area]

## Summary
[2-3 sentences: how many jobs identified, biggest unmet need, key insight]

## Job Map

### Job 1: [Main job statement]
**Functional:** [practical task]
**Emotional:** [desired feeling]
**Social:** [desired perception]

**Context/Trigger:** [when does this job arise?]
**Current Solutions:** [what they hire today — competitors, workarounds, manual processes]

**Desired Outcomes:**
| Outcome | Importance | Satisfaction | Opportunity |
|---------|-----------|-------------|-------------|
| [outcome] | [1-10] | [1-10] | [score] |

**Evidence:** [N] data points
- "[supporting quote]" — [source]
- [behavioral data point]

[Repeat for each job]

## Opportunity Ranking
[Rank all outcomes by opportunity score — highest = biggest unmet need]

## Strategic Implications
[What should we build, stop building, or explore further based on this analysis?]
```

Save as `JTBD-ANALYSIS-[domain].md`.
