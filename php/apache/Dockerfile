FROM ubuntu:14.04
MAINTAINER Stanislav Vitko <stanislav.vitko@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
        apache2 \
        libapache2-mod-php5 \
        php5-gd \
        php-soap \
        php5-mcrypt \
        php5-intl \
        php5-mysql \
        php5-xcache \
        php-gettext \
        php-pear \
        php5-curl \
        php5-imagick \
        php5-memcache \
        ssmtp \
    && rm -rf /var/lib/apt/lists/* \
    # enable php modules
    && php5enmod mcrypt \
    # enable apache modules
    && a2enmod rewrite \
    && a2enmod headers \
    # allow FromLineOverride=YES for ssmtp
    && sed -i.bak s/^#FromLineOverride=YES$/FromLineOverride=YES/g /etc/ssmtp/ssmtp.conf

COPY php.ini /etc/php5/apache2/php.ini
COPY php.ini /etc/php5/cli/php.ini
COPY php.ini /etc/php5/fpm/php.ini

WORKDIR /var/www/html
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
