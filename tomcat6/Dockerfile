FROM dev-sv.c4d.griddynamics.net:5000/cloud4dev/java6

# Tomcat installation from https://github.com/tutumcloud/tutum-docker-tomcat
ENV TOMCAT_MAJOR_VERSION 6
ENV TOMCAT_MINOR_VERSION 6.0.41
ENV CATALINA_HOME /tomcat
ENV TOMCAT_USER tomcat

# INSTALL TOMCAT
RUN wget -q https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz && \
    wget -qO- https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz.md5 | md5sum -c - && \
    tar zxf apache-tomcat-*.tar.gz && \
    rm apache-tomcat-*.tar.gz && \
    mv apache-tomcat* tomcat && \
    useradd -r ${TOMCAT_USER}

ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh
RUN chown -R ${TOMCAT_USER} ${CATALINA_HOME}

EXPOSE 8080
USER ${TOMCAT_USER}
CMD ["/run.sh"]
