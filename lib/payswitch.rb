require 'payswitch/version'
require 'payswitch/configuration'
module Payswitch
  # Your code goes here...
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.config
    yield(config)
  end
end
