# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby:3.2-slim
* System dependencies
ruby:3.2-slim, postgres:12.0,gem 'rails', '~> 7.0.6',gem 'pg', '~> 1.4'
* Configuration
Ruby
Ruby on rails
postgresql
* Database creation
    docker-compose run web rake db:create
* Database initialization
    docker-compose run web rake db:seed

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
1. git clone
    git clone <Path/to/repository>

2.How to start up app.
    docker compose up // in rails-docker directory

3.How to access to http://localhost:3000 in the website
- Not in the main seach bar but in the search bar in the tab in chrome.

4.How to stop app.
    docker-compose down
