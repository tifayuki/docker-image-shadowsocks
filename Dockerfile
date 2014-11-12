FROM ubuntu:trusty
MAINTAINER Feng Honglin <tifayuki@gmail.com>

RUN apt-get update && \
    apt-get install -y python-pip && \
    pip install shadowsocks

ADD config.json config.json

EXPOSE 8388

ENTRYPOINT ["/usr/local/bin/ssserver"]
CMD ["-c", "config.json"]
