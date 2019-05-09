#!/bin/bash

java -version

res=$?

if [ $res != 0 ]
then

cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz"

tar xzf  jdk-8u131-linux-x64.tar.gz

cd  /opt/jdk1.8.0_131/

alternatives --install /usr/bin/java java /opt/jdk1.8.0_131/bin/java 2
alternatives --config java
alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_131/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_131/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_131/bin/jar
alternatives --set javac /opt/jdk1.8.0_131/bin/javac
java -version


echo "export JAVA_HOME=/opt/jdk1.8.0_131" >>/etc/environment; source /etc/environment
echo "export JRE_HOME=/opt/jdk1.8.0_131/jre" >>/etc/environment

else

  echo "java already installed"

fi

