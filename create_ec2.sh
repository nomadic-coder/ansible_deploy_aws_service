#!/bin/bash

function displayUsage {
    echo "Usage: $0 <region> <application name> <application version> <ssh key name>"
    exit 1
}

function main {
    cmd="ansible-playbook -i hosts create_ec2.yml -e \"region=${1} app_name=${2} app_version=${3} ssh_key_name=${4}\""
    echo "${cmd}"
    eval ${cmd}
}

if [[ $# -ne 4 ]]
then
    displayUsage $*
else
    main $*
fi
