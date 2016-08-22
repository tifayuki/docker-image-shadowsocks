FROM ubuntu:trusty
MAINTAINER Feng Honglin <tifayuki@gmail.com>

RUN apt-get update  && \
    apt-get install -y python git && \
    git clone -b manyuser https://github.com/breakwa11/shadowsocks.git
WORKDIR shadowsocks/shadowsocks
ADD config.json config.json

EXPOSE 8388

ENTRYPOINT ["python", "server.py"]
CMD ["-c", "config.json"]
