# Claude Code Skills & AI Automation Reference

> Curated from 30+ sources — March 2026. Auto-loaded by CLAUDE.md triggers.

---

## Table of Contents

1. [AI Agent Architecture Patterns](#1-ai-agent-architecture-patterns)
2. [Claude Code Power Patterns](#2-claude-code-power-patterns)
3. [YouTube Automation Intelligence](#3-youtube-automation-intelligence)
4. [SEO Automation (Local + YouTube)](#4-seo-automation-local--youtube)
5. [Website Building with AI](#5-website-building-with-ai)
6. [SaaS & Product Development](#6-saas--product-development)
7. [Multi-Agent Validation (Debate Pattern)](#7-multi-agent-validation-debate-pattern)
8. [Security for Autonomous Agents](#8-security-for-autonomous-agents)
9. [Cognitive Bias Prevention Protocol](#9-cognitive-bias-prevention-protocol)
10. [Tool & Repo Quick Reference](#10-tool--repo-quick-reference)
11. [Monetization Frameworks](#11-monetization-frameworks)

---

## 1. AI Agent Architecture Patterns

### The Freshman Rule
Treat every AI agent like a new employee who knows nothing:
- One task per agent at a time
- Clear, ground-up instructions every single time
- Never assume agents remember project history
- Strip down to a 2-agent "Elite Squad" rather than 9+ agents

### Hybrid Engine Architecture
- **Local models** (Qwen 2.5 3-4B, Gemma 3 4B) for routine tasks: heartbeats, routing, checking — $0 cost
- **Paid API** (Claude, MiniMax, etc.) reserved for complex reasoning, coding, creative work
- Qwen 3 4B is the "Agentic King" — best for tool-use and routing on consumer hardware
- M4 Mac Mini 16GB is sufficient for 3-4B local models

### Multi-Agent Org Chart Pattern
Structure agents like a real company:
- Product agents scope requirements
- Engineering agents build
- Design agents create UI/UX
- Marketing agents plan growth
- Each agent has a defined role and communicates via structured handoffs

### Self-Improving Agent Skills (OpenSpace Pattern)
- Agents learn from their own execution history
- Experience sharing across multiple agents
- Results: 46% fewer tokens, measurably better output over time
- Apply to: pipeline quality improving based on past review feedback

### Oh My Claude Code (Multi-Agent Brain)
- **Autopilot**: full autonomous builds end-to-end
- **Ultrapilot**: 3-5x faster via parallel agents
- **Ecomode**: routes simple tasks to smaller models, saves 30-50% tokens
- 32 specialized agents, automatic parallelization
- Repo: github.com/hasantoxr (3,600 stars in 1 week)

---

## 2. Claude Code Power Patterns

### CLAUDE.md Best Practices
- Keep under 300 lines (ideally <60 for core)
- For each line ask: "Would removing this cause mistakes?" If not, cut it
- Use progressive disclosure: reference `@path/to/detailed_doc.md` instead of embedding
- Add "IMPORTANT" or "YOU MUST" to critical instructions
- Never auto-generate with `/init` for production — manually craft

### Memory Hierarchy
1. `~/.claude/CLAUDE.md` — global, all projects
2. `./CLAUDE.md` — project root (shared via git)
3. Parent directories — monorepo support
4. Child directories — loaded on demand

### Skill Auto-Detection
Skills trigger based on `description` field in YAML frontmatter. To improve activation:

**Method 1 — CLAUDE.md instruction:**
```
MANDATORY: Before responding to ANY prompt, you MUST:
1. Check ALL available skills
2. Identify which skills apply
3. Use Skill(skill-name) for EACH applicable skill
4. ONLY THEN start your response
```

**Method 2 — Hook-based detection:**
- `UserPromptSubmit` hook runs detection script on every prompt
- Script checks against `skill-rules.json` with keyword/intent patterns
- If match found, injects skill activation instructions

### Key Frontmatter Fields
| Field | Effect |
|-------|--------|
| `disable-model-invocation: true` | Only user can invoke via `/name` |
| `user-invocable: false` | Only Claude can invoke (background knowledge) |
| `paths: "*.py"` | Only activates when working with matching files |

### Best Community Skills
| Skill | What |
|-------|------|
| obra/superpowers | 20+ skills: brainstorm, plan, TDD, code review, git worktrees |
| autoresearch | Karpathy's loop: modify, verify, keep/discard, repeat |
| Trail of Bits | CodeQL, Semgrep, security auditing |
| find-skills (vercel) | Discovers other skills (418K installs) |
| frontend-design (Anthropic) | Design system philosophy injection (277K installs) |

### Subagent Patterns
- Main session on Opus, subagents on Sonnet/Haiku for cost savings
- Scope tools per agent (PM: read tools, Implementer: write tools)
- `memory: project` for cross-session knowledge accumulation
- `isolation: worktree` for git worktree isolation
- Define MCP servers inline in subagent frontmatter to avoid main context bloat

### Writer/Reviewer Pattern
1. Session A implements
2. Session B reviews in fresh context (no bias toward own code)
3. Session A addresses feedback

### Fan-Out Pattern
1. Generate task list
2. Loop through with `claude -p` per file
3. Use `--allowedTools` to scope permissions

---

## 3. YouTube Automation Intelligence

### Faceless Channel Niches (Proven Revenue)
1. **Finance explainers** — RPM $10-$25 (our current niche)
2. **Luxury/lifestyle** — high CPM advertisers
3. **True crime/mystery** — RPM $8-$13, massive audience
4. **Educational compilations** — RPM $9-$14
5. **Reddit story narration** — low effort, high engagement
6. **Meditation/ambient** — long watch time, low churn
7. **AI news/tech** — growing but "AI" in title hurts CTR by 36%
8. **Cooking/recipe** — visual, evergreen
9. **History documentaries** — 20-60 min sweet spot, underserved
10. **Motivation/self-improvement** — high RPM, high competition

### AI Ultra Long-Form Production
- 20-60 min videos: 114K avg views, only 13% of content (huge gap)
- Higher RPM from mid-roll ads (2-3x vs short videos)
- Targets "lean back" viewing — people watch while doing other things
- Structured as: hook (0-30s) → problem (30s-2m) → deep dive (2m-18m) → conclusion + CTA

### Revenue Benchmarks
- ~$3 RPM average across YouTube
- Finance: $10-$25 RPM, Q4 peaks at $18-$30+
- $250K/year = ~83M views/year at $3 RPM or ~15M views at $17 RPM (finance)
- First-minute retention is the #1 factor — 55% of viewers drop in first 60 seconds
- Below 40% retention → YouTube deprioritizes regardless of CTR

### Content Velocity Rules
- Max 2-4 videos/week (daily uploads risk "repetitious content" flag)
- YouTube AI enforcement: 16 channels terminated Jan 2026 (4.72B views wiped)
- What's safe: AI-assisted outlines + human-quality final output
- What gets flagged: pure TTS, AI slideshows, templated scripts

### YouTube Channel Types
1. **Talking Head** — highest trust, lowest scalability
2. **Screen Recording** — tutorials, software
3. **Compilation** — curated clips (copyright risk)
4. **Documentary/Essay** — high production, high RPM
5. **Shorts-First** — discovery funnel, $0.01-$0.06 RPM
6. **Podcast Clips** — repurposing long-form
7. **Animation/Explainer** — expensive but defensible
8. **List/Ranking** — "Top 10" format, evergreen
9. **News/Commentary** — timely, high competition
10. **AI-Generated** — our category, requires differentiation

---

## 4. SEO Automation (Local + YouTube)

### Claude Cowork Local SEO System (6-Prompt)

**Week 1 — Foundation:**
1. **Citation Audit** — check NAP across 10 pages of Google results, flag "St" vs "Street" level differences. NAP cleanup alone can move businesses up 2-3 spots in map pack within 30 days.
2. **Competitor Review Teardown** — last 50 reviews per competitor, extract review velocity, recurring complaints, mentioned services/neighborhoods.

**Week 2 — Gap Analysis:**
3. **Service Area Page Gap** — crawl your site + 3 competitors, find every service+location page they have that you don't. Businesses jump from 1 city to 8+ within 90 days.
4. **GBP Category Audit** — extract primary + secondary categories from competitors. Adding one secondary category can trigger new search visibility within a week.

**Week 3 — Content + Links:**
5. **GBP Photo Audit** — count, categorize, plan 8-week upload schedule. Consistency beats volume.
6. **Backlink Gap Analysis** — find sites linking to 2+ competitors but not you. These warm targets have 5-10x higher outreach conversion.

### YouTube SEO (Already in pipeline via seo_optimizer.py)
- Title scoring: 0-100 with keyword, curiosity, power words, variety checks
- Tag pyramid: primary → long-tail → broad → year → channel tags (max 15)
- 5-zone description architecture
- Chapter timestamps for rich snippets

### SEO Empire Builder Pattern (Autonomous)
- Weekly keyword research + programmatic SEO strategies
- Content generation → direct CMS publishing
- Automated backlink outreach with personalized emails
- Search Console monitoring → strategy adjustment
- 24/7 operation: check rankings, write content, send outreach, build links

---

## 5. Website Building with AI

### 9-Prompt Claude + Figma Make Workflow
Execute in order:

| # | Role | Output |
|---|------|--------|
| 1 | Architecture Strategist | Site map, user flows, data models |
| 2 | Design System Generator | Color palette, typography, spacing, components |
| 3 | Content Architect | Hero copy, features, social proof per page |
| 4 | Component Logic Builder | Forms, calculators, search, dashboards, auth |
| 5 | Figma Make Prompt Engineer | Converts spec → 5 Figma Make prompts |
| 6 | Animation Designer | Load sequences, scroll behaviors, hover states |
| 7 | Responsive Strategist | 375px / 768px / 1440px breakpoints |
| 8 | Data Integration Planner | Schemas, APIs, auth, Supabase connections |
| 9 | QA Checklist | Core Web Vitals, WCAG 2.2 AA, structured data |

### Website Cloning Tools
- **AI Website Cloner Template** (github.com/JCodesMore) — Next.js 16 + shadcn/ui + Tailwind v4, supports 13 AI agents, git worktree isolation for parallel cloning
- **Website Clone Skill** (mcpmarket) — `npx skillfish add julianromli/ai-skills clone-website`, uses Firecrawl MCP for scraping

### n8n Workflow Generation
Claude Code can generate complete n8n automation workflow JSON from natural language descriptions. Useful for:
- Business process automation
- Multi-step API integrations
- Scheduled data processing pipelines

---

## 6. SaaS & Product Development

### Deploy Your Own SaaS (Self-Hosted Alternatives)
Key categories from github.com/Atarity/deploy-your-own-saas (8.8K stars):
- **Analytics**: Matomo, GoatCounter
- **Cloud Storage**: Syncthing, MinIO, Nextcloud
- **Chat**: Rocket Chat, Mattermost, Matrix
- **Email**: Postal, Mailcow
- **Publishing**: Hugo, Ghost
- **Video**: Jellyfin
- **DNS/AdBlock**: Pi-hole, AdGuard

### Vibe Coding Platforms
- **YouWare** — text-to-app, Supabase backend, instant deploy
- **Replit Agent** — full-stack from description
- **Lovable/Bolt** — rapid prototyping

### Agent-as-a-Service Business Model
The wrapper business: sell pre-configured AI agents to non-technical buyers.

**5 High-Value Agent Businesses:**
1. **Content Machine** — scrape trends, generate multi-format content, auto-schedule
2. **Health Coach** — food photo recognition, meal plans, Apple Health sync
3. **RPG Life System** — gamified productivity with XP and leveling
4. **Autonomous Dev Team** — describe → build → test → deploy
5. **SEO Empire** — autonomous keyword research, content, outreach, monitoring

### Claude Migration-as-a-Service
- Import anyone from ChatGPT to Claude in 60 seconds (memory import)
- Turn SOPs into Claude skills → agents → dashboards
- Revenue: workshops $2.5-10K + retainers $5K/mo + software $10K/mo
- Math: 15 good clients in one niche = $1M/year

---

## 7. Multi-Agent Validation (Debate Pattern)

### How It Works
Multiple AI agents with distinct personas exchange responses about a shared problem. MIT/Google Brain research confirms this measurably improves factual accuracy and reduces hallucinations.

### Configurations
- **Devil's Advocate**: one agent argues the opposite position
- **Expert Panel**: 3-5 agents with different domain expertise
- **Red Team/Blue Team**: attacker vs defender
- **Socratic Loop**: agents question each other's assumptions

### When to Apply
- Architecture decisions with multiple valid approaches
- Content quality review (is this script actually good?)
- SEO strategy validation (will this actually rank?)
- Risk assessment before irreversible actions
- Any decision where confirmation bias is a risk

### Implementation Pattern
```
Agent A: [Proposes solution]
Agent B: [Critiques with specific counterarguments]
Agent A: [Addresses critique or revises]
Agent C: [Synthesizes and identifies remaining gaps]
→ Consensus or escalate to human
```

---

## 8. Security for Autonomous Agents

### ClawdBot Security Checklist (Production Agents)
1. SSH: keys only, no passwords, no root login
2. Firewall: default-deny all incoming
3. Brute-force protection: auto-ban after failed attempts
4. VPN mesh (Tailscale): everything reachable only from your devices
5. Lock agent to owner only — NEVER add to group chats
6. Enable sandbox mode for risky operations
7. Whitelist commands explicitly — no arbitrary execution
8. Scope API tokens to minimum permissions, read-only where possible
9. Fix credential permissions (no world-readable secrets)
10. Run security audit before deploy

### Prompt Injection Defense
- Claude Opus 4.5+ trained for ~99% prompt injection resistance (but that's one layer)
- Always pair with: command allowlists, sandboxing, narrowly scoped tokens
- Real incident: agent with email access was tricked by concealed instructions in an email, wiped all emails including trash

### Trail of Bits Config (Security-First Claude Code)
- Disable telemetry (Statsig, Sentry, feedback surveys)
- Block reads to SSH keys, cloud credentials, shell config
- Multi-layer sandboxing: built-in sandbox + permission denials + devcontainers
- Anti-rationalization hook at session end

---

## 9. Cognitive Bias Prevention Protocol

### Mandatory for All Non-Trivial Decisions

**NEVER take a cognitive bias.** All reasoning, analysis, research, and decision-making must be free of:
- **Anchoring bias**: Don't over-weight the first piece of information encountered
- **Confirmation bias**: Actively seek disconfirming evidence
- **Availability bias**: Don't favor recent or memorable examples over base rates
- **Survivorship bias**: Consider failures, not just successes
- **Authority bias**: Evaluate arguments on merit, not source prestige
- **Recency bias**: Older information may be more reliable than newer
- **Sunk cost bias**: Past investment doesn't justify continued investment

### 5-Question Research Framework
Apply to all non-trivial decisions:

1. **Domain Understanding**: What are the core concepts and terminology?
2. **Business Rules**: What are the governing rules and logic?
3. **Industry Standards**: Are there established patterns or best practices?
4. **Data Requirements**: What data structures and relationships exist?
5. **Edge Cases**: What are the complex or unusual scenarios?

### Application
- Before choosing a tech stack → run the 5-Question Framework
- Before architectural decisions → apply multi-agent debate validation
- Before recommending strategies → check for survivorship bias
- When research shows unanimous agreement → actively search for counterarguments

---

## 10. Tool & Repo Quick Reference

### GitHub Repos
| Repo | What | Stars |
|------|------|-------|
| asgeirtj/system_prompts_leaks | Extracted system prompts from ChatGPT, Claude, Gemini, Grok | 35.2K |
| Atarity/deploy-your-own-saas | 100+ self-hostable SaaS alternatives | 8.8K |
| JCodesMore/ai-website-cloner-template | Pixel-perfect website cloning with 13 AI agents | 5.9K |
| ruvnet/RuView | WiFi-based human sensing (ESP32 mesh + WASM) | — |
| KeygraphHQ/shannon | Autonomous AI penetration tester | — |
| travisvn/awesome-claude-skills | Primary curated Claude skills list | — |
| hesreallyhim/awesome-claude-code | Skills, hooks, slash commands, MCP servers | — |
| VoltAgent/awesome-agent-skills | 1000+ skills from official dev teams | — |
| obra/superpowers | 20+ battle-tested Claude Code skills | — |
| trailofbits/claude-code-config | Security-first Claude Code configuration | — |
| SuperClaude-Org/SuperClaude_Framework | 30 slash commands, 20 personas, 7 modes | — |
| anthropics/skills | Official Anthropic skills repo | — |

### Platforms & Services
| Tool | Purpose |
|------|---------|
| WithOne.ai (withoneai/knowledge) | 47K verified agentic actions, 250+ app integrations |
| OpenClaw | Autonomous AI agent deployment framework |
| mcpmarket.com | MCP skill marketplace |
| Firecrawl MCP | Web scraping for AI agents |
| Context7 MCP | Library documentation lookup (no auth needed) |
| Obsidian MCP | Read/write Obsidian vault as AI knowledge base |
| NotebookLM skill | Source-grounded research via Google NotebookLM |
| x1xhlol/system-prompts | System prompts + model configs for all major AI tools |

### MCP Server Recommendations
| Server | Purpose | Setup Time |
|--------|---------|------------|
| Playwright | Browser automation, E2E testing | ~5 min |
| Context7 | Library docs lookup | ~5 min |
| Figma | Extract design tokens | ~10 min |
| PostgreSQL | Query databases | ~5 min |
| Exa | Web and code search | ~5 min |

---

## 11. Monetization Frameworks

### Agent Business Revenue Tiers
1. **Workshops/Training**: $2,500-$10,000 per engagement
2. **Documentation + Process Mapping**: $5,000/month retainer
3. **Custom Agents + Dashboards**: $10,000/month
4. **Maintenance**: $1,000/month per client
5. **Pre-configured Agent Sales**: one-time setup fee + monthly subscription

### YouTube Revenue Tiers (Finance Niche)
- Months 1-3: Pre-revenue ($200-$2K/month cost)
- Months 6-12: $50-$500/month
- Months 12-18: $500-$5,000/month
- Months 18-24+: $2,500-$30,000/month
- Q4 RPM boost: $18-$30+ (vs Q1 $8-$15)

### Key Principle
> "Stop optimizing for tokens, start optimizing for output."
> The money is not in using AI yourself — it's in selling pre-configured solutions to people who lack the technical skill.
> Pick one vertical. One team type. Go deep. 15 good clients = $1M.
