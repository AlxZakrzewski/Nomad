# Deploy Nomad test cluster

Cluster is integrated with Consul on Windows host using Linux Nomad servers and Windows/Linux Clients. Check vagrant/Vagrantfile for details.

### Prerequisites:

- VirtualBox - https://www.virtualbox.org/wiki/Downloads
- Vagrant - https://www.vagrantup.com/downloads
- Windows host

Whole installation will take some time depending on your internet speed and PC resources.
<br>
Commands:

1. Create first Vagrant virtual machine:
```console
vagrant up ansible
```
2. SSH into Ansible VM, change ssh public key to establish connection for Ansible
```console
vagrant ssh ansible

cat .ssh/id_rsa.pub # copy the output and replace content of RockyLinux/id_rsa.pub file.
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

5. Setup Consul certificates
### Create certificates and copy them to Consul servers
Steps:

Install Consul on Ansible VM:
```console
ansible-playbook consul.yml -i localhost -e host_group=localhost -e consul_user=vagrant -e consul_version=1.11.2 -t install
```

a. Generate the gossip encryption key:

```console
cd && source ~/.bashrc &&
consul keygen
```
- add output of <code>consul keygen</code> to:
  - roles/consul/templates/base.hcl file - encrypt line
  - roles/consul_client_windows/templates/client.hcl file - encrypt line

b. Create the Certificate Authority

```console
consul tls ca create
```

c. Create the certificates

```console
consul tls cert create -server -dc dc1 -domain consul
```

6. Deploy Consul servers cluster:
```console
cd Nomad/
ansible-playbook consul.yml -i inventories/Nomad/Nomad.yml -e host_group=Nomad.TEST -t install,start
```
6. Deploy Consul Windows client:
```console
ansible-playbook consul_client_windows.yml -i inventories/Nomad/Nomad.yml -e host_group=Windows.TEST -t install,start
```
Now you should be able to visit Nomad and Consul ui on your Windows host:
- Nomad: localhost:4646, localhost:4645, localhost:4644
- Consul: localhost:8500, localhost:8499, localhost:8498

Good luck with testing!