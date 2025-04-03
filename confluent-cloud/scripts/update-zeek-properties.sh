#!/bin/bash

source settings.env

SED_CMD="sed -i"
if [[ "$OSTYPE" == "darwin"* ]]; then
    SED_CMD="sed -i ''"
fi

${SED_CMD} 's|.*bootstrap.servers.*|["bootstrap.servers"] = "'${BOOTSTRAP_SERVERS}'",|' zeek/kafka/send-to-kafka.zeek
${SED_CMD} 's|.*sasl.username.*|["sasl.username"] = "'${SASL_USERNAME}'",|' zeek/kafka/send-to-kafka.zeek
${SED_CMD} 's|.*sasl.password.*|["sasl.password"] = "'${SASL_PASSWORD}'",|' zeek/kafka/send-to-kafka.zeek