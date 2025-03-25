#!/bin/bash

source settings.env

CCLOUD_URL=`echo $BOOTSTRAP_SERVERS | cut -d':' -f1`
BASE_CMD='base64'

if [[ $OSTYPE == "linux"* ]]; then
    echo "this is a linux machine"
    BASE_CMD="${BASE_CMD} -w 0"
fi

BASE64_AUTH_INFO=`echo -n ${SASL_USERNAME}:${SASL_PASSWORD} | ${BASE_CMD}`
