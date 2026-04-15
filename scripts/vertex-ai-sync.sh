#!/bin/bash
set -euo pipefail
# Sync Knowledge Base to GCS for Vertex AI Search Ingestion

BUCKET_NAME=$1

echo "📤 Syncing docs to gs://$BUCKET_NAME..."

# Use gsutil to sync only the markdown files
# Note: This assumes gsutil is authenticated in the GCP Sandbox environment
gsutil -m rsync -r -x ".*\.js|.*\.json|.*\.css" docs/ "gs://$BUCKET_NAME/docs/"

echo "✅ Sync complete. You can now refresh your Vertex AI Search Index."
