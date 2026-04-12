#!/bin/bash
# Automatically update llms.txt and index files based on the docs structure

echo "📝 Generating llms.txt manifest..."

cat <<INNER_EOF > llms.txt
# WTG Knowledge Base Manifest

> Auto-generated map of the Working Title Group KB.

## Sections
INNER_EOF

for dir in docs/*/; do
    dir_name=$(basename "$dir")
    echo "- [${dir_name^}](${dir}index.md)" >> llms.txt
done

echo "✅ Manifest updated."
