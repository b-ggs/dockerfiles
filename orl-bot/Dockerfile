# build stage
FROM golang:alpine AS build-env
RUN apk --no-cache add build-base git bzr mercurial gcc
RUN git clone https://github.com/b-ggs/overrustlelogs.git /tmp/orl
RUN mv /tmp/orl/bot /src
RUN cd /src && go mod init orl-bot && go build -o orl-bot

# final stage
FROM alpine
WORKDIR /app
COPY --from=build-env /src/orl-bot /app/
CMD ["./orl-bot"]
