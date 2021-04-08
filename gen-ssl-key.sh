#!/bin/sh

# https://www.openssl.org/docs/man1.1.1/man1/openssl-req.html
# https://www.openssl.org/docs/man1.1.1/man5/x509v3_config.html

DOMAIN=localhost
DAYS=365

openssl req -x509 -newkey rsa:2048 -keyout $DOMAIN.key -out $DOMAIN.crt \
  -sha256 -nodes -days $DAYS -config ./gen-ssl-key.conf

openssl x509 -text -in $DOMAIN.crt -noout | less
