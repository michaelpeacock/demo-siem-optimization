#!/bin/bash

source ./scripts/rest-util.sh

TOPIC=$1
PARTITIONS=${2:-6}

curl -sf --request POST \
  --url https://${CCLOUD_URL}/kafka/v3/clusters/${CLUSTER_ID}/topics \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Basic '${BASE64_AUTH_INFO}'' \
  --data '{"topic_name":"'${TOPIC}'", "partitions_count":'${PARTITIONS}'}'