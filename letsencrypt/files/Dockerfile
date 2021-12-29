FROM sebp/lighttpd:latest

RUN apk add certbot
RUN mkdir -p /etc/lighttpd/certbot
COPY lighttpd.conf /etc/lighttpd

CMD ["start.sh"]
