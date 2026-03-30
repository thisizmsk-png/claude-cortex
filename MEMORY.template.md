# MEMORY.md — Active Context Index

> Copy this to `MEMORY.md`. Claude reads this every session. Keep under 100 lines.
> Deep knowledge lives in `memory/` subdirectories.

## Current Focus
- [Project 1]: [Current phase/priority]
- [Project 2]: [Status]

## Active Decisions
> See `memory/decisions/` for full decision logs

- [Date] [Decision summary]

## Project Status

### [Project Name]
- [Key metrics: tests passing, endpoints, coverage]
- [Current phase]

## Preferences Learned
- [How you like to work — Claude fills this in over time]

## Skills & Persona Setup
- **60 skills** installed globally at `~/.claude/skills/`
- 17 Mahabharat agents at `~/.claude/agents/`
- Auto-detection hook at `~/.claude/hooks/skill-detect.sh`
- Skills auto-activate by keyword matching

## Memory Directory Index
```
~/.claude/memory/
├── people/        # Profiles of people you work with
├── projects/      # Detailed project status and history
├── decisions/     # Decision logs with rationale
├── daily/         # Daily session journals
└── topics/        # Deep knowledge on specific topics
```
