FROM haproxy:latest

RUN apt-get -qq update

RUN apt-get -qq -y install rsyslog

COPY rsyslog.conf /etc/rsyslog.conf

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg