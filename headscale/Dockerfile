ARG BUILD_FROM=ghcr.io/hassio-addons/base-alpine:13.2.0
FROM ${BUILD_FROM}

RUN apk add --no-cache curl

RUN curl -Lo /usr/local/bin/headscale https://github.com/juanfont/headscale/releases/latest/download/headscale \
    && chmod +x /usr/local/bin/headscale

COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD [ "/run.sh" ]