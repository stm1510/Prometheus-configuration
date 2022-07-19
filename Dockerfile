FROM centos:7
MAINTAINER tawfiq@protonmail.com

#RUN yum -y install epel-release 
#RUN useradd tawfiq -m -d /home/tawfiq -G wheel -s /bin/bash
#RUN yum -y install openssh-server 
COPY /home/vagrant/Desktop/stm/index.html /var
#RUN service sshd start
RUN echo "tawfiq:tawfiq!" | chpasswd
#RUN yum -y install ufw
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
