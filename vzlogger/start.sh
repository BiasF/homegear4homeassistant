#!/usr/bin/with-contenv bashio

while :; do :; done & kill -STOP $! && wait $!
