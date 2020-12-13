#!/usr/bin/env bash

bundle exec rake db:setup

bundle exec rake db:seed

# Remove a potentially pre-existing server.pid for Rails.
rm -f tmp/pids/server.pid

# Run the Rails server
bundle exec rails server -b 0.0.0.0 -p 80