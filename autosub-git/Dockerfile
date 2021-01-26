FROM python:alpine

RUN apk --no-cache add ffmpeg git \
  && pip install --no-cache-dir git+https://github.com/b-ggs/autosub \
  && apk del git \
  && rm -rf /tmp/*

WORKDIR ["/data"]

ENTRYPOINT ["autosub"]

CMD ["-h"]
