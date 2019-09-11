FROM node:8.16.0-alpine

RUN npm config set unsafe-perm true \
  && npm install -g markserv

WORKDIR /data

EXPOSE 8642
EXPOSE 35729

ENTRYPOINT ["markserv"]

CMD ["-a", "0.0.0.0", "-b", "false", "--livereloadport", "35729", ".", "-v"]
