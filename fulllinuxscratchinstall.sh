#!/bin/bash
#If you launched your ec2 Linux server from the GUI first, then you can run this bash script

#This updates your Linux distro
sudo apt update && sudo apt upgrade -y

#Install kubectl
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.23.7/2022-06-29/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

#Install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
#Move the downloaded ekstl binary to /usr/local/bin
sudo mv /tmp/eksctl /usr/local/bin

#Install the aws CLI tool
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#This command deploys the EKS cluster to AWS
eksctl create cluster \
--name eks-k8s-lab-cluster \
--version 1.23 \
--region us-east-2 \
--nodegroup-name ekslab-k8s-nodes \
--node-type t2.small \
--nodes 2 \
--tags Key=Owner,Value=<INSERT_WORK_EMAIL> Key=Purpose,Value=Lab Key=Name,Value=<yourname>-eks-k8s-lab

#Create a namespace to hold the note taking app we will launch
kubectl create namespace knote-sample-app

#Change to working /kube
#cd kube

#Apply the three yamls found in the kube directory to deploy the sample app
kubectl apply -f kube

echo "EKS Lab installation complete"
exit