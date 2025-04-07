#!/bin/bash

source settings.env

SED_CMD="sed -i"
if [[ "$OSTYPE" == "darwin"* ]]; then
    SED_CMD="sed -i ''"
fi

${SED_CMD} 's|.*confluent.topic.bootstrap.servers.*|"confluent.topic.bootstrap.servers": "'${BOOTSTRAP_SERVERS}'",|' connectors/syslog-source.json
${SED_CMD} 's|.*confluent.topic.sasl.jaas.config.*|"confluent.topic.sasl.jaas.config": "org.apache.kafka.common.security.plain.PlainLoginModule required username=\\"'${SASL_USERNAME}'\\" password=\\"'${SASL_PASSWORD}'\\";",|' connectors/syslog-source.json
