FROM bash:latest

# RUN apk add --no-cache jq
WORKDIR /workdir/
ENTRYPOINT ["./entrypoint.sh"]