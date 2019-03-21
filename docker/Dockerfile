FROM debian:9

RUN apt-get update &&\
    apt-get install -y \
	attr sudo time git-core subversion build-essential gcc-multilib \
    libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python && \ 
	apt-get clean

RUN useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

USER openwrt
WORKDIR /home/openwrt
