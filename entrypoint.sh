#!/bin/bash

# Check SSH_PASSWD Param and set Init password
if [ -z ${SSH_PASSWD} ]; then
	echo ">> 'SSH_PASSWD' env not initialized. Set root password as Default"
	export SSH_PASSWD=centos
fi

# Change root Password as SSH_PASSWD ENV
echo ">> Init User Password as : ${SSH_PASSWD}"
echo ${SSH_PASSWD} | passwd root --stdin

# Start ssh server
/usr/sbin/sshd
echo ">> sshd server successfully started!"

# Sleep for container not dead
sleep infinity
