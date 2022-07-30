class SearchController < ApplicationController
    before_action :require_login, only: [:index]

    def index
      @speciality = Speciality.first(10)
      @user_state = User.select(:state).distinct.order(state: :asc)
      @user_region = User.select(:LGA).distinct.order(LGA: :asc)
      @user_qualification = Qualification.select(:name).order(name: :asc)
    end

end
