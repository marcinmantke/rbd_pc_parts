FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
ADD . /code
WORKDIR /code
ADD Gemfile /code/Gemfile
ADD Gemfile.lock /code/Gemfile.lock
RUN bundle install

RUN mkdir /tmp/rails
RUN rm -rf tmp/
RUN ln -s /tmp/rails tmp
