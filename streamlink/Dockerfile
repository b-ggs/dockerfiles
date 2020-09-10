FROM python:alpine

RUN apk --no-cache add build-base ffmpeg \
  && pip3 install --no-cache-dir streamlink \
  && apk del build-base \
  && rm -rf /tmp/*

WORKDIR /data

VOLUME /data

ENTRYPOINT ["streamlink"]

CMD ["--help"]
