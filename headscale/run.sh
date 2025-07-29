#!/bin/sh
set -e

echo "$CONFIG_YAML" > /config/headscale.yaml

exec /usr/local/bin/headscale serve --config /config/headscale.yaml