# AI-Native: The Open-Source Company OS
## Complete Build Guide — From Zero to 100k Stars

---

## OVERVIEW

This guide covers every step of creating, launching, and growing the `ai-native` GitHub repository — an open-source framework that lets any company (solo founder to established team) become fully AI-native. The framework is extracted from what you have already built for Oryzon, generalised for any company, and packaged for maximum virality and contributor momentum.

Target: 100k GitHub stars. Timeline: 12 months if the launch is executed correctly.

---

## PART 1: POSITIONING BEFORE YOU BUILD ANYTHING

This step is the most important. The README is what gets you 100k stars, not the code.

### 1.1 The Single-Sentence Pitch

Everything in this project must answer one question in the first five seconds a developer looks at the repo:

> **"What does this give me that I don't have right now?"**

The answer for `ai-native`:

> *A complete, working system that makes every decision, meeting, agent run, and company action permanently searchable, compounding, and agent-readable — so your company grows smarter automatically.*

That is the pitch. Not "AI prompts." Not "a productivity system." A **closed-loop operating system** where the company itself becomes the AI's long-term memory.

### 1.2 What Makes This Different From Every Other AI Repo

There are thousands of "awesome AI prompts" and "Claude tips" repos. Here is why this one is different — and why the README must make this clear:

| Other AI repos | ai-native |
|---|---|
| Collection of prompts | Complete operating system |
| One-shot outputs | Compounding knowledge (LLM Wiki) |
| Human reads the output | Agents read the output and act |
| No memory between sessions | Permanent institutional memory |
| Tips and tricks | Decision authority matrix, rituals, protocols |
| For individual developers | For entire companies (any size) |
| Requires rebuilding from scratch | Fork and deploy in 48 hours |

### 1.3 Target Audiences (in order of priority)

1. **Solo founders / indie hackers** — highest virality per person, share aggressively
2. **Two-to-five person startups** — perfect fit, highest conversion to serious users
3. **Engineering teams at mid-size companies** — want agent-docs, cursor rules
4. **CTOs who read HackerNews** — the distribution unlock (one HN thread can drive 20k stars)
5. **AI-curious non-technical founders** — need the Notion OS and agent workforce templates

### 1.4 The Name

Repository name: **`ai-native`**
GitHub URL: `github.com/[yourusername]/ai-native`
Tagline: *The open-source operating system for AI-native companies*

---

## PART 2: REPOSITORY SETUP

### 2.1 Create the Repository

```bash
# On GitHub (github.com):
# 1. Click New Repository
# 2. Repository name: ai-native
# 3. Description: The open-source operating system for AI-native companies
# 4. Visibility: Public
# 5. Initialize with: README (blank — you will replace it)
# 6. Add .gitignore: None (add manually)
# 7. License: MIT
# 8. Click Create Repository

# Clone locally
git clone https://github.com/[yourusername]/ai-native.git
cd ai-native
```

### 2.2 Full Repository Structure

Create this exact folder structure before writing any content:

```
ai-native/
│
├── README.md                          ← The most important file in the repo
├── CONTRIBUTING.md                    ← How to contribute
├── CODE_OF_CONDUCT.md                 ← Community standards
├── LICENSE                            ← MIT License
├── CHANGELOG.md                       ← Version history
├── ROADMAP.md                         ← Public roadmap
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md
│   │   ├── feature_request.md
│   │   └── adapter_request.md         ← Request a new tool adapter
│   ├── PULL_REQUEST_TEMPLATE.md
│   └── workflows/
│       └── validate.yml               ← Lint markdown, validate JSON
│
├── core/                              ← The framework itself
│   ├── README.md                      ← What lives here
│   │
│   ├── brain/                         ← LLM Wiki system
│   │   ├── README.md
│   │   ├── SCHEMA.md                  ← How the wiki works (the most critical file)
│   │   ├── index.md                   ← Master wiki catalog template
│   │   ├── log.md                     ← Ingestion log (append-only)
│   │   ├── wiki/
│   │   │   ├── _TEMPLATE.md           ← Wiki page template
│   │   │   ├── competitors.md
│   │   │   ├── decisions.md
│   │   │   ├── icp.md
│   │   │   ├── market.md
│   │   │   ├── technical.md
│   │   │   └── team.md
│   │   └── raw/
│   │       └── README.md              ← Incoming sources structure
│   │
│   ├── agent-docs/                    ← Agent context system
│   │   ├── README.md
│   │   ├── COMPANY.md                 ← Template
│   │   ├── TECHNICAL.md               ← Template
│   │   ├── CURRENT_SPRINT.md          ← Template
│   │   ├── GOTCHAS.md                 ← Template
│   │   ├── DECISIONS.md               ← Template
│   │   ├── SESSIONS_LOG.md            ← Template
│   │   └── SKILLS.md                  ← Template
│   │
│   ├── agents/                        ← Agent workforce templates
│   │   ├── README.md
│   │   ├── ceo/
│   │   │   ├── daily-briefing.md
│   │   │   ├── market-intelligence.md
│   │   │   └── decision-support.md
│   │   ├── cto/
│   │   │   ├── sprint-planning.md
│   │   │   ├── pr-review.md
│   │   │   ├── architecture-support.md
│   │   │   └── monitoring.md
│   │   ├── cmo/
│   │   │   ├── content-creation.md
│   │   │   ├── lead-sourcing.md
│   │   │   ├── outreach-ops.md
│   │   │   └── sales-briefing.md
│   │   └── coo/
│   │       ├── health-check.md
│   │       ├── onboarding.md
│   │       └── churn-prevention.md
│   │
│   ├── protocols/                     ← Session protocols
│   │   ├── README.md
│   │   ├── session-start.md
│   │   ├── session-end.md
│   │   ├── grill-me.md
│   │   └── context-audit.md
│   │
│   ├── decisions/                     ← Decision framework
│   │   ├── README.md
│   │   ├── authority-matrix.md
│   │   ├── decision-log-template.json
│   │   └── decision-log-template.md
│   │
│   ├── standards/                     ← Dual-output standard
│   │   ├── README.md
│   │   ├── dual-output.md
│   │   ├── json-envelope.md
│   │   └── artifact-storage.md
│   │
│   ├── rituals/                       ← Operating rituals
│   │   ├── README.md
│   │   ├── daily.md
│   │   ├── weekly.md
│   │   ├── monthly.md
│   │   └── quarterly.md
│   │
│   └── cursor-rules/                  ← Cursor / IDE rules
│       ├── global.mdc
│       ├── backend.mdc
│       ├── frontend.mdc
│       ├── testing.mdc
│       └── security.mdc
│
├── adapters/                          ← Tool-specific setup guides
│   ├── README.md
│   ├── obsidian/
│   │   ├── setup.md
│   │   └── plugins.md
│   ├── notion/
│   │   ├── setup.md
│   │   └── space-templates.md
│   ├── github/
│   │   └── setup.md
│   ├── slack/
│   │   └── channel-architecture.md
│   ├── cursor/
│   │   ├── setup.md
│   │   └── mcp-config.md
│   ├── claude-code/
│   │   └── setup.md
│   ├── make/
│   │   ├── setup.md
│   │   └── scenario-map.md
│   └── linear/
│       └── setup.md
│
├── automations/                       ← Make.com / n8n / Zapier templates
│   ├── README.md
│   ├── make/
│   │   ├── README.md
│   │   └── [scenario JSON exports]
│   ├── n8n/
│   │   └── README.md
│   └── zapier/
│       └── README.md
│
├── examples/                          ← Real-world examples
│   ├── README.md
│   ├── solo-founder/
│   │   ├── README.md
│   │   └── [adapted config files]
│   ├── small-team/
│   │   ├── README.md
│   │   └── [adapted config files]
│   └── startup/
│       ├── README.md
│       └── [adapted config files]
│
├── scripts/
│   ├── setup.sh                       ← One-command bootstrap
│   ├── audit.sh                       ← Run context audit
│   └── validate.sh                    ← Validate all JSON artifacts
│
└── docs/
    ├── philosophy.md                  ← The thinking behind the system
    ├── architecture.md                ← How the layers connect
    ├── getting-started.md             ← Quick-start guide
    ├── faq.md
    ├── glossary.md
    └── roadmap.md
```

