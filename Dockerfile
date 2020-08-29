FROM tomcat:9

 
 

 
COPY ./webapp/target/*.war /opt/tomcat/apache-tomcat-9.0.37/webapps

 
 

 
EXPOSE 8081

 
 

 
CMD ["catalina.sh","run"]
