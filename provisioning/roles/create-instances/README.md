create-instances
=========

This roles makes the provision `ec2_count` ec2 instances to be used as kubernetes main server and 2 node servers

Requirements
------------

As this role role uses the EC2 module, `boto` should be installed prior to the playbook execution. To install it, you can run:

    pip install boto

Role Variables
--------------

There are some variables require for the role to run
#### ec2
    ec2_instance_type: # which instance type the ec2 instances will be
    ec2_sg_name: # readable name for the security group associated with the instances
    ec2_image:  # ami (image id) in which the instances will be based on (for now it needs to be a ubuntu image
    ec2_keypair: # ec2 instance key-pair name
    ec2_region: # region in which the instances will be created
    ec2_count: # number of EC2 instances to create
    ec2_profile: # AWS profile to use

Example Playbook
----------------

Bellow is an example of how to run the role

    - hosts: local
      roles: 
      - { role: create-instances, tags: ["create_instances_role"] } 
At the end of the role execution, a file named kubernetes_inventory will be created. with one main node and 2 workers nodes.
The ec2 instance with the name tag `k8s-main` is the main node, and the others will have the name `k8s-worker-[1:2]`

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
