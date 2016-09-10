FROM ubuntu
MAINTAINER Stanislav Vitko <stanislav.vitko@gmail.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
        php5-fpm \
        php5-gd \
        php-soap \
        php5-mcrypt \
        php5-intl \
        php5-mysql \
        php5-xcache \
        php-gettext \
        php-pear \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
EXPOSE 9000
CMD ["php5-fpm"]
