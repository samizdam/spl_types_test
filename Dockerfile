FROM php:7.0.24-cli

# install spl_types
RUN cd tmp \
    && curl -OL https://github.com/esminis/php_pecl_spl_types/archive/RELEASE_0_5_2.tar.gz \
    && tar -xf RELEASE_0_5_2.tar.gz \
    && cd php_pecl_spl_types-RELEASE_0_5_2 \
    && phpize --clean \
    && phpize \
    && chmod +x configure \
    && ./configure --prefix=/usr \
    && make install \
    && docker-php-ext-enable spl_types \
    && rm -rf /tmp/*

# get composer
RUN curl -OL https://getcomposer.org/download/1.5.2/composer.phar \
    && mv composer.phar /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer

# install git
RUN apt-get update \
    && apt-get install -y git
# enable phpdebug

RUN apt-get install -y libxml2-dev \
    && docker-php-source extract \
    && cd /usr/src/php \
    && ./configure --enable-phpdbg

# install xdebug
#RUN pecl install xdebug-2.5.1 && docker-php-ext-enable xdebug

WORKDIR /srv/spl_types
