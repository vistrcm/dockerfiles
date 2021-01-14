FROM alpine:3
RUN wget -O /usr/local/bin/kubectl "https://storage.googleapis.com/kubernetes-release/release/v1.19.4/bin/linux/amd64/kubectl" \
    && chmod +x /usr/local/bin/kubectl
ENTRYPOINT ["/usr/local/bin/kubectl"]
