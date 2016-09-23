#!/bin/bash

function displayEnvNotSet {
    echo "Please set env variable SSH_KEY_DIR"
    exit 1
}

function displayUsage {
    echo "Usage: $0 <application name> <key name>"
    exit 1
}

function main {
    cmd="ansible-playbook -i modules/ec2.py deploy_app.yml -e \"app_name=${1} key_name=${2}\" -vvvv"
    echo "${cmd}"
    eval ${cmd}
}

if [[ $# -ne 2 ]]
then
    displayUsage $*
elif [ -z "$SSH_KEY_DIR" ]
then
    displayEnvNotSet
else
    main $*
fi
