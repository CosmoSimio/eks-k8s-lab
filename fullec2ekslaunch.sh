aws ec2 run-instances \
--name ec2ekslinhost1 \
--image-id <imageID> \
--count 1 \
--instance-type t2.small \
--key-name <mykeyname> \
--security-group-id <securityGroupName> \
--tags Key=Owner,Value=<INSERT_WORK_EMAIL> Key=Purpose,Value=Lab Key=Name,Value=ec2ekslinhost1 \
--user-data file://fulllinuxec2launch.txt
exit