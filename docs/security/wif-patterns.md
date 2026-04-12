# Security & Authentication Patterns

## Workload Identity Federation (WIF)
WIF is the recommended way to authenticate GitHub Actions with GCP and Google Workspace. It eliminates the need for long-lived Service Account keys.

### Setup Steps
1. **Create a Workload Identity Pool:**
   ```bash
   gcloud iam workload-identity-pools create "github-pool" --location="global"
   ```
2. **Create a Provider for GitHub:**
   ```bash
   gcloud iam workload-identity-pools providers create-oidc "github-provider" \
     --location="global" --workload-identity-pool="github-pool" \
     --issuer-uri="https://token.actions.githubusercontent.com" \
     --attribute-mapping="google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.repository=assertion.repository"
   ```
3. **Allow the GitHub Repository to impersonate a Service Account:**
   ```bash
   gcloud iam service-accounts add-iam-policy-binding "my-service-account@my-project.iam.gserviceaccount.com" \
     --role="roles/iam.workloadIdentityUser" \
     --member="principalSet://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/github-pool/attribute.repository/YOUR_ORG/YOUR_REPO"
   ```

## Keyless Access for GWS
Using WIF, you can authorize a GitHub Action to act as a GWS user via **Domain-Wide Delegation (DWD)**. This is crucial for automated `clasp` deployments.
