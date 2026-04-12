# Standard Architecture Patterns

Common architectural designs for GCP and GWS solution design.

## Cloud Run + Vertex AI (Agentic Backend)
```mermaid
graph LR
    User[User] --> GCLB[Load Balancer]
    GCLB --> CR[Cloud Run Service]
    CR --> Vertex[Vertex AI API]
    CR --> Firestore[(Firestore)]
    Vertex --> Search[Vertex AI Search]
```

## GWS Add-on (CardService Architecture)
```mermaid
graph TD
    Trigger[Contextual Trigger] --> GAS[Apps Script]
    GAS --> Card[CardService UI]
    GAS --> API[External GCP API]
    API --> Secret[Secret Manager]
```

## Event-Driven Pattern (Pub/Sub)
```mermaid
graph LR
    Source[Data Source] --> PubSub[Cloud Pub/Sub]
    PubSub --> Trigger[Cloud Function]
    Trigger --> DB[(BigQuery)]
```
