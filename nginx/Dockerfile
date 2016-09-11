FROM ubuntu:16.04
MAINTAINER Stanislav Vitko <stanislav.vitko@gmail.com>

# install packages
RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests \
        nginx-full \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /etc/nginx/geoip

# add geoip databases. Not enabled by default, just downloaded.
ADD http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz /etc/nginx/geoip
ADD http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz /etc/nginx/geoip

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
