---
name: stakeholder-update
description: >
  Write executive stakeholder updates using the SCQA (Situation-Complication-Question-Answer)
  framework. Tailored to audience: executives get outcomes, engineering gets details.
  Trigger this skill when the user mentions stakeholder update, status update, executive
  update, weekly update, monthly report, progress report, or says things like "write my
  weekly update," "send a status to leadership," or "update stakeholders on progress."
---

# Stakeholder Update Generator

Stakeholder updates exist to maintain trust and surface decisions. They're not activity
logs — nobody cares how many meetings you had. They're trust-building documents that
answer: "Is this on track, and do you need anything from me?"

## Before You Start

Ask the user:

1. **Who's the audience?** — Exec, cross-functional peers, board, engineering, customers.
2. **Cadence** — Weekly, biweekly, monthly, ad hoc.
3. **What happened?** — Progress, blockers, decisions made, metrics changes.
4. **What do you need?** — Decisions, resources, air cover, nothing (just informing).
5. **Tone** — Routine update vs. escalation vs. celebration.

## Update Templates

### Executive Update (SCQA Framework)

```
# [Project/Product] Update — [Date]

**Overall status:** 🟢 On Track / 🟡 At Risk / 🔴 Off Track

## Situation
[1-2 sentences: Where we are. Factual, no spin.]

## Complication
[1-2 sentences: What's changed, what's challenging, what's new.
If nothing: "No new complications since last update."]

## Question
[The key question this update raises — or "No decision needed this cycle."]

## Answer / Recommendation
[If there's a question: your recommended path forward.
If no question: key progress and next milestones.]

---

## Metrics Snapshot
| Metric | Last Period | This Period | Trend | Target |
|--------|-----------|------------|-------|--------|
| [metric] | [value] | [value] | ↑↓→ | [target] |

## Key Accomplishments
- [Achievement and its impact — not activity, impact]
- [Achievement]

## Risks & Blockers
| Risk/Blocker | Impact | Mitigation | Help Needed? |
|-------------|--------|------------|-------------|
| [issue] | [impact] | [plan] | [yes/no — what] |

## Next Period Focus
1. [Priority 1]
2. [Priority 2]
3. [Priority 3]

## Asks
- [Specific ask from specific person, if any]
```

### Engineering / Cross-Functional Update

```
# [Project] Engineering Update — [Date]

**Sprint:** [N] | **Velocity:** [points] | **Status:** [On Track / At Risk]

## Shipped This Sprint
- [Feature/fix] — [Impact] — [PR/ticket link]

## In Progress
| Item | Owner | Status | ETA | Blocker? |
|------|-------|--------|-----|----------|
| [item] | [name] | [%] | [date] | [Y/N] |

## Technical Decisions Made
- [Decision] — [Rationale] — [Trade-offs accepted]

## Technical Debt / Risks
- [Issue] — [Severity] — [Plan]

## Next Sprint
- [Planned work]
```

## Writing Rules

- **Lead with status.** Green/Yellow/Red in the first line. Don't make readers
  search for the bottom line.
- **No surprises.** If status is changing from green to yellow, explain why
  BEFORE it goes red. Leaders hate surprises.
- **Be specific about asks.** "Need help" is useless. "Need VP of Eng to
  approve 2 additional engineers for 3 weeks to hit Q2 deadline" is actionable.
- **Own bad news.** Don't hide behind passive voice. "Timeline slipped because
  we underestimated the migration complexity" builds more trust than
  "Timeline adjustments were required."
- **Keep it scannable.** Executives read 50 updates a week. Respect their time.

Save as `UPDATE-[project]-[date].md`.
