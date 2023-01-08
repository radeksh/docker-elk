#!/bin/bash

set -e

generate_token() {
    head /dev/urandom | tr -dc 'a-zA-Z0-9' | cut -c1-23
}

sed -i 's/^ELASTIC_PASSWORD=.*/ELASTIC_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^LOGSTASH_INTERNAL_PASSWORD=.*/LOGSTASH_INTERNAL_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^KIBANA_SYSTEM_PASSWORD=.*/KIBANA_SYSTEM_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^METRICBEAT_INTERNAL_PASSWORD=.*/METRICBEAT_INTERNAL_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^FILEBEAT_INTERNAL_PASSWORD=.*/FILEBEAT_INTERNAL_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^HEARTBEAT_INTERNAL_PASSWORD=.*/HEARTBEAT_INTERNAL_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^MONITORING_INTERNAL_PASSWORD=.*/MONITORING_INTERNAL_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^BEATS_SYSTEM_PASSWORD=.*/BEATS_SYSTEM_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^ELASTIC_PASSWORD=.*/ELASTIC_PASSWORD='$(generate_token)'/g' .env
sed -i 's/^ELASTIC_PASSWORD=.*/ELASTIC_PASSWORD='$(generate_token)'/g' .env
