#!/bin/bash

# Set the Tomcat directory path
TOMCAT_DIR="/usr/libexec/tomcat10"

# Stop Tomcat to deploy
${TOMCAT_DIR}/bin/shutdown.sh

# Remove the old application
rm -rf ${TOMCAT_DIR}/webapps/*.war

# Copy the new build (WAR file) to Tomcat's webapps directory
cp */.war ${TOMCAT_DIR}/webapps/

# Start Tomcat
${TOMCAT_DIR}/bin/startup.sh
