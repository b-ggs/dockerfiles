FROM python:alpine

RUN pip3 install --no-cache-dir pirate-get

WORKDIR /data

VOLUME /data

ENTRYPOINT ["pirate-get"]

CMD ["--help"]
