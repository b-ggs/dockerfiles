FROM python:2-alpine

RUN apk --no-cache add ffmpeg \
  && pip install --no-cache-dir autosub

WORKDIR /data

VOLUME /data

ENTRYPOINT ["autosub"]

CMD ["-h"]
