#!/bin/bash

source settings.env

sed -i '' 's|.*bootstrap.servers.*|["bootstrap.servers"] = "'${BOOTSTRAP_SERVERS}'",|' zeek/kafka/send-to-kafka.zeek
sed -i '' 's|.*sasl.username.*|["sasl.username"] = "'${SASL_USERNAME}'",|' zeek/kafka/send-to-kafka.zeek
sed -i '' 's|.*sasl.password.*|["sasl.password"] = "'${SASL_PASSWORD}'",|' zeek/kafka/send-to-kafka.zeek