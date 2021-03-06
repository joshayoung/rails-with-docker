FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /myapp
WORKDIR /myapp
ENV POSTGRES_HOST_AUTH_METHOD=trust
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler:1.17.3
RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]