Create all directories and empty placeholder files now:

```bash
# Run from repo root
mkdir -p core/{brain/{wiki,raw},agent-docs,agents/{ceo,cto,cmo,coo},protocols,decisions,standards,rituals,cursor-rules}
mkdir -p adapters/{obsidian,notion,github,slack,cursor,claude-code,make,linear}
mkdir -p automations/{make,n8n,zapier}
mkdir -p examples/{solo-founder,small-team,startup}
mkdir -p scripts docs .github/{ISSUE_TEMPLATE,workflows}

# Commit the skeleton
git add .
git commit -m "chore: initialise repository structure"
git push
```

---

## PART 3: CORE CONTENT — EVERY FILE YOU NEED TO BUILD

Work through these in order. Each section contains the actual content to write.

### 3.1 `core/brain/SCHEMA.md` — The Most Important File

This is the definition of the LLM Wiki. Everything else references it. Write it like this:

```markdown
# LLM Wiki — Schema v1.0

## What This Is
The LLM Wiki is a company's compiled institutional memory. Unlike RAG (which 
re-derives knowledge on every query), the LLM Wiki compiles knowledge ONCE and 
keeps it current. Every new source updates the wiki — not just indexes it.

## The Three Layers
1. `/raw/` — Immutable incoming sources. The LLM reads but never modifies.
2. `/wiki/` — LLM-maintained compiled pages. Always current.
3. `SCHEMA.md` — This file. Defines how the system works.

## Key Files
- `index.md` — Master catalog. Read first. Every wiki page listed here.
- `log.md` — Append-only ingestion history. Never delete entries.
- `SCHEMA.md` — This file. The authority on how the system works.

## Operations

### INGEST (when a new source arrives)
1. Place source in appropriate `/raw/` subfolder
2. Open a Claude session with context: "Read SCHEMA.md and index.md"
3. Pass the new source
4. Prompt: "Integrate this source. Write a summary page in /raw/. Update 
   10-15 relevant wiki pages. Flag any contradictions with existing knowledge.
   Append to log.md."
5. Review all edits before committing

### QUERY (when you need an answer)
1. Open Claude session with context: "Read SCHEMA.md and index.md"
2. Ask your question
3. Claude finds relevant wiki pages, synthesises answer with citations
4. Valuable answers get filed back as new wiki pages

### LINT (monthly)
Prompt: "Read all wiki pages. Produce a report of: contradictions, orphan pages
(linked from index but file missing), stale claims (dated over 90 days with no 
update), missing cross-references, wiki pages not listed in index."

## Wiki Page Format
Every wiki page follows this structure:

---
title: [Page Title]
category: [competitor | creator | decision | technical | market | team | icp]
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
sources: [list of /raw/ files this page draws from]
related: [list of related wiki pages]
---

# [Page Title]

## Summary
[2-3 sentence overview]

## Key Facts
[The compiled knowledge]

## Open Questions
[What we still don't know]

## History
[YYYY-MM-DD] [what changed and why]

---

## Source Types and How to Handle Each

| Source Type | Raw Location | How to Process |
|---|---|---|
| Meeting transcript | /raw/transcripts/ | Extract decisions, action items, insights |
| Voice memo | /raw/voice/ | Transcribe first (Whisper), then extract |
| Screenshot | /raw/screenshots/ | Vision extraction companion .md file |
| Research doc | /raw/research/ | Full integration pass |
| Competitor news | /raw/research/ | Update competitor profile |
| Whiteboard photo | /raw/whiteboards/ | Extract text, treat as strategic input |

## Naming Conventions
- Wiki pages: `kebab-case.md` (e.g., `competitor-beehiiv.md`)
- Raw files: `YYYY-MM-DD-description.md` (e.g., `2025-11-14-call-with-investor.md`)
- Categories: Use exact category names from page format above

## What the Wiki Is NOT
- Not a task manager (use Linear/Jira)
- Not a file archive (use Google Drive)
- Not a code document (use agent-docs)
- Not a process document (use Notion)
```

### 3.2 `core/agent-docs/` — All Templates

Each file in `/agent-docs/` is a template with placeholder instructions in `[brackets]`. Here are the critical ones:

**`COMPANY.md`:**
```markdown
# [COMPANY NAME] — Company Context

## What We Are
[2-3 sentences describing the company, the product, and who it serves]

## Current Phase
[What phase are you in? Beta? Pre-launch? Growth?]
[What does success look like THIS quarter?]

## The Problem We Solve
[Single sentence. The exact pain your customer has before they find you.]

## Who We Serve
[Primary customer description in detail]
[Secondary customer if applicable]

## Revenue Model
[Tiers, pricing, transaction fees]

## Competitive Differentiation
[What makes this product the only sane choice for your ICP]

## Constraints
- Budget: [current state]
- Team: [who is working on this]
- Infrastructure: [hosting, key services]

## What We Are NOT Building
[Anti-goals. What you explicitly refuse to do.]

## Links
- Product: [URL]
- Repo: [GitHub URL]
- Docs: [if applicable]
```

