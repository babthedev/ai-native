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
