FROM nginx:mainline-alpine

RUN apk add certbot certbot-nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled /etc/nginx/

