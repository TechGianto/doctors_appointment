class SearchController < ApplicationController
  before_action :require_login, only: [:index]

  def index
    @specialities ||= Speciality.first(10)
    @user_states ||= User.select(:state).distinct.order(state: :asc)
    @user_regions ||= User.select(:LGA).distinct.order(LGA: :asc)
    @user_qualifications ||= Qualification.select(:name).order(name: :asc)
    @doctors = []
    Doctor.includes(:user, :doctor_ratings, :doctor_specialities, doctor_specialities: :speciality, user: [:profile_pic_attachment, :profile_pic_blob]).each do |doctor|
      @doctors << DoctorPresenter.new(doctor).show_card_details
    end

    @side_bar_props = { regions: @user_regions, states: @user_states, specialities: @specialities, qualifications: @user_qualifications, doctors: @doctors }
  end

end
