FROM ruby:2.7.2-alpine

ENV DEV_PACKAGES="build-base ruby-dev yaml-dev tzdata " \
RAILS_PACKAGES="nodejs"

RUN apk --update --upgrade add $RAILS_PACKAGES $DEV_PACKAGES

RUN mkdir -p /home/app

WORKDIR /home/app/

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install
COPY . ./

EXPOSE 3000

ENTRYPOINT ["bin/rails", "server", "-b", "0.0.0.0"]