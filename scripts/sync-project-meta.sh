#!/bin/bash
# Sync project metadata based on Git Remote

REMOTE_URL=$(git remote get-url origin)

# Extract ORG and REPO
if [[ "$REMOTE_URL" =~ github.com[:/]([^/]+)/([^.]+)(\.git)? ]]; then
    ORG="${BASH_REMATCH[1]}"
    REPO="${BASH_REMATCH[2]}"
    echo "🔍 Detected ORG: $ORG, REPO: $REPO"

    # Update docusaurus.config.js
    sed -i "s/organizationName: .*/organizationName: '$ORG',/" docusaurus.config.js
    sed -i "s/projectName: .*/projectName: '$REPO',/" docusaurus.config.js
    sed -i "s|url: .*|url: 'https://$ORG.github.io',|" docusaurus.config.js
    sed -i "s|baseUrl: .*|baseUrl: '/$REPO/',|" docusaurus.config.js

    # Update README.md
    sed -i "s|Live site: .*|Live site: https://$ORG.github.io/$REPO/|" README.md

    echo "✅ Metadata synchronized."
else
    echo "❌ Could not detect ORG/REPO from $REMOTE_URL"
fi
