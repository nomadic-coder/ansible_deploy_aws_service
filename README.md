# Ansible Playbooks to deploy a service to AWS

## Requirements
The playbooks rely on the environment variable SSH_KEY_DIR to point to a directory containing your private ssh key for AWS.  
  
*e.g* if you keep your ssh keys in directory */home/user1/keys* then set SSH_KEY_DIR:  
% export SSH_KEY_DIR=/home/user1/keys

### Execute scripts
**To launch and EC2**  
% run_launch_ec2.sh <region> <application name> <key_name>  

e.g % run_launch_ec2.sg eu-west-1 hello_world hello_world

**To deploy your application (work in progress)**  
% run_deploy.sh <application name>  

e.g run_deploy.sh hello_world





