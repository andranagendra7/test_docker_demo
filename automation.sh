#!/bin/bash
git --version
git init
git config --global user.name "andranagendra7"

git config --global user.name "andranagendra720@gmail.com"

cp target/*.war .

rm -rf target/
rm -rf src/
rm -rf pom.xml

git add dockerfile 

git add java.sh

git add tomcat.sh

git add context.xml 

git add tomcat-users.xml

git add -A



git commit -m "add the warfie to docker repository"




