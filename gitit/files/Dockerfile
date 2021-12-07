FROM debian:bullseye

RUN apt-get update \
    && apt-get install -y locales \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
RUN apt-get update && apt-get install -y gitit

ENV LANG en_US.UTF-8

RUN mkdir -p /var/www/gitit
WORKDIR /var/www/gitit

COPY gitit.conf .

CMD ["gitit", "-f", "gitit.conf"]

