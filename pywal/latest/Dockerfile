FROM python:3.10-alpine

RUN apk add --no-cache imagemagick \
  && pip3 install --no-cache-dir pywal

ENV OUTPUT_FILE=colors.Xresources

ADD entrypoint /

WORKDIR /data

ENTRYPOINT ["/entrypoint"]

CMD ["--help"]
