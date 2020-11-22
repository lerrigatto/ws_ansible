#!/bin/bash

$HOME/.local/bin/ansible-playbook -i inventories desktop_env.yml -v --connection=local --ask-become-pass
