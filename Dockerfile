FROM amazonlinux

RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
  
RUN yum -y update
RUN yum -y install httpd
RUN yum -y install php

COPY ./index.php /var/www/html/index.php
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80