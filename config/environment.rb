# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'authlogic'
  config.gem 'searchlogic'
  config.gem 'rr'
  config.gem 'quietbacktrace'
  config.gem 'thoughtbot-shoulda', :lib => 'shoulda'
  config.gem 'chriseppstein-compass', :lib => 'compass', :version => '>= 0.6.6'
  config.gem 'haml-edge', :lib => 'haml', :version => '>= 2.1.3'
  config.gem 'mislav-will_paginate', :lib => 'will_paginate', :source => 'http://gems.github.com', :version => '>= 2.2.3'
  config.gem "josevalim-inherited_resources", :lib => "inherited_resources", :version => "0.9.0", :source => "http://gems.github.com"
  config.gem "thoughtbot-factory_girl",
             :lib    => "factory_girl",
             :source => "http://gems.github.com"
  config.gem 'paperclip'
  config.gem 'rubyist-aasm', :lib => 'aasm', :source => "http://gems.github.com"
  #config.gem 'ryanb-acts-as-list', :lib => "acts_as_list", :source => 'http://gems.github.com'
  #config.gem 'flyerhzm-bullet', :lib => 'bullet', :source => 'http://gems.github.com'
  #config.gem 'ruby-growl'
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
end
