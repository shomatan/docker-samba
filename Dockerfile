FROM alpine:3.6

MAINTAINER Shoma Nishitateno <shoma416@gmail.com>

RUN set -xe \
    && apk update \
    && apk add --no-cache \
        dumb-init \
        samba=4.6.4-r0 \
        samba-common-tools=4.6.4-r0

EXPOSE 137/udp 138/udp 139 445

ENTRYPOINT ["dumb-init", "smbd", "--foreground", "--log-stdout"]
CMD []