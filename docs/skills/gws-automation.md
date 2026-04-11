# Skill: GWS Automation

## Objective
Automate common Google Workspace tasks using Apps Script and Google APIs.

## Instructions for AI Agents
- **Clasp Setup:** Ensure `.clasp.json` is present. If not, suggest `clasp create`.
- **Manifest Management:** Check `appsscript.json` for required scopes.
- **Modular Code:** Separate UI logic (CardService) from business logic (Service classes).
- **Error Handling:** Use `try-catch` blocks and log errors to `Logger` or `Stackdriver`.

## Common Tasks
1. **Sync Sheet to Calendar:** Use `SpreadsheetApp` and `CalendarApp`.
2. **Bulk Create Folders in Drive:** Use `DriveApp` with batching logic.
