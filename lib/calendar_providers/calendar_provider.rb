module CalendarProvider
  extend self

  def invite!(_data)
    raise "#{self}##{__method__} has not been implemented"
  end

  def verify!(_invite)
    raise "#{self}##{__method__} has not been implemented"
  end
end
