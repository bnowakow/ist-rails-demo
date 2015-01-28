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

add validators to user /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

rails g bootstrap:install less
rails g bootstrap:layout application fixed
rails g bootstrap:themed Users -f

rails g scaffold Order id:string user:references
rails g bootstrap:themed Orders -f

rails g migration AddTrackingNumberToOrders tracking_number:string
rails g bootstrap:themed Orders -f

rails console
Order.find_by_tracking_number(123)
Order.joins(:user)
Order.joins(:user).first.user
Order.joins(:user).where('users.name = "Testowy"')

user = User.new(email:'a@a.pl', name: 'Pan z konsoli')
user.save
user.update_attribute(:email, "b@b.pl")
user[:email] = 'c@c.pl'
user.save
console on exception page
lazy loading: includes vs joins

heroku apps:create ist-rails-demo --region eu
bundle install --without production
bundle install
rake assets:precompile
git push heroku
heroku run rake db:migrate --app ist-rails-demo
heroku run:detached rake db:migrate --app ist-rails-demo
open https://ist-rails-demo.herokuapp.com/users
heroku logs -t --app ist-rails-demo