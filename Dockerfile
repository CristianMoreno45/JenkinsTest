FROM tomcat:7-jdk8-openjdk
LABEL maintainer="cmoreno45@uan.edu.co"
ADD ./testapp/target/testapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]