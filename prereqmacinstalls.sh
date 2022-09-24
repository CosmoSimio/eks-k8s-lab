#!/usr/bin/env bash -e
#Run this if this is your first time using the AWS CLI and/or Homebrew and/or Kubectl

echo "Installing kubectl. . . ."
#Install kubectl
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.23.7/2022-06-29/bin/darwin/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bash_profile

echo "Installing Homebrew. . . ."
#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing Weaveworks Homebrew Tap. . . ."
#Install Weaveworks Homebrew tap tool
brew tap weaveworks/tap

echo "Installing eksctl. . . ."
#Install eksctl
brew install weaveworks/tap/eksctl

echo "Installing tree. . . ."
#Install tree tool
brew install tree

echo "Installting helm. . . ."
#Install Helm
brew install helm

echo "Installing aws CLI"
#Install the aws CLI tool
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target /

<<<<<<< HEAD
echo "EKS Lab installation complete"
=======
echo "EKS Lab installation complete"
>>>>>>> 9f8e08470719ee49095372db8519ddffb763c8b4
