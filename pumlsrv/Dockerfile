FROM dev-sv.c4d.griddynamics.net:5000/cloud4dev/tomcat6

USER root
RUN apt-get install -y graphviz

USER ${TOMCAT_USER}

ADD ./plantuml.war /tomcat/webapps/
