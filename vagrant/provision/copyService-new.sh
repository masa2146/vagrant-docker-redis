#!/bin/bash

source /app/vagrant/provision/common.sh

clear

#mvn clean package -Dmaven.buildNumber.revisionOnScmFailure=$(git log -n1 | grep git-svn-id | cut -d@ -f2 | cut -d" " -f1)

BASE_DIR=/CAP

find /CAP -name 'frameworkdb.config' -type f -exec sed -i 's/Password=ctech99.99clog/Password=postgres/g' {} \;
find /CAP -name 'frameworkdb.config' -type f -exec sed -i 's/172.17.7.81/192.168.83.137/g' {} \;
find /CAP -name 'framework.config' -type f -exec sed -i 's/http:\/\/172.17.7.80/http:\/\/'$1'/g' {} \;


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


: '
#ManagementAgent
mkdir -p /CAP/download
mkdir -p /CAP/download/tmp


info "Copy ManagementAgent"
COPY_DIR="/CAP/download/tmp/ManagementAgent/"

rm -rf "${COPY_DIR}/"
mkdir "${COPY_DIR}"
mkdir "${COPY_DIR}/conf"

cp -R "${BASE_DIR}/ManagementAgent/cap-managementagent-1.0-SNAPSHOT.jar" "${COPY_DIR}/"
cp -R "${BASE_DIR}/ManagementAgent/libs/" "${COPY_DIR}/"
cp -R "${BASE_DIR}/ManagementAgent/nssm" "${COPY_DIR}/"
cp -R "${BASE_DIR}/ManagementAgent/conf" "${COPY_DIR}/"

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


PROPERTY_FILE="${BASE_DIR}/ManagementAgent/buildNumber.properties"
buildNumber0=$(getProperty "buildNumber0")
buildNumber1=$(getProperty "buildNumber1")
buildNumber2=$(getProperty "buildNumber2")
buildNumber3=$(getProperty "buildNumber3")
'
#if [ -f "/CAP/download/buildNumber.properties" ]
#then
 # sed -i 's/ManagementAgent=.*/ManagementAgent='${buildNumber0}.${buildNumber1}.${buildNumber2}.${buildNumber3}'\/>/g' /CAP/download/Update.lasted
#else
 # echo "ManagementAgent=${buildNumber0}.${buildNumber1}.${buildNumber2}.${buildNumber3}" > /CAP/download/Update.lasted
#fi


