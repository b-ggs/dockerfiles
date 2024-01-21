FROM python:3.12-alpine

RUN pip3 install --no-cache-dir internetarchive \
  && echo -e "[s3]\naccess = s3_access\nsecret = s3_secret" > /root/.ia

COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /data

VOLUME /data

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["--help"]
