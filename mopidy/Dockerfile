FROM debian:buster
RUN apt update \
  && DEBIAN_FRONTEND=noninteractive apt install -y curl gnupg python3-pip \
  && curl -L https://apt.mopidy.com/mopidy.gpg | apt-key add - \
  && curl -L https://apt.mopidy.com/mopidy.list -o /etc/apt/sources.list.d/mopidy.list \
  && apt update \
  && apt install -y mopidy mopidy-local \
  && python3 -m pip install Mopidy-Iris \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache

ENV HOME /mopidy_home

COPY mopidy.conf /mopidy_home/.config/mopidy/mopidy.conf

COPY docker-entrypoint.sh /docker-entrypoint.sh

VOLUME ["/data", "/media"]

EXPOSE 6600 6680

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["mopidy"]
