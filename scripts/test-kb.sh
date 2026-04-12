#!/bin/bash
# Comprehensive Test Suite for WTG Knowledge Base

echo "🧪 Starting KB Test Suite..."

ERROR_COUNT=0

function assert_file_exists() {
    if [ ! -f "$1" ]; then
        echo "❌ assertion failed: file $1 does not exist"
        ERROR_COUNT=$((ERROR_COUNT + 1))
    else
        echo "✅ $1 exists"
    fi
}

function assert_not_empty() {
    if [ ! -s "$1" ]; then
        echo "❌ assertion failed: file $1 is empty"
        ERROR_COUNT=$((ERROR_COUNT + 1))
    else
        echo "✅ $1 is not empty"
    fi
}

# 1. Critical File Checks
assert_file_exists ".cursorrules"
assert_file_exists "llms.txt"
assert_file_exists "TODO.md"
assert_file_exists "package-lock.json"
assert_file_exists "docusaurus.config.js"

# 2. Syntax Validation (Static)
bash -n scripts/fetch-trends.sh && echo "✅ fetch-trends.sh syntax ok" || ERROR_COUNT=$((ERROR_COUNT + 1))
bash -n scripts/generate-manifest.sh && echo "✅ generate-manifest.sh syntax ok" || ERROR_COUNT=$((ERROR_COUNT + 1))
bash -n scripts/check-compliance.sh && echo "✅ check-compliance.sh syntax ok" || ERROR_COUNT=$((ERROR_COUNT + 1))

# 3. Compliance Bot Check
./scripts/check-compliance.sh || ERROR_COUNT=$((ERROR_COUNT + 1))

# 4. Content Integrity
grep -q "Solution Architect" .cursorrules && echo "✅ .cursorrules persona verified" || ERROR_COUNT=$((ERROR_COUNT + 1))
grep -q "ADK" docs/agents/index.md && echo "✅ Agent index verified" || ERROR_COUNT=$((ERROR_COUNT + 1))

if [ $ERROR_COUNT -eq 0 ]; then
    echo "🎉 All tests passed successfully!"
else
    echo "⚠️ $ERROR_COUNT tests failed. Check logs above."
fi
