FROM ruby:3.2-slim
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  apt-utils \
  curl \
  nodejs \
  npm \
&& npm install n yarn -g && n 20.5.0 && rm -rf /var/lib/apt/lists/*
# RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
# RUN apt-get install -y nodejs

RUN mkdir /myapp
WORKDIR /myapp

# COPY .Gemfile.cache /myapp
# COPY .Gemfile.lock.cache /myapp
# RUN bundle _2.4.10_ install

COPY Gemfile Gemfile.lock package.json yarn.lock /myapp/
RUN bundle _2.4.10_ install


COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

RUN yarn install
#  && yarn add "@rails/webpacker@6.0.0-rc.6"
RUN bundle && bundle exec rails webpacker:install && bundle exec rails webpacker:compile

# && yarn add webpack webpack-cli --dev && yarn run webpack
# bundle exec rails assets:precompile

COPY . /myapp
# RUN bin/rails db:migrate RAILS_ENV=development
CMD bin/rails s
