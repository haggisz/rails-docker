FROM ruby:3.2-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev curl nodejs npm \
&& npm install n -g && n 14.0
# RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
# RUN apt-get install -y nodejs

RUN mkdir /myapp
WORKDIR /myapp

# COPY .Gemfile.cache /myapp
# COPY .Gemfile.lock.cache /myapp
# RUN bundle _2.4.10_ install

COPY Gemfile Gemfile.lock /myapp/
RUN bundle _2.4.10_ install
RUN npm install -g yarn
RUN yarn install
RUN bundle exec rails webpacker:install
# RUN bundle exec rails assets:precompile
RUN bundle exec rails webpacker:compile

COPY . /myapp
# RUN bin/rails db:migrate RAILS_ENV=development
CMD bin/rails s
