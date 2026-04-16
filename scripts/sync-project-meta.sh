#!/bin/bash
set -euo pipefail

# Sync project metadata based on project.json
CONFIG_FILE="project.json"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "❌ project.json not found"
    false
fi

ORG=$(jq -r '.organizationName' "$CONFIG_FILE")
REPO=$(jq -r '.projectName' "$CONFIG_FILE")
URL=$(jq -r '.url' "$CONFIG_FILE")
BASE_URL=$(jq -r '.baseUrl' "$CONFIG_FILE")
GITHUB_URL=$(jq -r '.githubUrl' "$CONFIG_FILE")
BRANCH=$(jq -r '.branch' "$CONFIG_FILE")

echo "🔍 Detected ORG: $ORG, REPO: $REPO"

# Update docusaurus.config.js
sed -i "s/organizationName: .*/organizationName: '$ORG',/" docusaurus.config.js
sed -i "s/projectName: .*/projectName: '$REPO',/" docusaurus.config.js
sed -i "s|url: .*|url: '$URL',|" docusaurus.config.js
sed -i "s|baseUrl: .*|baseUrl: '$BASE_URL',|" docusaurus.config.js
sed -i "s|editUrl: .*|editUrl: '$GITHUB_URL/tree/$BRANCH/',|" docusaurus.config.js
sed -i "s|href: 'https://github.com/[^']*'|href: '$GITHUB_URL'|g" docusaurus.config.js

# Update README.md links and badges
sed -i "s|Live site: .*|Live site: $URL$BASE_URL|" README.md
sed -i "s|github.com/[^/]\+/[^/]\+|github.com/$ORG/$REPO|g" README.md
sed -i "s|$ORG.github.io/[^/]\+|$ORG.github.io/$REPO|g" README.md

echo "✅ Metadata synchronized from project.json."
