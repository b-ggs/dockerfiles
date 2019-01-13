FROM python:2.7-alpine

RUN apk update && apk add ffmpeg

RUN pip install autosub

WORKDIR /data

ENTRYPOINT ["autosub"]

CMD ["-h"]
