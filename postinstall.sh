#!/bin/bash
bundle update
bundle install
rails db:create
rails db:migrate
rails db:seed
rm /usr/src/app/tmp/pids/server.pid
rake db:seed RAILS_ENV=test
rake yard
yard server -d
rails s -b 0.0.0.0
exec "$@"
