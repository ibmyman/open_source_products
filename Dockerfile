FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client vim nodejs
RUN mkdir /open_source
WORKDIR /open_source
ADD Gemfile /open_source/Gemfile
ADD Gemfile.lock /open_source/Gemfile.lock
RUN bundle install --verbose

ADD . /open_source
