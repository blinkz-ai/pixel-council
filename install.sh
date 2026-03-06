#!/bin/bash
# Install Pixel Council for Claude Code

set -e

SKILL_DIR="$HOME/.agents/skills/pixel-council"
CLAUDE_SKILLS="$HOME/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Pixel Council for Claude Code..."

# Create directories
mkdir -p "$SKILL_DIR"
mkdir -p "$CLAUDE_SKILLS"

# Copy skill file and references (clean old references first)
cp "$SCRIPT_DIR/skill/SKILL.md" "$SKILL_DIR/SKILL.md"
rm -rf "$SKILL_DIR/references"
cp -r "$SCRIPT_DIR/references" "$SKILL_DIR/"

# Create symlink (remove old one if exists)
rm -f "$CLAUDE_SKILLS/pixel-council"
ln -s "../../.agents/skills/pixel-council" "$CLAUDE_SKILLS/pixel-council"

echo ""
echo "Pixel Council installed successfully!"
echo ""
echo "  Skill:      $SKILL_DIR/SKILL.md"
echo "  References:  $SKILL_DIR/references/"
echo "  Symlink:     $CLAUDE_SKILLS/pixel-council"
echo ""
echo "Restart Claude Code, then type /skills to verify."
echo "Use /pixel-council or just ask Claude to build any UI."
