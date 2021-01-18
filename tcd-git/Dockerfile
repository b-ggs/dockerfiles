FROM python:alpine

RUN apk --no-cache add git \
  && pip install --no-cache-dir git+https://github.com/PetterKraabol/Twitch-Chat-Downloader \
  && apk del git \
  && rm -rf /tmp/*

WORKDIR /data

VOLUME /data

ENTRYPOINT ["tcd"]

CMD ["--help"]
