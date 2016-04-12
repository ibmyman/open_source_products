#!/bin/bash

echo "running: bundle exec rake db:migrate"
bundle exec rake db:migrate
echo "running: bundle exec rails g spree:install --migrate=false --sample=false --seed=false"
bundle exec rails g spree:install --migrate=false --sample=false --seed=false
echo "bundle exec rake db:seed"
bundle exec rake db:seed
echo "bundle exec rake spree_sample:load"
bundle exec rake spree_sample:load
