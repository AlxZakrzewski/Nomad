# Deploy Nomad test cluster

Cluster is integrated with Consul on Windows host using Linux Nomad servers and Windows/Linux Clients. Check vagrant/Vagrantfile for details.

Commands:

1. Install Vagrant and go to vagrant directory:
```console
vagrant up ansible
```
2. SSH into Ansible VM, change ssh public key to establish connection for Ansible
```console
vagrant ssh ansible

cat .ssh/id_rsa.pub # copy the output and replace content of Centos8/id_rsa.pub file.
```
3. Launch rest of VMs:
```console
vagrant up
```
3. Deploy Nomad servers cluster:
```console
vagrant ssh ansible

git clone https://github.com/AlxZakrzewski/Nomad.git && cd Nomad

ansible-playbook nomad.yml -i inventories/Nomad/Nomad.yml -e host_group=Nomad.TEST -t install
```
4. Deploy Nomad on Windows client:
```console
ansible-playbook nomad_client_windows.yml -i inventories/Nomad/Nomad.yml -e host_group=Windows.TEST -t install
```
5. Deploy Consul servers cluster:
```console
ansible-playbook consul.yml -i inventories/Nomad/Nomad.yml -e host_group=Nomad.TEST -t install
```
