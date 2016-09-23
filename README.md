# Ansible Playbooks that will deploy a service onto an EC2 in AWS

## Requirements
The scripts rely on ansible, awscli and boto

The ansible playbooks rely on the environment variable SSH_KEY_DIR to point to a directory containing the private ssh key you use to connect to your EC2 in AWS. For example, if you keep your ssh keys in directory */home/user1/keys* then set SSH_KEY_DIR as follows:  
% export SSH_KEY_DIR=/home/user1/keys

### Execute scripts
**To launch and EC2**  
% create_ec2.sh \<region\> \<application name\> \<key_name\>  

e.g % create_ec2.sh eu-west-1 hello_world my_ssh_key  

**To deploy your application (work in progress)**  
% deploy_app.sh \<application name\>  \<key_name\>  

e.g deploy_app.sh hello_world my_ssh_key





