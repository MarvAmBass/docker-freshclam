FROM debian:wheezy
MAINTAINER MarvAmBass

RUN apt-get update && apt-get install -y \
    clamav-freshclam

RUN freshclam

VOLUME /var/lib/clamav

ENTRYPOINT freshclam -d; tail -f /var/log/clamav/freshclam.log
