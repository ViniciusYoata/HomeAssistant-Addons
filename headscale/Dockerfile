ARG BUILD_FROM=ghcr.io/hassio-addons/base-alpine:13.2.0
FROM ${BUILD_FROM}

RUN echo "[DEBUG] ===== BASE DA IMAGEM CONSTRUIDA ====="

RUN apk add --no-cache curl \
    && echo "[DEBUG] ===== APK CURL INSTALADO ====="

RUN curl -Lo /usr/local/bin/headscale https://github.com/juanfont/headscale/releases/latest/download/headscale \
    && chmod +x /usr/local/bin/headscale \
    && echo "[DEBUG] ===== HEADSCALE BAIXADO E PERMISSÃO DADA =====" \
    && ls -l /usr/local/bin/headscale

# Copiando o run.sh e mostrando resultado
COPY run.sh /run.sh
RUN echo "[DEBUG] ===== COPIOU run.sh? Veja abaixo:" \
    && ls -l /run.sh \
    && cat /run.sh

RUN chmod +x /run.sh \
    && echo "[DEBUG] ===== chmod +x feito em run.sh! =====" \
    && ls -l /run.sh

RUN echo "[DEBUG] ===== CONFERINDO run.sh COM FIND: =====" \
    && find / -name run.sh

CMD [ "/run.sh" ]