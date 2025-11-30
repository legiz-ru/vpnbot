FROM tobyxdd/hysteria
RUN apk add --no-cache openssh \
    && mkdir -p /root/.ssh
ENV ENV="/root/.ashrc"
ENTRYPOINT []