# eks-k8s-lab
This project includes a bash script to deploy a Linux EC2 instance where you can include the installation commands for the prequisite tools we will need upon deployment.
These prerequisite tools include kubectl, eksctl, and the aws CLI tool.

The bashscript simply executes a command to deploy the ec2 and within the same command, under 'user-data' we specify the filename of our bash script which is the one in .txt file format.

If you are using an exisintg Linux ec2 instance, there is a .sh (bash script) file that you can use to install the prerequisite tools for the lab.

There is also a mac version of the .sh script for the installation of these prerequisite command line tools. This version includes the installation commands for some additional tools needed, such as Homebrew, Weaveworks Homebrew tap, and tree.

Additionally, there is a .sh script which simply deploys the eksctl command which creates our AWS EKS cluster. This also includes an alternative yaml file with the cluster configurations which can be applied from the yaml file.

Lastly, there a version of the prereqinstall files which will include the EKS cluster launch so that you can just deploy and get right to interacting with the cluster which will packaged with a simple note taking web application.
