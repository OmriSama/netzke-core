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

group :development, :test do
  gem 'capybara'
  gem 'capybara-selenium'
  gem 'cm_shared', path: File.expand_path('../../cm_shared', __dir__)
  gem 'listen'
  # gem 'netzke-testing'
  gem 'netzke-testing', path: File.expand_path('../netzke-testing', __dir__)
  gem 'pry-rails'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'spring'
  gem 'webdrivers'
end

group :development do
  gem 'web-console'
  group :rubocop do
    gem 'rubocop'
    gem 'rubocop-performance'
    gem 'rubocop-rails'
    gem 'rubocop-rake'
    gem 'rubocop-rspec'
  end
end
