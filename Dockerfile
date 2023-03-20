FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt install -y apache2
WORKDIR  /var/www/html
EXPOSE 80

CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]

