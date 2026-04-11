# Google Workspace Add-ons

## Frameworks
- **CardService:** The primary service for building add-on UIs that work across Gmail, Drive, and Docs.
- **Gemini Alpha:** Integration with Google Workspace Flows for AI-driven add-on responses.

## UI Design
- Focus on "Contextual Triggers." The add-on should show relevant information based on the user's current document or email.
- Use `AddOnsResponseService` for building complex flow-based interactions.

## Deployment
- Add-ons can be deployed via Apps Script or as alternate runtimes (Cloud Run, GAE).
