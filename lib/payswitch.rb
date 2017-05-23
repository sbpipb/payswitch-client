require 'payswitch/configuration'
require 'payswitch/version'
require 'payswitch/helper'
# require 'payswitch/api'
require 'payswitch/api/users'
module Payswitch
  # Your code goes here...
  class << self
    attr_accessor :configuration
  end

  def self.config
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(config)
  end
end
