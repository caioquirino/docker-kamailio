#!/bin/bash

export COMPOSE_HTTP_TIMEOUT=3600
export PUBLIC_IP=`curl http://ipinfo.io/ip 2> /dev/null`

docker-compose "$@"
