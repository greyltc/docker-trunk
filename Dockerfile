
FROM archlinux:base-devel
MAINTAINER Grey Christoforo <grey@christoforo.net>

ADD install-trunk.sh /usr/sbin/install-trunk
RUN install-trunk
