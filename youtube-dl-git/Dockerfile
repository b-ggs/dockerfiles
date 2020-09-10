FROM python:alpine

RUN apk --no-cache add ffmpeg git \
  && git clone https://github.com/ytdl-org/youtube-dl /tmp/youtube-dl \
  && pip install --no-cache-dir /tmp/youtube-dl \
  && apk del git \
  && rm -rf /tmp/*

COPY youtube-dl.conf /etc/youtube-dl.conf

WORKDIR /data

VOLUME /data

ENTRYPOINT ["youtube-dl"]

CMD ["--help"]
