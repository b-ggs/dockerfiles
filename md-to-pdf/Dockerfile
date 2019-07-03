FROM node:8.16.0-alpine

RUN npm config set unsafe-perm true \
  && npm install -g md-to-pdf

WORKDIR /data

ENTRYPOINT ["md-to-pdf"]

CMD ["--help"]
