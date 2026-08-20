FROM alpine:3.24
RUN addgroup tor && adduser -S -D -G tor tor \
    && apk add tor=0.4.9.11-r0
USER tor
ENTRYPOINT ["/usr/bin/tor"]
