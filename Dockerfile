FROM ruby:2.6.5

RUN apt-get update -y && \
    apt-get install default-mysql-client nodejs -y && \
    gem install rails --version='5.2.4'

ENV TZ Asia/Tokyo

COPY Gemfile /Gemfile
COPY Gemfile.lock /Gemfile.lock

RUN bundle install