#!/bin/bash
set -euo pipefail
# Setup an Agentic Workspace environment using Distrobox

echo "🚀 Setting up Agentic Workspace..."

# Create a specialized distrobox for GWS/GCP work
distrobox create -i fedora:latest -n wtg-agentic-env

echo "✅ Distrobox 'wtg-agentic-env' created."
echo "👉 Use 'distrobox enter wtg-agentic-env' to start."
