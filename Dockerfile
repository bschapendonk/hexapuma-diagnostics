# podman build -t hexapuma_diagnostics . && podman run --rm -it hexapuma_diagnostics
FROM alpine:latest

RUN <<EOF
apk add --upgrade --no-cache \
    bash \
    bash-completion \
    bash-doc \
    bind-doc \
    bind-tools \
    curl \
    curl-doc \
    htop \
    htop-doc \
    ipcalc \
    ipcalc-doc \
    iputils-arping \
    iputils-clockdiff \
    iputils-ping \
    iputils-tracepath \
    less \
    less-doc \
    man-pages \
    mandoc \
    mandoc-apropos \
    nano \
    nano-doc \
    net-tools \
    net-tools-doc \
    openssh-client \
    openssh-doc \
    traceroute \
    traceroute-doc \
    wget \
    wget-doc \
    whois \
    whois-doc
EOF

CMD [ "bash" ]