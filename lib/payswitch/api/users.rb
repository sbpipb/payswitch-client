# frozen_string_literal: true
require 'payswitch/helper'
module Payswitch
  module Api
    module Users
      # GET https://try.payswitch.net/api/users/current
      def self.current_user
        API.request(:get, user_v1_url)
      end

      def self.user_v1_url
        "#{Payswitch.config.base_url}/api/users"
      end

      def self.user_v2_url
        "#{Payswitch.config.base_url}/api/v2/users"
      end
      private_class_method :user_url
    end
  end
end
