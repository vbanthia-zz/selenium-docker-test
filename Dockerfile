# https://github.com/docker-library/ruby/tree/4cba299a609debea1b81a8da9844e6d27fba5229/2.2
FROM ruby:2.2

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY Gemfile /usr/src/app/
ONBUILD COPY Gemfile.lock /usr/src/app/
ONBUILD RUN bundle install

ONBUILD COPY . /usr/src/app

CMD ["./scripts/jenkins/run_integration_test.sh"]
