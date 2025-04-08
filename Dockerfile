FROM eclipse-temurin:17-jdk-jammy

# Install Tomcat explicitly
RUN apt-get update && \
    apt-get install -y tomcat10 && \
    rm -rf /var/lib/apt/lists/*

# Deploy your WAR file
COPY ROOT.war /var/lib/tomcat10/webapps/
EXPOSE 8080

# Start Tomcat
CMD ["/usr/share/tomcat10/bin/catalina.sh", "run"]sh", "run"]