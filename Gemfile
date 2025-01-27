source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '3.1.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '7.0.4'
gem 'concurrent-ruby', '1.3.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '1.5.0'
# Use Puma as the app server
gem 'puma', '4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0.0'
gem 'uglifier', '4.1.2'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '5.0.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.11.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '3.1.11'

# Security updates for Github
gem 'sprockets', '>= 3.7.2'
gem 'rubyzip', '>= 1.2.2'
gem 'ffi', '>= 1.9.24'
gem 'rack', '>= 2.0.6'
gem 'loofah', '>= 2.2.3'
gem 'rails-html-sanitizer', '>= 1.0.4'


# Other gems
gem 'chronic', '0.10.2'
gem 'materialize-sass', '0.100.2.1'
gem 'simple_form', '4.0.0'
gem 'materialize-form', '1.0.8'
gem 'jquery-rails', '4.3.1'
gem 'jquery-ui-rails', '6.0.1'
gem 'cancancan', '3.4.0'
# TODO: when 7.0.0 is released, don't download from git
gem 'validates_timeliness', '7.0.0'
gem 'time_date_helpers', '0.0.2'
gem 'carrierwave', '1.2.2'
gem 'will_paginate', '3.3.1'

# TODO: determine if necessary in rails 7.1.0
gem 'mime-types', '~> 3.4', '>= 3.4.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.38.0'
  # gem 'better_errors'
  gem 'binding_of_caller'
  gem 'hirb', '0.7.3'
  gem 'faker', '3.1.0'
  gem 'populator', '1.0.0'
  gem 'factory_bot_rails', '4.8.2'
  gem 'simplecov', '0.22.0'
  gem 'shoulda-context', '~> 2.0.0'
  gem 'shoulda-matchers', '~> 5.0.0'
  # gem 'minitest', '5.16.3'
  gem 'minitest-rails', '7.0.0'
  gem 'minitest-reporters', '1.5.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'cucumber-rails', '~> 2.6.1', require: false
  gem 'database_cleaner'
  gem 'launchy'
end

# need to run
# rails active_storage:install
# bin/rails db:environment:set RAILS_ENV=development

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '3.5.1'
  gem 'listen', '3.7.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 4.0.0'
  gem 'spring-watcher-listen', '~> 2.1.0'
end

group :test do
  gem 'selenium-webdriver'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
