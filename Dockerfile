FROM tomcat
MAINTAINER ashutoshh@linux.com
WORKDIR /usr/local/tomcat/webapps
RUN mkdir hello
WORKDIR hello
COPY myapp . 
# entire directory content will be copied to hello directory 
EXPOSE 8080

# not gonna use cmd / entrypoint for parent process bcz tomcat already have its own pp to start tomcat webapp server 
