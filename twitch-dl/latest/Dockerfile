FROM python:3.11-alpine

ENV TMP /data

RUN apk add --no-cache ffmpeg \
  && pip3 install --no-cache-dir twitch-dl

WORKDIR /data

VOLUME /data

ENTRYPOINT ["twitch-dl"]

CMD ["--help"]
