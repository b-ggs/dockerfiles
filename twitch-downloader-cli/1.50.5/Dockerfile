FROM debian:bullseye

ENV RELEASE_NAME 1.50.5
ENV DOWNLOAD_URL https://github.com/lay295/TwitchDownloader/releases/download/${RELEASE_NAME}/TwitchDownloaderCLI-Linux-x64.zip

RUN apt update \
  && apt install -y curl ffmpeg unzip \
  && rm -rf /var/lib/apt/lists/* \
  && curl -fsSL -o /tmp/TwitchDownloaderCLI.zip "$DOWNLOAD_URL" \
  && unzip /tmp/TwitchDownloaderCLI.zip -d /bin \
  && chmod +x /bin/TwitchDownloaderCLI \
  && rm -rf /tmp/* \
  && apt remove -y curl unzip

WORKDIR /data

VOLUME /data

ENTRYPOINT ["TwitchDownloaderCLI"]
