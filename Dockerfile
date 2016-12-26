FROM tomcat:8.5.9

MAINTAINER Apereo Foundation

ENV PATH=$PATH:$JRE_HOME/bin

#RUN yum -y install wget tar unzip git \
#   && yum -y clean all

# Set up Oracle Java properties
# RUN set -x; \
#     java_version=8u112; \
#     java_bnumber=15; \
#     java_semver=1.8.0_112; \
#     java_hash=eb51dc02c1607be94249dc28b0223be3712b618ef72f48d3e2bfd2645db8b91a; \

# # Download Oracle Java, verify the hash, and install \
#     cd / \
#     && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
#     http://download.oracle.com/otn-pub/java/jdk/$java_version-b$java_bnumber/server-jre-$java_version-linux-x64.tar.gz \
#     && echo "$java_hash  server-jre-$java_version-linux-x64.tar.gz" | sha256sum -c - \
#     && tar -zxvf server-jre-$java_version-linux-x64.tar.gz -C /opt \
#     && rm server-jre-$java_version-linux-x64.tar.gz \
#     && ln -s /opt/jdk$java_semver/ /opt/jre-home;

## Download the CAS overlay project \
#RUN cd / \
#    && git clone --depth 1 --single-branch https://github.com/johnMaster/SSOServer.git \
#    && mkdir -p /etc/cas \
#    && mkdir -p /etc/cas/services \
#    && mkdir -p /etc/cas/config \
#    && cp -f SSOServer/config/*.* /etc/cas/config;

#docker pull tomcat:8.5.9

#COPY thekeystore /etc/cas/

EXPOSE 8080 8443

#WORKDIR /SSOServer 
