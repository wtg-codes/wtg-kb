#!/bin/bash
set -euo pipefail
# Automatically update llms.txt and project metadata

./scripts/sync-project-meta.sh

echo "📝 Generating llms.txt manifest..."
cat <<INNER_EOF > llms.txt
# WTG Knowledge Base Manifest
## Navigation
INNER_EOF

# Dynamically list top-level directories in docs/
for dir in docs/*/; do
    if [ -d "$dir" ]; then
        dirname=$(basename "$dir")
        # Capitalize first letter for display
        display_name="$(tr '[:lower:]' '[:upper:]' <<< "${dirname:0:1}")${dirname:1}"
        echo "- [$display_name](/docs/$dirname)" >> llms.txt
    fi
done

echo "✅ llms.txt updated dynamically."
