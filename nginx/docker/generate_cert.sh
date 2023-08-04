#!/bin/sh

CERT_PATH="/etc/nginx/private"
CERT_FILE="$CERT_PATH/default.pem"
CERT_KEY="$CERT_PATH/default.key"
mkdir -p "$CERT_PATH"

if [ ! -e "$CERT_FILE" ] || [ ! -e "$CERT_KEY" ]; then
    echo "Generating a default certificate..."
    openssl req -new -newkey rsa:2048 -days 3650 -nodes -x509 \
        -subj   "/C=US/ST=Test/L=Test/O=Test/CN=test.com" \
        -keyout "$CERT_KEY" \
        -out    "$CERT_FILE"
    # openssl x509 -text -noout -in "$CERT_FILE"
    chmod 600 "$CERT_KEY"
    chmod 600 "$CERT_FILE"
fi
