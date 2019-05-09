#!/bin/bash

yum install -y wget && yum install uzip -y


cd /opt

wget http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.zip

unzip apache-tomcat-8.5.40.zip

rm -f apache-tomcat-8.5.40.zip

mv apache-tomcat-8.5.40 apache-tomcat


mv /opt/apache-tomcat/conf/tomcat-users.xml /opt/apache-tomcat/conf/tomcat-users.xml.org

cp tomcat-users.xml /opt/apache-tomcat/conf

mv /opt/apache-tomcat/webapps/manager/META-INF/context.xml  /opt/apache-tomcat/webapps/manager/META-INF/context.xml.rog

cp context.xml /opt/apache-tomcat/webapps/manager/META-INF
cd /opt/apache-tomcat/bin/

chmod +x * sh
./startup.sh
