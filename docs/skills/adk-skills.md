# Skill: Building ADK Agents

## Objective
Design and implement agents using the ADK framework (Rust or TypeScript).

## Instructions for AI Agents
- **Modular Components:** When building an ADK agent, separate the *Model* configuration, *Tools* (MCP), and *Memory* (Vector stores).
- **Efficiency:** Prioritize Rust (`adk-rust`) for latency-sensitive agents (e.g., Voice, Real-time).
- **Testing:** Use `adk-playground` and `vllora` for debugging agent loops.

## Common ADK Tasks
1. **Create an MCP Server:** Implement a server that exposes a GCP API as an ADK tool.
2. **Implement CascadeFlow:** Use `cascadeflow` to optimize cost and quality inside the agent loop.
