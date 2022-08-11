FROM alpine

ENV TERRAFORM_VERSION 1.2.2

ENV RELEASE_BASE_URL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}

RUN apk add --no-cache git openssh curl unzip \
  && if [ "$(uname -m)" = "aarch64" ]; then \
      export RELEASE_URL="${RELEASE_BASE_URL}/terraform_${TERRAFORM_VERSION}_linux_arm64.zip"; \
    else \
      export RELEASE_URL="${RELEASE_BASE_URL}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"; \
    fi \
  && curl -fsSL -o /tmp/terraform.zip "$RELEASE_URL" \
  && unzip /tmp/terraform.zip -d /bin \
  && chmod +x /bin/terraform \
  && rm -rf /tmp/*

WORKDIR /data

VOLUME /data

ENTRYPOINT ["terraform"]
