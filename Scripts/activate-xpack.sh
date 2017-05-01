#!/bin/bash
curl -XPUT -u elastic:changeme "http://127.0.0.1:9200/_xpack/license?acknowledge=true" -d @/license.json