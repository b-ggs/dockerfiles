FROM python:alpine

RUN pip3 install --no-cache-dir tcd

COPY entrypoint /entrypoint

WORKDIR /data

ENTRYPOINT ["/entrypoint"]

CMD ["--help"]
