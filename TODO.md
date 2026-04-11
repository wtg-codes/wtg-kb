# WTG Knowledge Base Roadmap & TODO

This document outlines the structured plan for building out the 'wtg-kb' into the ultimate resource for a Google Partner Solution Architect using Agentic IDEs.

## Phase 1: Foundational Structure & GWS Core (Current)
- [x] Initial directory structure (docs, imported, scripts).
- [x] Base configuration (MkDocs, llms.txt, .cursorrules, .julesrules).
- [ ] **GWS Content Injection:**
    - [ ] Create `docs/gcp/gws-add-ons.md` (Patterns for CardService, Gemini Alpha).
    - [ ] Create `docs/gcp/apps-script.md` (Local development with clasp, Bruce McP's gas-fakes).
    - [ ] Create `docs/skills/gws-automation.md` (Instructions for agentic GWS tasks).

## Phase 2: Tooling & IDE Integration
*Dependencies: Phase 1 (Core Docs)*
- [ ] **Multi-Agent / IDE Support:**
    - [ ] Create `docs/skills/antigravity-patterns.md`.
    - [ ] Create template for `gemini-cli` configuration.
    - [ ] Add `clasp` integration rules (handling `.clasp.json`, `appsscript.json`).
- [ ] **CI/CD & Automation:**
    - [ ] Add GitHub Action templates in `scripts/templates/github-actions/`.
    - [ ] Create rules for 'keyless' auth using Workload Identity Federation (WIF).

## Phase 3: External Knowledge Sync ("Piping")
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

| Task | Dependency | IDE / Tool |
| :--- | :--- | :--- |
| **GWS Add-on Best Practices** | None | Cursor/Jules |
| **Local GAS with clasp/Node** | Bruce McP research | clasp, Node.js |
| **Workload Identity Federation Rules** | GCP Sandbox Access | GitHub Actions |
| **Antigravity Custom Skills** | docs/skills/ architecture | Antigravity |
| **Automated Knowledge Ingestion** | fetch-trends.sh | bash, python |
