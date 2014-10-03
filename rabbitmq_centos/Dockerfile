# ipython notebook
#
# VERSION       1

# use the centos base image
FROM centos

MAINTAINER Stanislav Vitko, stanislav.vitko@gmail.com

# Add files.
ADD bin/rabbitmq-start /usr/local/bin/
RUN chmod +x /usr/local/bin/rabbitmq-start

# install epel
RUN yum localinstall -y http://mirror.logol.ru/epel/7/x86_64/e/epel-release-7-2.noarch.rpm

# install rabbit
#RUN yum install -y rabbitmq-server
#RUN rpm --import http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
RUN yum localinstall -y https://www.rabbitmq.com/releases/rabbitmq-server/v3.3.5/rabbitmq-server-3.3.5-1.noarch.rpm

#enable management
RUN rabbitmq-plugins enable rabbitmq_management

# Define environment variables.
ENV RABBITMQ_LOG_BASE /data/log
ENV RABBITMQ_MNESIA_BASE /data/mnesia

# Define mount points.
VOLUME ["/data/log", "/data/mnesia"]

# Define working directory.
WORKDIR /data

# chowd data directory
RUN chown -R rabbitmq:rabbitmq /data

#cmd to run
CMD rabbitmq-server

# Expose ports.
EXPOSE 5672
EXPOSE 15672
