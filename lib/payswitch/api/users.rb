# frozen_string_literal: true
require 'payswitch/helper'
module Payswitch
  module Api
    module Users
      def self.current_user
        Helper.request(:get, "#{v1_url}/current", {}, token_auth)
      end

      def self.token_auth
        Helper.authentication_headers
      end

      def self.v1_url
        "#{Payswitch.config.base_url}/api/users"
      end

      def self.v2_url
        "#{Payswitch.config.base_url}/api/v2/users"
      end
      private_class_method :v1_url, :v2_url, :token_auth
    end
  end
end
