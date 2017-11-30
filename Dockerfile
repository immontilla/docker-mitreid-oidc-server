FROM alpine/git as clone
LABEL maintainer="Iván Mauricio Montilla Figueroa"
WORKDIR /app
RUN mkdir srv && cd srv && \ 
git clone --progress https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server.git && \ 
cd .. && mkdir web && cd web && \ 
git clone --progress https://github.com/mitreid-connect/simple-web-app.git

FROM maven:3.5.2-jdk-8-alpine as build
WORKDIR /app
COPY --from=clone /app/srv/OpenID-Connect-Java-Spring-Server /app/srv
RUN cd srv && mvn -Dmaven.javadoc.skip=true -DskipTests clean install && \
mkdir ../WARs && mv openid-connect-server-webapp/target/openid-connect-server-webapp.war ../WARs
COPY --from=clone /app/web/simple-web-app /app/web
RUN cd web && mvn -DskipTests clean install && \
mv target/simple-web-app.war ../WARs

FROM tomcat:9.0.1-alpine
WORKDIR /app
COPY --from=build /app/WARs /app
RUN cp *.war /usr/local/tomcat/webapps/