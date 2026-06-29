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
