FROM python:alpine

RUN apk --no-cache add ffmpeg \
  && pip install autosub

WORKDIR /data

ENTRYPOINT ["autosub"]

CMD ["-h"]
