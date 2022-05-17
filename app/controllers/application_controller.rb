class ApplicationController < ActionController::Base
    before_action :help_me

    def help_me
      puts 'Help!!!'
    end
end
