# Ansible Training - Linux Tips

This stores the ansible classes given by a Linux Tips course

## Classes

### Classes 1 and 2

#### Introduction to ansible and playbooks
This classes just introduced ansible and playbooks. If there's no locally installed ansible, docker can be used with the command bellow:

```bash
./run-docker
```

### Classes 3 and 4

It consists of creating a kubernetes cluster and 2 workers using 3 EC2 instances
You can execute it by running 2 playbooks

1. Provisioning the EC2 instances

```bash
cd provisioning
ansible-playbook -i hosts main.yml
cd install_k8s
ansible-playbook -i hosts main.yml
```
