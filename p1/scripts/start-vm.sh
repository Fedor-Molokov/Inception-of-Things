#!/bin/zsh
cd ../.
sudo vagrant up
cd -
ansible-galaxy install -r ./ansible/requirements.yaml
# ansible-playbook -i ./ansible/inventory/inventory.yaml ./ansible/all.yaml
ansible-playbook -i ./ansible/inventory/host.ini ./ansible/all.yaml