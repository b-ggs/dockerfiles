FROM node:8.15.0-stretch

ENV CACHE_BUSTER=2019-01-29

RUN npm install -g markserv

RUN mkdir -p /data

WORKDIR /data

ENTRYPOINT ["markserv"]

CMD ["-a", "0.0.0.0", "-b", "false", ".", "-v"]
