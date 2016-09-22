#!/bin/bash

function usage {
    echo "Usage: $0 <application name>"
    exit 1
}

function main {
    cmd="ansible-playbook -i library/ec2.py deploy_service.yml -e \"app_name=${1}\""
    echo "${cmd}"
    eval ${cmd}
}

if [[ $# -ne 1 ]]
then
    usage $*
else
    main $*
fi

