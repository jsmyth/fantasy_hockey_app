ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'
require 'authlogic/testing/test_unit_helpers'

# Require blueprint files
Dir[Rails.root.join("test/blueprints/**/*.rb")].each { |f| require(f) }

class ActiveSupport::TestCase
  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false
end