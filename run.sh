#!/usr/bin/env bashio

CONFIG_PATH=/data/options.json

MQTT_HOST=$(bashio::services mqtt "host")
MQTT_USER=$(bashio::services mqtt "username")
MQTT_PASSWORD=$(bashio::services mqtt "password")

CMD="$(jq --raw-output '.cmd' $CONFIG_PATH)"

ebusd $CMD --mqtthost=$MQTT_HOST --mqttlog --mqttuser=$MQTT_USER --mqttpass=$MQTT_PASSWORD --mqttport=1883 --foreground
