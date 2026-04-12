# WTG Knowledge Base Roadmap & TODO

This document outlines the structured plan for building out the 'wtg-kb' into the ultimate resource for a Google Partner Solution Architect using Agentic IDEs.

## Phase 1: Foundational Structure & GWS Core (Complete)
- [x] Initial directory structure (docs, imported, scripts).
- [x] Base configuration (MkDocs, llms.txt, .cursorrules, .julesrules).
- [x] **Refactored Architecture:** Cleaned up docs/ into Cloud, Workspace, Agents, Security, Architecture.

## Phase 2: Tooling & IDE Integration (Complete)
- [x] **Multi-Agent / IDE Support:** Antigravity, Gemini CLI, Cursor, Jules rules.
- [x] **CI/CD & Automation:** GitHub Actions with WIF patterns.

## Phase 3: External Knowledge Sync ("Piping") (Complete)
- [x] **Submodule Integration:** awesome-cursorrules, agent-rules, mcp-servers, gemini-cookbook.
- [x] **Dynamic Updates:** Enhanced `fetch-trends.sh` and `mcp-manage.sh`.

## Phase 4: Advanced Automation & Manifesting (In Progress)
- [x] **Automation Scripts:** Added `setup-agentic-env.sh`, `generate-manifest.sh`.
- [ ] **Compliance Bot:** (Future) A script to verify link integrity and MD formatting.
- [ ] **Contribution Guide:** (In Progress) Instructions for AI agents on how to add entries to the refactored structure.

## Phase 5: RAG & Vertex AI Search Integration (Planned)
- [ ] **Vertex AI Sync:** Automate the indexing of this KB into Vertex AI Vector Search.
- [ ] **Mermaid Templates:** Standardize architecture diagrams for common GCP patterns.

---

## Refactored Directory Map

| Folder | Content |
| :--- | :--- |
| `docs/cloud/` | Pure GCP Patterns (Vertex AI, Cloud Run). |
| `docs/workspace/` | GWS, Apps Script, Flow, Add-ons. |
| `docs/agents/` | ADK, MCP, Agent Skill definitions. |
| `docs/security/` | WIF, CEP, Identity patterns. |
| `docs/architecture/` | Bluefin, Distrobox, High-level designs. |
