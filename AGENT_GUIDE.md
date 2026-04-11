# Agent Guide for WTG-KB

This guide explains how different Agentic IDEs and tools should interact with this Knowledge Base.

## Support for Major Tools

### 1. Cursor & Jules
- These tools automatically pick up `.cursorrules` and `.julesrules` in the root.
- They are instructed to use the `docs/` folder as a source of truth for architectural decisions.

### 2. Antigravity (Google)
- Antigravity can be configured to use specific "Skills."
- Point Antigravity to the `docs/skills/` directory to ingest operational logic for GWS and GCP tasks.

### 3. Gemini CLI
- Use the content in `llms.txt` to provide context to Gemini prompts.
- Commands like `cat llms.txt docs/gcp/apps-script.md | gemini "How do I optimize this GAS script?"` are highly effective.

### 4. clasp (Google Apps Script CLI)
- Rules for `clasp` usage are defined in `docs/gcp/apps-script.md`.
- Use the KB to generate `.claspignore` files that exclude the KB documentation from being pushed to Google servers.

### 5. GitHub Actions
- Templates for GWS deployment and GCP automation are located in `scripts/templates/github-actions/`.
- Always implement Workload Identity Federation (WIF) as documented in `docs/gcp/apps-script.md`.
