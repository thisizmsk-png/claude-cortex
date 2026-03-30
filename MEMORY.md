# MEMORY.md — Active Context Index

> This file loads every session. Keep it under 100 lines. Only active context.
> Deep knowledge lives in `~/.claude/memory/` subdirectories.

## Current Focus
- QuantMind: Phase 2 implementation (5/11 complete)
- Next priorities: Event-Driven Signal Bus, Three-Mode Execution, Cross-Platform Arb
- YouTube Automation: Active development

## Active Decisions
> See `~/.claude/memory/decisions/` for full decision logs

- [2026-03-16] Spec-driven development adopted as standard workflow (`/spec` skill)
- [2026-03-16] Personal skill system established at `~/.claude/skills/` (22 skills)
- [2026-03-15] QuantMind frontend: Manrope typography + Apple-style buttons
- [2026-03-15] Design tokens system: CSS variables replacing hardcoded Tailwind colors

## Active People
> See `~/.claude/memory/people/` for full profiles

(None tracked yet — add as interactions happen)

## Project Status
> See `~/.claude/memory/projects/` for full project tracking

### QuantMind
- 549 tests passing, 63 API endpoints
- Frontend: Next.js 14 + React 19 + Tailwind
- Backend: FastAPI + LangGraph + NumPy/SciPy
- Phase 1: 7/7 complete
- Phase 2: 5/11 complete

### YouTube Automation
- Active development
- Multiple worktrees used for parallel features

## Preferences Learned
- Krishna dives in first, researches when stuck (not the other way around)
- Wants exhaustive research when he asks for it — not surface level
- Hates re-explaining context. MEMORY.md exists to prevent this.
- Thinks in tables. Use tables for all comparisons.
- Prefers dark mode, distinctive typography, data-first dashboards

## Skills & Persona Setup (2026-03-30, updated)
- **59 skills** installed globally at `~/.claude/skills/`
- 17 Mahabharat agents at `~/.claude/agents/` (Krishna=CEO, Arjuna=PrincipalSDE, etc.)
- Full orchestration at `~/.claude/orchestration/` (guardrails, workflows, topologies)
- Auto-detection hook at `~/.claude/hooks/skill-detect.sh` (40+ keyword triggers) wired via settings.json
- Reference doc at `~/.claude/reference/skills_reference.md`
- Skills auto-activate by keyword matching — no explicit /skill needed
- **New skills added:** database-design, pricing-strategy, growth-marketing, data-analysis, observability, api-design + 9 from obra/superpowers (brainstorming, dispatching-parallel-agents, executing-plans, subagent-driven-development, systematic-debugging, test-driven-development, verification-before-completion, writing-plans, writing-skills)
- **Updated from source:** ui-ux-pro-max, banner-design, brand, design-system, design, slides, ui-styling
- **Upskilled from CUT→USEFUL:** context-engineering, release-engineering, codebase-health, compliance-checklist, docs-validator, aeo-optimization, architecture-diagrams, decision-journal, market-intelligence
- **Added:** remotion-video, performance-profiler

## Reference Resources
- `~/.claude/reference/skills_reference.md` — 30+ source reference: agent patterns, YouTube automation, SEO, SaaS, security, monetization
- Key repos: system_prompts_leaks (35K stars), deploy-your-own-saas (8.8K), ai-website-cloner-template
- Key frameworks: OpenClaw, Oh My Claude Code, SuperClaude, WithOne.ai (47K agentic actions)

## Memory Directory Index
```
~/.claude/memory/
├── people/        # Profiles of people Krishna works with
├── projects/      # Detailed project status and history
├── decisions/     # Decision logs with rationale
├── daily/         # Daily session journals (YYYY-MM-DD.md)
└── topics/        # Deep knowledge on specific topics
~/.claude/reference/
└── skills_reference.md  # Curated external resource reference
```
