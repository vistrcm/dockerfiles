## RabbitMQ server

### Usage

#### Run `rabbitmq-server`

    docker run -d -p 5672:5672 -p 15672:15672 vistrcm/rabbitmq_centos

#### Run `rabbitmq-server` w/ persistent shared directories.

    docker run -d -p 5672:5672 -p 15672:15672 -v <log-dir>:/data/log -v <data-dir>:/data/mnesia vistrcm/rabbitmq_centos
