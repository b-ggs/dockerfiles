FROM python:3.7-alpine

RUN apk --no-cache add imagemagick \
  && pip3 install pywal

ENV OUTPUT_FILE=colors.Xresources

ADD entrypoint /

WORKDIR /data

ENTRYPOINT ["/entrypoint"]

CMD ["--help"]
