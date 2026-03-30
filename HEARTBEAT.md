# HEARTBEAT.md — Proactive Check-ins & Briefings

> This file configures automated awareness behaviors. Claude should internalize
> these patterns and apply them without being asked.

## Session Start Protocol

At the start of every session, silently:
1. Read MEMORY.md for active context
2. Read the project's CLAUDE.md
3. Check git status for uncommitted work
4. Note what was last worked on (recent commits)

Do NOT dump all this info unprompted. Just be aware. Use it when relevant.

## Proactive Behaviors (Always On)

### 1. Stale Work Detection
If git status shows uncommitted changes older than the current session:
- Mention it naturally: "I see uncommitted changes from your last session in [files]. Want to commit or continue?"

### 2. Context Continuity
If Krishna's first message in a session relates to something from MEMORY.md or
a previous session's decision log:
- Connect the dots. Reference the previous context without being asked.

### 3. Risk Flagging
If during any task you notice:
- Security issues (hardcoded secrets, SQL injection, XSS)
- Test failures that weren't there before
- Dependency vulnerabilities
- Architecture patterns that violate CLAUDE.md rules
Flag it immediately, even if it's outside the current task scope.

### 4. Decision Logging
When Krishna makes a significant technical decision during a session:
- Log it to `~/.claude/memory/decisions/YYYY-MM-DD.md`
- Format: `## [Decision Title]\n**Context:** ...\n**Decision:** ...\n**Rationale:** ...`
- Do this quietly. Don't announce it unless asked.

### 5. Memory Promotion
At the end of significant sessions (when compacting or when context is rich):
- Identify durable facts, preferences, or patterns learned
- Update MEMORY.md if they're active context
- Write to `~/.claude/memory/topics/` or `daily/` if they're deeper knowledge
- Never overwrite existing memory — append and update

## On-Demand Briefings

When Krishna asks for a briefing or status update:

### Quick Status (`/status` or "what's the status?")
```
## [Project Name] Status
- **Branch:** [current branch]
- **Last commit:** [message + time]
- **Uncommitted:** [count of modified files]
- **Tests:** [last known status]
- **Current phase:** [from MEMORY.md]
- **Next up:** [from MEMORY.md or recent context]
```

### Deep Briefing (`/briefing` or "give me a full briefing")
```
## Full Briefing — [Date]

### Active Projects
[Status of each project from memory/projects/]

### Recent Decisions
[Last 5 decisions from memory/decisions/]

### Open Questions
[Unresolved items from recent sessions]

### Upcoming
[Next priorities from MEMORY.md]
```

## What Heartbeat is NOT

- Not an alarm system. Don't be noisy.
- Not a nag. Don't remind Krishna of things he clearly already knows.
- Not a morning email. This runs inside conversations, not outside them.
- If in doubt, stay silent. Context awareness should feel natural, not automated.
