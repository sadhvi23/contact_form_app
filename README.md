# README

Contact Form

# Setting up the app

## Prerequisites

- Ruby 2.6.3

## Getting Started (One-time setup)

- Install Ruby 2.6.3 (use [RVM](https://rvm.io/) to manage Ruby versions & environments)
- From the repository directory, run `gem install bundler` to install bundler
- Run `bundle install` to install all dependencies
- In `/config/database.yml`, under `development`, make sure the Postgresql connection credentials are correct
- Run `rake db:create db:migrate` to create/migrate/seed the database
- Add smtp settings to env variables
  - `username`
  - `password`
  - `port`
  - `domain`
  - `address`
  
## Bringing up the app

- Run `bundle install` to install newly added dependencies
- Run `rake db:migrate` to run all pending migrations
- Start the app with `rails s`. The application should be running on port `3000`
- Start sidekiq
    - using `bundle exec sidekiq` command
- To Start contact-form app
    - `http://localhost:3000`

# Branching + PR Policy

- Branch setup & workflow
    - `master` replicates the production environment

