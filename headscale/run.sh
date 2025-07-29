#!/bin/sh
set -e

echo "[DEBUG] Iniciando run.sh..."

cat <<EOF > /config/headscale_config.yaml
server_url: "${SERVER_URL}"
listen_addr: "${LISTEN_ADDR}"
grpc_listen_addr: "${GRPC_LISTEN_ADDR}"
db_type: "${DB_TYPE}"
db_path: "${DB_PATH}"
tls_cert_path: "/ssl/fullchain.pem"
tls_key_path: "/ssl/privkey.pem"
EOF

echo "[DEBUG] Arquivo /config/headscale_config.yaml gerado:"
cat /config/headscale_config.yaml

echo "[DEBUG] Iniciando Headscale..."
exec /usr/local/bin/headscale serve --config /config/headscale_config.yaml
