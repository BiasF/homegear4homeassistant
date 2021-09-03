#/bin/bash


if ! [ -d "/config/volkszähler" ]
then
	mkdir /config/vzlogger
	echo "Create config dir"
fi

if ! [ -d "/share/volkszähler" ]
then
	mkdir /share/volkszähler
	echo "Create config dir"
fi



echo hallo
while :; do :; done & kill -STOP $! && wait $!
