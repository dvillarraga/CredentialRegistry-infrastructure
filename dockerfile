FROM ruby:2.7.4
COPY ./app/CredentialRegistry /usr/local/share/app
WORKDIR /usr/local/share/app
RUN apt-get -y update && gem install bundler &&  apt-get install -y postgresql-client
#RUN /app/bin/setup