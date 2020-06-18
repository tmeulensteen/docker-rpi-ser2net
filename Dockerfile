FROM debian:sid-slim

ENV TZ Europe/Berlin

RUN apt-get update && \
    apt-get install -y ser2net && \
    rm -rf /var/lib/apt/lists/*

ADD ser2net.conf /etc/ser2net.conf

CMD echo -n "Starting " && ser2net -v && ser2net -u -d -c /etc/ser2net.conf

