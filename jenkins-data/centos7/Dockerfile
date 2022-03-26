FROM centos

RUN yum -y install openssh-server

RUN usedadd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

# copying the public key to the newly created user
COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

# making sure remote_user is the owner of .ssh folder
RUN chown remote_user:remote_user -R /home/remote-user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

# as we are creating this server from the scratch, we need to create a global key
RUN /usr/sbin/sshd-keygen

# instruting docker how the docker should start
CMD /usr/sbin/sshd -D

    
