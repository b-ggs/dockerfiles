FROM python:alpine

RUN apk --no-cache add ffmpeg git \
  && pip install --no-cache-dir git+https://gitlab.com/dstftw/youtube-dl \
  && apk del git \
  && rm -rf /tmp/*

COPY youtube-dl.conf /etc/youtube-dl.conf

WORKDIR /data

VOLUME /data

ENTRYPOINT ["youtube-dl"]

CMD ["--help"]
