# SampleProject1
Setup three systems [I am assuming all the steps are being performed on RedHat based Centos System]
# A. Server-1 [Call this as Jenkins Server]
In order to configure Jenkins on Server. You would need to first install the Java and subsequently run below commands to install Jenkins

sudo yum install java* -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo yum install git

Set the password for the root user
passwd 

1. Settings to be done for SSH

Update the sshd_config file by running the command 

vim /etc/ssh/sshd_config
Un-comment the 'PermitRootLogin' section  
Change 'PasswordAuthentication' from 'no' to 'yes'

Restart the sshd daemon
systemctl restart sshd
2. Initial configuration of Jenkins
Access the Jenkins Server from Browser http://jenkins-public-ip:8080

Enter the password by copying it from the path specified after you have clicked on the above URL
  
Install default plugins
create user <user-name>/<user-password>


# B. Server-2 [Call this as Ansible Server]
# C. Server-3 [Call this as DockerHost Server]
