FROM alpine:3.19
RUN addgroup tor && adduser -S -D -G tor tor \
    && apk add tor=0.4.8.10-r0
USER tor
ENTRYPOINT ["/usr/bin/tor"]
