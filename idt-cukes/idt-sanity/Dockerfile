FROM ruby:latest

RUN ruby -v

RUN gem install bundler

COPY Gemfile* /tmp/

WORKDIR /tmp

RUN bundle -v

RUN bundle install

ENV app /app

RUN mkdir $app

WORKDIR $app

ADD . $app	