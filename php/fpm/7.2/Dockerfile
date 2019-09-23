FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

# install packages
RUN apt-get update && apt-get install -y --no-install-recommends \
        php7.2-fpm \
        php7.2-gd \
        php7.2-soap \
        php7.2-intl \
        php7.2-mysql \
        php-memcache \
        php-gettext \
        php-pear \
        php7.2-curl \
        ssmtp \
    && rm -rf /var/lib/apt/lists/* \
    # allow FromLineOverride=YES for ssmtp
    && sed -i.bak s/^#FromLineOverride=YES$/FromLineOverride=YES/g /etc/ssmtp/ssmtp.conf \
    && mkdir /var/log/php-fpm \
    && chown www-data /var/log/php-fpm

COPY php/7.2/fpm/php-fpm.conf /etc/php/7.2/fpm/php-fpm.conf
COPY php/7.2/fpm/php.ini /etc/php/7.2/fpm/php.ini
COPY php/7.2/fpm/pool.d/www.conf /etc/php/7.2/fpm/pool.d/www.conf

WORKDIR /var/www/html
EXPOSE 9000
CMD ["php-fpm7.2"]
