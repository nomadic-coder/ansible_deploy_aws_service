#!/bin/bash

function displayUsage {
    echo "Usage: $0 <region> <application name> <key pair name>"
    exit 1
}

function main {
    cmd="ansible-playbook -i hosts create_ec2.yml -e \"region=${1} app_name=${2} key_name=${3}\""
    echo "${cmd}"
    eval ${cmd}
}

if [[ $# -ne 3 ]]
then
    displayUsage $*
else
    main $*
fi
