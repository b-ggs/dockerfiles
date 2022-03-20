FROM python:2-alpine

RUN apk add --no-cache --virtual .build-deps git \
  && pip install --no-cache-dir git+https://github.com/b-ggs/autosub \
  && apk add --no-cache ffmpeg \
  && apk del .build-deps \
  && rm -rf /tmp/*

WORKDIR /data

ENTRYPOINT ["autosub"]

CMD ["-h"]
