#!/usr/bin/env bash
bundle exec rake db:setup
bundle exec rake db:seed
rm -f tmp/pids/server.pid
bundle exec rails server -p 80 -b '0.0.0.0'
