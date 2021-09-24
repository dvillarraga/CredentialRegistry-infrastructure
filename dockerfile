FROM ruby:2.7.4
COPY ./app/CredentialRegistry /usr/local/share/app
WORKDIR /usr/local/share/app
EXPOSE 9292
RUN apt-get -y update && gem install bundler &&  apt-get install -y postgresql-client
RUN cd /usr/local/share/app && bundle install
CMD ["/usr/local/share/app/bin/rackup"] 