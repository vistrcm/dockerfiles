FROM alpine:3.21.3
RUN apk add --no-cache dante-server
COPY sockd.conf /etc/sockd.conf
ENTRYPOINT [ "/usr/sbin/sockd" ]
