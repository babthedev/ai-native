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
