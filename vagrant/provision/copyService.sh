#!/bin/bash

source /app/vagrant/provision/common.sh

clear

#mvn clean package -Dmaven.buildNumber.revisionOnScmFailure=$(git log -n1 | grep git-svn-id | cut -d@ -f2 | cut -d" " -f1)

PROJECT_DIR=/app/
BASE_DIR=/CAP

info "Copy Services Folder"
cp -R "${PROJECT_DIR}/vagrant/Services" "${BASE_DIR}/"

info "Copy Resources Folder"
mkdir "${BASE_DIR}/Resources"
#mkdir "${BASE_DIR}/Resources/liquibase-3.7.0-bin"
#mkdir "${BASE_DIR}/Resources/dbSchema"


cp -R "${PROJECT_DIR}vagrant/Resources/dbSchema" "${BASE_DIR}/Resources/"
cp -R "${PROJECT_DIR}vagrant/Resources/liquibase-3.7.0-bin" "${BASE_DIR}/Resources/"
cp -R "${PROJECT_DIR}vagrant/Resources/data-mapping.json" "${BASE_DIR}/Resources/"
cp -R "${PROJECT_DIR}vagrant/Resources/Classification" "${BASE_DIR}/Resources/"
cp -R "${PROJECT_DIR}vagrant/Resources/Tesseract" "${BASE_DIR}/Resources/"

info "Copy configurationService"

COPY_DIR="${BASE_DIR}/configurationService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/configurationService/cap-configurationservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/configurationService/cap-configurationservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/configurationService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/configurationService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/configurationService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/configurationService/conf/serviceFramework.config" "${COPY_DIR}/conf"



info "Copy securityService"
COPY_DIR="${BASE_DIR}/securityService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/securityService/cap-securityservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/securityService/cap-securityservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/securityService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/securityService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/securityService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/securityService/conf/serviceFramework.config" "${COPY_DIR}/conf"




info "Copy taskService"
COPY_DIR="${BASE_DIR}/taskService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/taskService/cap-taskservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/taskService/cap-taskservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/taskService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/taskService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/taskService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/taskService/conf/serviceFramework.config" "${COPY_DIR}/conf"




info "Copy assetService"
COPY_DIR="${BASE_DIR}/assetService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/assetService/cap-assetservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/assetService/cap-assetservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/assetService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/assetService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/assetService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/assetService/conf/serviceFramework.config" "${COPY_DIR}/conf"




info "Copy eventService"
COPY_DIR="${BASE_DIR}/eventService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/eventService/cap-eventservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/eventService/cap-eventservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/eventService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/eventService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/eventService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/eventService/conf/serviceFramework.config" "${COPY_DIR}/conf"




info "Copy agentManagementService"
COPY_DIR="${BASE_DIR}/agentManagementService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"



cp -R "${PROJECT_DIR}vagrant/CAP/agentManagementService/cap-agentmanagementservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/agentManagementService/cap-agentmanagementservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/agentManagementService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/agentManagementService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/agentManagementService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/agentManagementService/conf/serviceFramework.config" "${COPY_DIR}/conf"






info "Copy classificationService"
COPY_DIR="${BASE_DIR}/classificationService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/classificationService/cap-classificationservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/classificationService/cap-classificationservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/classificationService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/classificationService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/classificationService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/classificationService/conf/serviceFramework.config" "${COPY_DIR}/conf"







info "Copy elasticReportingService"
COPY_DIR="${BASE_DIR}/elasticReportingService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/elasticReportingService/cap-elasticreportingservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/elasticReportingService/cap-elasticreportingservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/elasticReportingService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/elasticReportingService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/elasticReportingService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/elasticReportingService/conf/serviceFramework.config" "${COPY_DIR}/conf"







info "Copy integrationService"
COPY_DIR="${BASE_DIR}/integrationService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/integrationService/cap-integrationservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/integrationService/cap-integrationservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/integrationService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/integrationService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/integrationService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/integrationService/conf/serviceFramework.config" "${COPY_DIR}/conf"



