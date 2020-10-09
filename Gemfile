# frozen_string_literal: true

source 'https://rubygems.org'

gemspec

gem 'bootsnap', require: false
gem 'puma'
gem 'rails', '< 6.0.0'
gem 'rake'
gem 'sprockets', '< 4.0.0'
gem 'sqlite3'
gem 'yard'

group :test do
  gem 'capybara'
  gem 'capybara-selenium'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :development do
  gem 'listen'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rake'
  gem 'rubocop-rspec'
  gem 'spring'
  gem 'web-console'
end

group :development, :test do
  gem 'cm_shared', path: File.expand_path('../../cm_shared', __dir__)
  gem 'netzke-testing'
  gem 'pry-rails'
end
