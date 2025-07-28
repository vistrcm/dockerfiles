FROM alpine:3.22
RUN addgroup tor && adduser -S -D -G tor tor \
    && apk add tor=0.4.8.17-r0
USER tor
ENTRYPOINT ["/usr/bin/tor"]
