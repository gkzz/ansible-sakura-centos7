#!/bin/bash

########################################################################################
# Sources;
# Latest Releases via Apt (Ubuntu) Ansible Documentation
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-ubuntu
########################################################################################


sudo apt-get update -y
sudo apt-get upgrade -y
sleep 10s
sudo apt-get remove ansible -y
sudo apt-get install software-properties-common -y 
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible -y