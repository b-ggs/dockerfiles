FROM python:alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk --no-cache add ffmpeg git \
  && pip3 install --no-cache-dir youtube-dl git+https://github.com/midgleyc/tubeup@null-description-text \
  && echo -e "[s3]\naccess = s3_access\nsecret = s3_secret" > /root/.ia \
  && apk del git \
  && rm -rf /tmp/*

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
