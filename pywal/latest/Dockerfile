FROM python:alpine

RUN apk --no-cache add imagemagick \
  && pip3 install --no-cache-dir pywal

ENV OUTPUT_FILE=colors.Xresources

ADD entrypoint /

WORKDIR /data

ENTRYPOINT ["/entrypoint"]

CMD ["--help"]
