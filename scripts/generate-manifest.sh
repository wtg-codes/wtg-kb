#!/bin/bash
# Automatically update llms.txt based on Docusaurus docs structure

echo "📝 Generating llms.txt manifest from Docusaurus docs..."

cat <<INNER_EOF > llms.txt
# WTG Knowledge Base Manifest

> Auto-generated map for AI agents.

## Navigation
INNER_EOF

# Scan top-level doc directories
for dir in docs/*/; do
    dir_name=$(basename "$dir")
    # Avoid scanning special directories if any
    if [[ "$dir_name" != "node_modules" ]]; then
        echo "- [${dir_name^}](/docs/$dir_name)" >> llms.txt
    fi
done

echo "✅ Manifest updated."