**`TECHNICAL.md`:**
```markdown
# [COMPANY NAME] — Technical Context

## Stack (Locked)
- Backend: [framework, ORM, DB, cache, queue, RPC]
- Frontend: [framework, component library, styling]
- Infrastructure: [orchestration, observability, object storage, search]
- Monorepo: [tooling]

## Service Map
[List every service and what it does — one line each]

## Architectural Invariants
[Rules that CANNOT be broken. e.g., "No service shares a database with another service"]

## Data Flow
[How data moves through the system at a high level]

## Security Rules
[What must never happen. e.g., "No PII in logs", "No secrets in code"]

## Known Gotchas
[See GOTCHAS.md — link here so agent checks both]

## Deployment
[How code ships to production]

## Environment Map
[local → staging → production — what each is, how to access]
```

**`CURRENT_SPRINT.md`:**
```markdown
# Current Sprint — [Sprint Name / Date Range]

## Sprint Goal
[One sentence. What does success look like at the end of this sprint?]

## Tasks

### In Progress
- [ ] [Task] — [Assignee] — Started [date]

### Up Next
- [ ] [Task] — [Assignee]

### Done This Sprint
- [x] [Task] — Completed [date]

## Blockers
[Anything stopping progress]

## Notes for Next Sprint
[What to carry forward]
```

**`GOTCHAS.md`:**
```markdown
# Gotchas — Non-Obvious Patterns and Past Mistakes

## Format
Each entry: what happened, why it happened, what to do instead.

---

## [Date] — [Short Title]
**What:** [What went wrong or what is non-obvious]
**Why:** [Why this catches people]
**Do instead:** [The right approach]

---
[New entries appended below as discovered]
```

**`context-audit.md`** (in `/protocols/`):
```markdown
# Context Audit Protocol

Run monthly. Open a fresh Claude Code session. Run session start. Then:

Paste this prompt exactly:

"""
Fresh session. Read all files in /agent-docs/ in the standard order.
Then answer these 12 questions using ONLY what you read.
Say GAP: [question] if the answer is not findable in agent-docs.

1. What is [company] in 3 sentences?
2. Who is the primary user and what is their biggest pain?
3. How are we differentiated from our top 3 competitors?
4. What phase are we in and how is success defined this quarter?
5. What are the top 3 things being built right now?
6. What are the critical technical constraints that cannot change?
7. Why did we choose [key technology decision]?
8. What is the deployment process?
9. What was the most recent significant technical decision and why?
10. What must happen before any production deployment?
11. Where does a customer bug report go?
12. What must never be done with [your most sensitive code area]?

Produce a GAP REPORT listing every question that had a GAP answer.
Score: [number of non-GAP answers] / 12.
"""

Target score: 12/12. Any score below 9/12 triggers immediate agent-docs 
remediation before the next sprint starts.
```

### 3.3 `core/agents/` — Agent Workforce Templates

Each agent template follows this structure. Here is the CEO Daily Briefing agent as a model. Use it as the template for all other agents:

**`core/agents/ceo/daily-briefing.md`:**
```markdown
# Daily Briefing Agent

## Role
CEO / Founder intelligence briefing — runs every weekday morning.

## Schedule
Weekdays, 7:30 AM local time (via Make.com / n8n cron)

## Inputs (read in this order)
1. Revenue dashboard (Stripe MRR, yesterday's revenue)
2. New signups / waitlist growth
3. Product health (error rate, uptime)
4. Email summary (urgent threads only)
5. Calendar (today's meetings)
6. Top 3 active sprint tasks from CURRENT_SPRINT.md
7. Any P0/P1 bugs opened in last 24h

## System Prompt
```
You are the CEO's Chief of Staff. You produce a concise, scannable morning 
briefing that takes under 3 minutes to read. You never pad. You surface only 
what requires the CEO's attention or decision today.

