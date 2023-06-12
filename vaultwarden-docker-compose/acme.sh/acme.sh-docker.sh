#!/bin/sh

#
# Copyright 2023 PlayUnlimited.DE
#

if [ ! -f /acme.sh/account.conf ]; then
    acme.sh --update-account --accountemail ${ACME_SH_EMAIL}
    acme.sh --issue \
    -d "pass.playunlimited.de" \
    --server letsencrypt \
    --dns "dns_cf" \
    --keylength 4096 \
    --cert-file /ssl/cert.pem \
    --key-file /ssl/privkey.pem \
    --fullchain-file /ssl/fullchain.pem

fi

echo 'Listing certs'
acme.sh --list
/entry.sh daemon
