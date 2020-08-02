FROM centos:centos7
MAINTAINER Imagine ZYL


ENV SSH_PASSWORD=111


# Install base tool
RUN yum -y install dstat wget sysstat

# Install SSH Service
RUN yum install -y openssh-server passwd
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config && \
    echo "${SSH_PASSWORD}" | passwd "root" --stdin
	
# Install HAPP
COPY sh/ /sh/
RUN (chmod -R 755 /sh/ )
COPY ipes/ /root/
RUN sh /sh/ipes-init.sh && \
    rm -rf /sh/

# Setting DateTime Zone
RUN cp -p /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# Start run shell
ENTRYPOINT [ "/root/ipes/bin/check", "restart" ]
