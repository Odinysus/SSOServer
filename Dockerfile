FROM tomcat_maven

MAINTAINER john dric <caidongqiang@hotmail.com>

ENV PATH=$PATH:$JRE_HOME/bin

# Download the CAS overlay project \
RUN cd / \
    && git clone --depth 1 --single-branch https://github.com/johnMaster/SSOServer.git \
    && mkdir -p /etc/cas \
    && mkdir -p /etc/cas/services \
    && mkdir -p /etc/cas/config \
    && cp -f SSOServer/config/*.* /etc/cas/config;

RUN mkdir /usr/local/tomcat/webapps/SSOServer

COPY  . /usr/local/tomcat/webapps/SSOServer


EXPOSE 8080 8443

#WORKDIR /SSOServer 
