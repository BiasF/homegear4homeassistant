#/bin/bash


if ! [ -d "/config/volksz�hler" ]
then
	mkdir /config/vzlogger
	echo "Create config dir"
fi

if ! [ -d "/share/volksz�hler" ]
then
	mkdir /share/volksz�hler
	echo "Create config dir"
fi



echo hallo
while :; do :; done & kill -STOP $! && wait $!
