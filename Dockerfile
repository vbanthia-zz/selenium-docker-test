# https://github.com/docker-library/ruby/tree/4cba299a609debea1b81a8da9844e6d27fba5229/2.2
FROM ruby:2.2-onbuild

ENTRYPOINT ["./scripts/jenkins/run_integration_test.sh"]
