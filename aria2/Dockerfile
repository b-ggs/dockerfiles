FROM debian:stretch

RUN apt-get update && \
      apt-get install -y aria2 && \
      rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT ["aria2c"]

CMD ["--help"]
