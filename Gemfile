# frozen_string_literal: true

source 'https://rubygems.org'

gemspec

gem 'puma'
gem 'rails', '~> 5.1.0'
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
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rake'
  gem 'rubocop-rspec'
  gem 'web-console'
end

group :development, :test do
  gem 'netzke-testing'
  gem 'pry-rails'
end
