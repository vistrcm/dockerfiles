FROM ubuntu:19.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        apache2 \
        libapache2-mod-php \
        php-gd \
        php-soap \
        php-intl \
        php-mysql \
        php-curl \
        php-mbstring \
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

WORKDIR /var/www/html
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
