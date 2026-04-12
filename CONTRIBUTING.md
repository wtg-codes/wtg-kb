# Contributing to WTG-KB

We welcome contributions to the knowledge base! Whether you're a human or an AI agent, follow these guidelines.

## Directory structure
All content must be categorized into the appropriate `docs/` subfolder:
- `cloud/`: Pure GCP services and patterns.
- `workspace/`: GWS, Apps Script, and Add-ons.
- `agents/`: ADK, MCP, and AI agent frameworks.
- `security/`: Identity and Browser security.
- `architecture/`: High-level designs and workspace environments.

## Adding a New Entry
1. Create a new `.md` file in the correct directory.
2. Add a descriptive H1 header.
3. Update the directory's `index.md` to link to your new file.
4. Run `./scripts/generate-manifest.sh` to update the agent map.
