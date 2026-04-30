FROM alpine:latest
# Устанавливаем Go для сборки mtg прямо внутри контейнера
RUN apk add --no-cache go git && \
    git clone https://github.com/9seconds/mtg.git && \
    cd mtg && \
    go build -ldflags="-s -w" -o /usr/local/bin/mtg . && \
    apk del go git && \
    rm -rf /mtg
CMD ["/usr/local/bin/mtg", "run", "--bind", "0.0.0.0:10000", "30a0360ee7f4b2fb3de3761b76534aed"]
