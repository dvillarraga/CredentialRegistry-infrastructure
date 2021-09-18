FROM jruby:9.1.2.0
COPY ./CredentialRegistry /app
RUN gem install bundler
RUN /app/bin/setup