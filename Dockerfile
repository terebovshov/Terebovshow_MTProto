FROM alpine:latest
RUN apk add --no-cache curl && \
    curl -LO https://github.com/9seconds/mtg/releases/download/v2.2.7/mtg-2.2.7-linux-amd64 && \
    mv mtg-2.2.7-linux-amd64 /usr/local/bin/mtg && \
    chmod +x /usr/local/bin/mtg
CMD ["/usr/local/bin/mtg", "run", "--bind", "0.0.0.0:10000", "30a0360ee7f4b2fb3de3761b76534aed"]
