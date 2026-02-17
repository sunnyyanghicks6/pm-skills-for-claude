---
name: api-documentation
description: >
  Write clear, developer-friendly API documentation with authentication, endpoints,
  request/response examples, error handling, and rate limits. Trigger this skill when
  the user mentions API docs, API documentation, endpoint documentation, developer docs,
  API reference, or says things like "document this API," "write docs for these endpoints,"
  or "create a developer guide."
---

# API Documentation Generator

Good API docs are the difference between a developer integrating in 30 minutes vs.
filing a support ticket. Write docs that a developer can follow without reading the
source code.

## Before You Start

Gather:

1. **API spec or endpoint list** — OpenAPI/Swagger file, route definitions, or verbal description.
2. **Authentication method** — API key, OAuth 2.0, JWT, session-based.
3. **Base URL and environments** — Production, staging, sandbox.
4. **Rate limits** — Requests per minute/hour, burst limits.
5. **Audience** — External developers, internal teams, or both.

## Documentation Structure

```
# [API Name] Documentation

## Overview
[2-3 sentences: what this API does, who it's for, what you can build with it.]

## Base URL
```
Production: https://api.example.com/v1
Sandbox:    https://sandbox.api.example.com/v1
```

## Authentication

[Explain the auth method with a concrete example]

```bash
curl -H "Authorization: Bearer YOUR_API_KEY" \
  https://api.example.com/v1/resource
```

**Getting your API key:** [Steps to obtain credentials]

## Quick Start

Get up and running in 3 steps:

1. [Get credentials]
2. [Make your first request — include a complete curl example]
3. [Check the response — show what success looks like]

---

## Endpoints

### [Resource Name]

#### Create [Resource]
`POST /v1/resources`

Creates a new resource.

**Request Headers:**
| Header | Required | Description |
|--------|----------|-------------|
| Authorization | Yes | Bearer token |
| Content-Type | Yes | application/json |

**Request Body:**
```json
{
  "name": "string (required) — Display name, 1-255 characters",
  "type": "string (required) — One of: typeA, typeB, typeC",
  "metadata": "object (optional) — Key-value pairs, max 50 keys"
}
```

**Response (201 Created):**
```json
{
  "id": "res_abc123",
  "name": "My Resource",
  "type": "typeA",
  "metadata": {},
  "created_at": "2025-01-15T10:30:00Z",
  "updated_at": "2025-01-15T10:30:00Z"
}
```

**Error Responses:**
| Status | Code | Description |
|--------|------|-------------|
| 400 | invalid_request | Missing or invalid fields |
| 401 | unauthorized | Invalid or missing API key |
| 409 | conflict | Resource with this name already exists |
| 422 | unprocessable | Valid JSON but business rule violation |
| 429 | rate_limited | Too many requests |

[Repeat for each endpoint: List, Get, Update, Delete]

---

## Pagination

List endpoints return paginated results:
```json
{
  "data": [...],
  "has_more": true,
  "next_cursor": "cur_xyz789"
}
```
Pass `?cursor=cur_xyz789` to get the next page. Default page size: 25. Max: 100.

## Error Handling

All errors follow a consistent format:
```json
{
  "error": {
    "code": "invalid_request",
    "message": "Human-readable explanation",
    "details": { "field": "name", "reason": "required" }
  }
}
```

### Common Error Codes
[Table of all error codes with descriptions and recommended actions]

## Rate Limits

| Plan | Requests/min | Burst |
|------|-------------|-------|
| Free | 60 | 10 |
| Pro | 600 | 100 |
| Enterprise | Custom | Custom |

Rate limit headers included in every response:
- `X-RateLimit-Limit`: Max requests per window
- `X-RateLimit-Remaining`: Requests remaining
- `X-RateLimit-Reset`: Unix timestamp when window resets

## Webhooks (if applicable)

[Event types, payload format, retry policy, signature verification]

## SDKs & Libraries

[Links to official and community SDKs]

## Changelog

[Version history with breaking changes highlighted]
```

## Writing Guidelines

- **Every endpoint needs a working example.** Curl is the universal language.
- **Show real responses**, not schemas. Developers copy-paste from docs.
- **Document error cases as thoroughly as success cases.** Developers spend more
  time debugging errors than celebrating successes.
- **Be explicit about required vs. optional fields.** Don't make developers guess.
- **Include rate limit info per endpoint** if they vary.

## Output

Save as `API-DOCS-[api-name].md`.
