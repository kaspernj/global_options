ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require_relative "dummy/config/environment"
require 'rspec/rails'
require 'factory_bot_rails'
require 'forgery'

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true
end
