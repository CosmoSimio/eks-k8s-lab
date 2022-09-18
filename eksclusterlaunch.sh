#This bash script contains the command to deploy the EKS cluster
eksctl create cluster \
--name eks-k8s-lab-cluster \
--version 1.23 \
--region us-east-2 \
--nodegroup-name ekslab-k8s-nodes \
--node-type t2.small \
--nodes 2 \
--tags Key=Owner,Value=<INSERT_WORK_EMAIL> Key=Purpose,Value=Lab Key=Name,Value=<yourname>-eks-k8s-lab
exit