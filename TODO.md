# WTG Knowledge Base Roadmap & TODO

This document outlines the structured plan for building out the 'wtg-kb' into the ultimate resource for a Google Partner Solution Architect using Agentic IDEs.

## Phase 1: Foundational Structure & GWS Core (Complete)
- [x] Initial directory structure (docs, imported, scripts).
- [x] Base configuration (MkDocs, llms.txt, .cursorrules, .julesrules).
- [x] **GWS Content Injection:**
    - [x] Create `docs/gcp/gws-add-ons.md` (Patterns for CardService, Gemini Alpha).
    - [x] Create `docs/gcp/apps-script.md` (Local development with clasp, Bruce McP's gas-fakes).
    - [x] Create `docs/skills/gws-automation.md` (Instructions for agentic GWS tasks).

## Phase 2: Tooling & IDE Integration (Complete)
- [x] **Multi-Agent / IDE Support:**
    - [x] Create `docs/skills/antigravity-patterns.md`.
    - [x] Create template for `gemini-cli` configuration.
    - [x] Add `clasp` integration rules (handling `.clasp.json`, `appsscript.json`).
- [x] **CI/CD & Automation:**
    - [x] Add GitHub Action templates in `scripts/templates/github-actions/`.
    - [x] Create rules for 'keyless' auth using Workload Identity Federation (WIF).

## Phase 3: External Knowledge Sync ("Piping") (Complete)
- [x] **Submodule Integration:**
    - [x] Add `patrickjs/awesome-cursorrules` as a submodule in `imported/`.
    - [x] Add `steipete/agent-rules` as a submodule in `imported/`.
- [x] **Dynamic Updates:**
    - [x] Enhance `scripts/fetch-trends.sh` to parse specific GDE gists or repos.

## Phase 4: ADK, Gemini & Bluefin Ecosystem (In Progress)
- [ ] **Agent Development Kit (ADK):**
    - [ ] Create `docs/gcp/adk.md` (Rust/TS SDKs, samples, starter packs).
    - [ ] Create `docs/skills/adk-skills.md` (Best practices for ADK agents).
- [ ] **Agentic Workspace (Bluefin):**
    - [ ] Create `docs/architecture/bluefin.md` (Distrobox, personal distros, agentic guide).
- [ ] **Enterprise Security & Flow:**
    - [ ] Create `docs/gcp/security-extended.md` (Chrome Enterprise Premium, Google Flow).

## Phase 5: Advanced Architecture & Visualization (Planned)
- [ ] **Architecture Visualizer:**
    - [ ] Integrate Mermaid.js templates for common GCP patterns (Cloud Run + Pub/Sub, Vertex AI Pipelines).
- [ ] **Multi-Cloud GAS Patterns:**
    - [ ] Document patterns for running native Apps Script logic on AWS/Azure using Bruce McP's research.

## Phase 6: Self-Updating & Active Ingestion (Future)
- [ ] **Agent-Enabled Updates:**
    - [ ] Create a "Contribution Guide" for AI agents (Jules/Cursor) on how to add new learnings to the KB.
    - [ ] Implement a script to "crawl" current project files and suggest new entries for the KB.
- [ ] **Vertex AI Vector Search:**
    - [ ] Build a script to sync this KB with a Vertex AI Vector Search index for project-wide RAG.

---

## Detailed Task List & Dependencies

| Task | Dependency | IDE / Tool | Status |
| :--- | :--- | :--- | :--- |
| **GWS Add-on Best Practices** | None | Cursor/Jules | Done |
| **Local GAS with clasp/Node** | Bruce McP research | clasp, Node.js | Done |
| **Workload Identity Federation Rules** | GCP Sandbox Access | GitHub Actions | Done |
| **Antigravity Custom Skills** | docs/skills/ architecture | Antigravity | Done |
| **ADK Implementation Guide** | Phase 4 | ADK (Rust/TS) | In Progress |
| **Bluefin Distrobox Patterns** | Phase 4 | Distrobox/Bluefin | In Progress |
| **Mermaid Pattern Templates** | Phase 5 | Mermaid.js | Pending |
| **Vertex AI Search Sync** | Phase 6 | GCP SDK | Future |
