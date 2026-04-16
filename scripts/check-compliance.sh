#!/bin/bash
set -euo pipefail
# WTG Knowledge Base Compliance Bot
# Checks for broken links, required file structure, linting, and staleness

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
    if [ -f "$index" ] && [ ! -s "$index" ]; then
        echo "⚠️ Warning: Empty index file found: $index"
    fi
done

# 3. Basic Link Integrity (Local)
grep -r "\[.*\](.*\.md)" docs/ | while read -r line; do
    file_path=$(echo "$line" | cut -d: -f1)
    link=$(echo "$line" | sed -E 's/.*\[.*\]\((.*\.md)\).*/\1/')

    # Skip remote links
    if [[ "$link" == http* ]]; then
        continue
    fi

    if [[ "$link" == /* ]]; then
        # Absolute from root (Docusaurus style)
        target=".${link}"
    else
        # Relative
        target="$(dirname "$file_path")/$link"
    fi

    if [ ! -f "$target" ]; then
        # Check if it's pointing to a directory that should have an index.md
        if [ -d "${target%.md}" ] && [ -f "${target%.md}/index.md" ]; then
             continue
        fi
        echo "❌ Broken link in $file_path: $link (Target $target not found)"
        ERROR_COUNT=$((ERROR_COUNT + 1))
    fi
done

# 4. Markdown Linting
echo "📝 Running Markdown Lint..."
if npx markdownlint-cli2 "docs/**/*.md" "README.md" > /dev/null 2>&1; then
    echo "✅ Markdown lint passed."
else
    echo "⚠️ Markdown lint has warnings (see npx markdownlint-cli2 for details)."
    # ERROR_COUNT=$((ERROR_COUNT + 1)) # Optional: uncomment to fail build on lint errors
fi

# 5. Stale Content Detection
./scripts/detect-stale-content.sh

if [ $ERROR_COUNT -eq 0 ]; then
    echo "✅ Compliance check finished."
else
    echo "❌ Compliance check failed with $ERROR_COUNT errors."
    false
fi
