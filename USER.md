# USER.md — Krishna's Profile

## Identity
- **Name:** Sai Krishna Madavarapu (goes by Krishna)
- **Email:** msaikrishna399@gmail.com
- **Location:** India
- **Timezone:** IST (UTC+5:30)

## Role — Current → Future Arc
**Now:** Developer building toward financial freedom through side projects.
**Becoming:** Principal SDE + AI Agentic Engineer + Solo CEO-Developer.
Not doing a 9-to-5 because he can't NOT build the things he sees in his head.

## Core Beliefs
- AI will replace most manual coding within 2-3 years. Specs > code.
- The Indian fintech/quant market is massively underserved. Huge opportunity.
- Solo builders with AI outbuild teams of 10. This is the bet he's making.
- The craft of building systems IS the reward. Financial freedom is the destination.
- Distribution > product. The best product with no audience loses to a decent product with 100K followers.
- Context engineering is the new coding. Designing the information environment for AI is the core skill.

## Active Projects

### QuantMind (Primary)
- **What:** Multi-agent prediction market trading system
- **Stack:** Python 3.11+, FastAPI, LangGraph, NumPy/SciPy, Pydantic
- **Frontend:** Next.js 14, React 19, TypeScript, Tailwind CSS
- **Status:** 549 tests, 63 API endpoints, Phase 2 in progress
- **Repo:** ~/Development/quant-mind
- **CLAUDE.md:** Yes (project-specific context)

### YouTube Automation Framework
- **What:** Automated YouTube content pipeline
- **Repo:** ~/Development/youtube-automation-framework
- **CLAUDE.md:** Yes (project-specific context)

## Technical Preferences
- **Languages:** Python (primary), TypeScript (frontend)
- **Testing:** pytest, high coverage (>90%), deterministic tests
- **Linting:** ruff for Python, ESLint for TS
- **Package manager:** uv for Python, npm for Node
- **Git:** Conventional commits, feature branches, PRs
- **API style:** FastAPI with Pydantic models, RESTful
- **Frontend:** Next.js App Router, Server Components by default, Tailwind CSS
- **Design:** Dark mode, distinctive typography, data-first dashboards

## Problem-Solving Style
1. **Dive in** — don't read the manual. Touch the thing. Break it. Feel the problem.
2. **Hit the wall** — good. Now you know what you don't know.
3. **Research the wall** — go deep. Multiple sources. No bias. Understand WHY.
4. **Break through** — build with conviction because you understand from the inside out.
5. **Ship** — don't polish. Ship. Iterate.

## Work Style
- Learn by doing first, research when stuck (not research-then-do)
- Spec-driven development for non-trivial features
- Follows 5-Question Research Framework and Zero Cognitive Bias Protocol
- Values simplicity over cleverness
- Thinks in systems and feedback loops
- Prefers tables and structured comparisons for decision-making

## #1 Frustration with AI
Having to re-explain context every session AND getting shallow answers when depth
is needed. These two things together are what makes an AI useless to Krishna.

## What Annoys Krishna
- Having to repeat context, preferences, decisions across sessions
- Surface-level answers when he needs depth
- Generic AI responses that don't account for context
- Over-engineering simple things
- Being asked obvious questions instead of reading the code
- Verbose explanations when a one-liner would do
- AI that plays it safe with hedging and "it depends"
- Not following established project patterns (CLAUDE.md, AGENTS.md)

## What Krishna Values
- Deep research on demand (THE superpower — exhaustive, multi-source, bias-free)
- Institutional memory (never forget decisions, preferences, patterns)
- Honest technical opinions (not yes-manning)
- Proactive issue detection (flag problems before asked)
- Clean, minimal code that does exactly what's needed
- Specs that prevent rework
- Tools and skills that compound over time

## How Krishna Wants Failures Handled
- Acknowledge immediately. No sugarcoating. Be brutally honest.
- Understand WHY it happened. Learn the lesson.
- Fix it fast. Move on. No drama.
- Tell him when HE'S wrong. He wants that.

---

## Evolution Map: Krishna's Growth Dimensions

### Dimension 1: Principal SDE Skills (Technical Leadership)

**Already Strong:**
- Deep technical execution (Python, TS, FastAPI, React)
- System design thinking (QuantMind multi-agent architecture)
- Code quality standards (549 tests, >90% coverage, AGENTS.md hooks)
- Spec-driven development discipline

**Upgrading:**
- **Strategic Technical Vision** — Thinking beyond "what to build next" to "what technical
  direction enables the business to win in 3 years." Not just building systems, but
  shaping the technical strategy that makes the company defensible.
- **Architecture Decision Records** — Every significant decision documented with context,
  alternatives considered, and rationale. Already started via `/spec` skill. Scale this
  to ALL decisions, not just feature specs.
- **"Good Enough" Radar** — Knowing when to stop improving and ship. The principal shift:
  from "finding things to improve" to "recognizing when it's good enough." This is the
  counterweight to Krishna's quality instincts.
- **Cross-System Thinking** — How do QuantMind and YouTube Automation share patterns?
  What infrastructure, skills, or knowledge transfers between projects? Principal
  engineers think across boundaries, not within one codebase.
- **Technical Influence Through Writing** — Blog posts, architecture docs, open-source
  contributions that establish authority. Principal engineers influence beyond their own code.

### Dimension 2: AI Agentic Engineer Skills

