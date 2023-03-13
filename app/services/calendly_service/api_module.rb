module CalendlyService::ApiModule
  extend ActiveSupport::Concern

  included do
    include HTTParty

    base_uri CALENDLY_BASE_URL
    default_timeout 60
    headers('Content-Type' => 'application/json')

    def self.api_methods
      return self.const_get(:ENDPOINTS).keys
    end

    def self.api_response_classes
      return self.api_methods.each do |api_method|
        struct_name = "#{api_method.to_s.camelize}Response"
        self.const_get(struct_name) if self.const_defined?(struct_name)
      end.compact
    end

    private_class_method def self.call(action, body: nil, headers: nil, query: nil, endpoint: nil)
      headers = self.headers.symbolize_keys.merge((headers || authorization_header).symbolize_keys)
      body = body&.to_json

      http_method, defined_endpoint = self.const_get(:ENDPOINTS)[action].first
      response_struct = self.const_get("#{action.to_s.camelize}Response")

      endpoint ||= defined_endpoint

      #Todo log all api interaction
      response = send(http_method, endpoint, query: query, headers: headers, body: body)

      if !response.success?
        raise ::CalendlyService::ApiError.new(response: response)

        # TODO: implement datadog interaction
      end

      return response_struct.new.parse(response)
    rescue *HttpUtil.exception_classes, StandardError => error
      puts
      raise error
    end

    private_class_method def self.authorization_header
      { Authorization: "Bearer #{CALENDLY_API_TOKEN}" }
    end

    private_class_method def self.to_endpoint_path(action, **values)
      StringUtil.to_endpoint_path(self.const_get(:ENDPOINTS)[action].first.second, **values)
    end
  end
end
