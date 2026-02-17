---
name: lno-task-prioritizer
description: >
  Categorize tasks as Leverage, Neutral, or Overhead using Shreyas Doshi's LNO framework
  to maximize impact by focusing energy on what matters most. Trigger this skill when
  the user mentions LNO, leverage neutral overhead, task categorization, energy management,
  high leverage work, or says things like "what should I focus on," "categorize my tasks,"
  "where should I spend my energy," or "I'm overwhelmed with tasks."
---

# LNO Task Prioritizer (Shreyas Doshi)

Most PMs try to do a great job on everything. The LNO framework says that's the wrong
approach — you should deliberately do a BAD job on certain tasks so you can do a
GREAT job on the ones that actually matter.

## Core Concept

Every task falls into one of three categories:

**Leverage tasks (L):** Produce 10x-100x return on the effort invested. These are
the tasks where the difference between a good job and a great job is enormous.
Give these your peak energy, your best hours, your full attention.

**Neutral tasks (N):** Return roughly proportional to effort. A good job and a great
job produce similar outcomes. Do these competently but don't agonize over perfection.

**Overhead tasks (O):** Produce less impact than the effort required. These need to
get done but spending extra time on them has near-zero marginal value. Do the minimum
acceptable version and move on.

## Before You Start

Ask the user:

1. **What are your tasks?** — Full list of what's on their plate. Include recurring work.
2. **What are your current goals/OKRs?** — These determine what counts as leverage.
3. **What's your role level?** — Senior PMs have different leverage tasks than junior PMs.
4. **What's your team context?** — Dependencies, team strengths, delegation options.

## Categorization Process

### Step 1: List All Tasks

Write down everything — scheduled meetings, project work, admin, 1:1s, reviews,
emails, strategy work, operational tasks.

### Step 2: Apply the LNO Test

For each task, ask:
- "If I do an AMAZING job on this instead of a good job, how much more impact would it create?"
- If 10x+ more impact → **Leverage**
- If roughly the same → **Neutral**
- If barely any difference → **Overhead**

### Step 3: Categorize and Plan

```
## Your LNO Map

### 🔴 LEVERAGE — Give Your Best
| Task | Why It's Leverage | Time Block | Energy Level |
|------|------------------|-----------|-------------|
| [task] | [why the delta between good and great is huge] | [when] | Peak |

Strategy: Schedule these during your highest-energy hours. Protect this time.
Say no to meetings during these blocks. Close Slack.

### 🟡 NEUTRAL — Do Well, Don't Agonize
| Task | Approach | Time Budget |
|------|----------|-------------|
| [task] | [good-enough approach] | [max time] |

Strategy: Set a time box. When the timer goes off, ship it. It's good enough.

### ⚪ OVERHEAD — Minimum Viable Effort
| Task | Minimum Acceptable Version | Can Delegate? |
|------|---------------------------|---------------|
| [task] | [what "done" looks like at minimum] | Yes/No — to whom |

Strategy: Batch these. Delegate what you can. Template the rest. Actively try
to spend LESS time on these, not more.
```

### Step 4: Energy Mapping

Map your LNO categories to your daily energy rhythms:

```
Morning (Peak Energy)  → LEVERAGE tasks
Mid-day (Moderate)     → NEUTRAL tasks
Late afternoon (Low)   → OVERHEAD tasks (batch process)
```

### Step 5: Weekly Audit

Each week, review:
- Am I actually spending my peak hours on Leverage tasks?
- Am I spending too long on Overhead tasks?
- Have any tasks changed category? (Context shifts can change what's leverage)
- What Leverage tasks am I avoiding because they're hard or uncomfortable?

## Common PM LNO Examples

**Typically Leverage:**
- Product strategy and vision work
- Critical customer conversations
- Key stakeholder alignment
- Hiring decisions
- The one PRD that defines the quarter

**Typically Neutral:**
- Sprint planning and grooming
- Regular 1:1s with direct reports
- Standard stakeholder updates
- Bug triage and prioritization

**Typically Overhead:**
- Status report formatting
- Routine meeting attendance (no decisions made)
- Updating project management tools
- Most internal emails
- Administrative approvals

## Output

Save as `LNO-MAP-[name]-[date].md`.
