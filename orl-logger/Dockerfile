FROM golang:latest AS build-env
RUN git clone https://github.com/b-ggs/overrustlelogs.git /tmp/orl
RUN mv /tmp/orl/logger /src
RUN cd /src && go mod init orl-logger && go build -o orl-logger

FROM alpine:latest
WORKDIR /app
COPY --from=build-env /src/orl-logger /app/
CMD [ "./orl-logger" ]
