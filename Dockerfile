FROM ubuntu:xenial
RUN apt-get update && apt-get install apache2 -y
RUN apt-get install -y apache2-utils
ADD index.html /var/www/html/
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
