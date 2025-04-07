#!/bin/bash

source settings.env

sed -i '' 's|.*value.converter.schema.registry.url.*|\"value.converter.schema.registry.url": \"'${SCHEMA_REGISTRY_URL}'\",|' connectors/elastic-sink.json
sed -i '' 's|.*value.converter.schema_registry_basic_auth_user_info.*|"value.converter.schema_registry_basic_auth_user_info": "'${SCHEMA_REGISTRY_BASIC_AUTH_USER_INFO}'",|' connectors/elastic-sink.json
