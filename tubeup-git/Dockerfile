FROM python:alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk --no-cache add ffmpeg \
  && pip3 install --no-cache-dir youtube-dl git+https://github.com/midgleyc/tubeup@null-description-text \
  && echo "[s3]\n[access] = s3_access\nsecret = s3_secret" > /root/.ia

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
