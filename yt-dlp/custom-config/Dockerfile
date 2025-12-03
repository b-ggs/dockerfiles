FROM python:3.14-alpine

RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
  && pip3 install --no-cache-dir yt-dlp \
  && apk add --no-cache ffmpeg deno \
  && apk del .build-deps

COPY yt-dlp.conf /etc/yt-dlp.conf

WORKDIR /data

VOLUME /data

ENTRYPOINT ["yt-dlp"]

CMD ["--help"]
