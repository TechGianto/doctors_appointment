class SearchController < ApplicationController
    before_action :require_login, only: [:index]

    def index
      @specialities = Speciality.first(10)
      @user_states = User.select(:state).distinct.order(state: :asc)
      @user_regions = User.select(:LGA).distinct.order(LGA: :asc)
      @user_qualifications = Qualification.select(:name).order(name: :asc)
    end

end
