#!/bin/sh
set -e

echo "[INFO] Gerando arquivo de configuração do Headscale..."
echo "$CONFIG" > /config/headscale.yaml

echo "[DEBUG] Conteúdo de /config/headscale.yaml:"
cat /config/headscale.yaml

exec /usr/local/bin/headscale serve --config /config/headscale.yaml