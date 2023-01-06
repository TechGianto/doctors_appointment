class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, if: :devise_controller?

  private

        def require_login
            if !user_signed_in?
                redirect_to new_user_session_path
            end
        end

    def user
      current_user
    end

    def after_sign_in_path_for(*)
      patient_index_path
    end


    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password])
    end
end
