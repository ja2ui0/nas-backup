FROM alpine:edge
MAINTAINER Shane Heroux <shane.heroux@gmail.com>

RUN \
  echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk add --no-cache --update mergerfs snapraid rsync && \
  mkdir /mnt/data

ENV MERGERFS_OPTS="defaults,allow_other,use_ino,minfreespace=0" MERGERFS_SRC="/mnt/disk*" MERGERFS_DEST="/mnt/data"

ADD init /init
CMD ["/init"]
