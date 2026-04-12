#!/bin/bash
# Comprehensive Test Suite for WTG Knowledge Base

echo "🧪 Starting KB Test Suite..."
./scripts/sync-project-meta.sh

ERROR_COUNT=0

function assert_file_exists() {
    if [ ! -f "$1" ]; then
        echo "❌ assertion failed: file $1 does not exist"
        ERROR_COUNT=$((ERROR_COUNT + 1))
    else
        echo "✅ $1 exists"
    fi
}

# 1. Critical File Checks
assert_file_exists ".cursorrules"
assert_file_exists "llms.txt"
assert_file_exists "package-lock.json"
assert_file_exists "docusaurus.config.js"

# 2. Syntax Validation
bash -n scripts/generate-manifest.sh && echo "✅ scripts ok" || ERROR_COUNT=$((ERROR_COUNT + 1))

# 3. Docusaurus Build Verification
echo "🏗️ Verifying Docusaurus build..."
export WEBPACK_BAR_DISABLE=true
npm run build > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✅ Docusaurus build successful"
else
    echo "❌ Docusaurus build failed"
    ERROR_COUNT=$((ERROR_COUNT + 1))
fi

if [ $ERROR_COUNT -eq 0 ]; then
    echo "🎉 All tests passed!"
else
    echo "⚠️ $ERROR_COUNT tests failed."
fi
