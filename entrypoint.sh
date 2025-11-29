#!/bin/bash

# Create secrets directory
mkdir -p /etc/secrets

# Decode Aiven CA cert from Base64 → ca.pem
echo "$AIVEN_CA_PEM_B64" | base64 -d > /etc/secrets/ca.pem

# Start n8n normally
exec n8n
