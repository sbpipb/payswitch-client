require 'rest-client'
module Payswitch
  module Helper
    def self.request(method, url, params, headers)
      # 'request lang'
      _response = RestClient::Request.execute(
        method: method,
        url: url,
        headers: headers,
        payload: params
        # payload: camelify(params).to_json
      )
      # .snakify(JSON.parse(response))
    end

    def self.authentication_headers
      { 'X-User-Email' => Payswitch.config.api_username,
        'X-User-Token' => Payswitch.config.api_token }
    end
  end
end
