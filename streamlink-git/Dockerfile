FROM python:alpine

RUN apk --no-cache add ffmpeg build-base git \
  && git clone https://github.com/streamlink/streamlink /tmp/streamlink \
  && pip install --no-cache-dir /tmp/streamlink \
  && apk del build-base git \
  && rm -rf /tmp/*

WORKDIR /data

VOLUME /data

ENTRYPOINT ["streamlink"]

CMD ["--help"]
