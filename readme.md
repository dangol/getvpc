Collects AWS VPC information and writes to a file
This will ultimately process those files and either create a new identical VPC in a new region or make an exsiting destination VPC identical to the source VPC.

Requirements
Ansible must be able to act on AWS to work
Configure things like source region and source VPC Name in vars/vars.yml

Run the playbook like: "ansible-playbook getvpc.yml -e @vars/vars.yml"
