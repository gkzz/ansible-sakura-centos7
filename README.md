# Ansible Tutorial For Beginners with Sakura VPS

Ansible Tutorial For Beginners with @sakura_vps


## Technologies used
* Windows Subsystem for Linux
* Python 2.7.12
* Ansible 2.7.7
* Jinja2

## Sakura VPS' Plan
* CentOS7_x86_64
* Memory 1GB
* HDD 100GB
* CPU 2Core
* Version 4

## How to setup??
```
$ git clone git@github.com:gkzz/ansible-sakura-centos7
$ source install_ansible_ubuntu.sh
$ vim test1_login/hosts
[web]
xxx.xxx.xxx.xxx

[web:vars]
ansible_connection=ssh 
ansible_ssh_user=root 
ansible_ssh_pass=<root password>

```

## Try to connect to host and return pong on success. 
```
$ ansible all -i hosts -m ping

```
## Notes
```
$ ansible --version
ansible 2.7.7
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx']
  ansible python module location = /usr/lib/python2.7/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 2.7.12 (default, Nov 12 2018, 14:36:49) [GCC 5.4.0 20160609]
$ cat /etc/os-release
NAME="Ubuntu"
VERSION="16.04.5 LTS (Xenial Xerus)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 16.04.5 LTS"
VERSION_ID="16.04"
HOME_URL="http://www.ubuntu.com/"
SUPPORT_URL="http://help.ubuntu.com/"
BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"
VERSION_CODENAME=xenial
UBUNTU_CODENAME=xenial
```

### If you face trouble...
plz give me comments!