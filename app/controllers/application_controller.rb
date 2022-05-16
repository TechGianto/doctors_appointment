class ApplicationController < ActionController::Base
  before_action :say_hi

  def say_hi
    puts 'hi'
  end
end
