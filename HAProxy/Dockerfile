FROM haproxy:latest

RUN apt-get -qq update

RUN apt-get -qq -y install rsyslog

COPY rsyslog.conf /etc/rsyslog.conf

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD ["/run.sh"]