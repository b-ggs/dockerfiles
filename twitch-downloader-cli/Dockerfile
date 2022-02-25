FROM mcr.microsoft.com/dotnet/runtime:5.0

ENV RELEASE_NAME 1.40.7
ENV RELEASE_BASE_URL https://github.com/lay295/TwitchDownloader/releases/download/${RELEASE_NAME}

RUN apt update \
  && apt install -y curl ffmpeg unzip \
  && rm -rf /var/lib/apt/lists/* \
  && if [ "$(uname -m)" = "aarch64" ]; then \
      export RELEASE_URL="${RELEASE_BASE_URL}/TwitchDownloaderCLI-LinuxArm.zip"; \
    else \
      export RELEASE_URL="${RELEASE_BASE_URL}/TwitchDownloaderCLI-Linux-x64.zip"; \
    fi \
  && curl -fsSL -o /tmp/TwitchDownloaderCLI.zip "$RELEASE_URL" \
  && unzip /tmp/TwitchDownloaderCLI.zip -d /bin \
  && chmod +x /bin/TwitchDownloaderCLI \
  && rm -rf /tmp/*

WORKDIR /data

VOLUME /data

ENTRYPOINT ["TwitchDownloaderCLI"]
