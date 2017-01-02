FROM ubuntu:16.10
MAINTAINER Flyrainning "http://www.fengpiao.net"


RUN apt-get update -y \
  && apt-get install -y \
    mongodb \
  && apt-get autoclean \
  && apt-get autoremove \
  && rm -rf /var/lib/apt/lists/*
    
ADD etc /etc
ADD bin /bin
RUN chmod a+x /bin/start.sh
WORKDIR /app

ENV VERSION 1
ENV PATH "/app:$PATH"

EXPOSE 27017
ENTRYPOINT ["/bin/start.sh"]
