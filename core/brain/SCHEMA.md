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