**Already Strong:**
- LangGraph agent orchestration (QuantMind multi-agent system)
- Prompt engineering via skills system (22 skills, SKILL.md authoring)
- Context engineering (CLAUDE.md, AGENTS.md, hierarchical memory)
- Spec-driven AI workflows

**Upgrading:**
- **Problem Shaping** — Breaking vague goals into executable, precise subtasks with clear
  inputs, outputs, and success criteria. The skill that separates "playing with AI" from
  building products. Two people should interpret the same task identically.
- **Context Design as Architecture** — Treating context like a database schema, not a prompt.
  System instructions, retrieved documents, tool definitions, structured memory — all
  designed as an information architecture, not ad-hoc prompt strings.
- **Agent Orchestration Patterns** — Mastering when to use: sequential pipeline (dependencies),
  coordinator + specialists (quality control), parallel + merge (independent subtasks).
  Rule: if subtasks share state → sequence. If 3+ parallel → add coordinator.
- **Aesthetic Judgment** — An agent can build anything you describe. It cannot judge what
  is worth describing. This requires accumulated experience from shipping and observing
  real users. Cannot be learned from docs — only from shipping.
- **Knowing When NOT to Use Agents** — Simple task → simple tool. Not everything needs
  a multi-agent pipeline. The anti-pattern of over-agentifying.
- **Production Agent Engineering** — Prompt versioning, deployment management, failure
  planning, CI/CD for prompts, staged rollouts. Moving from demo agents to production agents.
- **MCP Server Design** — Building Model Context Protocol servers that give agents real
  access to databases, analytics, CRM, deployments. Agents that can act, not just respond.

### Dimension 3: Solo CEO-Developer Skills

**Already Strong:**
- Full-stack technical execution
- Product intuition (building for real users: traders, content creators)
- AI leverage (22 skills, agents, spec-driven development)
- Capital efficiency (solo builder mindset)

**Upgrading:**
- **Distribution Before Product** — The strongest solo companies behave like media businesses
  first and product businesses second. In 2026, building is easy. Getting noticed is the
  real challenge. Krishna needs an audience BEFORE shipping products.
  - Build in public (share QuantMind journey, revenue numbers, learnings)
  - Content as distribution: Twitter/X threads, LinkedIn posts, YouTube
  - Community-first: become known in Indian quant/fintech circles
- **Revenue Architecture** — Thinking about money as a system, not an event.
  - Pricing strategy (not just "build it and they will pay")
  - Recurring revenue models (SaaS, subscriptions, API access)
  - Unit economics: CAC, LTV, churn, payback period
  - Revenue milestones: $1K MRR → $5K → $10K → $100K ARR
- **Product-Market Fit Methodology** — Deliberate, not accidental.
  - Target narrow underserved niches deeply (Indian retail quant traders)
  - Talk to users (not just build for yourself)
  - Measure: retention > acquisition. Do users come back?
  - Kill features that don't drive retention
- **Vibe CEO Operating Model** — The founder's job becomes curation when AI generates
  infinite options. Taste, judgment, and strategic decisions cannot be delegated.
  - Morning: review AI outputs, metrics, 3 strategic decisions
  - Midday: deep work on product strategy, content, partnerships
  - Afternoon: ship updates, test campaigns, create content
  - Evening: review financials, update context files, queue AI tasks
- **Legal/Compliance Awareness** — Not becoming a lawyer, but knowing enough:
  - SEBI regulations for quant trading tools in India
  - Data privacy (Indian DPDPA)
  - Terms of service / liability for trading advice
  - IP protection for QuantMind algorithms
- **Resilience Architecture** — Solo = single point of failure.
  - Document everything (specs, decisions, architecture) so context survives
  - Automate critical processes (CI/CD, monitoring, alerts)
  - Build in public = accountability partner at scale
  - Physical health and founder burnout prevention

### Dimension 4: Missing Technical Skills (Gap Analysis)

| Skill | Current Level | Target Level | Priority |
|-------|-------------|-------------|----------|
| **DevOps/Infrastructure** | Basic (Vercel) | Production (Docker, K8s, observability) | High |
| **Database Design** | Moderate | Advanced (migrations, scaling, replication) | High |
| **Security Engineering** | Awareness | Production (OWASP, pen testing, auth systems) | High |
| **Performance Engineering** | Basic | Profiling, benchmarking, optimization at scale | Medium |
| **Data Engineering** | Moderate (NumPy/SciPy) | Pipelines, streaming, real-time processing | Medium |
| **Mobile Development** | None | React Native or Flutter (for QuantMind mobile) | Low |
| **System Observability** | Basic | Structured logging, metrics, distributed tracing | Medium |

### Dimension 5: Missing Non-Technical Skills (Gap Analysis)

| Skill | Current Level | Target Level | Priority |
|-------|-------------|-------------|----------|
| **Content Creation** | Low | Build in public, Twitter presence, YouTube | Critical |
| **Distribution/Marketing** | Low | Audience building, SEO, community | Critical |
| **Sales** | None | Demo skills, objection handling, pricing | High |
| **Financial Modeling** | Basic | Unit economics, forecasting, runway planning | High |
| **User Research** | Low | Customer interviews, feedback loops, analytics | High |
| **Public Speaking** | Unknown | Conference talks, podcasts, demo days | Medium |
| **Networking** | Unknown | Indian startup ecosystem, VC relationships | Medium |
| **Writing** | Moderate (specs) | Blog posts, documentation, thought leadership | Medium |
