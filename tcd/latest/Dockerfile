FROM python:3.10-alpine

RUN apk add --no-cache git \
  && pip install --no-cache-dir tcd \
  && apk del git \
  && rm -rf /tmp/*

WORKDIR /data

VOLUME /data

ENTRYPOINT ["tcd"]

CMD ["--help"]
