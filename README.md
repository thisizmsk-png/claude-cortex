# Claude Cortex

> The brain layer for Claude Code. 60 skills, 17 AI agents, full orchestration — the complete operating system for solo AI founders.

```
60 skills | 17 agents | 40+ auto-detection triggers | 6 orchestration workflows
```

---

## What Is This?

An opinionated, battle-tested `~/.claude/` configuration that transforms Claude Code from a coding assistant into a full AI company operating system. Fork it, customize it, ship faster.

**Skills auto-activate based on what you're doing.** Say "design a database schema" and the database-design skill loads. Say "review this code" and code-review activates. Say "draft an email" and the humanizer kicks in. No manual `/skill` commands needed.

---

## Installation

### One-Line Install

```bash
curl -fsSL https://raw.githubusercontent.com/thisizmsk-png/claude-cortex/main/install.sh | bash
```

This will:
- Back up your existing `~/.claude/` (if any)
- Clone Claude Cortex
- Preserve your personal files (USER.md, MEMORY.md, memory/, projects/)
- Create personal files from templates if missing
- Make the auto-detection hook executable

### Manual Install

```bash
# Back up existing config (if any)
[ -d ~/.claude ] && cp -r ~/.claude ~/.claude-backup-$(date +%s)

# Clone
git clone https://github.com/thisizmsk-png/claude-cortex.git ~/.claude

# Create your personal files from templates
cp ~/.claude/USER.template.md ~/.claude/USER.md
cp ~/.claude/MEMORY.template.md ~/.claude/MEMORY.md

# Create memory directories
mkdir -p ~/.claude/memory/{decisions,projects,people,daily,topics}
mkdir -p ~/.claude/projects

# Make hook executable
chmod +x ~/.claude/hooks/skill-detect.sh
```

### Update (Keep Your Personal Files)

```bash
cd ~/.claude && git pull
```

Your `USER.md`, `MEMORY.md`, and `memory/` are gitignored — updates never overwrite them.

---

## Setup (5 Minutes)

### Step 1: Edit Your Profile

```bash
# Open in your editor
code ~/.claude/USER.md
```

Fill in: name, role, projects, tech preferences, work style. This shapes how Claude behaves with you.

### Step 2: Edit Your Communication Style

```bash
code ~/.claude/IDENTITY.md
```

The default is "senior engineer on the same team." Adjust tone, verbosity, and style to match how you want Claude to talk.

### Step 3: Edit Your Philosophy

```bash
code ~/.claude/SOUL.md
```

Decision-making frameworks, quality calibration, core values. This is your Claude's personality.

### Step 4: Start Claude Code in Any Project

```bash
cd ~/my-project
claude
```

That's it. Claude Code automatically reads `~/.claude/` on every session. All 60 skills and 17 agents are available immediately.

---

## Starting a New Project

### Option A: Just Start Coding

```bash
mkdir my-new-app && cd my-new-app
git init
claude
# Claude Cortex is already loaded globally — just start building
```

### Option B: With a Project CLAUDE.md (Recommended)

```bash
mkdir my-new-app && cd my-new-app
git init

# Create a project-level CLAUDE.md with project-specific context
cat > CLAUDE.md << 'EOF'
# My New App

## What This Project Does
[One paragraph description]

## Tech Stack
- [Language/framework]
- [Database]
- [Deployment]

## Critical Commands
```bash
# Install
npm install

# Dev
npm run dev

# Test
npm test

# Build
npm run build
```

## Project Structure
```
src/
├── [describe your structure]
```

## Development Conventions
- [Any project-specific rules]

## Global Skills & Agents
All skills (60), agents (17), and orchestration are installed globally at `~/.claude/`.
EOF

claude
```

### Option C: Full Spec-Driven Project (For Non-Trivial Work)

```bash
mkdir my-saas && cd my-saas
git init
claude

# Inside Claude Code, use the agents panel:
# 1. Krishna: "Should we build this?" → /research + /zero-bias
# 2. Draupadi: "What problem does this solve?" → /product-spec
# 3. Arjuna: "How should we architect it?" → /hld + /database-design + /api-design
# 4. Duryodhana: "What will break?" → /threat-modeling
# 5. Then implement with /writing-plans → /executing-plans → /verification-before-completion
```

---

## How It Works

### Layer Architecture

```
┌──────────────────────────────────────┐
│ Layer 0: System Prompt (immutable)   │  Claude's built-in behavior
├──────────────────────────────────────┤
│ Layer 1: ~/.claude/ (this repo)      │  Persona + skills + agents
│  ├── IDENTITY.md  (voice/tone)       │
│  ├── SOUL.md      (philosophy)       │
│  ├── USER.md      (your profile)     │
│  ├── skills/      (60 skills)        │
│  ├── agents/      (17 agents)        │
│  └── hooks/       (auto-detection)   │
├──────────────────────────────────────┤
│ Layer 2: ./CLAUDE.md (per project)   │  Project-specific context
├──────────────────────────────────────┤
│ Layer 3: Conversation context        │  Current session
└──────────────────────────────────────┘
```

### Auto-Detection Flow

```
You type a prompt
    │
    ▼
hooks/skill-detect.sh scans for 40+ keywords
    │
    ▼
Matching skills suggested to Claude
    │
    ▼
Claude loads the relevant SKILL.md
    │
    ▼
Skill's framework/checklist/process applied to your task
```

### Agent Invocation

Agents are invoked by name when you need multi-perspective work:

