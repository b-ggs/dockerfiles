FROM python:alpine

RUN apk --no-cache add ffmpeg \
  && pip3 install youtube-dl

ADD youtube-dl.conf /etc/

WORKDIR /data

ENTRYPOINT ["youtube-dl"]

CMD ["--help"]
