FROM ubuntu:12.04
MAINTAINER Stanislav Vitko <stanislav.vitko@gmail.com>

# install packages
RUN apt-get update && apt-get install -y --no-install-recommends \
        php5-fpm \
        php5-gd \
        php-soap \
        php5-mcrypt \
        php5-intl \
        php5-mysql \
        php5-xcache \
        php5-memcache \
        php-gettext \
        php-pear \
        sendmail \
    && rm -rf /var/lib/apt/lists/*

# create additional directories
RUN mkdir -p /var/log/php-fpm/

COPY php5-fpm/php-fpm.conf /etc/php5/fpm/php-fpm.conf
COPY php5-fpm/pool.d/www.conf /etc/php5/fpm/pool.d/www.conf

WORKDIR /var/www/html
EXPOSE 9000
CMD ["php5-fpm"]
