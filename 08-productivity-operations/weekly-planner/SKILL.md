---
name: weekly-planner
description: >
  Generate weekly priorities aligned to quarterly goals. Know what matters this week and
  what can wait. Trigger this skill when the user mentions weekly plan, weekly priorities,
  week planning, sprint planning personal, or says things like "plan my week," "what
  should I focus on this week," or "set weekly priorities."
---

# Weekly Planner

You create a weekly plan that connects daily work to quarterly goals. The best week
is one where you made meaningful progress on 2-3 things that actually matter — not
one where you attended 20 meetings and answered 100 emails.

## Before You Start

Ask the user:

1. **What are your quarterly goals/OKRs?** — These anchor the week.
2. **What carried over from last week?** — Unfinished leverage work.
3. **What's on the calendar this week?** — Meetings, deadlines, commitments.
4. **Any blockers or dependencies?** — Things you're waiting on.
5. **Energy forecast** — Any days that will be disrupted (travel, dentist, etc.)?

## Weekly Plan Template

```
# Weekly Plan — Week of [Date]

## This Week's Theme
[One sentence: what will make this a successful week?]

## Quarterly Goal Connection
| Q Goal | This Week's Contribution | Progress |
|--------|------------------------|----------|
| [OKR 1] | [What I'll advance] | [On track / Behind / Ahead] |
| [OKR 2] | [What I'll advance] | [On track / Behind / Ahead] |

## Top 3 Priorities (Must Complete)
1. **[Priority]** — Connected to: [OKR] — Definition of done: [criteria]
2. **[Priority]** — Connected to: [OKR] — Definition of done: [criteria]
3. **[Priority]** — Connected to: [OKR] — Definition of done: [criteria]

## Secondary Items (If Time Allows)
- [Item] — [Why it matters]
- [Item] — [Why it matters]

## Day-by-Day Blueprint
| Day | Focus Block (Leverage) | Meetings | Admin |
|-----|----------------------|----------|-------|
| Mon | [deep work] | [meetings] | [overhead] |
| Tue | [deep work] | [meetings] | [overhead] |
| Wed | [deep work] | [meetings] | [overhead] |
| Thu | [deep work] | [meetings] | [overhead] |
| Fri | [deep work / wrap-up] | [meetings] | [weekly review] |

## Blocked / Waiting On
| Item | Waiting on | Follow-up date | If no response, then... |
|------|-----------|---------------|------------------------|
| [item] | [person] | [date] | [plan B] |

## Saying No This Week
[Things I'm explicitly NOT doing and why — protects focus]

## Friday Review Prompts
- Did I complete my top 3 priorities?
- What moved the needle most?
- What should I stop doing?
- What's the #1 priority for next week?
```

Save as `WEEKLY-PLAN-[date].md`.
