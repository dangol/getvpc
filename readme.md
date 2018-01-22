Collects AWS VPC information and writes to a file
This will ultimately process those files and either create a new identical VPC in a new region or make an exsiting destination VPC identical to the source VPC.

Requirements
Ansible must be able to act on AWS to work
Configure things like source region and source VPC Name in vars/vars.yml

Run the playbook like: "ansible-playbook getvpc.yml -e @vars/vars.yml"

As of 1/22/18:
The playbook pulls the vpc facts from two VPCs primary or pri_ and secondary or sec_
the next step is to make a table of the subnet names and IDs, nacl names and ids, and security group names and ids. The table will be used to translate the names / ids from pri_ to sec_ so we can take whatever is in one and push it to the other.