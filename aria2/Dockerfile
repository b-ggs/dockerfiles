FROM alpine:latest

RUN apk --no-cache add aria2

WORKDIR /data

ENTRYPOINT ["aria2c"]

CMD ["--help"]
