# Qitai Lai Portfolio

This repository contains a static personal portfolio website prepared for public deployment.

## Files

- `index.html`: page structure and content
- `styles.css`: visual design and responsive layout
- `app.js`: reveal-on-scroll interactions
- `assets/profile.jpg`: profile photo
- `assets/qitai-lai-cv.pdf`: CV download file

## Publish to GitHub Pages

1. Push this project to a GitHub repository.
2. In the repository settings, enable GitHub Pages with GitHub Actions as the source.
3. The included workflow in `.github/workflows/deploy-pages.yml` will publish the site automatically after each push to `main`.

The final public URL will usually be:

`https://YOUR_GITHUB_USERNAME.github.io/REPOSITORY_NAME/`

## Cloudflare Request Trace

To debug how Cloudflare handles a request to `qitai.ink`, use:

```bash
CF_AUTH_TOKEN=your_token ./scripts/cloudflare-request-trace.sh
```

Optional arguments:

- `./scripts/cloudflare-request-trace.sh qitai.ink GET`
- `CF_ACCOUNT_ID=your_account_id CF_AUTH_TOKEN=your_token ./scripts/cloudflare-request-trace.sh`

This helper keeps your Cloudflare API token out of the website frontend and sends the request to Cloudflare's Request Tracer API using the account-level `trace` endpoint.
