#!/usr/bin/env bash
set -e
# Garante que a pasta de configuração existe
mkdir -p /config/headscale
# Inicia o Headscale usando o config.yaml no /config
exec headscale serve --config /config/headscale/config.yaml
