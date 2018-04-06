FROM ubuntu:16.04

MAINTAINER Cirici New Media "hello@cirici.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends language-pack-en-base software-properties-common && \
    LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive  add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y \
      curl \
      php7.2-cli \
      php7.2-curl \
      php7.2-mcrypt \
      php7.2-mysql \
      php7.2-sqlite3 \
      php7.2-pdo \
      php7.2-intl \
      php7.2-mbstring \
      php7.2-gd \
      php7.2-xdebug \
      php7.2-xml \
      php7.2-zip \
      php7.2-json \
      php7.2-imap \
      php7.2-pgsql \
      php7.2-mongodb \
      php7.2-memcache \
      php7.2-redis \
      git \
    && \
    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php && \
    php composer-setup.php -- --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"
