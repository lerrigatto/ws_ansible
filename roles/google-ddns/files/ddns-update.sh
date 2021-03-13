#!/bin/bash

# Thanks to https://gist.github.com/cyrusboadway/5a7b715665f33c237996

source ddns.creds
HOSTNAME="bacilla.lerrigatto.dev"

# Resolve current public IP
IP=$(curl -4s "https://domains.google.com/checkip")
# Update Google DNS Record
URL="https://domains.google.com/nic/update?hostname=${HOSTNAME}&myip=${IP}"
curl --user ${USERNAME}:${PASSWORD} -s $URL

