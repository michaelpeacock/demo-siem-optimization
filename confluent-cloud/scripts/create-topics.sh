#!/bin/bash

./scripts/create-topic.sh _confluent-command 1

for TOPIC in `cat topics.txt`; do
    echo "Creating topic: ${TOPIC}"
    ./scripts/create-topic.sh ${TOPIC}
    #echo ""
done