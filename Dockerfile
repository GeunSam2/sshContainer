FROM centos:centos7.9.2009

RUN yum -y install openssh-server openssh-clients openssh-askpass vim && \
ssh-keygen -A 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
