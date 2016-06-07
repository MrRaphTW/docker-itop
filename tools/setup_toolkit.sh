#!/bin/bash

export ITOP__TOOLKIT=YES
ansible-playbook -i /etc/ansible/hosts /etc/ansible/itop-toolkit.yml -c local
exit $?
