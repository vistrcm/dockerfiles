FROM ubuntu:16.04
MAINTAINER Stanislav Vitko <stas@vitko.me>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        apache2 \
        libapache2-mod-php7.0 \
        php7.0-gd \
        php7.0-soap \
        php7.0-mcrypt \
        php7.0-intl \
        php7.0-mysql \
        php7.0-curl \
        php7.0-mbstring \
        php-memcache \
        php-gettext \
        php-pear \
        php-imagick \
        ssmtp \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    # enable apache modules
    && a2enmod rewrite \
    && a2enmod headers \
    && a2enmod remoteip \
    # allow FromLineOverride=YES for ssmtp
    && sed -i.bak s/^#FromLineOverride=YES$/FromLineOverride=YES/g /etc/ssmtp/ssmtp.conf

COPY php.ini /etc/php5/apache2/php.ini
COPY php.ini /etc/php5/cli/php.ini

WORKDIR /var/www/html
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
