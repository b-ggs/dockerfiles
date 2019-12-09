FROM python:alpine

RUN pip3 install tcd

COPY entrypoint /entrypoint

WORKDIR /data

ENTRYPOINT ["/entrypoint"]

CMD ["--help"]
