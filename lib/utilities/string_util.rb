module StringUtil
  extend self

  # Example usage:
  # ```
  # # Returns '/api/1/orders/sell'
  # to_endpoint_path('/api/:account_id/orders/sell', account_id: 1)
  # ```
  # Note that this also URL encodes each URL component.
  def to_endpoint_path(url_template, **values)
    return values.reduce(url_template) do |url, (key, value)|
      url.gsub(/:#{Regexp.escape(key)}\b/, ERB::Util.url_encode(value.to_s))
    end
  end

end
