#!/bin/bash

source util.sh

curl --request GET \
   --url https://${CCLOUD_URL}/kafka/v3/clusters/${CLUSTER_ID}/topics \
   --header 'Authorization: Basic '${BASE64_AUTH_INFO}'' | jq '.data | .[] | .topic_name'
