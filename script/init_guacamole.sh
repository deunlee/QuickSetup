#!/usr/bin/env bash

mkdir -p ./guacamole/config/init
chmod -R +x ./guacamole/data/init
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgresql > ./guacamole/data/init/initdb.sql

