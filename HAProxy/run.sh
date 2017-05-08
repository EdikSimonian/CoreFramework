#!/bin/sh
/etc/init.d/rsyslog start

haproxy -f /usr/local/etc/haproxy/haproxy.cfg

tail -f /dev/null