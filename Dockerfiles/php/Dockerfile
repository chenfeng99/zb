FROM daocloud.io/library/php:5.6-fpm

# Install env
ADD sources.list    /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
        libmcrypt-dev \
        libfreetype6-dev \
        libjpeg-dev \
        libpng12-dev \
        libpng-dev \
        && rm -r /var/lib/apt/lists/*


# Install PHP extensions
COPY redis.tgz /home/redis.tgz
COPY cphalcon-phalcon-v2.0.13.tar.gz /home/cphalcon-phalcon-v2.0.13.tar.gz

RUN docker-php-ext-configure gd \
        --enable-gd-native-ttf \
        --with-freetype-dir=/usr/include/freetype2 \
        --with-jpeg-dir=/usr/include \
        --with-png-dir=/usr/include \
        && docker-php-ext-install gd \
        && docker-php-ext-install zip \
        && docker-php-ext-install mbstring \
        && docker-php-ext-install mcrypt \
        && docker-php-ext-install pdo_mysql \
	&& docker-php-ext-install bcmath


RUN pecl install /home/redis.tgz && echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini

RUN cd /home \
    && tar -zxvf cphalcon-phalcon-v2.0.13.tar.gz \
    && cd cphalcon-phalcon-v2.0.13/build && ./install && echo "extension=phalcon.so" > /usr/local/etc/php/conf.d/phalcon.ini


# Composer
ADD composer.phar /usr/local/bin/composer
RUN chmod 755 /usr/local/bin/composer


# Write Permission
RUN usermod -u 1000 www-data

EXPOSE 9000
