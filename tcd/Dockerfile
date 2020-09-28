FROM python:alpine

RUN pip3 install --no-cache-dir tcd

WORKDIR /data

VOLUME /data

ENTRYPOINT ["tcd"]

CMD ["--help"]
