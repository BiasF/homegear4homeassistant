#/bin/bash


if ! [ -d "/config/vzlogger" ]
then
	mkdir /config/vzlogger
	echo "Create config dir"
fi

echo hallo
while :; do :; done & kill -STOP $! && wait $!
