require 'bundler/setup'
require 'kong_king'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.order = :random

  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end
