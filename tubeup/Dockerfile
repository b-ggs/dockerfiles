FROM python:alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk --no-cache add ffmpeg \
  && pip3 install --no-cache-dir tubeup \
  && echo -e "[s3]\naccess = s3_access\nsecret = s3_secret" > /root/.ia

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
