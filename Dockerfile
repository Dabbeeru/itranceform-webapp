FROM tomcat:9

COPY ./webapp/target/*.war /opt/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh","run"]
