FROM sebp/lighttpd:latest
 
RUN apk add git gettext
COPY lighttpd.conf /etc/lighttpd

RUN mkdir -p /var/www/homepage
WORKDIR /var/www/homepage
RUN git clone https://github.com/KaratsubaLabs/homepage .
RUN ./transgen

CMD ["start.sh"]
