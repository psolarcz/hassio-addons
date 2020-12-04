#!/usr/bin/env bashio

USERNAME=$(bashio::config 'username')


bashio::log.info 123
bashio::log.info "${USERNAME}"
