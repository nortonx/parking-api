FROM ruby:3.2.2

RUN apt-get update \
  && apt-get install -y vim \
  && rm -rf /var/lib/apt/lists/*

  COPY devcontainer-api-load-profile.sh /etc/profile.d/
