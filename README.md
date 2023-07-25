# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Ruby version
- ruby:3.2-slim
# System dependencies
- ruby:3.2-slim
-  postgres:12.0
-  Nodejs:14.0
-  bundler:2.4.10
-  webpacker:5.4.4
-  rails:7.0.6
# Configuration
- Ruby
- Ruby on rails
- postgresql
- Node.js
# Database creation
    docker-compose run web rake db:create
# Database initialization
    docker-compose run web rake db:seed

# Services (job queues, cache servers, search engines, etc.)
- todo list
# Deployment instructions
## 1. Git clone
    git clone git@github.com:happiness-chain/rails-docker.git
    
## 2. Create rails app
    docker-compose run web rails new . --force --database=postgresql

## 3. Start and make container
    DOCKER_BUILDKIT=1 docker compose up  // in rails-docker directory

## 4. Create database
    docker-compose run web rake db:create

## 5. Access to http://localhost:3000 in the website

## 6. Stop container
    docker-compose down
- if the following error happens, `Chleck /myapp/tmp/pids/server.pid. `,
    sudo rm /tmp/pids/server.pid
## 7. Restart container
    docker-compose up
    docker-compose run web rake db:create
## 8. Rebuild container
- Container Gemfile.lock is synchronized with local Gemfile.lock
~~~
docker-compose run web bundle install
~~~
- Build container
~~~
docker-compose up --build
~~~
- For avoiding cache problem
~~~
docker-compose build --no-cache
~~~
~~~
docker-compose up -d
~~~
  
    
