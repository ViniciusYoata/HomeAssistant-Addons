ARG BUILD_FROM=ghcr.io/hassio-addons/base-alpine:13.2.0
FROM ${BUILD_FROM}

RUN echo "[DEBUG] Adicionando curl..." \
    && apk add --no-cache curl

RUN echo "[DEBUG] Baixando Headscale..." \
    && curl -Lo /usr/local/bin/headscale https://github.com/juanfont/headscale/releases/latest/download/headscale \
    && chmod +x /usr/local/bin/headscale \
    && echo "[DEBUG] Headscale baixado: " \
    && ls -lh /usr/local/bin/headscale

# Debugando diretório atual antes de copiar
RUN echo "[DEBUG] Conteúdo do contexto de build antes de copiar run.sh:" && ls -lh /

COPY run.sh /run.sh

RUN echo "[DEBUG] listando root do container" && ls -lah /
RUN echo "[DEBUG] Copiou run.sh?" && ls -lh /run.sh && cat /run.sh

RUN chmod +x /run.sh

RUN echo "[DEBUG] Finalizou as etapas do Dockerfile."

CMD [ "/run.sh" ]
