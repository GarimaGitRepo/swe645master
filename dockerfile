FROM tomcat
COPY SWE645.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
