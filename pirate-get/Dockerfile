FROM python:alpine

RUN pip3 install --no-cache-dir pirate-get

WORKDIR /data

ENTRYPOINT ["pirate-get"]

CMD ["--help"]
