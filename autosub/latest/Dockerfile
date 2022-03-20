FROM python:2-alpine

RUN apk add --no-cache ffmpeg \
  && pip install --no-cache-dir autosub \
  && rm -rf /tmp/*

WORKDIR /data

ENTRYPOINT ["autosub"]

CMD ["-h"]
