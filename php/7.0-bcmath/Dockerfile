FROM ciricihq/php:7.0

MAINTAINER Cirici New Media "hello@cirici.com"

RUN apt-get update && \
    apt-get install -y \
      php-bcmath \
    && \
    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php && \
    php composer-setup.php -- --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

