#!/usr/bin/env bashio

USERNAME=$(bashio::config 'username')

bashio::log.info "${USERNAME}"
