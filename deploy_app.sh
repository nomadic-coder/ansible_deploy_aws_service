#!/bin/bash

function usage {
    echo "Usage: $0 <application name> <key name>"
    exit 1
}

function main {
    cmd="ansible-playbook -i modules/ec2.py deploy_app.yml -e \"app_name=${1} key_name=${2}\""
    echo "${cmd}"
    eval ${cmd}
}

if [[ $# -ne 2 ]]
then
    usage $*
else
    main $*
fi

