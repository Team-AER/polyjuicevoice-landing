# Maintaining the standalone PolyJuiceVoice site

The canonical public page lives in [aer-landing/polyjuicevoice](https://github.com/Team-AER/aer-landing/tree/main/polyjuicevoice). Keep this earlier standalone site's documentation clear about that relationship. Updating this repository does not update that page automatically.

## Copy and assets

Use the [native app source](https://github.com/Team-AER/PolyJuiceVoice) and its [build guide](https://github.com/Team-AER/PolyJuiceVoice/blob/main/docs/BUILD_AND_RUN.md) as the authority for platform support and setup. Check the [privacy policy](https://github.com/Team-AER/PolyJuiceVoice/blob/main/docs/PRIVACY_POLICY.md) before making privacy claims. Model downloads, optional iCloud sync and user-selected sharing can use the network even though synthesis is local.

Keep studio illustrations labelled as a mockup. Avoid unverified performance promises, fixed binary download sizes, or unsupported export formats. Link to releases rather than assuming a particular downloadable version exists. The `assets/app-icon.png` favicon and navigation icon are copied from the existing native app icon via `aer-landing/polyjuicevoice/assets/app-icon.png`; preserve [its MIT notice](../assets/LICENSE) when reusing it. Keep the wordmark as PolyJuiceVoice and publisher as Team AER.

## Review checklist

1. Serve over HTTP and inspect desktop and narrow mobile layouts, menu, voice controls and simulated progress.
2. Check JSX parses with Babel's React preset, all local references exist, and in-page anchors resolve.
3. Check external destinations point to the intended repository/document/release page. Do not add placeholder community or legal links.
4. Verify README Mermaid syntax renders and the diagram reflects actual runtime dependencies.
5. Run `docker compose config` and, when a Docker daemon is available, `docker compose build` to check delivery configuration.

## Existing deployment configuration

The workflow builds on pull requests. Its deploy job only runs on pushes to `main`, synchronizes the project over SSH, and rebuilds the server's compose stack with `HOST_PORT=8082`. `deploy/` records the standalone host reverse proxy and TLS configuration. These files describe the configured delivery path, not evidence of current production health. A documentation PR does not deploy the site; merging to `main` can trigger the existing deployment job.
