FROM python:alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
  && pip3 install --no-cache-dir tubeup \
  && apk --no-cache add ffmpeg \
  && apk del .build-deps

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
