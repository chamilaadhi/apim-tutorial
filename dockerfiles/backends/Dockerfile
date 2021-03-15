
FROM tomcat:9-jre8-alpine
ADD soap.war /usr/local/tomcat/webapps/
ADD train-operations.war /usr/local/tomcat/webapps/
ADD simulator.war /usr/local/tomcat/webapps/
ADD telecom-backend.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]