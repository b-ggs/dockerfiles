FROM node:8.15.0-stretch

RUN npm install -g md-to-pdf@2.6.4

WORKDIR /data

ENTRYPOINT ["md-to-pdf"]

CMD ["--help"]
