#!/bin/bash

#APIM host
apim="api-manager"

export apim

echo "Waiting for WSO2 API Manager to start..."

while ! nc -z $apim 9443; do   
  echo "Retrying after 5s..."
  sleep 5
done

echo "WSO2 API Manager started"

echo "Creating tenants"

sh tenant-creation.sh

echo "Done"