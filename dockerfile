FROM ubuntu:16.04
MAINTAINER Jun Seok
LABEL purpose="Hands-on-Lab"
RUN apt-get update
RUN apt-get install apache2 -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo 2nd webpage!! >> test2.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]



FROM ubuntu:16.04 
MAINTAINER omega@outlook.com 
LABEL purpose="Hands-on-Lab" 
RUN apt-get update RUN apt-get install apache2 -y WORKDIR /var/www/html 
RUN ["/bin/bash", "-c", "echo welcome to docker webpage!! >> test.html"] 
EXPOSE 80 
CMD ["apachectl", "-DFOREGROUND"]