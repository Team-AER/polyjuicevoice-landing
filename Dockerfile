FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/nginx

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://127.0.0.1/ || exit 1
