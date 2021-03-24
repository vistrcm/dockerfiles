FROM ubuntu
RUN apt-get update \
    && apt-get install -y wget \
    && wget -O bitcoin.tar.gz https://bitcoin.org/bin/bitcoin-core-0.21.0/bitcoin-0.21.0-x86_64-linux-gnu.tar.gz \
    && tar xvzf bitcoin.tar.gz \
    && mv bitcoin-0.21.0 bitcoin \
    && rm -rf bitcoin.tar.gz \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bitcoin/bin/bitcoind"]
CMD ["-datadir=/data"]
