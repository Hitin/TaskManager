ENV['RAILS_ENV'] ||= 'test'
require 'simplecov'
SimpleCov.start
require 'coveralls'
Coveralls.wear!

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'factory_girl'

FactoryGirl.reload

class Minitest::Test
  include FactoryGirl::Syntax::Methods
end
