#!/bin/bash
# Post-Write Code Review Hook
# Fires after Edit/Write — suggests language-specific best practices
# Based on file extension of the changed file

# $TOOL_INPUT contains the tool parameters as JSON
# Extract file_path from the tool input
FILE_PATH=$(echo "$TOOL_INPUT" | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' | head -1 | sed 's/.*"file_path"[[:space:]]*:[[:space:]]*"//' | sed 's/"$//')

if [ -z "$FILE_PATH" ]; then
  exit 0
fi

EXT="${FILE_PATH##*.}"
SUGGESTIONS=""

case "$EXT" in
  py)
    SUGGESTIONS="[POST-WRITE] Python file edited. Check against: type hints, error handling, logging (not print), no sys.exit in modules, docstrings on public APIs."
    ;;
  ts|tsx)
    SUGGESTIONS="[POST-WRITE] TypeScript/React file edited. Check against: /react-best-practices (RSC, memo, key props), strict types (no any), proper error boundaries, accessible markup."
    ;;
  css)
    SUGGESTIONS="[POST-WRITE] CSS file edited. Check: design tokens used (not hardcoded colors), no !important, mobile-first breakpoints, font weights match loaded fonts."
    ;;
  sql)
    SUGGESTIONS="[POST-WRITE] SQL file edited. Check: parameterized queries (no string concat), indexes on WHERE columns, no SELECT *, migration has backward migration."
    ;;
  yaml|yml)
    SUGGESTIONS="[POST-WRITE] YAML config edited. Check: no secrets in plain text, valid syntax, all referenced files exist."
    ;;
  json)
    # Skip package.json and config files — too noisy
    if echo "$FILE_PATH" | grep -qiE "package\.json|tsconfig|launch\.json"; then
      exit 0
    fi
    SUGGESTIONS="[POST-WRITE] JSON file edited. Check: valid structure, no sensitive data."
    ;;
  md)
    # Skip — markdown doesn't need code review
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
