FROM mcr.microsoft.com/dotnet/runtime:5.0

RUN apt update \
  && apt install -y curl ffmpeg \
  && rm -rf /var/lib/apt/lists/* \
  # for some reason the zip is actually a tar
  && curl -fsSL -o /tmp/twitchdownloadercli.tar https://github.com/lay295/TwitchDownloader/releases/download/1.39.4/TwitchDownloaderCLI-Linux-x64.zip \
  && tar -xf /tmp/twitchdownloadercli.tar -C /bin \
  && chmod +x /bin/TwitchDownloaderCLI \
  && rm -rf /tmp/*

ENTRYPOINT ["TwitchDownloaderCLI"]
