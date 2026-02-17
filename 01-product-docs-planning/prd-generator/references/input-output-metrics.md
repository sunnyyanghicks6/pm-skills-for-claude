# Input/Output Metrics Methodology (Aakash Gupta)

## Core Concept

Every product metric is either an **input** (something you can directly influence through
product changes) or an **output** (a business result that emerges from multiple inputs).

The mistake most PMs make: they set output metrics as goals without understanding which
inputs drive them. Then when the output metric doesn't move, they don't know what lever
to pull.

## How It Works

### Output Metrics (Lagging)
These are the business results you care about:
- Revenue, MRR, ARR
- Retention rate
- NPS / CSAT
- Market share
- LTV

You can't directly change these. They're the RESULT of input metrics moving.

### Input Metrics (Leading)
These are the actions and behaviors you CAN influence:
- Activation rate (% of signups who reach "aha moment")
- Feature adoption (% of users who try new feature in first 7 days)
- Session frequency (sessions per user per week)
- Task completion rate
- Time to value (how fast users get first benefit)

## Building a Metrics Framework for Your PRD

### Step 1: Define the Output Metric
"What business result does this feature ultimately serve?"
Example: Increase trial-to-paid conversion from 12% to 18%.

### Step 2: Identify Input Metrics
"What user behaviors, if changed, would move the output?"
Example:
- % of trial users who complete onboarding (currently 64%)
- % of trial users who invite a teammate (currently 8%)
- % of trial users who use core feature 3+ times in first week (currently 31%)

### Step 3: Target the Input You're Changing
"Which input metric does THIS feature specifically improve?"
Example: This PRD targets onboarding completion rate (64% -> 80%).

### Step 4: Connect Input to Output
"What's the evidence that improving this input will improve the output?"
Example: Users who complete onboarding convert at 28% vs 4% for those who don't.
If we move completion from 64% to 80%, modeled impact is +3.8pp on conversion.

## Using This in PRD Section 3

The Goals & Success Metrics table should contain BOTH input and output metrics:

| Metric | Type | Current | Target | Method |
|--------|------|---------|--------|--------|
| Trial-to-paid conversion | Output | 12% | 15.8% | Stripe dashboard |
| Onboarding completion rate | Input | 64% | 80% | Product analytics |
| Time to first value action | Input | 4.2 days | 1.5 days | Event tracking |

This structure shows the causal chain: your feature changes inputs, inputs drive outputs.

## Connection to AARRR Pirate Metrics

Aakash's input/output model maps cleanly onto the AARRR funnel:
- **Acquisition** — Input: signup sources. Output: total signups.
- **Activation** — Input: onboarding steps completed. Output: activated users.
- **Retention** — Input: feature usage frequency. Output: D7/D30 retention.
- **Revenue** — Input: upgrade prompts seen. Output: conversion rate.
- **Referral** — Input: share actions taken. Output: viral coefficient.

Each stage has inputs you can influence and outputs you measure.
