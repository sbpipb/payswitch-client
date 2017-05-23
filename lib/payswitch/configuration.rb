module Payswitch
  class Configuration
    PROD_BASE_URL = 'https://payswitch.net'.freeze
    STAGING_BASE_URL = 'https://staging.payswitch.net'.freeze
    DEV_BASE_URL = 'https://try.payswitch.net'.freeze
    attr_accessor :mode, :api_username, :api_token, :api_password

    def base_url
      case mode
      when :production
        PROD_BASE_URL
      when :staging
        STAGING_BASE_URL
      when :development
      else
        DEV_BASE_URL
      end
    end

    def mode
      @mode ||= :development
    end
  end
end
