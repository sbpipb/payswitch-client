module Payswitch
  class Configuration
    PROD_BASE_URL = 'https://payswitch.net'.freeze
    STAGING_BASE_URL = 'https://staging.payswitch.net'.freeze
    DEV_BASE_URL = 'https://try.payswitch.net'.freeze
    attr_accessor :mode, :api_username, :api_token, :api_password

    def base_url
      case mode
      when :production
        then PROD_BASE_URL
      when :staging
        then STAGING_BASE_URL
      when :development
        then DEV_BASE_URL
      else
        DEV_BASE_URL
      end
    end

    def mode
      @mode ||= :development
    end
  end
end
