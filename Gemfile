source 'http://rubygems.org'

gem 'rails', '3.1.1'
gem 'gravatar_image_tag'
gem 'will_paginate'
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

#Heroku wants this
group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
#  gem 'sqlite3-ruby', '1.2.5', :require => 'sqlite3'
end

group :development do
    gem 'rspec-rails'
    #gem 'annotate'
    gem 'faker'
end

group :test do
    gem 'rspec-rails' 
    gem 'webrat', '0.7.1'
    gem 'spork', '0.9.0.rc8'
    gem 'factory_girl_rails'
end

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

