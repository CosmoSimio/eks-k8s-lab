# eks-k8s-lab
This project includes a bash script to deploy a Linux EC2 instance where you can include the prerequisite installation commands upon deployment for the command line tools we wll be using such as the aws CLI tool, as well as eksctl, and kubectl.

The bashscript simply executes a command to deploy the ec2 and within the same command, under 'user-data' we specify the filename of our bash script which is the one in .txt file format.

If you are using an exisintg Linux ec2 instance, there is a .sh (bash script) file that you can use to install the prerequisite tools for the lab.

There is also a mac version of the .sh script for the installation of these prerequisite installation.
