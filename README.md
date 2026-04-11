# WTG Knowledge Base (wtg-kb)

A centralized repository for amassing knowledge, business processes, and AI-driven skills for SDLC projects.

## Architecture

This KB is designed for a **Solution Architect** workflow, optimized for consumption by both humans (via MkDocs) and AI agents (via Cursor, Jules, and llms.txt).

### Directory Structure

- `docs/`: The core knowledge base.
    - `gcp/`: Patterns and best practices for Google Cloud Platform.
    - `business/`: Business process logic and client-facing templates.
    - `demos/`: Notes and technical details for internal tools and demos.
    - `skills/`: Specific "AI Skills" defined in Markdown for LLM consumption.
- `imported/`: External knowledge sources (e.g., Git submodules for .cursorrules).
- `scripts/`: Automation for syncing and "piping in" external trends.

## Recommended Tools

1. **Infrastructure:** [Material for MkDocs](https://github.com/squidfunk/mkdocs-material)
2. **AI Standards:** [llms.txt](https://llms-txt.org)
3. **Skills Library:** [awesome-cursorrules](https://github.com/patrickjs/awesome-cursorrules)

## How to use with Cursor/Jules

1. **Global Rules:** Use the `.cursorrules` in this root for general architecture guidance.
2. **Symlinking:** For individual projects, symlink the relevant files from this repo to your project root.
