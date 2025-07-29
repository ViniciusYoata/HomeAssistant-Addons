#!/bin/bash

# Crie o arquivo de configuração do headscale a partir dos valores informados
cat <<EOF > /config/headscale-config.yaml
server_url: "${SERVER_URL}"
listen_addr: "${LISTEN_ADDR}"
grpc_listen_addr: "${GRPC_LISTEN_ADDR}"
db_type: "${DB_TYPE}"
db_path: "${DB_PATH}"
tls_cert_path: "/ssl/fullchain.pem"
tls_key_path: "/ssl/privkey.pem"
EOF

# Inicia o headscale usando o config gerado
exec /usr/local/bin/headscale serve --config /config/headscale-config.yaml