# export BUILDKIT_PROGRESS=plain
# docker build -t hexapuma_diagnostics . && docker run --rm -it hexapuma_diagnostics
FROM alpine:latest

RUN <<EOF
apk add --upgrade --no-cache \
    net-tools \
    openssh-client
EOF
