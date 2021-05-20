FROM centos:centos7.9.2009


COPY entrypoint.sh /entrypoint.sh

RUN yum -y install openssh-server openssh-clients openssh-askpass vim && \
ssh-keygen -A  && \
chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
