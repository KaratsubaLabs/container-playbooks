FROM debian:buster

RUN apt-get -y update && apt-get install -y icecast2 && apt-get install -y mpd mpc

# set up icecast
RUN useradd radio
RUN chown -R radio /etc/icecast2; \
    chown -R radio /var/log/icecast2

# set up mpd
RUN mkdir -p /var/log/mpd/data/ /run/mpd /etc/mpd /etc/mpd/music; \
	chown -R mpd:audio /var/lib/mpd; \
	chown -R mpd:audio /run/mpd/; \
	chown -R mpd:audio /etc/mpd/

COPY mpd.conf /etc/mpd/mpd.conf
COPY icecast.xml /etc/icecast2/icecast.xml

RUN mpd /etc/mpd/mpd.conf
RUN runuser radio -c 'icecast2 -c /etc/icecast2/icecast.xml'

