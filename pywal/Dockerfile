FROM python:3.7-alpine

RUN apk update && apk add imagemagick

RUN pip3 install pywal

ENV OUTPUT_FILE=colors.Xresources

ADD entrypoint /

WORKDIR /data

ENTRYPOINT ["/entrypoint"]

CMD ["--help"]
