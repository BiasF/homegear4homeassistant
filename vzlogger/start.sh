#/bin/bash
echo hallo
while :; do :; done & kill -STOP $! && wait $!
