FROM python:alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add --no-cache --virtual .build-deps gcc musl-dev git \
  && pip3 install --no-cache-dir git+https://github.com/b-ggs/yt-dlp git+https://github.com/b-ggs/tubeup \
  && apk --no-cache add ffmpeg \
  && apk del .build-deps

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
