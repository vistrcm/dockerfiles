# jupyter notebook
#
# VERSION       2

# use the ubuntu base image
FROM ubuntu
MAINTAINER Stanislav Vitko, stas@vitko.me

# install required system packages
RUN useradd -m jupyter \
	&& mkdir /notebooks/ \
	&& chown jupyter /notebooks \
	&& apt-get update -y \
	&& apt-get install -y \
		python3 \
		python3-pip \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /notebooks/
COPY requirements.txt /notebooks/requirements.txt
RUN python3 -m pip install --upgrade pip \
	&& python3 -m pip install -r /notebooks/requirements.txt

EXPOSE 8888
USER jupyter
CMD jupyter notebook --no-browser --ip=0.0.0.0
