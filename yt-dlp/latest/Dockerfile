FROM python:3.10-alpine

RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
  && pip3 install --no-cache-dir yt-dlp \
  && apk add --no-cache ffmpeg \
  && apk del .build-deps

WORKDIR /data

VOLUME /data

ENTRYPOINT ["yt-dlp"]

CMD ["--help"]
