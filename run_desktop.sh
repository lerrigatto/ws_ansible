#!/bin/bash

ANSIBLE_NOCOWS=1 $HOME/.local/bin/ansible-playbook \
  -i inventories \
  --limit $(hostname) \
  desktop_env.yml \
  -v \
  --ask-become-pass $1
