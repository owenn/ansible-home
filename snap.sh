#!/bin/bash

# will convert into a playbook
# https://www.cyberciti.biz/faq/how-to-create-create-snapshot-in-linux-kvm-vmdomain/
virsh snapshot-create-as --domain one \
  --name "one.base" \
  --description "Snapshot with fully running cluster initial configuration" 
