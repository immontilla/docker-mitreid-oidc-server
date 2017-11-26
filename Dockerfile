FROM tomcat:9.0.1-alpine
MAINTAINER Iván Mauricio Montilla Figueroa
RUN apk add --no-cache git maven openjdk8
RUN git clone --progress --verbose https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server.git
RUN cd OpenID-Connect-Java-Spring-Server && mvn -Dmaven.javadoc.skip=true -DskipTests clean install && cp openid-connect-server-webapp/target/openid-connect-server-webapp.war /usr/local/tomcat/webapps/ && cd .. && rm -rf OpenID-Connect-Java-Spring-Server
RUN git clone --progress --verbose https://github.com/mitreid-connect/simple-web-app.git
RUN cd simple-web-app && mvn clean install && cp target/simple-web-app.war /usr/local/tomcat/webapps/ && cd .. && rm -rf simple-web-app
RUN rm -rf /root/.m2/

