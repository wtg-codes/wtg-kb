#!/bin/bash
# Helper to list and manage MCP servers in the KB

echo "🛠️ MCP Server Manager"

if [ "$1" == "--list" ]; then
    echo "Available Reference Servers:"
    ls imported/mcp-servers/src
else
    echo "Usage: ./scripts/mcp-manage.sh --list"
fi
