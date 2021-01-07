# build stage
FROM golang:alpine AS build-env
RUN apk --no-cache add build-base git bzr mercurial gcc
RUN git clone https://github.com/b-ggs/overrustlelogs.git /tmp/orl
RUN mv /tmp/orl/logger /src
RUN cd /src && go mod init orl-logger && go build -o orl-logger

# final stage
FROM alpine
WORKDIR /app
COPY --from=build-env /src/orl-logger /app/
CMD [ "./orl-logger" ]
