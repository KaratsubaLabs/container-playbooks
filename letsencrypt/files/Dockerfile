FROM sebp/lighttpd:latest

RUN apk add certbot
RUN mkdir -p /etc/lighttpd/certbot
COPY lighttpd.conf /etc/lighttpd

COPY new_cert.sh /usr/local/bin
RUN chmod +x /usr/local/bin/new_cert.sh

CMD ["start.sh"]
