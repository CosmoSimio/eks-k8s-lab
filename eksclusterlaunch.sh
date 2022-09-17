#This bash script contains the command to deploy the EKS cluster
eksctl create cluster \
--name eks-k8s-lab-noteapp \
--version 1.21 \
--region us-east-2 \
--nodegroup-name ekslab-k8s-nodes \
--node-type t2.small \
--nodes 2