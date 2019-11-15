#!/bin/sh

# https://www.digicert.com/ssl-support/openssl-quick-reference-guide.htm

DOMAIN=$1
DAYS=$2

openssl req -new \
  -newkey rsa:2048 -nodes -keyout $DOMAIN.key \
  -out $DOMAIN.csr \
  -subj "/C=TW/ST=Taiwan/L=Taipei/O=Yen-Bo Huang/OU=RD/CN=$DOMAIN"

openssl x509 -req -days $DAYS -in $DOMAIN.csr -signkey $DOMAIN.key -out $DOMAIN.crt

echo "*** verify CSR file ***"
openssl req -text -in $DOMAIN.csr -noout -verify

echo "*** verify CRT file ***"
openssl x509 -text -in $DOMAIN.crt -noout
