FROM jenkins/jenkins:lts
USER root
RUN curl -sSL https://get.docker.com/|sh
USER jenkins

ENV DEV_PACKAGES="build-base ruby-dev yaml-dev tzdata sqlite-dev" \
RAILS_PACKAGES="nodejs"

RUN apk --update --upgrade add $RAILS_PACKAGES $DEV_PACKAGES

RUN mkdir -p /home/app

WORKDIR /home/app/

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install
COPY . ./

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
