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
