FROM python:alpine

RUN apk --no-cache add ffmpeg \
  && pip3 install --no-cache-dir autosub

WORKDIR /data

VOLUME /data

ENTRYPOINT ["autosub"]

CMD ["-h"]
