#!/bin/bash -e
#If you launched your ec2 Linux server from the GUI first, then you can run this bash script

echo "Updating your Linux distro. . . ."
#This updates your Linux distro
sudo apt update && sudo apt upgrade -y

echo "Installing kubectl. . . ."
#Install kubectl
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.23.7/2022-06-29/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

echo "Install eksctl. . . ."
#Install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
#Move the downloaded ekstl binary to /usr/local/bin
sudo mv /tmp/eksctl /usr/local/bin

echo "Installing helm. . . ."
#Install helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

<<<<<<< HEAD
echo "Installing unzip tool"
#Installs unzip command
sudo apt install unzip

echo "Installing aws CLI. . . ."
#Install the AWS CLI tool
=======
echo "Installing aws CLI. . . ."
#Install the aws CLI tool
>>>>>>> 9f8e08470719ee49095372db8519ddffb763c8b4
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install -i /usr/local/aws-cli -b /usr/local/bin

echo "EKS Lab installation complete"