
FROM adoptopenjdk:11.0.9_11-jdk-hotspot-focal

# copy init script to user home
COPY test-ws-0.0.1-SNAPSHOT.jar /root/
COPY docker-entrypoint.sh /root/


# expose ports
EXPOSE 8080

ENTRYPOINT ["/root/docker-entrypoint.sh"]
RUN ["chmod", "+x", "/root/docker-entrypoint.sh"]