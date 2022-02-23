#!/bin/bash

OS="$(uname)"

ANSIBLE_PLAYBOOK=$(which ansible-playbook)

ANSIBLE_NOCOWS=1 "$ANSIBLE_PLAYBOOK" \
  -i inventories/workstations \
  --limit "$(hostname)" \
  "desktop_${OS}.yml" \
  -v \
  --ask-become-pass $1
