FROM ruby:2

RUN gem install bundler

COPY . /src/binproxy/
WORKDIR /src/binproxy/

RUN bundle

ENTRYPOINT [ "binproxy", "--http-host", "0.0.0.0" ]
