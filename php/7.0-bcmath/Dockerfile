FROM ubuntu:16.04

MAINTAINER Cirici New Media "hello@cirici.com"

RUN apt-get update && \
    apt-get install -y \
      curl \
      php-cli \
      php-curl \
      php-mcrypt \
      php-mysql \
      php-sqlite3 \
      php-pdo \
      php-intl \
      php-mbstring \
      php-gd \
      php-xdebug \
      php-xml \
      php-zip \
      php-json \
      php-imap \
      php-pgsql \
      php-mongodb \
      php-memcache \
      php-redis \
      php-bcmath \
      git \
      zlib1g-dev \
      openssh-client \
      expect \
    && \
    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php && \
    php composer-setup.php -- --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

