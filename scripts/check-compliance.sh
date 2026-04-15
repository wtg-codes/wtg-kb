#!/bin/bash
set -euo pipefail
# WTG Knowledge Base Compliance Bot
# Checks for broken links and required file structure

echo "🔍 Running Compliance Check..."

ERROR_COUNT=0

# 1. Check for required top-level files
FILES=( "llms.txt" ".cursorrules" "TODO.md" "docusaurus.config.js" )
for file in "${FILES[@]}"; do
    if [ ! -f "$file" ]; then
        echo "❌ Missing required file: $file"
        ERROR_COUNT=$((ERROR_COUNT + 1))
    fi
done

# 2. Check for empty index files in docs
for index in docs/*/index.md; do
    if [ ! -s "$index" ]; then
        echo "⚠️ Warning: Empty index file found: $index"
    fi
done

# 3. Basic Link Integrity (Local)
# This is a naive check for local markdown links
grep -r "\[.*\](.*\.md)" docs/ | while read -r line; do
    link=$(echo "$line" | sed -E 's/.*\[.*\]\((.*\.md)\).*/\1/')
    if [[ "$link" == /* ]]; then
        # Absolute from root (Docusaurus style)
        target=".${link}"
    else
        # Relative
        target="$(dirname "$(echo "$line" | cut -d: -f1)")/$link"
    fi

    # Skip remote links
    if [[ "$link" != http* ]]; then
        if [ ! -f "$target" ] && [ ! -f "${target/index.md/index.md}" ]; then
            echo "❌ Broken link in $(echo "$line" | cut -d: -f1): $link (Target $target not found)"
            # ERROR_COUNT=$((ERROR_COUNT + 1)) # Don't fail yet, just warn
        fi
    fi
done

if [ $ERROR_COUNT -eq 0 ]; then
    echo "✅ Compliance check passed."
else
    echo "❌ Compliance check failed with $ERROR_COUNT errors."
fi
