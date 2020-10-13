FROM python:alpine

RUN apk --no-cache add ffmpeg git \
  && git clone https://github.com/blackjack4494/youtube-dlc /tmp/youtube-dl \
  && pip install --no-cache-dir /tmp/youtube-dl \
  && apk del git \
  && rm -rf /tmp/*

COPY youtube-dlc.conf /etc/youtube-dlc.conf

WORKDIR /data

VOLUME /data

ENTRYPOINT ["youtube-dl"]

CMD ["--help"]
