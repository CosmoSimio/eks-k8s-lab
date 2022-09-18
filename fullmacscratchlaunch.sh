#!/usr/bin/env bash
#Run this if this is your first time using the AWS CLI and/or Homebrew and/or Kubectl

#Install kubectl
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.23.7/2022-06-29/bin/darwin/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bash_profile

#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#Install Weaveworks Homebrew tap tool
brew tap weaveworks/tap

#Install eksctl
brew install weaveworks/tap/eksctl

#Install the aws CLI tool
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /

#Install tree tool
brew install tree

#This command deploys the EKS cluster to AWS
eksctl create cluster \
--name eks-k8s-lab-cluster \
--version 1.23 \
--region us-east-2 \
--nodegroup-name ekslab-k8s-nodes \
--node-type t2.small \
--nodes 2 \
--tags Key=Owner,Value=<INSERT_WORK_EMAIL> Key=Purpose,Value=Lab Key=Name,Value=eks-k8s-lab

#Create a namespace to hold the note taking app we will launch
kubectl create namespace knote-sample-app

#Change to working /kube
#cd kube

#Apply the three yamls found in the kube directory to deploy the sample app
kubectl apply -f kube

echo "EKS Lab installation complete"

exit