```
"Help me design the auth system"
    │
    ▼
Arjuna (Principal SDE): System architecture
Bhishma (Security): Threat model
Duryodhana (Red Team): Adversarial review
Vidura (QA): Test strategy
```

---

## What's Inside

### 17 Mahabharat Agents (`agents/`)

| Agent | Role | Model | When to Use |
|-------|------|-------|-------------|
| Krishna | CEO / Strategist | Opus | Strategic decisions, resource allocation |
| Yudhishthira | CTO | Opus | Technical strategy, architecture governance |
| Arjuna | Principal SDE | Opus | System design, code standards, HLD/LLD |
| Bhima | Sr. Backend | Sonnet | Heavy implementation, backend systems |
| Draupadi | Product Manager | Opus | PRDs, user research, feature prioritization |
| Duryodhana | Red Team Lead | Opus | Adversarial review, stress testing |
| Bhishma | Security Engineer | Opus | Threat modeling, security architecture |
| Vidura | QA Engineer | Sonnet | Test strategy, quality gates |
| Karna | Staff SDE | Opus | Alternative approaches, devil's advocate |
| Hanuman | DevOps / SRE | Sonnet | CI/CD, infrastructure, deployment |
| Ashwatthama | Incident Response | Sonnet | On-call, emergency fixes, rollbacks |
| Drona | Engineering Manager | Sonnet | Sprint delivery, mentorship |
| Nakula | Frontend Dev | Sonnet | UI/UX implementation |
| Sahadeva | Data Scientist | Sonnet | Analytics, ML, data pipelines |
| Abhimanyu | Junior Dev | Haiku | Implementation under guidance |
| Dhrishtadyumna | Scrum Master | Sonnet | Sprint planning, coordination |
| Shakuni | Growth Hacker | Sonnet | Marketing, distribution, growth |

### 60 Skills (`skills/`)

| Category | Skills | Count |
|----------|--------|-------|
| **Engineering** | spec, hld, lld, code-review, testing, TDD, systematic-debugging, database-design, api-design, performance-profiler, codebase-health, ci-cd, release-engineering, observability, incident-response, remotion-video | 16 |
| **Design** | frontend-design, ui-ux-pro-max, ui-styling, design, design-system, design-auditor, web-design-guidelines, brand, canvas-design, banner-design, slides, theme-factory, composition-patterns, react-best-practices | 14 |
| **Business** | pricing-strategy, growth-marketing, market-intelligence, product-spec, aeo-optimization, compliance-checklist | 6 |
| **Data** | data-analysis, backtest-validation, nextjs-skills | 3 |
| **Security** | threat-modeling, zero-bias | 2 |
| **Workflow** | autoresearch, brainstorming, writing-plans, executing-plans, dispatching-parallel-agents, subagent-driven-development, verification-before-completion, writing-skills, skill-creator | 9 |
| **Knowledge** | research, humanizer, context-engineering, docs-validator, notebooklm | 5 |
| **Meta** | decision-journal, architecture-diagrams, social-media-skills, web-artifacts-builder, webapp-testing | 5 |

### Orchestration (`orchestration/`)

**Guardrails:** Authority matrix, escalation rules, feedback loops, core principles

**Workflows:** Feature development, bug fix, architecture review, security audit, incident response, performance review

**Topologies:** Sabha (debate), Vyuha (formation), Chakravyuha (layered defense), Akshauhini (full deployment), Rajya (governance)

### Standing Orders (Always Active)

1. Zero Cognitive Bias Protocol — on ALL decisions
2. 5-Question Research Framework — on ALL non-trivial research
3. Verification Before Completion — NEVER claim "done" without proof
4. Humanizer on ALL human-facing writing — emails, messages, replies
5. Distribution Before Product — every feature includes "how will users find this?"
6. Revenue Architecture — every product includes "how does this make money?"

---

## Optional Integrations

### Obsidian (Second Brain)

```bash
# 1. Install "Local REST API" plugin in Obsidian
# 2. Copy the API key from plugin settings
# 3. Update settings.json:
cd ~/.claude
# Edit settings.json → set OBSIDIAN_API_KEY → set disabled: false
```

### NotebookLM (Source-Grounded Research)

```bash
# In Claude Code:
# Just say "Set up NotebookLM authentication"
# One-time browser login, then query your notebooks from any session
```

---

## Customization

### Add Your Own Skill

```bash
mkdir -p ~/.claude/skills/my-skill
cat > ~/.claude/skills/my-skill/SKILL.md << 'EOF'
---
name: my-skill
description: One-line description under 250 chars (this is how auto-detection works)
user-invocable: true
---
# My Skill
## When to Activate
[keywords that should trigger this skill]
## Process
[phases, checklists, frameworks]
## Guardrails
[rules that must always be followed]
EOF
```

### Add Your Own Agent

```bash
cp ~/.claude/agents/sepoys/_template.md ~/.claude/agents/my-agent.md
# Edit: name, role, model, allowed-tools, role definition
```

### Add Auto-Detection Keywords

Edit `~/.claude/hooks/skill-detect.sh` — add a new `grep -qiE` block matching your keywords.

---

## Credits

- **Mahabharat Agents**: [`pip install mahabharat-agents`](https://pypi.org/project/mahabharat-agents/)
- **Superpowers Skills**: Cherry-picked from [obra/superpowers](https://github.com/obra/superpowers)
- **UI/UX Skills**: From [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)
- **NotebookLM Skill**: [PleasePrompto/notebooklm-skill](https://github.com/PleasePrompto/notebooklm-skill)
- **Humanizer**: Based on Wikipedia's "Signs of AI writing" guide

## License

MIT
