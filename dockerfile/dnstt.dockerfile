ARG image
FROM golang:alpine AS go
RUN apk add --no-cache git \
    && git clone https://www.bamsoftware.com/git/dnstt.git \
    && cd /go/dnstt/dnstt-server \
    && go build -ldflags="-s -w" -trimpath \
    && rm -rf /go/dnstt/.git \
    && apk del git
FROM $image
COPY --from=go /go/dnstt/dnstt-server/dnstt-server /usr/local/bin/
RUN apk add --no-cache openssh \
    && mkdir -p /root/.ssh
ENV ENV="/root/.ashrc"