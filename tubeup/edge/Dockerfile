FROM python:3.12-alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add --no-cache --virtual .build-deps gcc musl-dev git \
  && pip3 install --no-cache-dir git+https://github.com/bibanon/tubeup \
  && apk add --no-cache ffmpeg \
  && apk del .build-deps \
  && echo -e "[s3]\naccess = s3_access\nsecret = s3_secret" > /root/.ia

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
