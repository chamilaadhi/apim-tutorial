FROM alpine:3.7
# install curl
RUN apk --no-cache add curl

COPY setup.sh /
COPY tenant-creation.sh /
#CMD ["sh" ,"setup.sh"]
RUN ["chmod", "+x", "/setup.sh"]
RUN ["chmod", "+x", "/tenant-creation.sh"]
CMD ["sh", "/setup.sh"]