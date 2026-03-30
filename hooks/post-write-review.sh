#!/bin/bash
# Post-Write Code Review Hook
# Fires after Edit/Write — suggests language-specific best practices + skills
# Based on file extension of the changed file

FILE_PATH=$(echo "$TOOL_INPUT" | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' | head -1 | sed 's/.*"file_path"[[:space:]]*:[[:space:]]*"//' | sed 's/"$//')

if [ -z "$FILE_PATH" ]; then
  exit 0
fi

EXT="${FILE_PATH##*.}"
SUGGESTIONS=""

case "$EXT" in
  py)
    SUGGESTIONS="[POST-WRITE] Python: type hints on all public APIs, error handling (try/except not bare), logging.getLogger (not print), no sys.exit in modules, docstrings on public functions.
  Skills: /modern-python (Trail of Bits), /insecure-defaults, /property-based-testing"
    ;;
  ts)
    SUGGESTIONS="[POST-WRITE] TypeScript: strict types (no 'any'), Zod validation for external data, discriminated unions for state, exhaustive never checks, proper async error handling.
  Skills: /react-best-practices (Vercel), /differential-review"
    ;;
  tsx)
    SUGGESTIONS="[POST-WRITE] React/TSX: Server Components by default (no 'use client' unless needed), memo only with profiling evidence, proper key props on lists, error boundaries, accessible markup (aria-labels, semantic HTML).
  Skills: /react-best-practices (Vercel), /frontend-architecture, /audit (a11y)"
    ;;
  css)
    SUGGESTIONS="[POST-WRITE] CSS: use design tokens (--color-*, --shadow-*) not hardcoded values, no !important, mobile-first breakpoints (min-width), font-weights must match loaded font files, clamp() for fluid typography.
  Skills: /typeset, /adapt, /design-system"
    ;;
  sql)
    SUGGESTIONS="[POST-WRITE] SQL: parameterized queries (NEVER string concat), CREATE INDEX on WHERE/JOIN columns, no SELECT *, backward migration must exist, EXPLAIN ANALYZE on complex queries.
  Skills: /database-design, /sentry-security-review"
    ;;
  yaml|yml)
    SUGGESTIONS="[POST-WRITE] YAML: no secrets in plain text (use env vars), validate syntax, all referenced files/paths must exist.
  Skills: /insecure-defaults, /compliance-checklist"
    ;;
  json)
    if echo "$FILE_PATH" | grep -qiE "package\.json|tsconfig|launch\.json|settings"; then
      exit 0
    fi
    SUGGESTIONS="[POST-WRITE] JSON: valid structure, no sensitive data (API keys, tokens).
  Skills: /insecure-defaults"
    ;;
  go)
    SUGGESTIONS="[POST-WRITE] Go: error wrapping with fmt.Errorf + %w, context.Context as first param, goroutine leak prevention (defer cancel), structured logging (slog), no init() side effects.
  Skills: /code-review, /property-based-testing"
    ;;
  rs)
    SUGGESTIONS="[POST-WRITE] Rust: proper error types (thiserror/anyhow), no unwrap() in production (use ?), clippy compliance, lifetime annotations explicit where needed.
  Skills: /code-review, /differential-review"
    ;;
  java)
    SUGGESTIONS="[POST-WRITE] Java: final by default, Optional<T> not null returns, try-with-resources for AutoCloseable, immutable DTOs (records), proper exception hierarchy.
  Skills: /code-review, /sentry-security-review"
    ;;
  sh|bash)
    SUGGESTIONS="[POST-WRITE] Shell: set -euo pipefail, quote all variables, no eval, shellcheck compliance, use functions for reusable logic.
  Skills: /insecure-defaults, /gha-security-review"
    ;;
  md)
    exit 0
    ;;
  *)
    exit 0
    ;;
esac

if [ -n "$SUGGESTIONS" ]; then
  echo "$SUGGESTIONS"
fi

exit 0
