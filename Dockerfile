FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.2

RUN gem install engineyard-hudson --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ey-hudson"]
CMD ["--help"]
