#!/bin/bash
mkdir -p /etc/secrets
echo $AIVEN_CA_PEM_B64 | base64 -d > /etc/secrets/ca.pem
exec docker-entrypoint.sh "$@"
