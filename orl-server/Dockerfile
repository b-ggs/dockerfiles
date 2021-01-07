FROM golang:latest AS build-env
RUN git clone https://github.com/b-ggs/overrustlelogs.git /tmp/orl
RUN mv /tmp/orl/server /src
RUN cd /src && go mod init orl-server && go build -o orl-server

FROM alpine:latest
WORKDIR /app
COPY --from=build-env /src/orl-server /app/
COPY --from=build-env /src/views/ /app/views/
COPY --from=build-env /src/assets/ /app/assets/
CMD ["./orl-server"]
