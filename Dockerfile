FROM tomcat:8.5.9

MAINTAINER john dric <caidongqiang@hotmail.com>

ENV PATH=$PATH:$JRE_HOME/bin

## Download the CAS overlay project \
#RUN cd / \
#    && git clone --depth 1 --single-branch https://github.com/johnMaster/SSOServer.git \
#    && mkdir -p /etc/cas \
#    && mkdir -p /etc/cas/services \
#    && mkdir -p /etc/cas/config \
#    && cp -f SSOServer/config/*.* /etc/cas/config;

COPY  . /usr/local/tomcat/webapps/SSOServer

#COPY thekeystore /etc/cas/

EXPOSE 8080 8443

#WORKDIR /SSOServer 
