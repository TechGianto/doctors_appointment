class SearchController < ApplicationController
    before_action :index

  private

        def index
            if !user_signed_in?
                redirect_to new_user_session_path
            end
        end
end
