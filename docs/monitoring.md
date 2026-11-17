# Error monitoring

Set `GLITCHTIP_DSN`, `SENTRY_ENVIRONMENT`, and `SENTRY_RELEASE` in the Nginx container environment, then recreate it. The official Nginx entrypoint renders the monitoring configuration; an empty DSN disables reporting. The pinned Sentry browser SDK is self-hosted with its license. Only error stacks are collected: no request context, users, breadcrumbs, extras, tracing, sessions, or replay. Exception text is reduced to its type.

Use `VITE_GLITCHTIP_TUNNEL` for Vite builds, or `GLITCHTIP_TUNNEL` for static site builds, to route browser events through a configured same-origin ingest proxy. This also lets a strict `connect-src self` policy stay in place. Restrict the proxy to the configured project and GlitchTip upstream; strip cookies and authorization headers, and bound request size. The proxy must supply the project public ingest key to GlitchTip when the installed server requires it.
