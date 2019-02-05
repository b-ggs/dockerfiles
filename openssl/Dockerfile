FROM debian:stretch

RUN apt-get update && \
      apt-get install -y openssl && \
      rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT ["openssl"]
