#!/bin/bash

########################################################################################
# Sources;
# Latest Releases via Apt (Ubuntu) Ansible Documentation
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-ubuntu
########################################################################################

startTime=$(date '+%d/%m/%Y %H:%M:%S');
#SECONDS=0

workingDirectory=$HOME'/install'

sudo apt-get update -y

########################################################################################
### 1. Defne Of My functions 
###### 1-1. type_tags_only() 
###### 1-2. touch_logFiles()
###### 1-3. saved_stdout_startTime()
###### 1-4. saved_stdout_endTime()
###### 1-5. main() 
### 2. Execute My functions
########################################################################################


####### 1-1. type_tags_only() 
########## Type "###############################" Only  
type_tags_only(){
    echo "###############################################################################"
}

###### 1-2. touch_logFiles(){
######### filename; 'stdout.log', 'stderr.log'
touch_logFiles(){
    if ! [ls $workingDirectory | find log]; then
        mkdir -p $workingDirectory/log
    fi
    if ! [ls $workingDirectory/log | find 'stdout.log']; then
        touch $workingDirectory/log/stdout.log
    fi
    if ! [ls $workingDirectory/log | find 'stderr.log']; then
        touch $workingDirectory/log/stderr.log
    fi
}

###### 1-3. saved_stdout_startTime()
saved_stdout_startTime(){
    echo -e "$1\n$2" | tee $workingDirectory/log/stdout.log 
}

###### 1-4. saved_stdout_endTime()
saved_stdout_endTime(){
    ansible --version
    echo -e "$1\n$2\n$3" | tee $workingDirectory/log/stdout.log 
}

###### 1-5. main()
######### Install Ansible
main(){
    sudo apt-get remove ansible -y
    sudo apt-get install software-properties-common -y | tee $workingDirectory/log/stdout.log
    sudo apt-add-repository --yes --update ppa:ansible/ansible | tee $workingDirectory/log/stdout.log
    sudo apt-get install ansible -y | tee $workingDirectory/log/stdout.log
}


########################################################################################
### 2. Execute My functions 
########################################################################################

if touch_logFiles; then
    type_tags_only
    saved_stdout_startTime "startTime: $startTime" "$workingDirectory/log, and logFiles was generated."
    type_tags_only
else
    type_tags_only
    saved_stdout_startTime "startTime: $startTime" "$workingDirectory/log, and logFiles already exists."
    type_tags_only
fi

if ! type ansible >/dev/null 2>&1; then
    main
    endTime=$(date '+%d/%m/%Y %H:%M:%S'); 
    runTime=$((end_time - start_time));
    type_tags_only 
    saved_stdout_endTime "startTime: $startTime" "endTime: $endTime" "You have finished installing ansible in $runTime seconds!"
    type_tags_only
else
    endTime=$(date '+%d/%m/%Y %H:%M:%S');
    type_tags_only 
    saved_stdout_endTime "startTime: $startTime" " endTime: $endTime" "You already have instaled ansible."
fi


