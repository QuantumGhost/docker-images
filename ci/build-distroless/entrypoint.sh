#!/bin/sh

apk add curl
curl -XPOST "${DOCKER_HUB_TRIGGER_URL}"
