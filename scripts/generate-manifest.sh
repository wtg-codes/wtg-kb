#!/bin/bash
# Automatically update llms.txt and project metadata

./scripts/sync-project-meta.sh

echo "📝 Generating llms.txt manifest..."
cat <<INNER_EOF > llms.txt
# WTG Knowledge Base Manifest
## Navigation
- [Agents](/docs/agents)
- [Architecture](/docs/architecture)
- [Cloud](/docs/cloud)
- [Security](/docs/security)
- [Workspace](/docs/workspace)
INNER_EOF
