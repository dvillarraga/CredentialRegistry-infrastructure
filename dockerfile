FROM ruby:2.7.4
COPY ./CredentialRegistry /app
RUN apt-get -y update && gem install bundler &&  apt-get install -y postgresql-client
RUN /app/bin/setup