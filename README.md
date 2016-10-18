# Ansible Playbooks that will deploy a service onto an EC2 in AWS

## Requirements
The scripts rely on 
- Ansible (http://docs.ansible.com/ansible/intro_installation.html)
- AWS CLI (http://docs.aws.amazon.com/cli/latest/userguide/installing.html)
- Python boto module (https://pypi.python.org/pypi/boto)

The ansible playbook require an environment variable SSH_KEY_DIR to point to a directory containing the private ssh key you use to connect to your EC2 in AWS. For example, if you keep your ssh keys in directory */home/user1/keys* then set SSH_KEY_DIR as follows:  
% export SSH_KEY_DIR=/home/user1/keys

### Execute scripts
**To launch an EC2**  
% create_ec2.sh \<region\> \<application name\> \<ssh_key_name\>  

e.g % create_ec2.sh eu-west-1 hello_world my_ssh_key  

**To deploy your application (work in progress)**  
% deploy_app.sh \<application name\> \<application version\> \<ssh_key_name\>  

e.g deploy_app.sh hello_world my_ssh_key





