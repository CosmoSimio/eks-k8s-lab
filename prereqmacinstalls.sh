#!/usr/bin/env bash -e
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

echo "EKS Lab installation complete"
