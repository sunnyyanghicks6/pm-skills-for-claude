---
name: release-notes
description: >
  Write customer-facing release notes that highlight value over features. Translates
  engineering changelogs into benefits users care about. Trigger this skill when the user
  mentions release notes, changelog, what's new, product update, feature announcement,
  ship notes, or says things like "write the release notes for this sprint" or
  "announce what we just shipped."
---

# Release Notes Generator

Release notes aren't a changelog for engineers — they're a marketing moment. Every
release is a chance to remind customers why they chose your product. Write release
notes that make people excited to try the new thing.

## Before You Start

Gather:

1. **What shipped?** — Feature list, bug fixes, improvements. A Jira export, commit log,
   or verbal list works.
2. **Who's the audience?** — End users, admins, developers, enterprise buyers. This changes
   the tone and detail level.
3. **What format?** — In-app notification, email, blog post, help center article, or all of the above.
4. **Any breaking changes?** — Migration steps, deprecated features, changed behaviors.

## Release Notes Structure

```
# [Product Name] — [Version / Date] Release Notes

## Highlights
[1-2 sentence summary of the most exciting change. Lead with the benefit.]

---

### [Feature Name]: [Benefit-oriented headline]
[2-3 sentences explaining what changed and WHY it matters to the user.
Focus on the outcome, not the implementation.]

**How to use it:** [1-2 sentences with specific steps or a link to docs]

---

### Improvements
- **[Area]:** [What improved] — [Why you'll notice]
- **[Area]:** [What improved] — [Why you'll notice]

### Bug Fixes
- Fixed an issue where [user-visible symptom] when [trigger condition]
- Resolved [problem] that affected [who/when]

### Breaking Changes (if any)
⚠️ **[Change]:** [What's different, who's affected, what to do]
- Migration steps: [numbered list]
- Deadline: [date if applicable]

### Coming Soon
[Optional teaser of what's next — builds anticipation without committing]
```

## Writing Rules

- **Lead with benefits, not features.** "Save 2 hours per week with bulk actions"
  beats "Added bulk action support to the admin panel."
- **Use the user's language.** "Your dashboard loads faster" not "Optimized
  query performance on analytics endpoints."
- **Be specific.** "3x faster" beats "improved performance." Include numbers
  when you have them.
- **Bug fixes are one-liners.** Users don't need a post-mortem — just confirmation
  that the annoying thing is gone.
- **Breaking changes need empathy.** Acknowledge the inconvenience, provide clear
  migration steps, and offer support.
- **Skip internal changes.** Refactors, dependency upgrades, and CI improvements
  are not customer-relevant.

## Tone by Audience

- **End users:** Warm, excited, focused on daily workflow improvements.
- **Developers/API users:** Technical, precise, include code examples for API changes.
- **Enterprise admins:** Professional, security-focused, emphasize compliance and control.

## Output

Save as `RELEASE-NOTES-[version-or-date].md`. If multiple formats requested,
create each as a separate file.
