#!/bin/sh

# download and unzip library dependencies
rm -r install-libraries
wget -N http://dev.joget.org/community/download/attachments/19104566/install-libraries.zip
unzip -a install-libraries.zip

# build docker image
docker build --rm -t jogetworkflow/docker-maven-joget:8.0-SNAPSHOT .

