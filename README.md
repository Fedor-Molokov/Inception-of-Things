
# INCEPTION-OF-THINGS

## Description
### The project consists of several subprojects with k3s, 3d kybernetes clusters, deployment automation using vagrant and ansible, and CD pipeline automation using argoCD
- [ ] p1
- k3s kubernetes cluster deployed on two nodes (one master and one worker) using vagrant and ansible

![Alt text](./p1.svg)

- [ ] p2
- k3s kubernetes cluster deployed on a single node using vagrant and ansible with automated deployment of k8s resources:
  - k8s dashboard
  - npuzzle app
  - sample UserDatabase app


- [ ] p3
- k3d kubernetes cluster deployed on a single node using vagrant and ansible with automated deployment of k8s resources
 and CD pipeline automation using argoCD:
    - k8s dashboard
    - npuzzle app
    - sample UserDatabase app
    - argoCD


- [ ] bonus/gitlab
- k3d kubernetes cluster deployed on a single node using vagrant and ansible with automated deployment of k8s resources
  and CD pipeline automation using argoCD:
    - k8s dashboard
    - npuzzle app
    - sample UserDatabase app
    - argoCD

[comment]: <> (### DOCUMENTATION)

[comment]: <> (#### simple vagrantfile)

[comment]: <> (```ruby)

[comment]: <> (require 'yaml' # require the yaml plugin to load yaml file)

[comment]: <> (conf = YAML.load_file&#40;FILE.join&#40;FILE.dirname&#40;__FILE__&#41;, 'path/to/yaml'&#41;&#41; # yaml file works a .env in this partical case)

[comment]: <> (box = conf.fetch&#40;"box"&#41; # Load box from yaml file)

[comment]: <> (Vagrant.configure&#40;"2"&#41; do |config|)

[comment]: <> (  # global configuration for all the machines)

[comment]: <> (  config.vm.box = "centos/8" # the image used in the vm)

[comment]: <> (  config.vm.provider "virtualbox" do |vb| # vm provider = "virtualbox")

[comment]: <> (    vb.memory = 1024 # memory used in vm)

[comment]: <> (    vb.cpu = 2 # how many cpu u want to use inside vm)

[comment]: <> (  end)

[comment]: <> (  config.vm.define "machine_name" do |machine_name| # define a machine with the name machine_name)

[comment]: <> (    machine_name.vm.network "private_network", ip: "a private ip" # define the ip of the machine)

[comment]: <> (    machine_name.vm.provision "shell", path: "path/to/script.sh" # excute a script shell inside the machine)

[comment]: <> (  end)

[comment]: <> (end)

[comment]: <> (```)

[comment]: <> (#### vagrant cli)

[comment]: <> (```bash)

[comment]: <> (# run vagrant)

[comment]: <> (vagrant up)

[comment]: <> (# add a vm image)

[comment]: <> (vagrant box add name_of_image)

[comment]: <> (# connect to machine via ssh)

[comment]: <> (vagrant ssh name_of_machine)

[comment]: <> (# destory a machine)

[comment]: <> (vagrant destroy name_of_machine)

[comment]: <> (```)

[comment]: <> (### Usefel links)

[comment]: <> (#### vagrant)

[comment]: <> (- [learn vagrant]&#40;https://learn.hashicorp.com/collections/vagrant/getting-started&#41;)

[comment]: <> (- [load yaml file to vagrantfile]&#40;https://blog.scottlowe.org/2016/01/14/improved-way-yaml-vagrant/&#41;)

[comment]: <> (- [shell provision]&#40;https://www.vagrantup.com/docs/provisioning/shell&#41;)

[comment]: <> (- [vagrant cloud]&#40;https://app.vagrantup.com/boxes/search&#41;)

[comment]: <> (- [File Provisioner]&#40;https://www.vagrantup.com/docs/provisioning/file0&#41;)

[comment]: <> (#### kubernetes)

[comment]: <> (#### k3s)

[comment]: <> (#### k3d)

[comment]: <> (#### argo cd)

[comment]: <> (#### gitlab)