#!/bin/bash

set -x -e
JAVA_DIR=/usr/java

cd /tmp/setup
mkdir /usr/java
ln -s /usr/lib/jvm/java-7-openjdk-amd64 /usr/java/default
tar -xzf apache-jmeter-2.12.tgz -C /var/lib 
mv /var/lib/apache-* /var/lib/jmeter
unzip -o JMeterPlugins-Extras-1.3.0.zip -d /var/lib/jmeter
unzip -o JMeterPlugins-ExtrasLibs-1.3.0.zip -d /var/lib/jmeter
unzip -o JMeterPlugins-Standard-1.3.0.zip -d /var/lib/jmeter

rm /var/lib/jmeter/lib/commons-lang3-3.3.2.jar
cp commons-lang3-3.4.jar /var/lib/jmeter/lib/

mkdir /etc/service/jmeter-server

touch /var/log/jmeter-server.log

rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ${JMETER_ARCHIVE}
