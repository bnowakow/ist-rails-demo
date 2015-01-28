#!/bin/bash

rvm list
rvm use ruby-2.1.2

sup@Taerar2: rails-demo (master) $ rails _4.2.0_ new rails-demo
/Users/sup/.rvm/rubies/ruby-2.0.0-p353/lib/ruby/site_ruby/2.0.0/rubygems/dependency.rb:315:in `to_specs': Could not find 'railties' (= 4.2.0) - did find: [railties-4.0.2] (Gem::LoadError)
Checked in 'GEM_PATH=/Users/sup/.rvm/gems/ruby-2.0.0-p353:/Users/sup/.rvm/gems/ruby-2.0.0-p353@global', execute `gem env` for more information
	from /Users/sup/.rvm/rubies/ruby-2.0.0-p353/lib/ruby/site_ruby/2.0.0/rubygems/dependency.rb:324:in `to_spec'
	from /Users/sup/.rvm/rubies/ruby-2.0.0-p353/lib/ruby/site_ruby/2.0.0/rubygems/core_ext/kernel_gem.rb:64:in `gem'
	from /Users/sup/.rvm/gems/ruby-2.0.0-p353/bin/rails:22:in `<main>'

https://rubygems.org/gems/rails

gem install --version '4.2.0' railties
rails _4.2.0_ new rails-demo
rails server
bundle install


rails generate scaffold User name:string email:string
rails server without rake db:migrate
rake db:migrate
db/schema.rb

rails server
open http://localhost:3000/users
open http://localhost:3000/users/1.html
open http://localhost:3000/users/1.json
change default format to json

add validators to user

rails g bootstrap:install
rails g bootstrap:layout application fixed
rails g bootstrap:themed Users -f
