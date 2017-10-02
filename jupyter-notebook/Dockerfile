# ipython notebook
#
# VERSION       1

# use the ubuntu base image
FROM ubuntu
MAINTAINER Stanislav Vitko, stanislav.vitko@gmail.com

# install required system packages
RUN apt-get update -y
RUN apt-get install -y python python-setuptools gcc g++ python-dev libzmq-dev libxft-dev

# Install pip
RUN easy_install pip

# install python packages
RUN pip install numpy matplotlib pandas ipython[all]

#run as non-privileged user and chown dir
RUN useradd -m ipython
RUN mkdir -p /notebooks
RUN chown ipython /notebooks
USER ipython

# directory for notebooks
VOLUME /notebooks
WORKDIR /notebooks/

EXPOSE 8888
CMD ipython notebook --no-browser --ip=0.0.0.0
