#!/bin/bash

#
# Copyright 2023 PlayUnlimited.DE
#

if [ -e "cert.pem" ] && [ -e "privkey.pem" ] && [ -e "fullchain.pem" ]; then
    mv cert.pem /opt/vaultwarden/ssl/cert.pem
    mv privkey.pem /opt/vaultwarden/ssl/privkey.pem
    mv fullchain.pem /opt/vaultwarden/ssl/fullchain.pem

    nginx_c=$(docker ps -qaf name=vaultwarden-nginx)
    docker restart ${nginx_c}

fi
