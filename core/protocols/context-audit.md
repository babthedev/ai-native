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
