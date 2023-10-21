#!/usr/bin/env bash

INIT_DIR="./guacamole/config/init"

mkdir -p "$INIT_DIR"
chmod -R +x "$INIT_DIR"
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgresql > "$INIT_DIR/initdb.sql"
