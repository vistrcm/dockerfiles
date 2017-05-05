FROM ubuntu:16.04
MAINTAINER Stanislav Vitko <stanislav.vitko@gmail.com>

# install packages
RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests \
        nginx-full \
        ca-certificates \
        wget \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /etc/nginx/geoip

# add geoip databases. Not enabled by default, just downloaded.
RUN wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz -O /etc/nginx/geoip/GeoIP.dat.gz \
    && wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz -O /etc/nginx/geoip/GeoLiteCity.dat.gz \
    && gunzip /etc/nginx/geoip/GeoIP.dat.gz \
    && gunzip /etc/nginx/geoip/GeoLiteCity.dat.gz

COPY fastcgi_params /etc/nginx/fastcgi_params
COPY entrypoint.sh /entrypoint.sh

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443
CMD ["/entrypoint.sh"]
