FROM ghcr.io/greyltc/archlinux-aur
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install trunk
ADD install-trunk.sh /root
RUN bash /root/install-trunk.sh
