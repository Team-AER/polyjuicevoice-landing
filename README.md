# PolyJuiceVoice Landing Page

Marketing landing page for [PolyJuiceVoice](https://polyjuicevoice.com) — on-device text-to-speech for macOS.

Built as a single-file HTML page with vanilla JS/JSX, served via nginx in Docker.

## Development

Open `index.html` directly in a browser for local preview, or run the Docker stack:

```bash
docker compose up
```

The site is then available at `http://localhost:8080`.

Hot-editing is supported: the Docker volume mounts `index.html`, `sections.jsx`, `illustrations.jsx`, and `tweaks-panel.jsx` directly, so changes are reflected on refresh without rebuilding the image.

## Project structure

```
index.html          Main page (styles, layout, and entry point)
sections.jsx        Page section components
illustrations.jsx   SVG illustration components
tweaks-panel.jsx    Dev tweaks panel
nginx/              nginx configuration
Dockerfile          nginx image definition
docker-compose.yml  Local dev / production compose config
```

## License

MIT — see [LICENSE](LICENSE).
