FROM tomcat:9
 
COPY ./webapp/target/*.war /usr/local/tomcat/webapps/
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

 EXPOSE 8081
 
CMD ["catalina.sh","run"]
