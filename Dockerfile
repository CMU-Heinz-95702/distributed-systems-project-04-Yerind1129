FROM tomcat:10.1.18-jdk17-temurin-jammy
COPY ROOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]