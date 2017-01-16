FROM ubuntu:12.04

MAINTAINER Alejandro Hernández version: 0.1

RUN apt-get update
RUN apt-get install -y apache2
EXPOSE 80

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN echo "The Web Server is Running" > /var/www/index.html

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

