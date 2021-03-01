# WSO2 API Manager 4.0.0 tutorial resources

This repo contains resources that are needed to demo the API Manager 4.0.0 tutorial series.

## Prerequisite

- Java 8 or above
- Docker and Docker compose
  
### Build API Manager 4.0.0 docker image (Only till APIM 4.0.0 docker images are released)

1. Download WSO2 API manager from https://github.com/wso2/product-apim/releases (latest milestone)
2. Copy this pack to `dockerfiles/apim`
3. Go to `dockerfiles/apim` and open 'Dockerfile' and set the version in `WSO2_SERVER_VERSION` . For example, for milestoer 7 change following
    ARG WSO2_SERVER_VERSION=4.0.0-alpha
4. Run following command from `dockerfiles/apim` location
    docker build -t wso2am:4.0.0 . 

### Build MI 4.0.0 docker image (Only till MI 4.0.0 docker images are released)

1. Download WSO2 MI from https://github.com/wso2/micro-integrator/releases (latest milestone)
2. Copy this pack to `dockerfiles/mi`
3. Go to `dockerfiles/mi` and open 'Dockerfile' and set the version in `WSO2_SERVER_VERSION` . For example, for milestoer 7 change following
    ARG WSO2_SERVER_VERSION=4.0.0-m7
4. Run following command from `dockerfiles/mi` location
    docker build -t wso2mi:4.0.0 . 

## Setup
   
run following command to start the environment

    docker-compose up -d

This will start WSO2 API Manager 4.0.0 and WSO2 MI 4.0.0 and a sample REST API backend.

To view the logs 

    docker-compose logs -f

Once you are done with the demo, use 

     docker-compose down

## Demo

1. Login to the Publisher Portal (http://localhost:9443/publisher)
2. Create the API using Open API definition provided in https://github.com/chamilaadhi/apim-tutorial/blob/master/resources/openapi-train-operations.yaml . (backend url is provided in the OpenAPI definition)
3. Deploy and invoke the API.
