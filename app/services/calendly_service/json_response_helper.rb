module CalendlyService::JsonResponseHelper
  ERRORS_GENERIC_METHODS = [:validate!]

  # NOTE: the struct can still have an attribute called "response," it just has
  # to be extracted with some_struct[:response] instead of some_struct.response
  # (which will return the unparsed response).
  attr_reader :response

  # Allow case comparison with Hash.
  def ===(rhs)
    return super if !rhs.is_a?(Hash)
    return rhs.all? { |key, value| value === self[key] || value === self[key].to_s }
  end

  def parse(response)
    @response = response
    result = JSON.parse(response.body, symbolize_names: true)

    self.members.each do |member|
      # Every expected member should be present.
      # This doesn't work for expected error messages
      raise ::CalendlyService::ApiError.new(response) if !result.key?(member) && result[:status] != false

      self[member] = result[member]
    end

    return self
  end

  def parsed_incoming_body
    return self.response&.parsed_response || {}
  end

  def body
    return self.parsed_incoming_body.deep_symbolize_keys
  end

  def code
    return self.response&.code
  end

  # Checks that the response body has `true` status. If status is false, raises an
  # exception with the appropriate error code and metadata. Returns self.
  def validate!
    return self if self.status

    raise ApiError.new(:api_code, response: self.response, parsed_response: self)
  end
end
