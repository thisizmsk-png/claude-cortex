#!/bin/bash
# Claude Cortex — Installation Script
# Usage: curl -fsSL https://raw.githubusercontent.com/thisizmsk-png/claude-cortex/main/install.sh | bash

set -e

CLAUDE_DIR="$HOME/.claude"
REPO="https://github.com/thisizmsk-png/claude-cortex.git"

echo ""
echo "  ╔══════════════════════════════════════╗"
echo "  ║       Claude Cortex Installer        ║"
echo "  ║  60 skills · 17 agents · Full OS     ║"
echo "  ╚══════════════════════════════════════╝"
echo ""

# Check if ~/.claude exists
if [ -d "$CLAUDE_DIR/.git" ]; then
    echo "⚠️  ~/.claude is already a git repo."
    echo "   To update: cd ~/.claude && git pull"
    echo "   To reinstall: rm -rf ~/.claude && re-run this script"
    exit 1
fi

# Backup existing config
if [ -d "$CLAUDE_DIR" ]; then
    BACKUP="$HOME/.claude-backup-$(date +%Y%m%d-%H%M%S)"
    echo "📦 Backing up existing ~/.claude to $BACKUP"
    cp -r "$CLAUDE_DIR" "$BACKUP"

    # Preserve personal files
    PRESERVED_FILES=""
    for f in USER.md MEMORY.md settings.local.json; do
        if [ -f "$CLAUDE_DIR/$f" ]; then
            cp "$CLAUDE_DIR/$f" "/tmp/claude-cortex-preserve-$f"
            PRESERVED_FILES="$PRESERVED_FILES $f"
        fi
    done

    # Preserve memory directory
    if [ -d "$CLAUDE_DIR/memory" ]; then
        cp -r "$CLAUDE_DIR/memory" "/tmp/claude-cortex-preserve-memory"
        PRESERVED_FILES="$PRESERVED_FILES memory/"
    fi

    # Preserve projects directory
    if [ -d "$CLAUDE_DIR/projects" ]; then
        cp -r "$CLAUDE_DIR/projects" "/tmp/claude-cortex-preserve-projects"
        PRESERVED_FILES="$PRESERVED_FILES projects/"
    fi
fi

# Clone
echo "📥 Cloning Claude Cortex..."
rm -rf "$CLAUDE_DIR"
git clone "$REPO" "$CLAUDE_DIR"

# Restore personal files
if [ -n "$PRESERVED_FILES" ]; then
    echo "🔄 Restoring personal files:$PRESERVED_FILES"
    for f in USER.md MEMORY.md settings.local.json; do
        if [ -f "/tmp/claude-cortex-preserve-$f" ]; then
            cp "/tmp/claude-cortex-preserve-$f" "$CLAUDE_DIR/$f"
            rm "/tmp/claude-cortex-preserve-$f"
        fi
    done
    if [ -d "/tmp/claude-cortex-preserve-memory" ]; then
        cp -r "/tmp/claude-cortex-preserve-memory" "$CLAUDE_DIR/memory"
        rm -rf "/tmp/claude-cortex-preserve-memory"
    fi
    if [ -d "/tmp/claude-cortex-preserve-projects" ]; then
        cp -r "/tmp/claude-cortex-preserve-projects" "$CLAUDE_DIR/projects"
        rm -rf "/tmp/claude-cortex-preserve-projects"
    fi
fi

# Create personal files from templates if missing
if [ ! -f "$CLAUDE_DIR/USER.md" ]; then
    cp "$CLAUDE_DIR/USER.template.md" "$CLAUDE_DIR/USER.md"
    echo "📝 Created USER.md from template — edit it with your profile"
fi

if [ ! -f "$CLAUDE_DIR/MEMORY.md" ]; then
    cp "$CLAUDE_DIR/MEMORY.template.md" "$CLAUDE_DIR/MEMORY.md"
    echo "📝 Created MEMORY.md from template"
fi

# Create memory directories
mkdir -p "$CLAUDE_DIR/memory/"{decisions,projects,people,daily,topics}
mkdir -p "$CLAUDE_DIR/projects"

# Make hook executable
chmod +x "$CLAUDE_DIR/hooks/skill-detect.sh"

echo ""
echo "✅ Claude Cortex installed!"
echo ""
echo "   60 skills    → ~/.claude/skills/"
echo "   17 agents    → ~/.claude/agents/"
echo "   Auto-detect  → ~/.claude/hooks/skill-detect.sh"
echo "   Orchestration → ~/.claude/orchestration/"
echo ""
echo "📝 Next steps:"
echo "   1. Edit ~/.claude/USER.md with your profile"
echo "   2. Edit ~/.claude/IDENTITY.md with your communication style"
echo "   3. Edit ~/.claude/SOUL.md with your philosophy"
echo "   4. Run 'claude' in any project — skills auto-activate"
echo ""
echo "   Optional:"
echo "   5. Install Obsidian Local REST API plugin → set OBSIDIAN_API_KEY in settings.json"
echo "   6. Run 'Set up NotebookLM authentication' in Claude Code"
echo ""
