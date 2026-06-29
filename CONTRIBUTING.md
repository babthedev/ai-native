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
