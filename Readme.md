docker build -t backends:1.0 .
docker build -t wso2am:4.0.0-m7 .
docker run -it -p 9443:9443 wso2am:4.0.0-m7