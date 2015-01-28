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