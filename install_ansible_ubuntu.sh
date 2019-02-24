#!/bin/bash

########################################################################################
# Sources;
# Latest Releases via Apt (Ubuntu) Ansible Documentation
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-ubuntu
########################################################################################

startTime=$(date '+%d/%m/%Y %H:%M:%S');
sudo apt-get update -y
sudo apt-get upgrade -y
sleep 10s

if ! type ansible >/dev/null 2>&1; then
    sudo apt-get remove ansible -y
    sudo apt-get install software-properties-common -y 
    sudo apt-add-repository --yes --update ppa:ansible/ansible
    sudo apt-get install ansible -y
    echo "You have finished installing ansible"
else
    echo "You already have instaled ansible."
fi
endTime=$(date '+%d/%m/%Y %H:%M:%S'); 
runTime=$((end_time - start_time));
echo "startTime: $startTime"
echo  "endTime: $endTime"
echo  "runTime: $runTime"