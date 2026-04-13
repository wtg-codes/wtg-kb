#!/bin/bash
# Sync project metadata based on Git Remote

REMOTE_URL=$(git remote get-url origin 2>/dev/null || echo "https://github.com/wtg-codes/wtg-kb.git")

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
    sed -i "s|editUrl: .*|editUrl: 'https://github.com/$ORG/$REPO/tree/main/',|" docusaurus.config.js
    sed -i "s|href: 'https://github.com/[^']*'|href: 'https://github.com/$ORG/$REPO'|g" docusaurus.config.js

    # Update README.md links and badges
    sed -i "s|Live site: .*|Live site: https://$ORG.github.io/$REPO/|" README.md
    sed -i "s|github.com/[^/]\+/[^/]\+|github.com/$ORG/$REPO|g" README.md
    sed -i "s|$ORG.github.io/[^/]\+|$ORG.github.io/$REPO|g" README.md

    echo "✅ Metadata synchronized."
else
    echo "❌ Could not detect ORG/REPO from $REMOTE_URL"
fi
