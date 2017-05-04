#!/bin/bash

until $(curl --output /dev/null --silent --head --fail -H 'Host: example.com' http://127.0.0.1:80); do docker ps; sleep 5; done

curl --verbose -H 'Host: example.com' 'http://127.0.0.1:80/'

curl --verbose -H 'Host: kibana.example.com' 'http://127.0.0.1:80/'