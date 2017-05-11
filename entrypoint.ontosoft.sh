#!/bin/bash

#sed -i -e "s#localhost#prefix.instance.domain#g"

/usr/local/tomcat/bin/startup.sh run

sleep 60s
cp ./ontosoft.config.js /usr/local/tomcat/webapps/ontosoft-client/customise/config.js

tail -f /usr/local/tomcat/logs/catalina.*.log
