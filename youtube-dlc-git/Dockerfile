FROM python:alpine

RUN apk --no-cache add ffmpeg git \
  && pip install --no-cache-dir git+https://github.com/blackjack4494/yt-dlc \
  && apk del git \
  && rm -rf /tmp/*

COPY youtube-dlc.conf /etc/youtube-dlc.conf

WORKDIR /data

VOLUME /data

ENTRYPOINT ["youtube-dlc"]

CMD ["--help"]
