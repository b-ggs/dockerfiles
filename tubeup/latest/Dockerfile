FROM python:3.11-alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
  && pip3 install --no-cache-dir tubeup \
  && apk add --no-cache ffmpeg \
  && apk del .build-deps \
  && echo -e "[s3]\naccess = s3_access\nsecret = s3_secret" > /root/.ia

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
