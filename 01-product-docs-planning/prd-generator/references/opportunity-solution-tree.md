# Opportunity Solution Tree (Teresa Torres)

The Opportunity Solution Tree is a visual framework for structuring product discovery.
It connects desired outcomes to opportunities to solutions to experiments, ensuring
every feature maps back to a real user need.

## Structure

```
Desired Outcome (business/product goal)
├── Opportunity 1 (user need or pain point)
│   ├── Solution A
│   │   ├── Experiment 1
│   │   └── Experiment 2
│   └── Solution B
│       └── Experiment 3
├── Opportunity 2
│   └── Solution C
│       └── Experiment 4
└── Opportunity 3
    ├── Solution D
    └── Solution E
```

## How to Use in PRDs

1. **Start with the desired outcome** — This is your success metric from Section 3.
   "Increase trial-to-paid conversion from 12% to 18%."

2. **Map opportunities** — These are the user needs or pain points you've discovered
   through research. Each opportunity should be:
   - Framed from the user's perspective ("I can't figure out which plan is right for me")
   - Supported by evidence (interviews, data, support tickets)
   - Independent enough to pursue separately

3. **Generate solutions per opportunity** — For each opportunity, brainstorm multiple
   solutions. The PRD will focus on your chosen solution, but documenting alternatives
   shows you've considered the space.

4. **Design experiments** — Before building the full solution, what's the smallest
   thing you can test to validate the approach?

## Why This Matters for PRDs

The most common PRD failure mode is jumping straight from "stakeholder request" to
"solution spec." The OST forces you to:
- Verify the opportunity is real (evidence-backed)
- Consider alternative solutions (not just the first idea)
- Connect everything back to a measurable outcome

## Key Principle from Torres

"If you can't draw a line from your solution back to a desired outcome through a
specific opportunity, you're building something nobody asked for."

## Application to Section 1 (Problem Statement)

When writing the Problem Statement, use the OST to frame it:
- **Desired Outcome** becomes your goal
- **Opportunity** becomes your problem statement
- **Solution** becomes Section 5
- **Experiments** inform your rollout plan
