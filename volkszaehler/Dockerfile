ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base-debian:buster
FROM $BUILD_FROM


# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ARG BUILD_ARCH

RUN apt-get -y update
RUN apt-get -y install wget 
RUN apt-get -y install sudo
RUN apt-get -y install build-essential git-core cmake pkg-config subversion libcurl4-openssl-dev libgnutls28-dev libsasl2-dev uuid-dev libtool libssl-dev libgcrypt20-dev libmicrohttpd-dev libltdl-dev libjson-c-dev libleptonica-dev libmosquitto-dev libunistring-dev dh-autoreconf
RUN apt-get install nano
RUN wget https://raw.githubusercontent.com/BiasF/homegear4homeassistant/20cfafbd2e5169af2d83a565086041efc116675e/vzlogger/install_vz.sh
RUN chmod +x install_vz.sh
RUN ./install_vz.sh



COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/bin/bash", "-c", "/start.sh"]

EXPOSE 2001 2002 2003
