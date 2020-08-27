FROM tomcat:9

COPY ./webapp/target/*.war /opt/tomcat/webapps/

EXPOSE 8081

CMD ["catalina.sh","run"]
