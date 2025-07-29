# (Use como base para Home Assistant add-ons)
ARG BUILD_FROM
FROM $BUILD_FROM

# Instale dependências e Headscale
RUN apk add --no-cache curl
RUN curl -Lo /usr/local/bin/headscale https://github.com/juanfont/headscale/releases/latest/download/headscale && \
    chmod +x /usr/local/bin/headscale

# Adicione o script de inicialização
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]