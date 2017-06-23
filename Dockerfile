FROM alpine:3.6

MAINTAINER Shoma Nishitateno <shoma416@gmail.com>

RUN set -xe \
    && apk update \
    && apk add --no-cache \
        samba=4.6.4-r0 \
        samba-common-tools=4.6.4-r0 \
    && touch /etc/printcap

COPY docker-entrypoint.sh /docker-entrypoint.sh

VOLUME /share

EXPOSE 137/udp 138/udp 139 445

CMD ["sh", "/docker-entrypoint.sh"]