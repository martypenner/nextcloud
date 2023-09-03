# syntax=docker/dockerfile:1.4

FROM lscr.io/linuxserver/nextcloud

ENV TZ=America/Toronto

RUN apk update && apk add --no-cache openrc && curl -fsSL https://tailscale.com/install.sh | sh

COPY --link /custom-services.d /custom-services.d

EXPOSE 443

ENV ALL_PROXY=socks5://localhost:1055/
ENV HTTP_PROXY=http://localhost:1055/
ENV http_proxy=http://localhost:1055/
