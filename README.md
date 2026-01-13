# AI Ready

Practical AI Skills in 30 Days - A Flutter learning app.

## Getting Started

1. Ensure you have Flutter installed
2. Run `flutter pub get` to install dependencies
3. Run `flutter run -d chrome` to start the app in Chrome

## Features

- Interactive AI learning scenarios
- Track-based curriculum
- Real-time refinement examples
- Material 3 design

## PWA (Progressive Web App)

Build and deploy a PWA version without affecting existing Android/iOS/desktop apps.

### Deploy to GitHub Pages (CI)

- A workflow at `.github/workflows/pwa.yml` builds Flutter Web with offline caching and publishes to the `gh-pages` branch.
- First-time setup:
  1. Push this repo to GitHub.
  2. In GitHub → Settings → Pages → Build and deployment: choose "Deploy from a branch". Select branch `gh-pages` and folder `/`.
  3. Trigger the workflow: Actions → "Build and Deploy Flutter PWA" → Run workflow (or push to `main`/`master`).
- Your site: `https://<your-username>.github.io/<repo-name>/`.

Notes:
- The workflow sets `--base-href "/<repo-name>/"` automatically for project sites.
- Offline support uses `--pwa-strategy=offline-first`.

### Build locally (Windows)

Produce a local PWA build to `build/web`:

```bash
run_pwa_build.bat <repo-name>
```

- If `<repo-name>` is omitted, base href defaults to `/` (useful locally).
- Preview locally with any static server, e.g.:

```bash
cd build/web
python -m http.server 8080
```

### Custom domain

- For a custom domain on GitHub Pages, add your `CNAME` in Pages settings. The workflow disables Jekyll processing.





