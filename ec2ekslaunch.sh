#!/bin/bash -e
#This bash script is simply executing the aws CLI command that deploys the Linux EC2 instance which we will dedicate to our EKS lab
aws ec2 run-instances \
--name ec2ekslinhost1 \
--image-id <imageID> \
--count 1 \
--instance-type t2.small \
--key-name <mykeyname> \
--security-group-id <securityGroupName> \
--tags Key=Owner,Value=<INSERT_WORK_EMAIL> Key=Purpose,Value=Lab Key=Name,Value=ec2ekslinhost1 \
--user-data file://prereqlinuxinstalls.txt