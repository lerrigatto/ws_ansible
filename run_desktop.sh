#!/bin/bash
ANSIBLE_PLAYBOOK=$(which ansible-playbook)

ANSIBLE_NOCOWS=1 "$ANSIBLE_PLAYBOOK" \
  -i inventories/workstations \
  --limit "$(hostname)" \
  "desktop.yml" \
  -v \
  --ask-become-pass $1
