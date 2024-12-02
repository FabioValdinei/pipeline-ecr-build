FROM ubuntu:latest
LABEL maintainer "fabiovaldinei"
RUN apt update && apt-get install -y apache2
#RUN apt install -y php
WORKDIR /var/www/html
COPY index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]