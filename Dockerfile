FROM ghcr.io/greyltc/archlinux-aur
MAINTAINER Grey Christoforo <grey@christoforo.net>

ADD install-trunk.sh /usr/sbin/install-trunk
RUN install-trunk