info "Copy notificationService"
COPY_DIR="${BASE_DIR}/notificationService/"

rm -r "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/notificationService/cap-notificationservice-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/notificationService/cap-notificationservice-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/notificationService/conf/framework.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/notificationService/conf/frameworkdb.config" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/notificationService/conf/log4j2.xml" "${COPY_DIR}/conf"
cp -R "${PROJECT_DIR}vagrant/CAP/notificationService/conf/serviceFramework.config" "${COPY_DIR}/conf"


info "IPValue(1):" $1

find /CAP -name 'frameworkdb.config' -type f -exec sed -i 's/Password=ctech99.99clog/Password=postgres/g' {} \;
find /CAP -name 'frameworkdb.config' -type f -exec sed -i 's/172.17.7.81/192.168.83.137/g' {} \;
find /CAP -name 'framework.config' -type f -exec sed -i 's/http:\/\/172.17.7.80/http:\/\/'$1'/g' {} \;

info "IPValue(2):" $1

info "Nginx Setting"
nginx_file_path="/CAP/Services/nginx.template"
sed -i 's/192.168.56.10/'$1'/g' $nginx_file_path


info "Docker Compose File Setting"
docker_file_path="/DOCKER/docker-compose.yml"
sed -i 's/192.168.56.10/'$1'/g' $docker_file_path

info "Db Migration Setting"
liquibase_file_path="/CAP/Resources/liquibase-3.7.0-bin/liquibase-docker.properties"
sed -i 's/172.17.7.81/'$1'/g' $liquibase_file_path

info "Migration Ip Setting"
docker_file_path="/CAP/Resources/dbSchema/sql/docker/0002-0-DOCKER-UpdateIP.xml"
sed -i 's/value=.*/value="'$1'"\/>/g' $docker_file_path





#ManagementAgent
mkdir -p /CAP/download
mkdir -p /CAP/download/tmp


info "Copy ManagementAgent"
COPY_DIR="/CAP/download/tmp/ManagementAgent/"

rm -rf "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${PROJECT_DIR}vagrant/CAP/ManagementAgent/cap-managementagent-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/ManagementAgent/cap-managementagent-1.0-SNAPSHOT.lib/" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/ManagementAgent/nssm" "${COPY_DIR}/"
cp -R "${PROJECT_DIR}vagrant/CAP/ManagementAgent/conf" "${COPY_DIR}/"

cd /CAP/download/tmp/
rm -rf ManagementAgent_Windows_64.zip
zip -r ManagementAgent_Windows_64.zip ./

mv ManagementAgent_Windows_64.zip /CAP/download
cp /CAP/download/ManagementAgent_Windows_64.zip /CAP/download/ManagementAgent_Linux_64.zip
rm -rf /CAP/download/tmp
rm -rf /CAP/download/ManagementAgent

PROPERTY_FILE=apps.properties

function getProperty {
   PROP_KEY=$1
   PROP_VALUE=`cat $PROPERTY_FILE | grep "$PROP_KEY" | cut -d'=' -f2`
   echo $PROP_VALUE
}


PROPERTY_FILE="${PROJECT_DIR}cap-agentframework-parent/cap-managementagent/buildNumber.properties"
buildNumber0=$(getProperty "buildNumber0")
buildNumber1=$(getProperty "buildNumber1")
buildNumber2=$(getProperty "buildNumber2")
buildNumber3=$(getProperty "buildNumber3")

if [ -f "/CAP/download/buildNumber.properties" ]
then
  sed -i 's/ManagementAgent=.*/ManagementAgent='${buildNumber0}.${buildNumber1}.${buildNumber2}.${buildNumber3}'\/>/g' /CAP/download/Update.lasted
else
  echo "ManagementAgent=${buildNumber0}.${buildNumber1}.${buildNumber2}.${buildNumber3}" > /CAP/download/Update.lasted
fi


