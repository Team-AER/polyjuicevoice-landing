# Legacy PolyJuiceVoice website verification — 24 October 2026

The existing dark studio, voice chips, microphone artwork, fonts and navigation are retained. The studio visibly identifies its no-audio simulation, uses a Preview speech workflow action, and reports illustrative progress and completion. Native-only controls are disabled; text/voice/language controls and illustrative playback remain useful. Playback starts on request and stops at its end. Background motion can be paused, with a live device reduced-motion alternative that communicates the same completion.

Verified with Chromium at 1440×1000, 390×844 and 320×844: no page-wide overflow; preview progress/completion/repeat; retained long synthetic prompt; keyboard-triggered preview; visible focus; disabled native-only controls; playback/background pause and live reduced-motion completion. Docker image build and nginx route/JSX smoke checks passed. See `verification.json`.

The browser preview creates no audio or files. Native app inference/export and physical-device frame pacing were not tested. The canonical public page remains `https://aer.app/polyjuicevoice/`; no service redirect, deployment or merge is included.

Generated review images are retained locally outside Git and are not included in this repository.
