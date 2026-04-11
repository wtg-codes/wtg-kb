# Agentic Workspace with Bluefin & Distrobox

[Project Bluefin](https://projectbluefin.io/) is a Fedora-based "Cloud Native Desktop" optimized for developers.

## Key Concepts
- **[Bluefin-DX](https://github.com/projectbluefin/documentation/blob/main/docs/bluefin-dx.md):** The developer experience edition with built-in tools for containers and virtualization.
- **[Distrobox](https://github.com/89luca89/distrobox):** Use any Linux distribution inside your terminal. Perfect for isolating dev environments (e.g., a "GCP Sandbox" distrobox).
- **Personal Distros:** You can declare your own distroboxes for specific project needs.

## Agentic Use Cases (wtg_lab)
Refer to the **[Bluefin Agentic Workspace Guide](https://docs.google.com/document/d/1thU8d5BkpPZkCcaVF_Zq4Za9cq35psC8_kNMImzzAHM/edit)** for detailed setups:
- Running **Antigravity** on a Cloud Workstation via Chrome Remote Desktop.
- Using **gas-fakes** within a Distrobox to bypass local runtime limitations.

## Multi-Cloud Patterns (Bruce McPherson)
- Running native Apps Script logic on **AWS Lambda** or **Azure ACA** using containerized environments managed by Bluefin/Distrobox.
