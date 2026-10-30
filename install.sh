#!/usr/bin/env bash
# AI Video Editor V2: copies the three skills into your Claude Code skills folder.
# Usage, from inside this folder:  bash install.sh
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
DEST_ROOT="${HOME}/.claude/skills"
mkdir -p "$DEST_ROOT"
for name in cut captions sound-effects; do
  src="$ROOT/$name"
  [ -f "$src/SKILL.md" ] || { echo "Can't find $name. Run this from inside the AI Video Editor V2 folder." >&2; exit 1; }
  dest="$DEST_ROOT/$name"
  if [ -e "$dest" ]; then
    echo "There's already a skill at $dest."
    read -r -p "Replace $name? [y/N] " ok
    case "$ok" in
      y|Y) rm -rf "$dest" ;;
      *) echo "Left $name as it is."; continue ;;
    esac
  fi
  cp -R "$src" "$dest"
  echo "Installed $name"
done
command -v ffmpeg >/dev/null 2>&1 || echo "You also need ffmpeg. On a Mac: brew install ffmpeg"
echo "Start a new Claude Code session, then type /cut, /captions or /sound-effects"
