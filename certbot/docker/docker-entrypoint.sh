#!/bin/sh

set -e

if [ $# -eq 0 ]; then
    trap exit TERM
    while :
    do
        certbot renew
        sleep 72h & wait $!
    done
else
	exec "$@"
fi
