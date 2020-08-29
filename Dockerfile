FROM centos

MAINTAINER dabbiru.devops@gmail.com

EXPOSE 8080

CMD ["/opt/tomcat/apache-tomcat-9.0.37/bin/catalina.sh", "run"]
