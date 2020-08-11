FROM python:alpine

RUN apk --no-cache add ffmpeg \
  && pip3 install --no-cache-dir youtube-dl

ADD youtube-dl.conf /etc/

WORKDIR /data

VOLUME /data

ENTRYPOINT ["youtube-dl"]

CMD ["--help"]
