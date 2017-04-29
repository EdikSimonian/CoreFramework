
#!/bin/bash

PORT="$(docker inspect --format '{{ (index (index .NetworkSettings.Ports "9200/tcp") 0).HostPort }}' coreframework_elasticsearch_1)"
curl -XPUT -u elastic:changeme "http://127.0.0.1:$PORT/_xpack/license?acknowledge=true" -d @Config/license.json
