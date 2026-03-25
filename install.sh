#!/bin/bash
mkdir -p ~/.claude/commands
cp "$(dirname "$0")"/*.md ~/.claude/commands/
echo "Done! Use /test-cases in Claude Code."
