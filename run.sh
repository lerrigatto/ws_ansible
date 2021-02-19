#!/bin/bash

ANSIBLE_NOCOWS=1 $HOME/.local/bin/ansible-playbook -i inventories desktop_env.yml -v --connection=local --ask-become-pass $1
