# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')
require File.join(File.dirname(__FILE__), '../lib/PlayerSpreadsheet.rb')
require File.join(File.dirname(__FILE__), '../lib/writeexcel.rb')

Rails::Initializer.run do |config|
  config.gem 'authlogic'
  config.gem 'searchlogic'
  config.gem 'rr'
  config.gem 'quietbacktrace'
  config.gem 'thoughtbot-shoulda', :lib => 'shoulda'
  config.gem 'chriseppstein-compass', :lib => 'compass', :version => '>= 0.6.6'
  config.gem 'haml-edge', :lib => 'haml', :version => '>= 2.1.3'
  config.gem 'will_paginate', :version => '>= 2.2.3'
  config.gem "josevalim-inherited_resources", :lib => "inherited_resources", :version => "0.9.1", :source => "http://gems.github.com"
  config.gem "factory_girl"
  config.gem 'paperclip'
  config.gem 'aasm'
  config.gem 'prawn'
  config.gem 'spreadsheet'

  config.time_zone = 'UTC'
end
