#!/usr/bin/with-contenv bashio

#echo Hello world!

USERNAME=$(bashio::config 'username')

bashio::log.info "${USERNAME}"
