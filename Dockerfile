# Use a base OpenJDK runtime image with a lightweight server like Tomcat
FROM tomcat:9.0-alpine

# Remove default ROOT webapp from Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to Tomcat's webapps directory as ROOT.war for root context deployment
COPY target/java-scm.war /usr/local/tomcat/webapps/ROOT.war

# Expose default Tomcat HTTP port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
