FROM python:alpine

ENV TMP /data

RUN apk --no-cache add ffmpeg \
  && pip3 install --no-cache-dir twitch-dl

WORKDIR /data

VOLUME /data

ENTRYPOINT ["twitch-dl"]

CMD ["--help"]
