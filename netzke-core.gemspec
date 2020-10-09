# frozen_string_literal: true

require './lib/netzke/core/version'

Gem::Specification.new do |s|
  s.name        = 'netzke-core'
  s.version     = Netzke::Core::VERSION
  s.required_ruby_version = '>= 2.4.0'
  s.author      = 'Max Gorin'
  s.email       = 'max@goodbitlabs.com'
  s.homepage    = 'http://netzke.org'
  s.summary     = 'Client-server UI components with Sencha Ext JS and Ruby on Rails'
  s.description = 'Netzke helps you build complex web UI in a modular way'

  s.files = Dir[
    '{app,config,javascripts,lib,stylesheets,tasks}/**/*',
    '[A-Z]*',
    'init.rb'
  ] - ['Gemfile.lock', 'spec/dummy/public/extjs']
  s.test_files    = Dir['{test}/**/*']
  s.require_paths = ['lib']

  s.add_dependency 'execjs'
  s.add_dependency 'mime-types', '< 3'
  s.add_dependency 'uglifier'

  s.required_rubygems_version = '>= 1.3.4'
end
