#!/bin/bash

source settings.env

sed -i '' 's|.*confluent.topic.bootstrap.servers.*|"confluent.topic.bootstrap.servers": "'${BOOTSTRAP_SERVERS}'",|' connectors/syslog-source.json
sed -i '' 's|.*confluent.topic.sasl.jaas.config.*|"confluent.topic.sasl.jaas.config": "org.apache.kafka.common.security.plain.PlainLoginModule required username=\\"'${SASL_USERNAME}'\\" password=\\"'${SASL_PASSWORD}'\\";",|' connectors/syslog-source.json
