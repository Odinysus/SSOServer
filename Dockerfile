FROM aa6835305/tomcat-maven

MAINTAINER john dric <caidongqiang@hotmail.com>>

ENV PATH=$PATH:$JRE_HOME/bin

# Download the CAS overlay project \
#RUN cd / \
#    && git clone --depth 1 --single-branch https://github.com/johnMaster/SSOServer.git \
#    && mkdir -p /etc/cas \
#    && mkdir -p /etc/cas/services \
#    && mkdir -p /etc/cas/config \
#    && cp -f SSOServer/config/*.* /etc/cas/config;

RUN mkdir -p /SSOServer
COPY . /SSOServer

RUN cd /SSOServer  && \ 
    mvn clean package && \ 
    cp target/SSOServer-1.0.war /usr/local/tomcat/webapps/cas.war && \
    mkdir -p /etc/cas && \
    cp thekeystore /etc/cas/


EXPOSE 8080 8443
CMD ["catalina.sh", "run"]
