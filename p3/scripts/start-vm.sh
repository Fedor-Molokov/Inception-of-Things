cd ../.
sudo vagrant up
cd -
ansible-galaxy install -r ./ansible/requirements.yaml
ansible-playbook -i ./ansible/inventory/host.ini ./ansible/all.yaml