FROM ubuntu:16.04

MAINTAINER Cirici New Media "hello@cirici.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends language-pack-en-base software-properties-common && \
    LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive  add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y \
      curl \
      php7.1-cli \
      php7.1-curl \
      php7.1-mcrypt \
      php7.1-mysql \
      php7.1-sqlite3 \
      php7.1-pdo \
      php7.1-intl \
      php7.1-mbstring \
      php7.1-gd \
      php7.1-xdebug \
      php7.1-xml \
      php7.1-zip \
      php7.1-json \
      php7.1-imap \
      php7.1-pgsql \
      php7.1-mongodb \
      php7.1-memcache \
      php7.1-redis \
      git \
    && \
    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php && \
    php composer-setup.php -- --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"
