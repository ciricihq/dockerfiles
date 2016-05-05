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
      git \
    && \
    php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === 'a52be7b8724e47499b039d53415953cc3d5b459b9d9c0308301f867921c19efc623b81dfef8fc2be194a5cf56945d223') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php -- --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"
