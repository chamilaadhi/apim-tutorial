
FROM adoptopenjdk:11.0.9_11-jdk-hotspot-focal

# copy init script to user home
COPY train-schedule-1.0.0.jar /root/
COPY docker-entrypoint.sh /root/

# expose ports
EXPOSE 8080

ENTRYPOINT ["/root/docker-entrypoint.sh"]
RUN ["chmod", "+x", "/root/docker-entrypoint.sh"]