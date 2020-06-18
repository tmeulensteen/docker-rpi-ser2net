FROM balenalib/rpi-raspbian:jessie

ENV TZ Europe/Berlin

RUN apt-get update && \
    apt-get install -y ser2net && \
    rm -rf /var/lib/apt/lists/*

ADD ser2net.conf /etc/ser2net.conf

EXPOSE 2001

CMD echo -n "Starting " && ser2net -v && ser2net -u -d -c /etc/ser2net.conf

