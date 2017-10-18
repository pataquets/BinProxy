FROM ruby

RUN gem install bundler

COPY . /src/binproxy/
WORKDIR /src/binproxy/

RUN bundle

ENTRYPOINT [ "binproxy" ]
