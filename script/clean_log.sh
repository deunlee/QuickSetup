#!/bin/bash

sudo sh -c "cat /dev/null > ./nginx/log/access.log"
sudo sh -c "cat /dev/null > ./nginx/log/error.log"

rm -f ./certbot/log/*.log*
