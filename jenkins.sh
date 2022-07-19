                                  #!/bin/bash


#Script to setup Jenkins on centOS/RHEL 6.x and 7.x

#Author Tawfiq  Sani
#Created 1st January, 2022
#Modified: April 2022



sleep 1
echo "installing Java8..."
sleep 3

sudo yum install wget -y 
sudo yum install epel-release -y
sudo yum install java-1.8* -y
echo "checking the java version, please wait"


sleep 2

java -version

sleep 2

echo "now donloading jenkins..."

sleep 4
echo

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
echo

echo "extracting the package..."



sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

#rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key


sudo yum clean all
sudo yum install jenkins -y
echo "Start jenkins services"
sleep 3 
sudo service jenkins start


sudo chkconfig jenkins on
sudo yum install ufw -y 
sudo systemctl start ufw 
sudo systemctl enable ufw 
sudo ufw enable 
sudo ufw allow 8080

                                                                               
