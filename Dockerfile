# This dockerfile uses the ubuntu image
# VERSION 2 - EDITION 1
# Author: docker_user
# Command format: Instruction [arguments / command] ..

# Base image to use, this must be set as the first line
FROM centos:centos7

# Maintainer: docker_user <docker_user at email.com> (@docker_user)
LABEL version="1.0"
LABEL maintainer="contact@binstream.io"


ADD media-trunk /media-trunk
ADD /media-trunk/immortal/bin/* /usr/local/bin/

EXPOSE 8080 1935

CMD /media-trunk/immortal/bin/immortaldir /media-trunk/immortal/conf/ >/tmp/immortaldir.log 2>&1
