# docker-mitreid-oidc-server

# About
Dockerized version of MITREid OpenID-Connect-Java-Spring-Server

# Description
This container is comprised of a Tomcat 9.0.1 server, a OpenID-Connect-Server and an application client.

# Usage
```docker run -itd --name=oidc-srv --net=host -p 8080:8080 immontilla/mitreid-oidc-server```

An OpenID Connect reference implementation in Java on the Spring platform. http://localhost:8080/openid-connect-server-webapp/

Simple web application that demonstrates the use of the OpenID Connect client code and configuration. http://localhost:8080/simple-web-app/

# More info
https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server/
