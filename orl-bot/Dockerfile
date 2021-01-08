FROM golang:latest AS build-env
RUN git clone https://github.com/b-ggs/overrustlelogs.git /tmp/orl
RUN mv /tmp/orl/bot /src
ENV CGO_ENABLED 0
ENV GOOS linux
RUN cd /src && go mod init orl-bot && go build -o orl-bot

FROM alpine:latest
WORKDIR /app
COPY --from=build-env /src/orl-bot /app/
CMD ["./orl-bot"]
