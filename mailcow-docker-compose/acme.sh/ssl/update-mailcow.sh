#!/bin/bash

#
# Copyright 2023 PlayUnlimited.DE
#

if [ -e "cert.pem" ] && [ -e "key.pem" ]; then
    mv cert.pem /opt/mailcow-dockerized/data/assets/ssl/cert.pem
    mv key.pem /opt/mailcow-dockerized/data/assets/ssl/key.pem

    postfix_c=$(docker ps -qaf name=postfix-mailcow)
    dovecot_c=$(docker ps -qaf name=dovecot-mailcow)
    nginx_c=$(docker ps -qaf name=nginx-mailcow)
    docker restart ${postfix_c} ${dovecot_c} ${nginx_c}

fi