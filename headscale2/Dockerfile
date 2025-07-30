ARG BUILD_FROM=ghcr.io/hassio-addons/base:13.2.0
FROM ${BUILD_FROM}

# Instala curl (caso não tenha), ajusta permissões
RUN apk add --no-cache curl

# Baixa headscale para o diretório correto
RUN curl -Lo /usr/local/bin/headscale https://github.com/juanfont/headscale/releases/latest/download/headscale \
    && chmod +x /usr/local/bin/headscale

# Copia scripts e diretórios do s6-overlay (do rootfs para o container /)
COPY rootfs/ /

# Garante permissões de execução
RUN chmod +x /etc/services.d/headscale/run

# O resto (s6-overlay) é gerenciado automaticamente pela base 'base'