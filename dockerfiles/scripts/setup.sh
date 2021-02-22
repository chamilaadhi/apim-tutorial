#!/bin/bash

#APIM host
apim="api-manager"
#apim="localhost" #for testing
export apim

echo "Waiting for WSO2 API Manager to start..."

while ! nc -z $apim 9443; do   
  echo "Retrying after 5s..."
  sleep 5
done

echo "WSO2 API Manager started"

## check if already created

FILE=lock
if ! test -f "$FILE"; then
    
echo "Creating tenants"

sh tenant-creation.sh
cd quantis-resources
sh deploy-api.sh

# back to home
cd ../ 
# create a file to prevent re-run
echo "created" >> lock

fi

echo "=================================Data population completed======================================================"