#!/bin/bash
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
