#!/bin/bash
set -euo pipefail

# WTG Knowledge Base - Sync Script
# This script keeps your KB updated with the latest trends and external rules.

echo "🔄 Updating Git Submodules..."
git submodule update --init --recursive --remote

echo "🔍 Fetching GDE Patterns..."
# Bruce McPherson's gas-fakes examples
curl -s https://raw.githubusercontent.com/brucemcpherson/gas-fakes/main/README.md -o docs/workspace/gas-fakes-reference.md

echo "📦 Fetching Latest MCP Server list..."
# Getting the list of reference servers
ls imported/mcp-servers/src > docs/agents/mcp-server-list.md

echo "✅ Knowledge base updated successfully."
