FROM ciricihq/php:7.2

MAINTAINER Cirici New Media "hello@cirici.com"

RUN apt-get update && \
    apt-get install -y \
      php7.2-bcmath \
    && \
    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php && \
    php composer-setup.php -- --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

