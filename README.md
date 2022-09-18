# eks-k8s-lab
**<H1>Options for Launch</H1>**
**Launching the lab on a fresh EC2 instance**
- This project includes a bash script to initiate a new Linux EC2 instance and also includes the installation commands for the prequisite tools that we will be needing for this lab. These tools include kubectl, eksctl, and the aws command line (CLI) tool.

- The bashscript simply executes a command to deploy the ec2 and within the same command, under 'user-data', we specify the filename of our bash script which is th prereqlinuxinstalls.txt file.

**Launching on an existing Linux EC2**
- If you are using an exisintg Linux ec2 instance, you can run the prereqlinuxinstalls.sh (bash script) file to install the prerequisite tools for the lab.

**Launching from your mac console**
- There is also a mac version of the bash script titled prereqmacinstall.sh that executes the installation of these prerequisite command line tools. This mac version of the script includes some additional install commands for additional tools needed in mac, such as Homebrew, Weaveworks Homebrew tap, and tree.

**Launching the EKS cluster separately**
- Additionally, there is a eksclusterlaunch.sh script which simply deploys the eksctl command that creates our AWS EKS cluster. As an alternative method, there is a yaml file with the cluster configurations which can be lauched to create our AWS EKS cluster.

**One command to rule them all**
- Lastly, there a version of the prereqinstall files which will include the EKS cluster launch so that you can just deploy and get right to interacting with the cluster which will packaged with a simple note taking web application.