# docker-mitreid-oidc-server

# About
Dockerized version of MITREid OpenID-Connect-Java-Spring-Server

# Description
This container is comprised of a Tomcat 9.0.1 server, an OpenID-Connect-Server and an OpenID Connect Authorization Code Flow web application client.

# Usage
```docker run -itd --name=oidc-srv --net=host -p 8080:8080 immontilla/docker-mitreid-oidc-server```

An OpenID Connect reference implementation in Java on the Spring platform. http://localhost:8080/openid-connect-server-webapp/

Simple web application that demonstrates the use of the OpenID Connect Authorization Code Flow . http://localhost:8080/simple-web-app/

# More info
Project https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server/

Wiki https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server/wiki
