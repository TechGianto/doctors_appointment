module HttpUtil
  extend self

  def exception_classes
    [
      Errno::ECONNREFUSED,
      Errno::ECONNRESET,
      Errno::EHOSTUNREACH,
      Errno::ENETUNREACH,
      SocketError,
      Net::ReadTimeout,
      Net::OpenTimeout, # "execution expired"
      Timeout::Error,
      JSON::ParserError, # for when an http error page is returned when expecting a JSON response
      OpenSSL::SSL::SSLError,
    ]
  end
end
