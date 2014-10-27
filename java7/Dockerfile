FROM ubuntu

#### install java
# prepare repo
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends wget pwgen ca-certificates python-software-properties software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update -y && \
    echo 'oracle-java6-installer shared/accepted-oracle-license-v1-1 select true' | debconf-set-selections && \
    echo 'oracle-java6-installer shared/accepted-oracle-license-v1-1 seen true' | debconf-set-selections &&\
    apt-get install -y oracle-java7-installer
