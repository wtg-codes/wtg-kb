#!/bin/bash

# WTG Knowledge Base - Sync Script
# This script keeps your KB updated with the latest trends and external rules.

echo "🔄 Updating Git Submodules..."
git submodule update --init --recursive --remote

echo "🔍 Fetching GDE Patterns..."
# Bruce McPherson's gas-fakes examples
curl -s https://raw.githubusercontent.com/brucemcpherson/gas-fakes/main/README.md -o docs/gcp/gas-fakes-reference.md

echo "✅ Knowledge base updated successfully."
