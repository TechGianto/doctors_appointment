class SearchController < ApplicationController
    before_action :require_login, only: [:index]
    layout "side_bar", only: [:index]
    # def index
    #   @specialities = Speciality.first(10)
    #   @user_states = User.select(:state).distinct.order(state: :asc)
    #   @user_regions = User.select(:LGA).distinct.order(LGA: :asc)
    #   @user_qualifications = Qualification.select(:name).order(name: :asc)
    # end

    def index
      @side_bar_props = {regions: User.select(:LGA).distinct.order(LGA: :asc),  states: User.select(:state).distinct.order(state: :asc), specialities:Speciality.first(10), qualifications: Qualification.select(:name).order(name: :asc) }
    end

end
