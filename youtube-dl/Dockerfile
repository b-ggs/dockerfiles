FROM python:3.7-alpine

RUN apk update && apk add ffmpeg

RUN pip3 install youtube-dl

WORKDIR /data

ENTRYPOINT ["youtube-dl"]

CMD ["--help"]
