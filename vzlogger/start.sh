#/bin/bash


if ! [ -d "/config/vzlogger" ]
then
	mkdir /config/vzlogger
	echo "Create config dir"
fi

if ! [ -d "/share/vzlogger" ]
then
	mkdir /config/vzlogger
	echo "Create config dir"
fi

vzlogger -c /config/vzlogger/vzlogger.conf

echo hallo
while :; do :; done & kill -STOP $! && wait $!
