FROM python:3.7.2-stretch

ENV CACHE_BUSTER=2019-06-04

RUN apt-get update && \
      apt-get install -y --no-install-recommends ffmpeg && \
      rm -rf /var/lib/apt/lists/*

RUN pip3 install youtube-dl

ADD youtube-dl.conf /etc/

WORKDIR /data

ENTRYPOINT ["youtube-dl"]

CMD ["--help"]
