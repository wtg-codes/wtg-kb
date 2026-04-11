# Google Apps Script (GAS) Best Practices

## Local Development with `clasp`
Always use [clasp](https://github.com/google/clasp) for local development.

- **Login:** `clasp login`
- **Push:** `clasp push` (Use a `.claspignore` file)
- **TypeScript:** Use TypeScript (`.ts` files) for better type checking.

## Advanced Patterns (GDE - Bruce McPherson)
- **gas-fakes:** Use the `@mcpher/gas-fakes` library to emulate the GAS environment in Node.js. This allows for local testing and bypassing the 6-minute execution limit by running logic on Cloud Run or AWS Lambda.
- **WIF (Workload Identity Federation):** Use WIF for keyless authentication in GitHub Actions when deploying or executing GAS tasks.

## Performance (GDE - Kanshi Tanaike)
- **Batching:** Use `setValues()` and `getValues()` instead of looping over individual cells.
- **CacheService:** Use CacheService to store frequently accessed data and reduce API calls.
