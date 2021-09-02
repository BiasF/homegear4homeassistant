#!/usr/bin/with-contenv bashio

echo Hello world!

while :; do :; done & kill -STOP $! && wait $!
