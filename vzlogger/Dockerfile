ARG BUILD_FROM=ghcr.io/hassio-addons/debian-base/aarch64:4.2.3
FROM ${BUILD_FROM}

RUN apt-get -y update
RUN apt-get update && apt-get -y install apt-transport-https wget git cmake autoconf libtool uuid-dev libcurl4-openssl-dev libssl-dev libgnutls28-dev libgcrypt20-dev libmicrohttpd-dev libsasl2-dev libunistring-dev build-essential
RUN apt-get install nano
RUN apt-get install libmosquitto-dev
RUN wget --no-check-certificate https://raw.github.com/volkszaehler/vzlogger/master/install.sh
RUN sudo bash install.sh


COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/bin/bash", "-c", "/start.sh"]

EXPOSE 2001 2002 2003
