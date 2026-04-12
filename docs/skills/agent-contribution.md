# Skill: Agent KB Contribution

## Objective
Enable AI agents (Cursor, Jules, Antigravity) to autonomously update the WTG Knowledge Base with new learnings.

## Instructions for AI Agents
- **Refactor Check:** Before adding a file, check `CONTRIBUTING.md` for the correct folder path.
- **Index Update:** Always append the new file link to the `index.md` of the parent directory.
- **Manifest Refresh:** After any change, run `./scripts/generate-manifest.sh`.
- **Compliance:** Run `./scripts/check-compliance.sh` to ensure no broken links were introduced.

## Example Workflow
1. "I learned a new BigQuery optimization."
2. Create `docs/cloud/bigquery-opt.md`.
3. Update `docs/cloud/index.md`.
4. Execute manifest and compliance scripts.
