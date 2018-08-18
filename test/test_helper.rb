$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "bundler/setup"
require "minitest"
require "minitest/autorun"
require "minitest/spec"
require "mongoid"

require "mongoid_localized_fields_fallback_patch"

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

if ENV["CI"]
  require "coveralls"
  Coveralls.wear!
end

Mongoid.logger.level = Logger::INFO
Mongo::Logger.logger.level = Logger::INFO
