FROM centos:6.8

MAINTAINER 'anagendra517@gmail.com'

RUN yum update -y && yum install git -y && yum install -y wget && yum install -y unzip &&  yum install -y unzip

WORKDIR /opt

COPY java.sh /opt

RUN ./java.sh

COPY tomcat.sh /opt

ADD  context.xml /opt

COPY tomcat-users.xml /opt

COPY *.war /opt/apache-tomcat/webapps/.

RUN ./tomcat.sh

ENTRYPOINT '/bin/bash'


