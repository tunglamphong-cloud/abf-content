#!/bin/bash
# install.sh — cài skills + settings ABF vào ~/.claude (macOS/Linux)
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
VAULT="$(dirname "$HERE")"
mkdir -p ~/.claude/skills

for src in "$HERE/skills" "$VAULT/.claude/skills"; do
  [ -d "$src" ] || continue
  for d in "$src"/*/; do
    cp -R "$d" ~/.claude/skills/
    echo "skill: $(basename "$d")"
  done
done

if [ ! -f ~/.claude/settings.json ]; then
  cp "$HERE/settings.json" ~/.claude/settings.json
  echo "settings.json: đã cài"
else
  echo "settings.json: đã có, giữ nguyên"
fi

echo "Xong. Mở Claude Code trong folder: $VAULT"
