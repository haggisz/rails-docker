FROM ruby:3.2-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm
# RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
# RUN apt-get install -y nodejs

RUN mkdir /myapp
WORKDIR /myapp

# COPY .Gemfile.cache /myapp
# COPY .Gemfile.lock.cache /myapp
# RUN bundle _2.4.10_ install

COPY Gemfile Gemfile.lock /myapp
RUN bundle _2.4.10_ install
RUN npm install -g yarn
RUN bundle exec rails webpacker:install
RUN bundle exec rails assets:precompile

COPY . /myapp
# RUN bin/rails db:migrate RAILS_ENV=development
CMD bin/rails s
