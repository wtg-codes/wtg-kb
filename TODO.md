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
*Dependencies: Phase 1 (Core Docs)*
- [x] **Multi-Agent / IDE Support:**
    - [x] Create `docs/skills/antigravity-patterns.md`.
    - [x] Create template for `gemini-cli` configuration.
    - [x] Add `clasp` integration rules (handling `.clasp.json`, `appsscript.json`).
- [x] **CI/CD & Automation:**
    - [x] Add GitHub Action templates in `scripts/templates/github-actions/`.
    - [x] Create rules for 'keyless' auth using Workload Identity Federation (WIF).

## Phase 3: External Knowledge Sync ("Piping") (In Progress)
*Dependencies: Phase 1 & 2*
- [ ] **Submodule Integration:**
    - [ ] Add `patrickjs/awesome-cursorrules` as a submodule in `imported/`.
    - [ ] Add `steipete/agent-rules` as a submodule in `imported/`.
- [ ] **Dynamic Updates:**
    - [ ] Enhance `scripts/fetch-trends.sh` to parse specific GDE gists or repos.

## Phase 4: Self-Updating Mechanism
- [ ] **Agent-Enabled Updates:**
    - [ ] Create a "Contribution Guide" for AI agents (Jules/Cursor) on how to add new learnings to the KB.
    - [ ] Implement a script to "crawl" current project files and suggest new entries for the KB.

---

## Detailed Task List & Dependencies

| Task | Dependency | IDE / Tool | Status |
| :--- | :--- | :--- | :--- |
| **GWS Add-on Best Practices** | None | Cursor/Jules | Done |
| **Local GAS with clasp/Node** | Bruce McP research | clasp, Node.js | Done |
| **Workload Identity Federation Rules** | GCP Sandbox Access | GitHub Actions | Done |
| **Antigravity Custom Skills** | docs/skills/ architecture | Antigravity | Done |
| **Automated Knowledge Ingestion** | fetch-trends.sh | bash, python | Pending |
