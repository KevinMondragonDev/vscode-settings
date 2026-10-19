#!/usr/bin/env bash
# Restaura la configuración de VS Code en macOS.
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="$HOME/Library/Application Support/Code/User"
mkdir -p "$TARGET"
if [ -f "$TARGET/settings.json" ]; then
  cp "$TARGET/settings.json" "$TARGET/settings.json.bak-$(date +%Y%m%d%H%M%S)"
fi
cp "$DIR/settings.json" "$TARGET/settings.json"
while read -r ext; do
  [ -n "$ext" ] && code --install-extension "$ext" --force
done < "$DIR/extensions.txt"
echo "Listo."
