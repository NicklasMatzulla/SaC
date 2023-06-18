#!/bin/sh

#
# Copyright 2023 PlayUnlimited.DE
#

if [ ! -f /acme.sh/account.conf ]; then
    acme.sh --update-account --accountemail ${ACME_SH_EMAIL}
    acme.sh --issue \
    -d "mail.playunlimited.de" -d "autoconfig.playunlimited.de" -d "autodiscover.playunlimited.de" \
    --server letsencrypt \
    --dns "dns_cf" \
    --keylength 4096 \
    --fullchain-file /ssl/cert.pem \
    --key-file /ssl/key.pem

fi

echo 'Listing certs'
acme.sh --list
/entry.sh daemon