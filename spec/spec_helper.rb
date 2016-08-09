require 'subtle'
require 'contrast'
require File.expand_path(File.dirname(__FILE__) + '/../lib/panic_board_data')

# Enable both should and expect syntax
RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end
