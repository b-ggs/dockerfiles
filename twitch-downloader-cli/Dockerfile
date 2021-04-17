FROM mcr.microsoft.com/dotnet/runtime:5.0

RUN apt update \
  && apt install -y curl ffmpeg unzip \
  && rm -rf /var/lib/apt/lists/* \
  && curl -fsSL -o /tmp/twitchdownloadercli.tar https://github.com/lay295/TwitchDownloader/releases/download/1.39.5/TwitchDownloaderCLI-Linux-x64.zip \
  && unzip /tmp/twitchdownloadercli.tar -d /bin \
  && chmod +x /bin/TwitchDownloaderCLI \
  && rm -rf /tmp/*

ENTRYPOINT ["TwitchDownloaderCLI"]
