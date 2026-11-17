FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/nginx

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://127.0.0.1/ || exit 1

ENV GLITCHTIP_TUNNEL="" GLITCHTIP_DSN="" SENTRY_ENVIRONMENT="production" SENTRY_RELEASE=""
ENV NGINX_ENVSUBST_OUTPUT_DIR=/usr/share/nginx/html/assets
COPY deploy/monitoring-config.js.template /etc/nginx/templates/monitoring-config.js.template
