FROM nginx:1.15

# add geoip databases. Not enabled by default, just downloaded.
RUN apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests \
        wget \
        ca-certificates \
    && mkdir -p /etc/nginx/geoip \
    && wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz -O /etc/nginx/geoip/GeoIP.dat.gz \
    && wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz -O /etc/nginx/geoip/GeoLiteCity.dat.gz \
    && gunzip /etc/nginx/geoip/GeoIP.dat.gz \
    && gunzip /etc/nginx/geoip/GeoLiteCity.dat.gz \
    # some cleanup
    && rm -rf /var/lib/apt/lists/*

COPY fastcgi_params /etc/nginx/fastcgi_params
COPY entrypoint.sh /entrypoint.sh

EXPOSE 80 443
CMD ["/entrypoint.sh"]
