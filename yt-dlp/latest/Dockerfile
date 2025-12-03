FROM python:3.14-alpine

RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
  && pip3 install --no-cache-dir yt-dlp[default,curl-cffi] \
  && apk add --no-cache ffmpeg deno \
  && apk del .build-deps

WORKDIR /data

VOLUME /data

ENTRYPOINT ["yt-dlp"]

CMD ["--help"]
