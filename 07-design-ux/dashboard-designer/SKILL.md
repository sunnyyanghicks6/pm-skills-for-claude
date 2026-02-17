---
name: dashboard-designer
description: >
  Design dashboards that show the right metrics to the right audience with clear hierarchy
  and actionable layout. Trigger this skill when the user mentions dashboard design,
  analytics dashboard, metrics dashboard, reporting dashboard, or says things like
  "design a dashboard for [audience]," "what should we show on the dashboard," or
  "organize our metrics display."
---

# Dashboard Designer

A dashboard isn't a place to dump every metric you have. It's an information radiator
that answers a specific set of questions for a specific audience. If the viewer has
to think about what they're looking at, the dashboard has failed.

## Before You Start

Ask the user:

1. **Who's the audience?** — Execs, PMs, engineers, ops, customers. Each needs different views.
2. **What questions should it answer?** — 3-5 specific questions, not "show everything."
3. **What decisions does it support?** — What will someone DO after looking at it?
4. **Data available** — What metrics exist and what needs to be built?
5. **Refresh cadence** — Real-time, hourly, daily, weekly.

## Design Process

### Step 1: Define the Information Hierarchy

**Level 1 (Glance — 3 seconds):** Am I on track? Is anything on fire?
→ 3-5 headline metrics with trend indicators (up/down/flat)

**Level 2 (Scan — 30 seconds):** What's driving the numbers?
→ Key breakdowns, top-line charts, segment comparisons

**Level 3 (Analyze — 5 minutes):** Where should I dig deeper?
→ Detailed tables, drill-down views, time series

### Step 2: Layout Design

```
┌─────────────────────────────────────────────────┐
│  LEVEL 1: Headline Metrics (3-5 KPIs)           │
│  [Metric] [Trend]  [Metric] [Trend]  [Metric]  │
├──────────────────────┬──────────────────────────┤
│  LEVEL 2: Primary    │  LEVEL 2: Secondary      │
│  Chart/Breakdown     │  Chart/Breakdown          │
│                      │                           │
├──────────────────────┴──────────────────────────┤
│  LEVEL 3: Detailed Table / Drill-down            │
│                                                   │
└─────────────────────────────────────────────────┘
```

### Step 3: Metric Selection per Audience

| Audience | Key Questions | Metrics | Cadence |
|----------|-------------|---------|---------|
| Exec | Are we growing? Are we profitable? | MRR, growth rate, burn | Weekly |
| PM | Is the product healthy? What needs attention? | Activation, retention, feature adoption | Daily |
| Engineering | Is the system healthy? | Uptime, latency, error rate | Real-time |
| Support | What are users struggling with? | Ticket volume, resolution time, top issues | Daily |
| Customers | Am I getting value? | Usage, ROI, team activity | On-demand |

### Step 4: Visualization Principles

- **Time series** for trends (line chart)
- **Bar charts** for comparison across categories
- **Single numbers** for current state with trend arrows
- **Tables** for detailed drill-down data
- **Heatmaps** for patterns across two dimensions
- **Never use pie charts** for more than 3 segments

Color coding:
- Green = on track / improving
- Yellow = watch / declining
- Red = needs action / below threshold

### Step 5: Alert and Threshold Design

Every headline metric needs:
- **Green threshold:** [metric] > [value] — all good
- **Yellow threshold:** [value] > [metric] > [value] — investigate
- **Red threshold:** [metric] < [value] — action required

## Output

```
# Dashboard Design — [Name] for [Audience]

## Purpose
[What questions this dashboard answers]

## Metrics Inventory
| Metric | Definition | Source | Refresh | Threshold (R/Y/G) |
|--------|-----------|--------|---------|-------------------|
| [metric] | [how calculated] | [data source] | [cadence] | [thresholds] |

## Layout Specification
[Wireframe with metric placement and chart types]

## Interaction Design
- [Filters available]
- [Drill-down paths]
- [Date range controls]
- [Export capabilities]

## Technical Requirements
- Data sources: [list]
- Refresh frequency: [cadence]
- Access control: [who sees what]
- Tool recommendation: [Looker/Tableau/Metabase/custom]
```

Save as `DASHBOARD-DESIGN-[name].md`.
