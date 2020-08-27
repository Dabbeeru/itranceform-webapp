FROM tomcat:8.0-alpine

LABEL maintainer="deepak@softwareyoga.com"

ADD sample.war /opt/tomcat/webapps


EXPOSE 9090

CMD ["catalina.sh", "run"]
