FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /real
WORKDIR /real

COPY Gemfile /real/Gemfile
COPY Gemfile.lock /real/Gemfile.lock

RUN bundle install
COPY . /real
