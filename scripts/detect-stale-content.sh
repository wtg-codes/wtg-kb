#!/bin/bash
set -euo pipefail

# Detect stale content (not updated in > 90 days)
STALE_DAYS=90
STALE_THRESHOLD=$(date -d "$STALE_DAYS days ago" +%s)

echo "🕰️ Checking for stale content (> $STALE_DAYS days)..."

STALE_FOUND=0

# Check all .md files in docs/
find docs/ -name "*.md" | while read -r file; do
    last_mod=$(stat -c %Y "$file")
    if [ "$last_mod" -lt "$STALE_THRESHOLD" ]; then
        last_mod_date=$(date -d "@$last_mod" "+%Y-%m-%d")
        echo "⚠️ Stale file: $file (Last updated: $last_mod_date)"
        STALE_FOUND=$((STALE_FOUND + 1))
    fi
done

echo "✅ Stale content check complete."
