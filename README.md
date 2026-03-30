# Claude Cortex

> The brain layer for Claude Code. 60 skills, 17 AI agents, full orchestration — the complete operating system for solo AI founders.

## What Is This?

An opinionated, battle-tested Claude Code configuration that transforms Claude from a chatbot into a full AI company. Fork it, customize it, ship faster.

```
60 skills | 17 agents | 40+ auto-detection triggers | 6 orchestration workflows
```

## Quick Start

```bash
# Clone into your Claude Code config directory
git clone https://github.com/YOUR_USERNAME/claude-cortex.git ~/.claude

# That's it. Claude Code automatically reads ~/.claude/ on every session.
```

## What's Inside

### Persona Layer (`IDENTITY.md`, `SOUL.md`, `USER.md`)
Your Claude's personality, decision-making philosophy, and user profile. Makes Claude behave like a senior engineer on your team, not a generic assistant.

### 17 Mahabharat Agents (`agents/`)
Multi-agent engineering team mapped to Mahabharata characters:

| Agent | Role | Model |
|-------|------|-------|
| Krishna | CEO / Strategic Orchestrator | Opus |
| Yudhishthira | CTO / VP Engineering | Opus |
| Arjuna | Principal SDE | Opus |
| Bhima | Senior Backend Engineer | Sonnet |
| Draupadi | Product Manager | Opus |
| Duryodhana | Red Team Lead | Opus |
| Bhishma | Security Engineer | Opus |
| Vidura | QA Engineer | Sonnet |
| Karna | Staff SDE (Rival/Alternative) | Opus |
| Hanuman | DevOps / SRE | Sonnet |
| Ashwatthama | Incident Response / On-Call | Sonnet |
| Drona | Engineering Manager | Sonnet |
| Nakula | Frontend Developer | Sonnet |
| Sahadeva | Data Scientist | Sonnet |
| Abhimanyu | Junior Developer | Haiku |
| Dhrishtadyumna | Scrum Master | Sonnet |
| Shakuni | Growth Hacker | Sonnet |

Plus **Sepoy** templates for spawning worker agents under any master.

### 60 Skills (`skills/`)

| Category | Skills | Count |
|----------|--------|-------|
| **Engineering Core** | spec, hld, lld, code-review, testing, TDD, systematic-debugging, database-design, api-design, performance-profiler, codebase-health, ci-cd, release-engineering, observability, incident-response, remotion-video | 16 |
| **Design & Frontend** | frontend-design, ui-ux-pro-max, ui-styling, design, design-system, design-auditor, web-design-guidelines, brand, canvas-design, banner-design, slides, theme-factory, composition-patterns, react-best-practices | 14 |
| **Business & Growth** | pricing-strategy, growth-marketing, market-intelligence, product-spec, aeo-optimization, compliance-checklist | 6 |
| **Data & Analytics** | data-analysis, backtest-validation, nextjs-skills | 3 |
| **Quality & Security** | threat-modeling, zero-bias | 2 |
| **Workflow & Orchestration** | autoresearch, brainstorming, writing-plans, executing-plans, dispatching-parallel-agents, subagent-driven-development, verification-before-completion, writing-skills, skill-creator | 9 |
| **Knowledge & Content** | research, humanizer, context-engineering, docs-validator, notebooklm | 5 |
| **Meta & Tools** | decision-journal, architecture-diagrams, social-media-skills, web-artifacts-builder, webapp-testing | 5 |

### Auto-Detection Hook (`hooks/skill-detect.sh`)
Skills activate automatically based on what you're talking about. Say "design a database schema" and the database-design skill loads. Say "review this code" and code-review activates. 40+ keyword triggers, zero manual `/skill` invocation needed.

### Orchestration (`orchestration/`)
- **Guardrails**: Authority matrix, escalation rules, feedback loops, core principles
- **Workflows**: Feature development, bug fix, architecture review, security audit, incident response, performance review
- **Topologies**: Sabha (debate), Vyuha (formation), Chakravyuha (layered defense), Akshauhini (full deployment), Rajya (governance)

### Context Layers (`context/`)
- **Shruti** (Layer 0): Eternal principles — never change
- **Smriti** (Layer 1): Session context — changes per session
- **Itihasa** (Layer 2): Historical archive — lessons from past sessions

### Company Operating Order (`COMPANY_ORDER.md`)
The constitution that defines when each agent activates, which skills they use, and how workflows chain together. Covers: new features, bug fixes, code reviews, research, content creation, quarterly reviews.

## Key Principles

1. **Zero Cognitive Bias Protocol** — Every decision evaluated on merit, not familiarity
2. **5-Question Research Framework** — Domain, business rules, standards, data, edge cases
3. **Verification Before Completion** — Never claim "done" without proof
4. **Distribution Before Product** — Every feature discussion includes "how will users find this?"
5. **Revenue Architecture First** — Every product discussion includes "how does this make money?"

## Integrations

| Integration | Status | Setup |
|-------------|--------|-------|
| Playwright MCP | Ready | Already bundled with Claude Code |
| Obsidian MCP | Configured (disabled) | Install "Local REST API" plugin in Obsidian, set API key in settings.json |
| NotebookLM | Installed | Run "Set up NotebookLM authentication" for one-time login |
| claude-mem plugin | Marketplace | Already in extraKnownMarketplaces |

## Customization

### Add Your Own Agent
```bash
cp agents/sepoys/_template.md agents/my-agent.md
# Edit: name, role, model, allowed-tools, then write the role definition
```

### Add Your Own Skill
```bash
mkdir skills/my-skill && cat > skills/my-skill/SKILL.md << 'EOF'
---
name: my-skill
description: One-line description (this is how auto-detection works, <250 chars)
user-invocable: true
---
# My Skill
[Your skill content here]
EOF
```

### Personalize the Persona
Edit `USER.md` with your profile, `IDENTITY.md` with your communication preferences, and `SOUL.md` with your philosophy.

## Credits

- **Mahabharat Agents**: `pip install mahabharat-agents` ([PyPI](https://pypi.org/project/mahabharat-agents/))
- **obra/superpowers**: 9 workflow skills cherry-picked from [obra/superpowers](https://github.com/obra/superpowers)
- **ui-ux-pro-max**: Design skills from [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)
- **NotebookLM skill**: [PleasePrompto/notebooklm-skill](https://github.com/PleasePrompto/notebooklm-skill)

## License

MIT