Format:
**THE NUMBER**: [MRR or key metric] ([+/-X% vs last week])
**TODAY'S FOCUS**: [1 thing the CEO should spend most time on]
**DECISIONS NEEDED**: [Any decisions that cannot wait — max 3]
**WATCH**: [Anything unusual or trending in the wrong direction]
**WINS**: [What is working — max 2]
**CALENDAR**: [Today's meetings with 1-line prep note each]

If there is nothing in a section, omit the section entirely.
Never add filler. If nothing needs the CEO's attention, say so clearly.
```

## Output
Post to Slack #ceo-intel as a formatted message.

## Model Recommendation
Gemini 2.5 Flash (free, fast, sufficient for aggregation tasks)
Upgrade to Claude if briefing quality is insufficient.

## Adapter Notes
- Make.com: Use HTTP modules to pull Stripe, Supabase data
- n8n: Use built-in Stripe and HTTP nodes
- Requires: Slack webhook URL for output channel
```

Repeat this pattern for every agent in the workforce. The key fields are always:
- **Role** — what this agent IS
- **Schedule** — when it runs (or what triggers it)
- **Inputs** — what it reads, in order
- **System Prompt** — the exact prompt (this is the most critical part)
- **Output** — where the result goes
- **Model Recommendation** — which model to use and why
- **Adapter Notes** — tool-specific implementation hints

### 3.4 `core/decisions/authority-matrix.md`

```markdown
# Decision Authority Matrix

## How to Use This
Every decision type has a defined authority and process.
When you don't know who decides or how: look here first.

| Decision Type | Authority | Process |
|---|---|---|
| Code — standard feature | Any engineer, one reviewer | PR, review, merge |
| Code — payment/auth/security | Any engineer, ALL founders review | Both founders must approve |
| Email send — outreach | Agent drafts, founder approves | Founder reads full email |
| Sprint plan | Agent proposes, founders confirm | Sync meeting, explicit confirm |
| Pricing changes | Founders only, no agent decides | Whiteboard first, then log |
| Strategic pivots | Founders only, mentor input | Whiteboard + Decision Log |
| Hiring decisions | Founders only | Structured interview, alignment |
| Investor communications | Founders own message, agent drafts | Founders rewrite significantly |
| Production deployment | Explicit founder approval | deploy-check passes, founder types "Deploy approved" |
| Tool/vendor additions | One founder, one week trial | Trial → decision logged |

## The Decision Log Rule
Every decision that:
- Cannot easily be reversed
- Affects more than one person
- Costs more than $X/month
- Changes how the product works

...MUST be logged in /agent-docs/DECISIONS.md AND in Notion Decision Log 
within 24 hours. If it is not in the system, it did not happen.

## Decision Log Entry Format
See `/core/decisions/decision-log-template.md`
```

**`core/decisions/decision-log-template.json`:**
```json
{
  "_meta": {
    "artifact_type": "decision",
    "created_at": "ISO 8601 timestamp",
    "created_by": "founder_name",
    "version": "1.0",
    "notion_page_id": "",
    "github_path": "agent-docs/DECISIONS.md"
  },
  "_content": {
    "title": "",
    "date": "YYYY-MM-DD",
    "decision": "",
    "context": "",
    "options_considered": [],
    "rationale": "",
    "owner": "",
    "reversibility": "reversible | costly-to-reverse | irreversible",
    "review_date": "YYYY-MM-DD or null"
  },
  "_links": {
    "related_decisions": [],
    "related_roadmap_items": [],
    "related_transcripts": []
  },
  "_agent_summary": ""
}
```

### 3.5 `core/standards/dual-output.md`

```markdown
# The Dual-Output Standard

## Rule
Every structured artifact produced by this system must exist in TWO formats:

- **JSON** → for agents (queryable, parseable, importable into any database)
- **Markdown** → for humans (readable, version-controlled in Git, renderable anywhere)

## Why Both
JSON alone breaks when humans need to read or edit.
Markdown alone breaks when agents need to parse or query.
You need both. Always.

## The Universal JSON Envelope
All JSON artifacts share this envelope regardless of type:

```json
{
  "_meta": {
    "artifact_type": "transcript | decision | feedback | sprint_retro | competitor | session",
    "created_at": "ISO 8601",
    "created_by": "agent | founder_name",
    "version": "1.0",
    "notion_page_id": "",
    "github_path": ""
  },
  "_content": {
    // artifact-specific fields
  },
  "_links": {
    "related_decisions": [],
    "related_roadmap_items": [],
    "related_transcripts": [],
    "related_feedback": []
  },
  "_agent_summary": "2-3 sentence summary optimised for agent context loading"
}
```

## Artifact Storage Locations

| Artifact | JSON Home | Markdown Home |
|---|---|---|
| Meeting transcript | /transcripts/structured/ | /transcripts/markdown/ |
| Decision | /agent-docs/decisions/ | DECISIONS.md |
| User feedback | /feedback/structured/ | /feedback/markdown/ |
| Sprint retrospective | /sprints/ | /sprints/ |
| Competitor profile | /research/competitors/ | /research/competitors/ |
| Session log | /sessions/ | SESSIONS_LOG.md |

## Validation
Run `scripts/validate.sh` to confirm all JSON artifacts are valid 
against the envelope schema before committing.
```

### 3.6 `core/protocols/` — All Four Session Protocols

**`session-start.md`:**
```markdown
# Session Start Protocol

Paste at the beginning of EVERY Claude Code session, without exception.

---

Read all files in /agent-docs/ in this order:
COMPANY.md, PRODUCT.md, TECHNICAL.md, CURRENT_SPRINT.md, GOTCHAS.md.

Confirm by producing:
1. What [company] is (1 sentence)
2. What sprint we are in (name + goal)
3. What the current task is
4. Any GOTCHAS.md entries relevant to today's work

Do not write a single line of code until you have confirmed all four points.

---

## Why This Exists
Agents have no memory between sessions. This protocol ensures the agent 
is operating with full company context before touching any code. The 
3-minute investment prevents hours of rework.
```

**`session-end.md`:**
```markdown
# Session End Protocol

Paste at the end of EVERY Claude Code session, without exception.

---

Before this session closes:
1. Update CURRENT_SPRINT.md — change task statuses to reflect actual state
2. Append to SESSIONS_LOG.md — date, what was done, what shipped, what was left
3. Update GOTCHAS.md — any new surprises or non-obvious patterns discovered
4. Update TECHNICAL.md — if any architecture decisions were made or changed
5. Update SKILLS.md — if any new slash command or skill was created
6. Confirm both .json and .md files were saved for any structured artifact

Confirm: "Session documented. Agent docs updated."

---

## Why This Exists
The session log is the institutional memory that survives model updates,
team changes, and company pivots. If a session is not logged, it did 
not happen as far as the system is concerned.
```

**`grill-me.md`:**
```markdown
# Grill-Me Protocol

Paste before any significant task. Forces the agent to understand 
before implementing.

---

Interview me about this task before implementing anything.
Ask one question at a time. Do not proceed until I answer each one.

Cover, in order:
1. Job to be done — what outcome does this achieve?
2. End user need — who benefits and how?
3. Hard constraints — what cannot change?
4. Anti-requirements — what must this NOT do?
5. Definition of done — how do we know this is finished?
6. Failure modes — what does bad look like?
7. Existing patterns — what codebase conventions should this follow?

After all questions: summarise your understanding in 5 bullet points.
Then ask: "Shall I proceed?"

Begin implementation ONLY after receiving explicit confirmation.

---

## When to Use This
- Before any feature with user-facing impact
- Before any change to auth, payments, or security
- Before any database migration
- When a task feels ambiguous
- When a task is likely irreversible
```

### 3.7 `core/rituals/` — Operating Cadences

**`weekly.md`:**
```markdown
# Weekly Operating Ritual

## Sunday (30 minutes, NO AI, NO laptops)
The whiteboard session. This is sacred. 
- Review the week's wins and losses on paper
- Set the sprint goal for the coming week
- Agree on the top 3 tasks that must ship
- Write CURRENT_SPRINT.md by hand first, then transcribe to file after

This session has zero AI involvement. It is where the company thinks.
AI amplifies the output. AI does not replace the thinking.

## Monday (45 minutes)
1. Update CURRENT_SPRINT.md with Sunday's decisions
2. Run Sprint Planning Agent → review proposal → confirm sprint
3. Creator/customer voice review: agent reads feedback from past 7 days → top 3 themes
4. Revenue check: dashboard vs last week
5. Scan bug tracker: any new P0/P1?
6. Queryability test: 3 random questions from the 12-question audit

## Daily (10 minutes per founder)
- Update active task statuses in Linear
- Check #ops Slack for automation failures
- Log any decision made today
- Log any customer feedback received
- Run session end protocol for every coding session
```

---

## PART 4: THE README THAT GETS 100K STARS

This is not just documentation. This is a product page. Every word earns its place.

### 4.1 Structure of the README

```markdown
[BANNER IMAGE — see section 4.2]

<h1 align="center">ai-native</h1>
<p align="center">The open-source operating system for AI-native companies</p>

<p align="center">
  <a href="..."><img src="https://img.shields.io/github/stars/..."></a>
  <a href="..."><img src="https://img.shields.io/github/license/..."></a>
  <a href="..."><img src="https://img.shields.io/discord/..."></a>
  <img src="https://img.shields.io/badge/maintained-yes-green">
</p>

---

## The Problem

Most companies use AI for individual tasks. Summarise this document. 
Write this email. Explain this error. 

The output is consumed and forgotten. Nothing compounds. The company 
starts from zero every time an agent opens a session.

**The result: AI that is powerful but amnesiac.**

---

## The Solution

ai-native is a complete operating system that makes the company itself 
the AI's long-term memory.

Every meeting, decision, feedback, sprint, and insight is captured in 
a structured, agent-readable format. Agents read it at session start. 
Agents update it at session end. Knowledge compounds automatically.

[ARCHITECTURE DIAGRAM — see section 4.3]

---

## What You Get

- **LLM Wiki** — compiled institutional memory that grows smarter with 
  every source added. Not RAG. Not embeddings. A wiki that the LLM 
  actively maintains.

- **Agent-Docs System** — 7 context files your coding agents read at 
  session start so they always operate with full company context.

- **Agent Workforce** — 12+ pre-built agent templates (CEO, CTO, CMO, 
  COO roles) that run on schedule or on trigger.

- **Session Protocols** — non-negotiable start/end protocols that turn 
  every coding session into an entry in institutional memory.

- **Decision Authority Matrix** — every decision type mapped to who 
  decides and how. Nothing falls through the cracks.

- **Dual-Output Standard** — every artifact in JSON (for agents) and 
  Markdown (for humans). No single format.

- **Operating Rituals** — daily, weekly, monthly, quarterly cadences 
  that keep the system healthy.

- **Automation Templates** — Make.com / n8n scenarios for the most 
  common data pipelines (meeting → wiki, payment → dashboard, etc.)

- **Tool Adapters** — setup guides for Obsidian, Notion, Slack, Cursor, 
  Claude Code, Linear, GitHub.

---

## Who This Is For

| You are... | ai-native gives you... |
|---|---|
| Solo founder | A second brain that never forgets |
| 2-10 person startup | A full AI team running in parallel |
| Established company | A retrofit path to AI-native operations |
| Engineering team | Agent-docs, cursor rules, session protocols |

---

## Quick Start (48 hours to AI-native)

**Day 1: Foundation (4 hours)**
```bash
git clone https://github.com/[yourusername]/ai-native.git
cd ai-native
./scripts/setup.sh
```
Then: Fill in `core/agent-docs/COMPANY.md` and `TECHNICAL.md`.
These two files give every coding agent full company context.

**Day 1: Brain (2 hours)**
Set up your Obsidian vault using `adapters/obsidian/setup.md`.
Create your first wiki pages using `core/brain/SCHEMA.md`.

**Day 2: Agents (4 hours)**
Configure your first 3 agents from `core/agents/` using 
`adapters/make/setup.md` or `adapters/n8n/setup.md`.

**Day 2: Rituals**
Paste `core/protocols/session-start.md` at the start of your 
next coding session. You are now AI-native.

→ Full guide: `docs/getting-started.md`

---

## The Closed Loop

[CLOSED LOOP DIAGRAM]

Every action produces a structured artifact.
Every artifact feeds the intelligence layer.
The intelligence layer makes every future action smarter.
Nothing escapes the loop.

---

## Stack Compatibility

ai-native works with any tech stack and any company type.
Tool adapters currently available:

| Layer | Tools Supported |
|---|---|
| Coding Agent | Claude Code, Cursor, Windsurf |
| Knowledge | Obsidian, Notion |
| Automation | Make.com, n8n, Zapier |
| Project Management | Linear, Jira, GitHub Issues |
| Communication | Slack |
| AI Models | Claude, Gemini, GPT-4 (any OpenAI-compatible) |

---

## Examples

- `examples/solo-founder/` — 1 person, zero budget, maximum leverage
- `examples/small-team/` — 2-10 people, multiple agents, division of labour
- `examples/startup/` — Seed-stage company with mixed technical team

---

## Contributing

We welcome contributions. See `CONTRIBUTING.md`.

Priority areas:
- New tool adapters (Zapier, Jira, HubSpot, etc.)
- New agent templates (HR, Finance, Sales)
- Example configurations for different industries
- Translations

---

## License
MIT — fork it, adapt it, use it commercially.

---

## Built By
[Your name/handle] — co-founder of [Oryzon](https://oryzon.xyz)

ai-native is the operating system Oryzon runs on. 
Open-sourced for the community.

[Star History Chart]
```

### 4.2 The Banner Image

The banner is the first thing every visitor sees. Commission it or make it yourself. It must show:

- The project name in clean, large type
- The architecture diagram (the six layers) as the visual
- Dark background (performs better on GitHub which has dark mode)
- No stock photography. Abstract, diagrammatic, technical aesthetic.

Tools to create it: Figma (free), Canva (free). Size: 1280×640px.

### 4.3 Architecture Diagram

Create a diagram showing the six-layer closed loop:

```
CAPTURE → COMPILATION → INTELLIGENCE → OUTPUT → HUMAN REVIEW → FEEDBACK
   ↑                                                                ↓
   └──────────────────────── CLOSED LOOP ──────────────────────────┘
```

Make a visual version of this using Excalidraw (free, open-source aesthetic that developers love) and export as SVG. Embed in the README.

---

## PART 5: GITHUB CONFIGURATION

### 5.1 Issue Templates

**`.github/ISSUE_TEMPLATE/bug_report.md`:**
```markdown
---
name: Bug Report
about: Something in the framework is broken or misleading
labels: bug
---

## What component?
[ ] core/brain  [ ] core/agent-docs  [ ] core/agents  [ ] adapters  [ ] scripts  [ ] docs

## What did you expect?

## What actually happened?

## Your context (optional)
Company size:
Tools you use:
```

**`.github/ISSUE_TEMPLATE/adapter_request.md`:**
```markdown
---
name: Adapter Request
about: Request a new tool adapter
labels: adapter-request
---

## Tool Name
## Why This Tool
## Who Uses It (community size estimate)
## Are You Willing to Contribute It?
```

### 5.2 Pull Request Template

**`.github/PULL_REQUEST_TEMPLATE.md`:**
```markdown
## What does this PR do?

## What component does it touch?
[ ] core/brain  [ ] core/agent-docs  [ ] core/agents  
[ ] adapters    [ ] scripts          [ ] docs

## Have you tested this with a real company?
[ ] Yes — describe briefly:
[ ] No — describe why:

## Does this add, change, or remove any template?
[ ] Add  [ ] Change  [ ] Remove
If change or remove: what is the migration path for existing users?

## Checklist
[ ] I've read CONTRIBUTING.md
[ ] All markdown files are valid (run `scripts/validate.sh`)
[ ] All JSON files follow the universal envelope in `core/standards/dual-output.md`
[ ] New files are listed in the relevant README
```

### 5.3 GitHub Actions

**`.github/workflows/validate.yml`:**
```yaml
name: Validate

on:
  pull_request:
    branches: [main]
  push:
    branches: [main]

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      - name: Validate Markdown
        uses: DavidAnson/markdownlint-cli2-action@v14
        with:
          globs: '**/*.md'
      
      - name: Validate JSON
        run: |
          find . -name "*.json" -not -path "*/node_modules/*" | while read f; do
            python3 -m json.tool "$f" > /dev/null || { echo "Invalid JSON: $f"; exit 1; }
          done
```

### 5.4 Repository Settings (on GitHub)

- **Topics:** `ai`, `claude`, `company-os`, `agent`, `productivity`, `llm`, `obsidian`, `cursor`, `open-source`, `framework`
- **Website:** Link to your docs (or a landing page if you build one)
- **Social preview image:** Use the banner you created
- **Discussions:** Enable (creates community space without requiring Discord for everything)
- **Packages:** Disable (not relevant)
- **Wiki:** Disable (you use the repo itself for docs)

### 5.5 `CONTRIBUTING.md`

```markdown
# Contributing to ai-native

## We welcome contributions from companies using this system.

The most valuable contributions come from real usage. If you adapted a 
template for your context and it works better — submit a PR.

## What We Want Most

1. **Tool adapters** — new tools (Zapier, HubSpot, Jira, Rippling, etc.)
2. **Agent templates** — new role agents (Finance, HR, Sales, Legal)
3. **Industry examples** — how ai-native looks for SaaS vs agency vs 
   ecommerce vs consulting
4. **Automation scenarios** — Make.com / n8n JSON exports for new pipelines

## What We Don't Accept

- Changes to the core philosophy (the closed-loop architecture)
- Adapters for tools that require expensive paid plans with no free tier
- Agent templates with embedded company-specific information

## Process

1. Open an issue first for significant changes
2. Fork the repo
3. Create a branch: `feature/[what-it-does]`
4. Make your changes
5. Run `scripts/validate.sh`
6. Open a PR using the template

## Standards

- Every template must have clear placeholder instructions in [brackets]
- Every agent template must include a System Prompt section
- Every adapter must have a Setup section with step-by-step instructions
- All JSON files must follow the universal envelope in `core/standards/dual-output.md`

## Recognition

Contributors are listed in CONTRIBUTORS.md. Significant contributors 
(3+ merged PRs) are listed in the README.
```

---

## PART 6: THE LAUNCH PLAYBOOK

Getting to 100k stars requires a coordinated launch, not just posting the repo. Here is the exact sequence.

### 6.1 Pre-Launch Checklist (Complete Before Announcing)

- [ ] README is complete, polished, and has the architecture diagram
- [ ] Banner image is finished and embedded
- [ ] All core files have real content (not placeholders)
- [ ] `docs/getting-started.md` is complete — someone should be able to go from zero to set-up in 48 hours
- [ ] `examples/solo-founder/` is complete with a realistic working example
- [ ] `scripts/setup.sh` works (test on a clean machine)
- [ ] JSON validation passes on all files
- [ ] Markdown lint passes
- [ ] Discord server is set up with channels (see section 7.1)
- [ ] Discord invite link is in the README
- [ ] Repository topics are set
- [ ] Social preview image is uploaded to GitHub
- [ ] You have written the HN Show HN post (see section 6.3)
- [ ] You have written the Twitter/X thread (see section 6.4)
- [ ] You have written the Product Hunt listing (see section 6.5)

### 6.2 Launch Sequence (Do This in Order)

**72 hours before launch:**
- Share the repo URL privately with 10-15 people you trust who will understand it
- Ask them to star, share feedback, and ideally write a short comment they will post on HN/PH
- Seed the Discord with 10+ early members who will be active on launch day

**Launch day: 8:00 AM (UTC) — the posting window that matters**

1. **HN Show HN** — post first (see 6.3)
2. **Twitter/X thread** — post 30 minutes after HN
3. **LinkedIn post** — post simultaneously with Twitter
4. **Reddit** — r/SideProject, r/entrepreneur, r/programming (stagger by 1 hour each)
5. **Product Hunt** — schedule for 12:01 AM PST the same day or the next day

**Launch day: active**
- Reply to every HN comment within the first 2 hours
- Retweet anyone who shares
- Answer every question in Discord
- DM developers you know personally who would find this genuinely useful

**Days 2-7: sustain**
- Post a "what I learned building this" Twitter thread
- Write and publish the companion blog post (see section 6.6)
- Share in relevant Slack communities (developer Slacks, founder communities)
- Share in relevant Discord communities

### 6.3 HackerNews Show HN Post

HN is the single most valuable distribution channel for this project. One front-page HN thread can drive 10,000-30,000 stars in 48 hours. This is the gstack model — gstack's viral moment was driven by developer-community recognition.

**Title (choose one, test):**
- `Show HN: ai-native – open-source OS for AI-native companies (agent-docs, LLM wiki, decision logging)`
- `Show HN: The operating system I built so my startup's AI agents never start from zero`
- `Show HN: ai-native – fork to make your company's institutional memory agent-readable`

**Body (first comment — post immediately after thread goes live):**
```
I spent six months building an AI-native operating system for my own 
two-person startup. Every meeting, decision, sprint, and customer insight 
is captured in a structured format that coding agents read at session start 
and update at session end.

The result: agents never start from zero. Every new agent session begins 
with the full context of the company — what we're building, why we made 
each decision, what we learned last sprint, what not to do.

Today I'm open-sourcing the complete system as ai-native.

What's in it:

LLM Wiki — not RAG, not embeddings. A wiki the LLM actively maintains. 
Every new source updates 10-15 wiki pages. Knowledge compounds.

Agent-docs system — 7 context files your coding agents read at session 
start. COMPANY.md, TECHNICAL.md, CURRENT_SPRINT.md, GOTCHAS.md, etc.

Agent workforce templates — 12 agent templates for CEO, CTO, CMO, COO 
roles. Daily briefing, PR review, sprint planning, market intelligence.

Session protocols — start/end protocols that turn every coding session 
into a permanent entry in institutional memory.

Decision authority matrix — who decides what and how. Nothing falls 
through the cracks.

Works with: Claude Code, Cursor, Windsurf, Make.com, n8n, Obsidian, 
Notion, Linear.

MIT license. Fork it, adapt it, run it.

Happy to answer questions about the architecture or the specific 
implementation choices.
```

### 6.4 Twitter/X Thread

```
1/ I open-sourced the operating system I built to make my startup AI-native.

It took 6 months to get right. You can fork it today.

🧵

2/ The problem with most AI tooling:

You use AI for individual tasks. Output consumed. Forgotten.
Next session, the agent starts from zero.

Your company has no institutional memory. The AI is powerful but amnesiac.

3/ The solution: make the company itself the AI's memory.

ai-native is a complete OS where:
- Every meeting produces a structured artifact
- Every decision is logged in agent-readable format
- Every sprint updates the context files
- Agents read it all at session start

4/ The LLM Wiki is the core.

Not RAG. Not embeddings. Not a chatbot over your docs.

A wiki the LLM actively maintains. Every new source updates 10-15 wiki 
pages. Knowledge compounds permanently.

5/ Agent-docs: 7 files your coding agents read at session start.

COMPANY.md — what you are building and why
TECHNICAL.md — stack decisions and invariants
CURRENT_SPRINT.md — active tasks
GOTCHAS.md — non-obvious patterns and past mistakes

Agent never starts from zero again.

6/ The agent workforce: 12 pre-built agent templates.

CEO: daily briefing, market intel, decision support
CTO: sprint planning, PR review, architecture support  
CMO: content creation, lead sourcing, sales briefing
COO: health check, onboarding, churn prevention

7/ Session protocols (non-negotiable):

Start: read all agent-docs, confirm context, then code
End: update sprint, log session, update gotchas

Every session is an entry in institutional memory.

8/ The Decision Authority Matrix.

Every decision type mapped to who decides and how.

Standard code: any engineer, one reviewer
Payment/auth/security: all founders must approve
Pricing changes: founders only, whiteboard first
Production deploy: explicit approval, deploy-check passes

9/ It's all open source. MIT license.

Works with Claude Code, Cursor, Make.com, n8n, Obsidian, Notion.

Fork it → fill in your company details → you're AI-native.

github.com/[yourusername]/ai-native

10/ I run this at my startup Oryzon (@oryzondotxyz).

Two founders. Every agent session has full company context.
Every decision is logged. Every meeting compiles into the wiki.

We ship faster. We forget nothing. We never repeat past mistakes.

That's the system. It's yours.

[link to repo]
```

### 6.5 Product Hunt Listing

**Tagline:**
> The open-source operating system for AI-native companies

**Description:**
> ai-native gives any company — from solo founder to established team — the complete infrastructure to make their AI agents work with full company context every session.
>
> Includes: LLM Wiki (institutional memory that compounds), Agent-Docs system (7 context files every coding agent reads at session start), 12 pre-built agent workforce templates (CEO/CTO/CMO/COO), session protocols, decision authority matrix, dual-output standard, and tool adapters for Claude Code, Cursor, Obsidian, Notion, Make.com, n8n.
>
> MIT licensed. Fork, fill in your company details, and you're AI-native in 48 hours.

**First comment (posted immediately at launch):**
```
Hey PH 👋 — Bab here, building Oryzon (a creator community OS).

We built ai-native because we kept starting coding sessions from scratch. 
The agent had no idea what we'd decided last sprint, what our stack invariants 
were, or what mistakes we'd already made and learned from.

So we built a system where the company itself is the AI's long-term memory.

The LLM Wiki is what makes it different from other AI frameworks. It's not RAG. 
It's not a chatbot over your docs. It's a wiki the LLM actively maintains and 
updates with every new source. Knowledge compounds over time rather than being 
re-derived on every query.

Happy to answer any questions about how we built this or how to adapt it to 
your context.
```

### 6.6 Companion Blog Post

Publish on your personal site or on a platform (Dev.to is the highest-signal developer platform). Title options:

- "How I made my two-person startup AI-native (and open-sourced the system)"
- "The LLM Wiki: the pattern that made our AI agents genuinely useful"
- "Why your AI agents start from zero every session (and how to fix it)"

Structure: 1500-2500 words. Tell the story of building it for Oryzon, the specific problems it solved, the LLM Wiki pattern in depth, then link to the repo. No technical jargon in the intro — start with the pain.

---

## PART 7: COMMUNITY BUILDING

### 7.1 Discord Setup

Create a Discord server on launch day. Name it `ai-native`. Channels:

```
📢 ANNOUNCEMENTS
  #announcements        ← Release notes, major updates

💬 COMMUNITY
  #introduce-yourself   ← New members say hi and share their company
  #general              ← Open discussion
  #show-and-tell        ← "Here's what I built with ai-native"
  #wins                 ← Celebrating companies going AI-native

🛠️ HELP
  #getting-started      ← New user questions
  #agent-docs           ← Questions about the context system
  #llm-wiki             ← Wiki pattern questions
  #agents               ← Agent workforce questions
  #automations          ← Make.com / n8n implementation help

🔧 DEVELOPMENT
  #contributing         ← PR discussions, feature requests
  #adapters             ← Building new tool adapters

🌍 BY COMPANY TYPE
  #solo-founders
  #small-teams
  #enterprises
```

### 7.2 Contributor Programme

At launch, create `CONTRIBUTORS.md`. After 100 stars, actively recruit contributors:

**Level 1 — Adapter Contributor:** Submitted one accepted tool adapter
**Level 2 — Core Contributor:** 3+ accepted PRs, listed in README
**Level 3 — Maintainer:** Active review queue participant, listed as maintainer

Reach out to people who star the repo and have active GitHub profiles. A personal message ("Hey, I saw you starred ai-native — would you be interested in contributing the Zapier adapter?") converts at much higher rates than a generic open call.

### 7.3 The Real Community Flywheel

Stars → Visibility → More users → Success stories → Blog posts → More stars.

To start this flywheel:
- Ask every company that goes AI-native using the repo to add themselves to a `USERS.md` file
- Feature one user's story per month in the README (a "spotlight" section)
- Run a monthly Twitter Space or Discord call where one user walks through their implementation

The social proof of real companies using the system is more valuable than any launch.

---

## PART 8: VERSIONING & MAINTENANCE

### 8.1 Version Strategy

Use semantic versioning (v1.0.0, v1.1.0, v2.0.0).

- **Major (v2.0):** Breaking changes to the core architecture or template schemas
- **Minor (v1.1):** New adapters, new agent templates, new examples
- **Patch (v1.0.1):** Fixes, clarifications, small improvements

Create GitHub Releases for every minor and major version.

### 8.2 Deprecation Policy

When a tool adapter becomes outdated (tool changed its interface):
- Mark the adapter README with `⚠️ NEEDS UPDATE — [tool] API changed in [date]`
- Open an issue for it
- If a community member doesn't fix it within 30 days, archive the adapter to `/archive/`

### 8.3 Keeping the System Self-Updating

The repo itself should run on ai-native principles:
- Maintain an `agent-docs/` directory for the repo itself
- Run monthly context audits on the documentation
- Log every significant framework decision in the repo's own Decision Log

This creates a meta-demonstration of the system's value and makes for a compelling blog post: "The ai-native repo is managed using ai-native."

### 8.4 The First 12 Months — Milestone Map

| Month | Target | Key Action |
|---|---|---|
| Launch | 1,000 stars | HN + PH + Twitter launch |
| Month 1 | 5,000 stars | Blog post + Reddit posts + Discord active |
| Month 2 | 10,000 stars | First contributor spotlight + YouTube walkthrough |
| Month 3 | 20,000 stars | Second launch (updated README, new major feature) |
| Month 6 | 50,000 stars | Conference talk / podcast appearance |
| Month 9 | 75,000 stars | Major v2.0 release + new launch cycle |
| Month 12 | 100,000 stars | 🎉 |

The "second launch" at Month 3 is important. Many repos peak at launch and fade. A significant new release (a new layer of the framework, a major new adapter, a companion tool) gives you a second viral moment.

---

## PART 9: THE SCRIPTS

### `scripts/setup.sh`

This script lets any company bootstrap the framework in one command:

```bash
#!/bin/bash
set -e

echo "🧠 ai-native setup"
echo "=================="
echo ""
echo "This will create your ai-native workspace."
echo ""

# Prompt for company details
read -p "Company name: " COMPANY_NAME
read -p "Your name (founder): " FOUNDER_NAME
read -p "What does your company do? (1 sentence): " COMPANY_DESCRIPTION

# Create the workspace directory
WORKSPACE="$HOME/ai-native-workspace"
mkdir -p "$WORKSPACE"
cp -r ./core "$WORKSPACE/"
cp -r ./adapters "$WORKSPACE/"

# Fill in COMPANY.md template
sed -i "s/\[COMPANY NAME\]/$COMPANY_NAME/g" "$WORKSPACE/core/agent-docs/COMPANY.md"
sed -i "s/\[2-3 sentences describing the company\]/$COMPANY_DESCRIPTION/g" "$WORKSPACE/core/agent-docs/COMPANY.md"

echo ""
echo "✅ Workspace created at $WORKSPACE"
echo ""
echo "Next steps:"
echo "  1. Fill in $WORKSPACE/core/agent-docs/COMPANY.md"
echo "  2. Fill in $WORKSPACE/core/agent-docs/TECHNICAL.md"
echo "  3. Set up your Obsidian vault: see adapters/obsidian/setup.md"
echo "  4. Configure your first agent: see core/agents/"
echo "  5. Paste session-start.md at the top of your next Claude Code session"
echo ""
echo "Full guide: docs/getting-started.md"
```

### `scripts/validate.sh`

```bash
#!/bin/bash
set -e

echo "Validating ai-native files..."

ERRORS=0

# Validate all JSON files
echo "→ Checking JSON files..."
find . -name "*.json" -not -path "*/.git/*" | while read f; do
  python3 -m json.tool "$f" > /dev/null 2>&1 || { echo "  ✗ Invalid JSON: $f"; ERRORS=$((ERRORS+1)); }
done

# Check required fields in JSON envelopes
echo "→ Checking JSON envelope compliance..."
find . -name "*.json" -not -path "*/.git/*" -not -name "package*.json" | while read f; do
  if ! grep -q '"_meta"' "$f"; then
    echo "  ✗ Missing _meta: $f"
    ERRORS=$((ERRORS+1))
  fi
done

if [ $ERRORS -eq 0 ]; then
  echo ""
  echo "✅ All files valid"
else
  echo ""
  echo "✗ $ERRORS error(s) found"
  exit 1
fi
```

---

## PART 10: WHAT TO DO IN YOUR FIRST 48 HOURS

This is the action plan. Follow it in order.

**Hour 1-2: Repository**
- Create the repo on GitHub
- Create the full directory structure
- Push the skeleton
- Set repository topics and social preview

**Hour 3-8: Core Content**
- Write `core/brain/SCHEMA.md` (the most important file)
- Fill all 7 `core/agent-docs/` templates
- Write all 4 `core/protocols/` files
- Write `core/decisions/authority-matrix.md`
- Write `core/standards/dual-output.md`

**Hour 9-14: Agents**
- Write at least 4 agent templates (CEO briefing, Sprint Planning, PR Review, Monitoring)
- Write `core/rituals/weekly.md` and `daily.md`

**Hour 15-18: Adapters**
- Write `adapters/obsidian/setup.md` (most used)
- Write `adapters/cursor/setup.md` (most viral for developers)
- Write `adapters/make/setup.md`

**Hour 19-22: README + Examples**
- Write the full README following Part 4
- Create the banner image
- Fill `examples/solo-founder/` as a complete working example
- Write `docs/getting-started.md`

**Hour 23-24: GitHub Setup**
- Create issue templates
- Create PR template
- Configure GitHub Actions (validate.yml)
- Enable Discussions

**Hour 25: Discord**
- Create Discord server
- Set up channels
- Invite first 10 members

**Hour 26-48: Launch**
- Final review of README
- Post HN Show HN
- Post Twitter thread
- Post LinkedIn
- Schedule Product Hunt

---

## APPENDIX A: FILES TO WRITE IN FULL BEFORE LAUNCH

Minimum viable repo (everything else can be filled in post-launch):

1. `README.md` — complete
2. `core/brain/SCHEMA.md` — complete
3. `core/agent-docs/COMPANY.md` — template with full instructions
4. `core/agent-docs/TECHNICAL.md` — template with full instructions
5. `core/agent-docs/CURRENT_SPRINT.md` — template
6. `core/agent-docs/GOTCHAS.md` — template
7. `core/protocols/session-start.md` — complete
8. `core/protocols/session-end.md` — complete
9. `core/protocols/grill-me.md` — complete
10. `core/protocols/context-audit.md` — complete
11. `core/decisions/authority-matrix.md` — complete
12. `core/standards/dual-output.md` — complete
13. `core/agents/ceo/daily-briefing.md` — complete
14. `core/agents/cto/pr-review.md` — complete
15. `examples/solo-founder/README.md` — complete working example
16. `docs/getting-started.md` — complete
17. `adapters/obsidian/setup.md` — complete
18. `adapters/cursor/setup.md` — complete
19. `scripts/setup.sh` — working
20. `CONTRIBUTING.md` — complete

Everything else: can be `Coming soon — PRs welcome` at launch.

---

## APPENDIX B: NORTH STAR METRICS

Track these weekly once launched:

| Metric | Source | Target (Month 3) |
|---|---|---|
| GitHub Stars | GitHub | 20,000 |
| Discord Members | Discord | 500 |
| Contributors | GitHub Insights | 20 |
| PRs Merged | GitHub | 30 |
| HN Points (launch) | HackerNews | 500+ |
| Weekly new stars | GitHub | 500/week |

---

*This guide is itself an artifact of the ai-native system.
Every section maps to a layer of the closed loop.*
