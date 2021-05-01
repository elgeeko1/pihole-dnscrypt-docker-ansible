#!/bin/bash

set -e

echo Install ansible dependencies
ansible-galaxy install -f -r requirements.yml

echo Run playbook
ansible-playbook -i inventory.yml playbook.yml
