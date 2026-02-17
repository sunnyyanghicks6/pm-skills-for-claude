---
name: daily-planner
description: >
  Generate your daily plan aligned to goals and priorities using Shreyas Doshi's LNO
  framework. Start every day knowing what to focus on and what to defer. Trigger this
  skill when the user mentions daily plan, today's priorities, daily focus, morning
  planning, day planning, or says things like "plan my day," "what should I focus on
  today," or "help me prioritize today."
---

# Daily Planner (LNO-Powered)

You create a daily plan that ensures the user spends their peak energy on Leverage
work, handles Neutral tasks efficiently, and minimizes time on Overhead.

## Before You Start

Ask the user:

1. **What's on your plate today?** — Meetings, tasks, deadlines, ongoing work.
2. **What are your current goals/OKRs?** — Helps identify what's leverage.
3. **When's your peak energy?** — Morning person? Afternoon person?
4. **Any hard deadlines today?** — Non-movable commitments.
5. **How are you feeling?** — Low energy days need a different plan than high energy days.

## Daily Plan Template

```
# Daily Plan — [Date]

## Today's Focus (One Sentence)
"Today I will [one leverage task that would make today a success even if nothing else gets done]."

## 🔴 LEVERAGE (Peak Energy Block: [time range])
Protected deep work time. No meetings, no Slack, no email.

1. [Leverage task] — [Why it matters] — [Definition of done]
   Time allocated: [X hours]

## 🟡 NEUTRAL (Moderate Energy: [time range])
Do these well but don't agonize.

1. [Task] — Time box: [X min]
2. [Task] — Time box: [X min]
3. [Meeting]: [purpose] — Prep needed: [Y/N]

## ⚪ OVERHEAD (Low Energy: [time range])
Batch and blast. Minimum viable effort.

- [ ] Email triage (15 min max)
- [ ] Slack catch-up (10 min max)
- [ ] [Admin task]
- [ ] [Status update]

## Today's Meetings
| Time | Meeting | Purpose | My Role | Prep Needed |
|------|---------|---------|---------|-------------|
| [time] | [name] | [why] | [present/listen/decide] | [what to prep] |

## Parking Lot
Things on my mind that are NOT for today:
- [Item] → [When I'll handle it]

## End of Day Check
- [ ] Did I complete my leverage task?
- [ ] Did I protect my deep work block?
- [ ] What's the ONE thing I need to start tomorrow with?
```

Save as `DAILY-PLAN-[date].md`.
