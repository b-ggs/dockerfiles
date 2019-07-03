FROM node:8.16.0-alpine

RUN npm config set unsafe-perm true \
  && npm install -g markserv

WORKDIR /data

ENTRYPOINT ["markserv"]

CMD ["-a", "0.0.0.0", "-b", "false", ".", "-v"]
