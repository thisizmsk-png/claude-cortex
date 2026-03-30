#!/bin/bash
# Skill Auto-Detection Hook
# Scans user prompt for keywords and suggests matching skills
# Runs on UserPromptSubmit — output is prepended to Claude's context

PROMPT="$USER_PROMPT"
SUGGESTIONS=""

# YouTube & Content
if echo "$PROMPT" | grep -qiE 'seo|metadata|title optim|tags|description|keyword'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /youtube-seo detected — apply YouTube SEO optimization patterns"
fi
if echo "$PROMPT" | grep -qiE 'thumbnail|cover image|ctr|click.?through'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /youtube-thumbnail-design detected — apply thumbnail design patterns"
fi

# Architecture & Design
if echo "$PROMPT" | grep -qiE 'architect|system design|hld|high.?level design|component diagram'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /hld detected — produce system architecture document"
fi
if echo "$PROMPT" | grep -qiE 'implement|class diagram|lld|low.?level|method signature|algorithm'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /lld detected — produce detailed implementation design"
fi
if echo "$PROMPT" | grep -qiE 'code review|pr review|review.*code|audit.*code'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /code-review detected — perform thorough code review"
fi

# Testing & Quality
if echo "$PROMPT" | grep -qiE 'test strategy|test plan|coverage|unit test|integration test|e2e'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /testing detected — design test strategy"
fi
if echo "$PROMPT" | grep -qiE 'threat model|security|vulnerability|owasp|stride|pentest'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /threat-modeling detected — conduct security analysis"
fi

# Product & Research
if echo "$PROMPT" | grep -qiE 'prd|user stor|feature spec|product spec|requirements'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /product-spec detected — create product specification"
fi
if echo "$PROMPT" | grep -qiE 'research|investigate|deep dive|analyze|explore.*topic'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /research detected — conduct exhaustive bias-free research"
fi
if echo "$PROMPT" | grep -qiE 'specification|spec.*driven|requirements.*design'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /spec detected — produce rigorous specification"
fi

# Cognitive Bias
if echo "$PROMPT" | grep -qiE 'bias|cognitive|assumption|validate.*decision|devil.*advocate'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /zero-bias detected — apply Zero Cognitive Bias Protocol"
fi

# Infrastructure & DevOps
if echo "$PROMPT" | grep -qiE 'ci.?cd|deploy|pipeline|docker|kubernetes|infra'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /ci-cd detected — design CI/CD pipeline"
fi
if echo "$PROMPT" | grep -qiE 'incident|outage|on.?call|sre|reliability|postmortem'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /incident-response detected — follow incident management"
fi

# Design
if echo "$PROMPT" | grep -qiE 'design system|design token|component.*api|accessibility'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /design-system detected — design system patterns"
fi
if echo "$PROMPT" | grep -qiE 'backtest|walk.?forward|overfitting|out.?of.?sample'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /backtest-validation detected — validate quantitative model"
fi

# Frontend & UI
if echo "$PROMPT" | grep -qiE 'ui|ux|frontend|landing page|dashboard|web.*design|react.*component|page.*design|build.*page|create.*page'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /frontend-architecture detected — Apple/Linear/Vercel-grade design patterns"
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /frontend-design detected — apply frontend design patterns"
fi
if echo "$PROMPT" | grep -qiE 'banner|social media.*image|ad.*creative|poster'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /banner-design detected — design banner/creative"
fi
if echo "$PROMPT" | grep -qiE 'slide|presentation|pitch deck|keynote'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /slides detected — create HTML presentation"
fi

# Content & Writing
if echo "$PROMPT" | grep -qiE 'humanize|ai.*writing|sound.*natural|rewrite.*human|reply.*email|write.*email|respond.*to|draft.*message|write.*message|reply.*to.*human|compose.*email|write.*letter|draft.*reply|email.*response|slack.*message|linkedin.*message'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /humanizer detected — remove AI writing patterns, sound natural"
fi
if echo "$PROMPT" | grep -qiE 'brand|voice|tone|identity|style guide'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /brand detected — apply brand voice/identity"
fi

# Autonomous iteration
if echo "$PROMPT" | grep -qiE 'automat|iterate|keep improving|run.*overnight|autoresearch'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /autoresearch detected — autonomous iteration loop"
fi

# Database & Data
if echo "$PROMPT" | grep -qiE 'schema|database|migration|indexing|erd|data model|normalization|table design'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /database-design detected — schema design and migration"
fi
if echo "$PROMPT" | grep -qiE 'analyz|statistic|trend|anomal|correlation|distribution|chart|visualiz|dashboard data|a.?b test'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /data-analysis detected — statistical analysis"
fi

# Business & Revenue
if echo "$PROMPT" | grep -qiE 'pricing|monetiz|revenue model|subscription|tier|freemium|mrr|arr|unit economics'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /pricing-strategy detected — pricing and monetization"
fi
if echo "$PROMPT" | grep -qiE 'growth|acquisition|conversion|distribution|audience|funnel|ctr|retention|churn|launch|go.?to.?market'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /growth-marketing detected — growth strategy"
fi

# API & Observability
if echo "$PROMPT" | grep -qiE 'api|endpoint|rest|openapi|graphql|contract.*first|versioning.*api'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /api-design detected — API design patterns"
fi
if echo "$PROMPT" | grep -qiE 'monitor|logging|alerting|metric|dashboard|slo|sli|observability|uptime|error rate'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /observability detected — monitoring and alerting design"
fi

# Superpowers (obra)
if echo "$PROMPT" | grep -qiE 'brainstorm|ideate|explore.*idea|creative.*work'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /brainstorming detected — explore ideas before implementing"
fi
if echo "$PROMPT" | grep -qiE 'debug|bug|test fail|unexpected|broken|not working'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /systematic-debugging detected — systematic root cause analysis"
fi
if echo "$PROMPT" | grep -qiE 'tdd|test.?driven|red.?green|write.*test.*first'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /test-driven-development detected — TDD workflow"
fi
if echo "$PROMPT" | grep -qiE 'parallel.*agent|dispatch.*agent|fan.?out|concurrent.*task'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /dispatching-parallel-agents detected — parallel agent dispatch"
fi
if echo "$PROMPT" | grep -qiE 'plan|implementation.*steps|roadmap|execute.*plan'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /writing-plans + /executing-plans detected — plan then execute"
fi
if echo "$PROMPT" | grep -qiE 'verify|done|complete|finish|ship|ready'; then
  SUGGESTIONS="$SUGGESTIONS\n[AUTO-SKILL] /verification-before-completion detected — verify before claiming done"
fi

if [ -n "$SUGGESTIONS" ]; then
  echo -e "\n--- SKILL AUTO-DETECTION ---$SUGGESTIONS\n--- END DETECTION ---\n"
fi

exit 0
