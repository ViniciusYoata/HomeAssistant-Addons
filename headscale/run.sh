#!/bin/sh
set -e

echo "[DEBUG] Gerando config.json em /config/headscale.json..."
echo "$CONFIG_JSON" > /config/headscale.json

echo "[DEBUG] Conteúdo de /config/headscale.json:"
cat /config/headscale.json

echo "[DEBUG] Iniciando Headscale..."
exec /usr/local/bin/headscale serve --config /config/headscale.json