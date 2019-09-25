FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        apache2 \
        libapache2-mod-php7.2 \
        php7.2-gd \
        php7.2-soap \
        php7.2-intl \
        php7.2-mysql \
        php7.2-curl \
        php7.2-mbstring \
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

COPY php.ini /etc/php/7.2/apache2/php.ini

WORKDIR /var/www/html
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
