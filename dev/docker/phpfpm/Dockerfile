FROM php:5.6-fpm
LABEL maintainer="OpsWay Team"

# Install libs
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        g++ \
        curl \
        git \
        zip \
        unzip \
        mysql-client \
        libmcrypt-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libxml2-dev \
        libpng-dev \
        zlib1g-dev

# Install PHP extensions
RUN docker-php-ext-configure gd \
        --with-gd \
        --with-freetype-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ \
        --with-png-dir=/usr/include/
RUN docker-php-ext-install gd mbstring mcrypt opcache pdo_mysql soap zip
RUN pecl install xdebug-2.5.5

# Install Composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_VERSION 1.6.3
ENV COMPOSER_HOME /tmp
RUN curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/b107d959a5924af895807021fcef4ffec5a76aa9/web/installer \
    && php -r " \
        \$signature = '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061'; \
        \$hash = hash('SHA384', file_get_contents('/tmp/installer.php')); \
        if (!hash_equals(\$signature, \$hash)) { \
            unlink('/tmp/installer.php'); \
            echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL; \
            exit(1); \
        }" \
    && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION} \
    && composer --ansi --version --no-interaction

# Install N98-Magerun
RUN curl -O https://files.magerun.net/n98-magerun.phar \
    && mv ./n98-magerun.phar /usr/local/bin/n98-magerun \
    && chmod +x /usr/local/bin/n98-magerun

# Cleanup to keep the images size small
RUN apt-get purge -y \
        libmcrypt-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libxml2-dev \
        libpng-dev \
        zlib1g-dev \
    && rm -r /var/lib/apt/lists/* \
    && rm -rf /tmp/* /tmp/.htaccess

# Add php.ini and composer configs
ADD configs/php.ini /usr/local/etc/php/

WORKDIR /var/www