class ApplicationController < ActionController::Base

  private

    def require_login
        if !user_signed_in?
            redirect_to new_user_session_path
        end
    end

  def user
    current_user
  end
end
