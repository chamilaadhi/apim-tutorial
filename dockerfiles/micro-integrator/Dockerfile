ARG BASE_IMAGE
FROM ${BASE_IMAGE}

# copy deployment.toml with service catalog configs
COPY deployment.toml ${WSO2_SERVER_HOME}/conf/

COPY carbonapps/RailCoTelecomMetricsIntegrationCompositeExporter_1.0.0-SNAPSHOT.car ${WSO2_SERVER_HOME}/repository/deployment/server/carbonapps/
# COPY Resources/wso2carbon.jks ${WSO2_SERVER_HOME}/repository/resources/security/wso2carbon.jks
# COPY Resources/client-truststore.jks ${WSO2_SERVER_HOME}/repository/resources/security/client-truststore.jks
COPY libs/*.jar ${WSO2_SERVER_HOME}/lib/
