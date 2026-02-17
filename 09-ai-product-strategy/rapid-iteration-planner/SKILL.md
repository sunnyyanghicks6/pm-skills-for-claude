---
name: rapid-iteration-planner
description: >
  Plan fast iteration cycles using AI-first workflows. Inspired by Nate B Jones (volume
  over perfection) and Lenny Rachitsky (AI-first PM workflows using PRDs and Markdown
  to keep AI agents aligned). Trigger this skill when the user mentions rapid iteration,
  fast shipping, iteration planning, build-measure-learn, speed of execution, or says
  things like "how do we ship faster," "plan our iteration cycles," "help us move
  quicker," or "set up a rapid prototyping process."
---

# Rapid Iteration Planner

Speed of iteration beats quality of planning. The fastest path to a good product is
shipping fast, measuring fast, and learning fast. This skill helps you plan iteration
cycles that maximize learning per unit of time.

## Core Principles

**From Nate B Jones:** Volume over perfection. Hesitation is the real risk. Ship
small, learn fast, compound the learnings.

**From Lenny Rachitsky:** Use PRDs and Markdown files to keep AI agents aligned
across complex builds. Spend more time planning and reviewing than prompting.
Use a debugging workflow when stuck.

**From Shreyas Doshi:** Focus on leverage tasks. Not all iterations are equal —
spend iteration cycles on the things with 10x return potential.

## Before You Start

Ask the user:

1. **What are we iterating on?** — Feature, product, workflow, experiment.
2. **What's the goal?** — Metric to move, hypothesis to validate, MVP to ship.
3. **Team size and composition** — Who's available?
4. **Current cadence** — How fast are you shipping today?
5. **Blockers to speed** — What slows you down? (Approvals, testing, dependencies, perfectionism)

## Iteration Planning Framework

### Step 1: Define the Learning Goal

Each iteration cycle should answer ONE question:

"By the end of this cycle, we will know [specific thing] because we [shipped/tested/measured X]."

If the learning goal is vague, the iteration will be unfocused.

### Step 2: Design the Minimum Viable Test

What's the absolute smallest thing we can build to answer our question?

| Approach | Build Time | Learning Quality | Trade-off |
|----------|-----------|-----------------|-----------|
| Fake door (button → waitlist) | 1 day | Demand signal only | No usage data |
| Wizard of Oz (manual backend) | 3 days | Real usage | Doesn't scale |
| Hardcoded prototype | 1 week | Real usage + some edge cases | Technical debt |
| Production feature (limited) | 2 weeks | Full signal | Longer cycle |

Choose the approach that maximizes learning per day of engineering.

### Step 3: Plan the Cycle

```
## Iteration Cycle — [Name]

**Learning goal:** [What we'll know at the end]
**Approach:** [What we're building]
**Duration:** [X days]
**Team:** [Who's working on this]

### Day-by-Day Plan
| Day | Focus | Deliverable | Decision Point |
|-----|-------|------------|---------------|
| D1 | Design + plan | Spec + mockup | Go/no-go on approach |
| D2-D3 | Build | Working prototype | Check feasibility |
| D4 | Test + instrument | Deployed + instrumented | Verify data collection |
| D5 | Measure + learn | Data + insights | Continue / pivot / stop |

### Success Criteria (Pre-Defined)
- **Ship it:** [Metric] exceeds [threshold]
- **Iterate:** [Metric] shows promise but below threshold → run another cycle
- **Kill it:** [Metric] below [floor] → abandon this direction

### What We're NOT Doing (Scope Control)
- [Thing we're deliberately skipping to move faster]
- [Thing we'll add in a future cycle if this works]
```

### Step 4: AI-Accelerated Workflow (Lenny Rachitsky)

Use AI tools to compress cycle time:

1. **PRD in Markdown** — Keep the spec in a `.md` file that AI agents can reference.
   Update it as you learn. This becomes your source of truth.
2. **AI for first drafts** — Use AI to generate copy, specs, test cases, and analysis
   frameworks. Human reviews and refines.
3. **4x4 Debugging workflow** — When stuck, try 4 different approaches in 4 minutes
   each. Don't spend an hour on one dead end.
4. **Automated analysis** — Use AI to analyze experiment results, user feedback, and
   metrics immediately after each cycle.

### Step 5: Compound the Learnings

After each cycle, update your knowledge base:

```
## Learning Log — [Date]

**Hypothesis:** [What we believed]
**Test:** [What we did]
**Result:** [What happened]
**Learning:** [What we now know]
**Next action:** [What we'll do differently]
**Confidence update:** [How has our conviction changed?]
```

## Output

```
# Rapid Iteration Plan — [Project Name]

## Strategy
[Overall approach to iteration: what we're optimizing for and why speed matters]

## Iteration Cycles

### Cycle 1: [Name] — [X days]
[Cycle plan as above]

### Cycle 2: [Name] — [X days]
[Dependent on Cycle 1 learnings — describe both branches]

### Cycle 3: [Name] — [X days]
[Further refinement or pivot]

## Speed Multipliers
[Specific practices to move faster: AI tools, scope cuts, parallel work]

## Speed Killers to Avoid
[Patterns that slow teams down: over-speccing, premature optimization, consensus-seeking]

## Metrics
- Cycle time: [target days per cycle]
- Learning velocity: [hypotheses validated per month]
- Ship frequency: [deploys per week]
```

Save as `ITERATION-PLAN-[project-name].md`.
